#!/bin/bash

# 打印 info
make info

# 检查是否至少有一个参数传递进来
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 --profile <profile_name>"
    exit 1
fi

# 获取 --profile 参数之后的值
profile=$1

# 如果 --profile 后面跟着正确的参数，则将其赋值给 PROFILE 变量
if [[ $profile == "--profile"* ]]; then
    PROFILE=${profile#*=}
fi


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
