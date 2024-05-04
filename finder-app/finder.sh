#!/bin/bash

# Checks if the arguments are provided.
if [ "$#" -ne 2 ]; then
    echo "No or incorrect number of arguments supplied"
    exit 1
fi

# Assign the arguments to variables.
directory="$1"
search_string="$2"

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "$directory is not a director or doesn't exist"
    exit 1
fi

# Count the number of files in the provided directory.
num_files=$(find "$directory" -type f | wc -l)

# Count the number of lines in search string.
num_lines=$(grep -r "$search_string" "$directory" | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_lines"

