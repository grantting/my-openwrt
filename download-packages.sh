#!/bin/sh

# Base URL
BASE_URL="https://op.dllkids.xyz/packages/aarch64_cortex-a53/"
# Target directory
TARGET_DIR="packages"
# Package list file
PACKAGE_LIST="external-package.txt"

# Ensure the target directory exists
mkdir -p "$TARGET_DIR"

# Function to download a package
download_package() {
  local package_name=$1
  local file_name=$(wget -qO- "$BASE_URL" | grep -oP "${package_name}.*?\.ipk")
  if [ -n "$file_name" ]; then
    wget "${BASE_URL}${file_name}" -P "${TARGET_DIR}"
    echo "Downloaded ${file_name}"
  else
    echo "File not found for ${package_name}"
  fi
}

# Read the package list file and download each package
while IFS= read -r package; do
  [ -z "$package" ] && continue  # Skip empty lines
  download_package "$package"
done < "$PACKAGE_LIST"
