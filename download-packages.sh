#!/bin/sh

# 读取 .config 文件中的每一行
while IFS= read -r line; do
  # 检查是否是 CONFIG_TARGET_ARCH_PACKAGES 行
  if [[ $line =~ ^CONFIG_TARGET_ARCH_PACKAGES="([^"]+)"$ ]]; then
    # 提取 CONFIG_TARGET_ARCH_PACKAGES 的值
    ARCH_VALUE="${BASH_REMATCH[1]}"
    # 构建 BASE_URL
    BASE_URL="https://op.dllkids.xyz/packages/$ARCH_VALUE/"
    # 输出 BASE_URL
    echo "BASE_URL=\"$BASE_URL\""
    # 退出循环
    break
  fi
done < ".config"


# 定义基础URL
# BASE_URL="https://op.dllkids.xyz/packages/aarch64_cortex-a53/"

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
    # 查找 Filename 字段中包含 PACKAGE_NAME 的所有行，并提取出文件名
    while IFS=: read -r _ FILENAME; do
        # 清除 FILENAME 中的空格
        FILENAME=$(echo "$FILENAME" | xargs)
        
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
    done < <(grep -i "Filename:" "$PACKAGES_FILE" | grep -i "$PACKAGE_NAME")
done < "$EXTERNAL_PACKAGE_FILE"