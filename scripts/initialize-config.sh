#!/bin/bash

# Source and destination variables
SOURCE_FILE="./firebase_options.dart"
DESTINATION_FOLDER="../../lib"

# Ensure the source file exists
if [ ! -f "$SOURCE_FILE" ]; then
    echo "Source file not found: $SOURCE_FILE"
    exit 1
fi

# Ensure the destination folder exists
if [ ! -d "$DESTINATION_FOLDER" ]; then
    echo "Destination folder not found: $DESTINATION_FOLDER"
    exit 1
fi

# Copy the file and overwrite if a file with the same name exists
cp -f "$SOURCE_FILE" "$DESTINATION_FOLDER"

# Check the status of the copy operation
if [ $? -eq 0 ]; then
    echo "File successfully copied and overwritten: $DESTINATION_FOLDER/$(basename $SOURCE_FILE)"
else
    echo "Failed to copy the file."
    exit 1
fi
