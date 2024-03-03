#!/bin/bash

# Define source directory and target directory
source_dir="/mnt/e/media-library/downloads"

for file in "$source_dir"/www*; do
    if [ -f "$file" ]; then
        # Extract folder name based on substring before the first occurrence of ')'
        folder_name=$(basename "$file" | awk -F ')' '{print $1}')")"
	    folder_name=$(echo "$folder_name" | cut -d'-' -f2-)
        # Trim leading and trailing spaces
        folder_name=$(echo "$folder_name" | awk '{$1=$1};1')

        echo $folder_name
    fi
done