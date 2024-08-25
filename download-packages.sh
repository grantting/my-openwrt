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
  local full_url="$BASE_URL$(wget -qO- "$BASE_URL" | grep -oP "${package_name}.*?\.ipk")"
  
  if [ -n "$full_url" ]; then
    local file_name=$(basename "$full_url")
    if [ ! -f "$TARGET_DIR/$file_name" ]; then
      wget -q --show-progress "$full_url" -P "$TARGET_DIR"
      echo "Downloaded $full_url"
    else
      echo "$file_name already exists, skipping download."
    fi
  else
    echo "File not found for $package_name"
  fi
}

# 读取包列表文件并下载各个包
while IFS= read -r package; do
  [ -z "$package" ] && continue  # Skip empty lines
  download_package "$package"
done < "$PACKAGE_LIST"

# 列出目标目录中的包的函数
list_packages() {
  echo "Packages in $TARGET_DIR:"
  ls -1 "$TARGET_DIR"
}

# 最后列出下载的包
list_packages