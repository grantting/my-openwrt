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

# 提取 profile 名称
PROFILE_NAME="${1#*=}"

# 定义一个函数来匹配传入的型号并返回对应的 PROFILE
match_profile() {
  local model=$1
  local profile=""
  
  # 逐行读取配置文件
  while IFS= read -r line; do
    if [[ $line =~ ^SupportedDevices:.+$ ]]; then
      # 提取 SupportedDevices 的值
      local supported_devices="${BASH_REMATCH[0]}"
      # 去掉 SupportedDevices: 前缀
      supported_devices="${supported_devices#*: }"
      # 替换逗号为空格，以便使用空格分割
      supported_devices="${supported_devices//,/ }"
      # 检查是否包含传入的模型
      if [[ $supported_devices =~ (^|[[:space:]])$model($|[[:space:]]) ]]; then
        # 获取当前配置的名称
        profile=$(head -n 1 $PROFILES_FILE | sed -n "/^$model/p")
        break
      fi
    fi
  done < "$PROFILES_FILE"
  
  echo "$profile"
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
