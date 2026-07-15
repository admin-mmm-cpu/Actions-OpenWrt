#!/bin/bash
# 清空原有镜像替换，使用OpenWrt归档官方源（LEDE合并进OpenWrt归档
sed -i 's|https://downloads.lede-project.org|https://archive.openwrt.org|g' feeds.conf.default
