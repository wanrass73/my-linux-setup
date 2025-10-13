#!/bin/bash

# Define the directory containing the logos
LOGO_DIR="/home/aiwasevil/Pictures/FastfetchLogos"

# Select a random logo using shuf
SELECTED_LOGO=$(find "$LOGO_DIR" -maxdepth 1 -type f -name "*.txt" | shuf -n 1)

if [ -z "$SELECTED_LOGO" ]; then
    echo "No images found by find command in $LOGO_DIR. Using default fastfetch."
    fastfetch # Run fastfetch without logo if no images found
    exit 1
fi

# Run fastfetch with the selected logo and specified dimensions, using default modules
fastfetch --logo "$SELECTED_LOGO" --logo-type file --logo-height 12 --logo-width 10
