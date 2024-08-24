#!/bin/bash

# 显示开始构建补丁的信息
echo "Start Builder Patch !"
# 输出当前的工作目录路径
echo "Current Path: $PWD"

# 切换到指定的工作目录，如果目录不存在则退出脚本
cd $GITHUB_WORKSPACE/$VENDOR-imagebuilder-$VERSION-$PLATFORM.Linux-x86_64 || exit

# 移除不需要的默认软件包
sed -i "/luci-app-cpufreq/d" include/target.mk

# 强制 opkg 在安装时覆盖已存在的文件
sed -i "s/install \$(BUILD_PACKAGES)/install \$(BUILD_PACKAGES) --force-overwrite/" Makefile

# 禁止生成ISO镜像，因为它们体积过大
sed -i "s/CONFIG_ISO_IMAGES=y/# CONFIG_ISO_IMAGES is not set/" .config

# 禁止生成VHDX镜像
sed -i "s/CONFIG_VHDX_IMAGES=y/# CONFIG_VHDX_IMAGES is not set/" .config

# 将根文件系统分区大小增加到500MB
# sed -i "s/CONFIG_TARGET_ROOTFS_PARTSIZE=300/CONFIG_TARGET_ROOTFS_PARTSIZE=800/" .config