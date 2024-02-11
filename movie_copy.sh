#!/bin/bash

# Define source directory and target directory
source_dir="/mnt/e/media-library/downloads"
target_dir="/mnt/e/media-library/movies"

# Check if target directory exists, if not create it
if [ ! -d "$target_dir" ]; then
    mkdir -p "$target_dir"
fi

# Loop through files in the source directory
for file in "$source_dir"/www*; do
    if [ -f "$file" ]; then
        # Extract folder name based on substring before the first occurrence of ')'
        folder_name=$(basename "$file" | awk -F ')' '{print $1}')")"
	    folder_name=$(echo "$folder_name" | cut -d'-' -f2-)
        # Trim leading and trailing spaces
        folder_name=$(echo "$folder_name" | awk '{$1=$1};1')
	    
        if [ ! -d "$target_dir/$folder_name" ]; then
            echo "Creating $folder_name."
            # Create directory if it doesn't exist
            mkdir -p "$target_dir/$folder_name"
            echo "Creating hardlink for $folder_name."
            # Create hard link in the created directory
            ln "$file" "$target_dir/$folder_name/$folder_name"
            continue
        fi

	    if [ -d "$target_dir/$folder_name" ] && [ ! -e "$target_dir/$folder_name/$folder_name" ]; then
            echo "Skipping $folder_name. Folder already exist."
            echo "Creating hardlink for $folder_name."
            # Create hard link in the created directory
            ln "$file" "$target_dir/$folder_name/$folder_name"
            continue
        fi

        echo "Skipping!!! $folder_name and hardlink already exist"

    fi
done

echo "Hard links created under $target_dir"