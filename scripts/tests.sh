#!/usr/bin/env bash
set -e

# get the argument 
TESTS_DIR=$1
if [ -z "$TESTS_DIR" ]; then
  TESTS_DIR="ql/test"
fi

# Check if extractor-pack exists
if [ ! -d "./extractor-pack" ]; then
  # Check if the script is being run from the root directory
  if [ ! -f "./scripts/run-tests.sh" ] || [ ! -f "./scripts/create-extractor-pack.sh" ]; then
    echo "Error: This script must be run from the root directory of the project."
    echo "Please change to the root directory and run: ./scripts/run-tests.sh"
    exit 1
  fi

  echo "Extractor-pack directory not found."
  echo "Attempting to build the Lua extractor pack automatically..."
  
  # Run the create-extractor-pack.sh script
  echo "Running: ./scripts/create-extractor-pack.sh"
  if ./scripts/create-extractor-pack.sh; then
    echo "Successfully built the extractor pack."
  else
    echo "Error: Failed to build the extractor pack."
    echo "Please ensure Rust/Cargo is installed and try again manually:"
    echo "  ./scripts/create-extractor-pack.sh"
    exit 1
  fi
fi

if which codeql >/dev/null; then
  CODEQL_BINARY="codeql"
elif gh codeql >/dev/null; then
  CODEQL_BINARY="gh codeql"
else
  gh extension install github/gh-codeql
  CODEQL_BINARY="gh codeql"
fi

# This is causing certificate issues in Copilot Coding Agent - should not be needed as we are pre-installing.
# $CODEQL_BINARY pack install ql/test

echo "Running tests in $TESTS_DIR"

$CODEQL_BINARY test run \
  -j 0 \
  --check-databases --check-unused-labels --check-repeated-labels --check-redefined-labels --check-use-before-definition \
  --search-path ./extractor-pack \
  "$TESTS_DIR"
