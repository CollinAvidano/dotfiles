#!/bin/bash

# Base directory to start searching from
BASE_DIR="${1}"

# Find all directories containing at least one .mcap file
find "$BASE_DIR" -type f -name "*.mcap" -exec dirname {} \; | sort -u | while read dir; do
    echo "Running cloudini-bag on: $dir"
    cloudini-bag "$dir" -c -s
done
