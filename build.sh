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

# 使用 $PROFILE 变量
echo "Profile is set to: $PROFILE"

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
