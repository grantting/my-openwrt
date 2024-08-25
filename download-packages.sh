#!/bin/sh

# 定义基础URL
BASE_URL="https://op.dllkids.xyz/packages/aarch64_cortex-a53/"
# 目标目录
TARGET_DIR="packages"

# 确保目标目录存在
mkdir -p "$TARGET_DIR"

# 软件包前缀
PACKAGE_PREFIX="luci-app-openclash"
PACKAGE_EXTENSION=".ipk"

# 尝试下载最新的luci-app-openclash ipk包
PACKAGE_NAME="${PACKAGE_PREFIX}*.${PACKAGE_EXTENSION}"
wget --output-document="$TARGET_DIR/${PACKAGE_NAME//\*/_}" "$BASE_URL$PACKAGE_NAME"

# 检查下载是否成功
if [ $? -eq 0 ]; then
    echo "下载成功，列出目录内容:"
    ls -1 "$TARGET_DIR"
else
    echo "下载失败，请检查网络连接或URL是否正确。"
fi