#!/usr/bin/env bash

# Usage:
#   ./undo_capitalization.sh <root_directory>
#
# This will recursively convert all directory names to lowercase.
# (This is the closest possible "undo" after capitalization.)

set -e

root="$1"

if [[ -z "$root" ]]; then
    echo "Usage: $0 <root_directory>"
    exit 1
fi

if [[ ! -d "$root" ]]; then
    echo "ERROR: Directory not found: $root"
    exit 1
fi

echo "Lowercasing directory names under: $root"
echo ""

# Process deepest directories first so renames do not break traversal
find "$root" -depth -type d | while read -r dir; do
    base=$(basename "$dir")
    parent=$(dirname "$dir")

    lower=$(echo "$base" | tr '[:upper:]' '[:lower:]')

    # Skip if already lowercase
    if [[ "$base" == "$lower" ]]; then
        continue
    fi

    echo "Renaming:"
    echo "  $dir"
    echo "    → $parent/$lower"

    mv "$dir" "$parent/$lower"
done

echo "Done."
