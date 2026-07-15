#!/bin/bash
# 仅替换固件下载域名，不改动 feeds 拉取逻辑
sed -i 's|https://downloads.lede-project.org|https://archive.openwrt.org|g' feeds.conf.default
