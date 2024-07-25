#!/bin/bash

URL="https://goatcorp.github.io/dalamud-distrib/latest.zip"
OUTFILE="latest.zip"
DEST_DIR="$HOME/.xlcore/dalamud/Hooks/dev"

# Download the file
curl -o "$OUTFILE" "$URL"

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Unzip the file to the destination directory
unzip -o "$OUTFILE" -d "$DEST_DIR"

# Clean up the zip file
rm "$OUTFILE"