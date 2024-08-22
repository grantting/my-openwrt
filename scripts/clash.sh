#!/bin/bash

# 显示开始下载 Clash 核心的信息
echo "Start Clash Core Download !"
# 输出当前的工作目录路径
echo "Current Path: $PWD"

# 创建文件夹 files/etc/openclash/core 如果不存在则创建
mkdir -p files/etc/openclash/core
# 切换到 files/etc/openclash/core 目录，如果目录不存在则输出错误信息并退出脚本
cd files/etc/openclash/core || (echo "Clash core path does not exist! " && exit)

# 下载 Clash Dev 版本
wget https://raw.githubusercontent.com/vernesong/OpenClash/core/master/dev/clash-linux-amd64.tar.gz
# 解压下载的 tar.gz 文件
tar -zxvf clash-linux-amd64.tar.gz
# 删除压缩包
rm -rf clash-linux-amd64.tar.gz
# 重命名解压后的文件为 clash_dev
mv clash clash_dev

# 下载 Clash TUN 版本
# 获取 Clash TUN 版本号
VERSION=$(curl -sS https://raw.githubusercontent.com/vernesong/OpenClash/core/dev/core_version | awk 'NR==2')
# 下载指定版本的 Clash TUN
wget https://raw.githubusercontent.com/vernesong/OpenClash/core/master/premium/clash-linux-amd64-$VERSION.gz
# 解压下载的 gz 文件
gzip -d clash-linux-amd64-$VERSION.gz
# 删除压缩包
rm -rf clash-linux-amd64-$VERSION.gz
# 重命名解压后的文件为 clash_tun
mv clash-linux-amd64-$VERSION clash_tun

# 下载 Clash Meta 版本
wget https://raw.githubusercontent.com/vernesong/OpenClash/core/master/meta/clash-linux-amd64.tar.gz
# 解压下载的 tar.gz 文件
tar -zxvf clash-linux-amd64.tar.gz
# 删除压缩包
rm -rf clash-linux-amd64.tar.gz
# 重命名解压后的文件为 clash_meta
mv clash clash_meta

# 将 clash_dev 设置为默认的核心版本
mv clash_dev clash