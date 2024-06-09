# Source and destination variables
$fileName = "Firebase option"
$sourceFile = ".\\configs\\$env:ENV\\firebase_options.dart"
$destinationFolder = ".\\lib"

Write-Host "Initialize $env:ENV $fileName started..."

# Check if environment variable is set
if (-Not $env:ENV) {
    Write-Host "Environment variable ENV is not set."
    exit 1
}

# Check if source file exists
if (-Not (Test-Path $sourceFile)) {
    Write-Host "$fileName source file not found: $sourceFile"
    exit 1
}

# Check if destination folder exists
if (-Not (Test-Path $destinationFolder)) {
    Write-Host "Destination folder not found: $destinationFolder"
    exit 1
}

# Copy the file and overwrite if it exists
try {
    Copy-Item -Path $sourceFile -Destination $destinationFolder -Force
    Write-Host "$fileName file successfully copied and overwritten!"
} catch {
    Write-Host "Failed to copy the $fileName file."
    exit 1
}