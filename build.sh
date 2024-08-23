#!/bin/bash

# 打印 info
make info

# 检查是否提供了正确的参数
if [[ "$1" != "--profile"* ]]; then
  echo "Usage: $0 --profile <profile_name>"
  exit 1
fi

# 主配置名称
# PROFILE="qihoo_360t7"

# 提取 profile 名称
PROFILE_NAME="${1#*=}"

# 定义一个函数来匹配传入的型号并返回对应的 PROFILE
match_profile() {
  local model=$1
  while IFS= read -r line; do
    if [[ $line =~ ^SupportedDevices:.+$ ]]; then
      if [[ ${BASH_REMATCH[0]} =~ $model ]]; then
        echo "${line%%:*}"
        return 0
      fi
    fi
  done < profiles.txt
}

# 查找并设置 PROFILE
PROFILE=$(match_profile "$PROFILE_NAME")
if [ -z "$PROFILE" ]; then
  echo "Model $PROFILE_NAME not found."
  exit 1
else
  echo "Found profile: $PROFILE"
  # 这里放置你的构建命令，例如:
  # make $PROFILE
  PROFILE="$PROFILE"
fi


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
