#!/usr/bin/env bash

# Usage:
#   ./fix_duplicate_directory_levels.sh <root_directory>
#
# Example:
#   ./fix_duplicate_directory_levels.sh /media/collin/12-league-drive/azure_downloads

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

echo "Scanning for duplicate directory levels under: $root"
echo ""

# Find all directories (deepest first to avoid breaking parents)
find "$root" -type d | sort -r | while read -r dir; do
    base=$(basename "$dir")
    parent=$(dirname "$dir")

    # Check if duplicate level exists: parent/dirname/dirname
    inner="$dir/$base"

    if [[ -d "$inner" ]]; then
        echo "Duplicate directory detected:"
        echo "  $dir"
        echo "   └── $inner"
        echo "  → Moving content up…"

        mv "$inner"/* "$dir"/ 2>/dev/null || true

        echo "  → Removing empty duplicate directory…"
        rmdir "$inner"

        echo "  ✓ Fixed: $dir"
        echo ""
    fi
done

echo "Done."
