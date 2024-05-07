#!/bin/bash

# Check if the file exists
if [ ! -f "websites.txt" ]; then
    echo "Error: File 'websites.txt' not found."
    exit 1
fi

# Read websites from the file into an array
mapfile -t websites < websites.txt

# Loop through each website in the array
for site in "${websites[@]}"; do
    if curl --output /dev/null --silent --head --fail "$site"; then
        echo "$site is reachable"
    else
        echo "$site is unreachable - sending notification"
    fi
done
