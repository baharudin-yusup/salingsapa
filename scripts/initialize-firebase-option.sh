#!/bin/bash

# Source and destination variables
fileName="Firebase option"
sourceFile="../configs/$ENV/firebase_options.dart"
destinationFolder="../lib"

echo "Initialize $ENV $fileName started..."

# Check if environment variable is set
if [ -z "$ENV" ]; then
    echo "Environment variable ENV is not set."
    exit 1
fi

# Check if source file exists
if [ ! -f "$sourceFile" ]; then
    echo "$fileName source file not found: $sourceFile"
    exit 1
fi

# Check if destination folder exists
if [ ! -d "$destinationFolder" ]; then
    echo "Destination folder not found: $destinationFolder"
    exit 1
fi

# Copy the file and overwrite if it exists
if cp "$sourceFile" "$destinationFolder"; then
    echo "$fileName file successfully copied and overwritten!"
else
    echo "Failed to copy the $fileName file."
    exit 1
fi
