#!/bin/bash

# 打印 info
make info

# 解析参数
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --profile) PROFILE="$2"; shift ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

# 检查是否指定了 PROFILE 参数
if [ -z "$PROFILE" ]; then
    echo "No profile specified."
    exit 1
fi

# JSON 文件路径
JSON_FILE="router_configs.json"

# 确保 jq 工具存在
if ! command -v jq &> /dev/null; then
    echo "jq tool is required but not installed. Please install jq."
    exit 1
fi

# 搜索 JSON 文件中的设备
MATCH=$(jq -r --arg profile "$PROFILE" '
    .[] | select(
        .supportedDevices[] | contains($profile)
    ) | .name
' "$JSON_FILE")

# 检查是否找到匹配的设备
if [ -n "$MATCH" ]; then
    echo "Device name(s) matching '$PROFILE':"
    echo "$MATCH"
else
    echo "No matching device found for profile '$PROFILE'."
fi

# 使用 $PROFILE 变量
PROFILE="$MATCH"

# 主配置名称
# PROFILE="qihoo_360t7"

PACKAGES=""

# Argon 主题
PACKAGES="$PACKAGES luci-theme-argon luci-i18n-argon-config-zh-cn"


# 常用软件服务

# OpenClash 代理
PACKAGES="$PACKAGES luci-app-openclash"

# 界面翻译补全
PACKAGES="$PACKAGES luci-i18n-opkg-zh-cn luci-i18n-base-zh-cn luci-i18n-firewall-zh-cn"

# 一些自定义文件
FILES="files"

make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"
