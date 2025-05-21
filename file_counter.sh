#!/bin/bash

# Check if argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <absolute-directory-path>"
  exit 1
fi

dir="$1"

# Check if the provided path is a valid directory
if [ ! -d "$dir" ]; then
  echo "Error: '$dir' is not a valid directory."
  exit 1
fi

# Count the number of regular files (not directories or symlinks)
file_count=$(find "$dir" -maxdepth 1 -type f | wc -l)

echo "There are $file_count files in the directory '$dir'."
