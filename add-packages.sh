#!/bin/sh

# Base URL
BASE_URL="https://op.dllkids.xyz/packages/aarch64_cortex-a53/"
# Target directory
TARGET_DIR="packages"

# Ensure the target directory exists
mkdir -p "$TARGET_DIR"

# Get the page content and find the IPK file name
FILE_NAME=$(wget -qO- "$BASE_URL" | grep -oP 'luci-app-openclash_.*?_all\.ipk')
