#!/bin/bash

# 打印 info
make info

# 主配置名称
# PROFILE="qihoo_360t7"

# 初始化 PROFILE 变量
PROFILE="$MODEL"

# 初始化PACKAGES
PACKAGES=""

# 读取 external-package.txt 文件中的每一行
while IFS= read -r PACKAGE_NAME; do
    # 将当前条目添加到 PACKAGES 变量中，并用空格分隔
    PACKAGES="$PACKAGES $PACKAGE_NAME"
done < "external-package.txt"

# 删除第一个空格
PACKAGES="${PACKAGES# }"

# 输出最终的 PACKAGES 变量
echo "PACKAGES=\"$PACKAGES\""

# 一些自定义文件
FILES="files"

make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"
