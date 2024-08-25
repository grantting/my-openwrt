#!/bin/sh

# 定义基础URL
BASE_URL="https://op.dllkids.xyz/packages/aarch64_cortex-a53/"
# 目标目录
TARGET_DIR="packages"

# 确保目标目录存在
mkdir -p "$TARGET_DIR"

# 下载文件
PACKAGE_NAME="luci-app-openclash_0.46.014-72_all.ipk"
wget --output-document="$TARGET_DIR/$PACKAGE_NAME" "$BASE_URL$PACKAGE_NAME"

# 检查下载是否成功
if [ $? -eq 0 ]; then
    echo "下载成功，列出目录内容:"
    ls -1 "$TARGET_DIR"
else
    echo "下载失败，请检查网络连接或URL是否正确。"
fi