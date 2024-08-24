#!/bin/bash

# 打印 info
make info

# 初始化 PROFILE 变量
PROFILE=""

# 解析命令行参数
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        --profile)
        # 将下一个参数值赋给 PROFILE
        PROFILE="$2"
        shift # 过掉 --profile 本身
        ;;
        *)    # 不认识的参数
        echo "Unknown option: $1"
        exit 1
        ;;
    esac
    shift # 过掉已经处理过的选项或者位置参数
done

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
