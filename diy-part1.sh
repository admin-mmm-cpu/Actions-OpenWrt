#!/bin/bash
# 修复废弃域名SSL证书不匹配问题
sed -i 's|https://git.lede-project.org|https://git.openwrt.org|g' feeds.conf.default
# 同步替换软件下载源归档地址
sed -i 's|https://downloads.lede-project.org|https://archive.openwrt.org|g' feeds.conf.default
