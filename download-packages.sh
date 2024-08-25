#!/bin/sh

# 定义基础URL
BASE_URL="https://dl.openwrt.ai/packages-23.05/aarch64_cortex-a53/packages/"
PACKAGES_FILE="Packages"
EXTERNAL_PACKAGE_FILE="external-package.txt"
TARGET_DIR="packages"

# 确保目标目录存在
mkdir -p "$TARGET_DIR"

# 下载 Packages 文件
wget --output-document="$PACKAGES_FILE" "$BASE_URL$PACKAGES_FILE"

# 检查下载是否成功
if [ $? -ne 0 ]; then
    echo "下载失败，请检查网络连接或URL是否正确。"
    exit 1
fi

# 读取外部文件列表
while IFS= read -r PACKAGE_NAME; do
    # 查找 Filename 字段中包含 PACKAGE_NAME 的行，并提取出文件名
    FILENAME=$(grep -i "Filename:" "$PACKAGES_FILE" | grep -i "$PACKAGE_NAME" | head -n 1 | cut -d':' -f2 | xargs)
    
    # 检查是否找到了对应的文件名
    if [ -n "$FILENAME" ]; then
        # 拼接完整的URL
        FULL_URL="$BASE_URL$FILENAME"
        
        # 下载文件到目标目录
        wget --output-document="$TARGET_DIR/$FILENAME" "$FULL_URL"
        
        # 检查下载是否成功
        if [ $? -eq 0 ]; then
            echo "下载成功，文件已保存到 $TARGET_DIR/$FILENAME"
        else
            echo "下载失败，请检查网络连接或URL是否正确。"
        fi
    else
        echo "未找到包含 $PACKAGE_NAME 的文件名。"
    fi
done < "$EXTERNAL_PACKAGE_FILE"