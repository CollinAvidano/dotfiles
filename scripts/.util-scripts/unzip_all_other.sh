#!/usr/bin/env bash
set -euo pipefail

BASE_DIR="${1:-.}"

echo "Searching for zip files under: $BASE_DIR"

export BASE_DIR

# Export a tiny helper function so xargs can call it
unzip_one() {
    zipfile="$1"
    dir=$(dirname "$zipfile")
    name=$(basename "$zipfile" .zip)

    echo "Unzipping: $zipfile → $dir/"
    #mkdir -p "$dir/$name"
    unzip -o "$zipfile" -d "$dir"

    # Only reached if unzip succeeded
    echo "Deleting original: $zipfile"
    rm -f "$zipfile"
}
export -f unzip_one

# Find → xargs → parallel unzip
find "$BASE_DIR" -type f -name "OTHER_TOPICS.zip" -print0 |
xargs -0 -I {} -P "$(nproc)" bash -c 'unzip_one "$@"' _ {}

echo "Done."
