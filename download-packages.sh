#!/bin/sh

# 定义基础URL
BASE_URL="https://op.dllkids.xyz/packages/aarch64_cortex-a53/"
# 目标目录
TARGET_DIR="packages"

# 确保目标目录存在
mkdir -p "$TARGET_DIR"

# 软件包前缀
package_name="luci-app-openclash"

# 获取完整的软件包 URL
full_url=$(wget -qO- "$BASE_URL" | grep -oP "${package_name}.*?\.ipk" | head -n 1)

# 生成完整的下载 URL
download_url="$BASE_URL/$full_url"

# 下载软件包
wget -q "$download_url" -O "${package_name}.ipk"

# 检查下载是否成功
if [ $? -eq 0 ]; then
    echo "下载成功，列出目录内容:"
    ls -1 "$TARGET_DIR"
else
    echo "下载失败，请检查网络连接或URL是否正确。"
fi