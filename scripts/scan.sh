#!/bin/bash
set -e

PROJECT_NAME="testing"
CODEQL_DATABASE_DIR="./.codeql/databases"

mkdir -p $CODEQL_DATABASE_DIR

codeql database create \
  --language=lua \
  --search-path=./extractor-pack \
  --source-root="./testing" \
  --overwrite \
  --threads=4 \
  "${CODEQL_DATABASE_DIR}/${PROJECT_NAME}"

# codeql database analyze \
#   --threads=4 \
#   --format=sarif-latest \
#   --output="$OUTPUT_DIR/$PROJECT_NAME.sarif" \
#   $DATABASE \
#   ./ql/src
