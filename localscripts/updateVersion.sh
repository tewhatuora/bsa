#!/usr/bin/env bash
set -x
set -euo pipefail

SUSHI_CONFIG="sushi-config.yaml"
MARKDOWN_FILE="./input/pagecontent/index.md"

# Extract version from sushi-config.yaml
VERSION=$(grep '^version:' "$SUSHI_CONFIG" | awk '{print $2}')
echo $VERSION
echo "!!"
if [[ -z "$VERSION" ]]; then
    echo "ERROR: Could not find version in $SUSHI_CONFIG"
    exit 1
fi

# Replace version line in markdown
sed -i -E \
  "s|^\*\*Version:\*\*.*$|**Version:** ${VERSION}|g" \
  "$MARKDOWN_FILE"

echo "Updated $MARKDOWN_FILE to version $VERSION"
