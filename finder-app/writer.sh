#!/bin/bash

# Checks the validity of the supplied arguments.
if [ "$#" -ne 2 ]; then
    echo "No or few arguments supplied."
    exit 1
fi

# Assign the arguments to variables.
writefile="$1"
writestr="$2"

# Extract directory
directory=$(dirname "$writefile")

if [ ! -d "$directory" ]; then
    mkdir -p "$directory"
fi

echo "$writestr" > "$writefile"

if [ $? -eq 0 ]; then
    echo "File created or overwritten"
else
    echo "Failed to create file"
    exit 1
fi
