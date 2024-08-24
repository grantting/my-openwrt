#!/bin/bash

# 打印 info
make info

# 初始化 PROFILE 变量
PROFILE="$MODEL"

# 主配置名称
# PROFILE="qihoo_360t7"

PACKAGES=""

# Argon 主题
PACKAGES="$PACKAGES luci-theme-argon luci-i18n-argon-config-zh-cn"

# 主题neobird改版
PACKAGES="$PACKAGES luci-theme-design"

# 常用软件服务

# OpenClash 代理
PACKAGES="$PACKAGES luci-app-openclash"

# 网络加速
PACKAGES="$PACKAGES luci-app-turboacc"

# KMS服务器
PACKAGES="$PACKAGES luci-app-vlmcsd"

# DNS管理与去广告
PACKAGES="$PACKAGES luci-app-my-dnshelper"

# 假装iStoreOS
PACKAGES="$PACKAGES luci-app-store luci-app-quickstart"

# 界面翻译补全
PACKAGES="$PACKAGES luci-i18n-opkg-zh-cn luci-i18n-base-zh-cn luci-i18n-firewall-zh-cn"

# 一些自定义文件
FILES="files"

make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"
