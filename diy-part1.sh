#!/bin/bash
# 修复旧lede域名SSL证书问题
sed -i 's|https://git.lede-project.org|https://git.openwrt.org|g' feeds.conf.default
sed -i 's|https://downloads.lede-project.org|https://archive.openwrt.org|g' feeds.conf.default

# 直接修改m4源码，定义SIGSTKSZ，不用patch文件（避免行号不匹配失败）
mkdir -p openwrt/tools/m4/patches
# 下载解压后自动修改c-stack.c，强制定义宏
echo "
define m4 fix sigstksz
prepare:
	[ -f \$(BUILD_DIR)/lib/c-stack.c ] && sed -i '53i #define SIGSTKSZ 16384' \$(BUILD_DIR)/lib/c-stack.c
" >> openwrt/tools/m4/Makefile
