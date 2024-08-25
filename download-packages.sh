#!/bin/sh

# 定义基础URL
BASE_URL="https://op.dllkids.xyz/packages/aarch64_cortex-a53/"
PACKAGES_FILE="Packages"

# 下载 Packages 文件
wget --output-document="$PACKAGES_FILE" "$BASE_URL$PACKAGES_FILE"

# 检查下载是否成功
if [ $? -ne 0 ]; then
    echo "下载失败，请检查网络连接或URL是否正确。"
    exit 1
fi

# 查找包含 luci-app-alist 的行，并提取 Filename 字段
PACKAGE_NAME="luci-app-alist"
FILENAME=$(grep -A1 "Package: $PACKAGE_NAME" "$PACKAGES_FILE" | grep -i "Filename:" | cut -d':' -f2 | xargs)

# 检查是否找到了对应的文件名
if [ -n "$FILENAME" ]; then
    echo "找到的文件名为: $FILENAME"
else
    echo "未找到对应的文件名。"
fi