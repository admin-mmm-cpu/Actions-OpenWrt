#!/bin/bash
# 修复git.lede-project.org证书域名
sed -i 's|https://git.lede-project.org|https://git.openwrt.org|g' feeds.conf.default
sed -i 's|https://downloads.lede-project.org|https://archive.openwrt.org|g' feeds.conf.default

# 修复新版系统编译m4 c-stack.c报错
mkdir -p tools/m4/patches
cat > tools/m4/patches/001-fix-sigstksz.patch <<EOF
--- a/lib/c-stack.c
+++ b/lib/c-stack.c
@@ -52,6 +52,8 @@
 # include <sys/resource.h>
 #endif
 
+#define SIGSTKSZ 16384
+
 /* Don't use pthread_sigmask on Solaris 2.6, it crashes.  */
 #if defined HAVE_PTHREAD_SIGMASK && !defined __sun__
 # define gl_pthread_sigmask pthread_sigmask
EOF
