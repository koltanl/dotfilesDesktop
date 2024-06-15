#!/bin/bash

file="$1"
editor="${EDITOR:-nano}"  # Default to nano if $EDITOR is not set
mime_type=$(file --brief --mime-type "$file")

# Define an array of known shell script mime types
shell_mime_types=("text/x-shellscript" "application/x-shellscript")

# Check if the file is a shell script based on mime type
if [[ " ${shell_mime_types[*]} " == *" $mime_type "* ]]; then
    $editor "$file"
else
    # Attempt to open the file using xdg-open
    xdg-open "$file" >/dev/null 2>&1

    # Check if xdg-open succeeded
    if [ $? -ne 0 ]; then
        # xdg-open failed, fallback to the text editor
        $editor "$file"
    fi
fi
