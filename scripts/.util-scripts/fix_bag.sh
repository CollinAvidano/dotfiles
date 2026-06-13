#!/usr/bin/env bash
set -euo pipefail # so if anything fails it all fails
shopt -s nullglob


INPUT_DIR="${1:-.}" 
TMP_DIR=$(mktemp -d) # feel like I should make this tempdir on whatever drive its targeting
export TMP_DIR

echo "Input directory: $INPUT_DIR"
echo "Temporary output directory: $TMP_DIR"

# for cleaning up temp dir on pipe fail
cleanup() {
    if [[ -d "$TMP_DIR" ]]; then
        rm -rf "$TMP_DIR"
        echo "Cleaned up temporary directory: $TMP_DIR"
    fi
}
trap cleanup EXIT


echo "Recovering each file"
find "$INPUT_DIR" -maxdepth 1 -type f -name "*.mcap" -print0 | \
xargs -0 -P "$(nproc)" -I {} bash -c '
  file="$0"
  filename=$(basename "$file")
  mcap recover "$file" -o"$TMP_DIR/$filename"
'

echo "Copying temp files back over directory"
# null glob so its ok if this has no files because there wasnt anything to process
for f in "$TMP_DIR"/*.mcap; do
    base=$(basename "$f")
    echo "Replacing original $base with new version..."
    mv -f "$f" "$INPUT_DIR/$base"
done

echo "Removing temp dir"
rmdir "$TMP_DIR" 

echo "Reindexing to fix bag metadata.yaml"
ros2 bag reindex "$INPUT_DIR"

# I should really have this rosbag play because apparently bag info can succeed even when unindexed
echo "Checking bag validity to confirm success"
if ! output=$(ros2 bag info "$INPUT_DIR" 2>&1); then
    echo "$output"
    exit 1
fi

echo "Bag recovery successfully"
