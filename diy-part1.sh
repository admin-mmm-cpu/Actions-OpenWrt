#!/bin/bash
# 替换LEDE软件源为清华镜像
sed -i 's#https://downloads.lede-project.org#https://mirrors.tuna.tsinghua.edu.cn/lede#g' feeds.conf.default
