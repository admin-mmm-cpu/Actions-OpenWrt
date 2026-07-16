#!/bin/bash
sed -i 's|https://git.lede-project.org|https://git.openwrt.org|g' feeds.conf.default
sed -i 's|https://downloads.lede-project.org|https://archive.openwrt.org|g' feeds.conf.default
