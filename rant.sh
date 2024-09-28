#!/bin/bash

# Directory for logs
DIR=~/Desktop/rants
FILE=$DIR/$(date +'%d-%m-%Y').txt

# Create directory if it doesn't exist
mkdir -p "$DIR"

# Function to append the log entry
append_entry() {
    local entry="$1"
    local timestamp=$(date +'%d/%m/%Y %H:%M:%S')
    echo "-------------------" >> "$FILE"
    echo "$timestamp" >> "$FILE"
    echo "-------------------" >> "$FILE"
    echo "$entry" >> "$FILE"
    echo -e "\n" >> "$FILE"
    echo "Entry added to $FILE"
}

# Check the flags for short or long entry
if [[ "$1" == "-s" ]]; then
    # Short entry via command line argument
    if [[ -z "$2" ]]; then
        echo "Error: No entry provided. Usage: ./rant.sh -s \"Your log entry\""
        exit 1
    else
        append_entry "$2"
    fi
elif [[ "$1" == "-l" ]]; then
    # Long entry via nvim
    tmpfile=$(mktemp)
    nvim "$tmpfile"
    entry=$(cat "$tmpfile")
    rm "$tmpfile"
    append_entry "$entry"
else
    echo "Usage: ./rant.sh -s \"Your log entry\" for short entry"
    echo "Usage: ./rant.sh -l for long entry via nvim"
    exit 1
fi
