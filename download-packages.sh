#!/bin/sh

# 定义基础URL
BASE_URL="https://op.dllkids.xyz/packages/aarch64_cortex-a53/"
# 目标目录
TARGET_DIR="packages"

# 确保目标目录存在
mkdir -p "$TARGET_DIR"

# 软件包前缀
PACKAGE_PREFIX="luci-app-openclash_"
PACKAGE_EXTENSION=".ipk"

# 获取网页内容并提取出符合模式的文件名
PACKAGE_NAME=$(wget -qO- "$BASE_URL" | grep -oP "${PACKAGE_PREFIX}.*?${PACKAGE_EXTENSION}")

# 如果找到了合适的文件名，则下载
if [ -n "$PACKAGE_NAME" ]; then
    wget --output-document="$TARGET_DIR/$PACKAGE_NAME" "$BASE_URL$PACKAGE_NAME"
    
    # 检查下载是否成功
    if [ $? -eq 0 ]; then
        echo "下载成功，列出目录内容:"
        ls -1 "$TARGET_DIR"
    else
        echo "下载失败，请检查网络连接或URL是否正确。"
    fi
else
    echo "未找到符合模式的文件名，请检查基础URL或模式是否正确。"
fi