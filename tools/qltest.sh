#!/bin/sh

set -eu

"${CODEQL_DIST}/codeql" database index-files \
    --prune="**/*.testproj" \
    --include-extension=.lua \
    --size-limit=5m \
    --language=lua \
    --working-dir=.\
    "$CODEQL_EXTRACTOR_LUA_WIP_DATABASE"

exec "${CODEQL_DIST}/codeql" database index-files \
    --prune="**/*.testproj" \
    --include-extension=.yml \
    --include-extension=.yaml \
    --include-extension=.json \
    --size-limit=5m \
    --language=yaml \
    --working-dir=.\
    "$CODEQL_EXTRACTOR_LUA_WIP_DATABASE"