#!/system/bin/sh
# Hide AOSP Contacts (same package com.android.contacts) so only XiaomiContacts is scanned.
# mountify can't overlay /product here (another module's system/product symlink breaks it),
# so mask the dir with an empty tmpfs instead.
PATH=/data/adb/ksu/bin:/data/adb/ap/bin:/data/adb/magisk:$PATH
AOSP_DIR=/product/priv-app/Contacts
if [ -d "$AOSP_DIR" ]; then
	busybox mount -t tmpfs -o mode=0755 tmpfs "$AOSP_DIR" && chcon u:object_r:system_file:s0 "$AOSP_DIR"
fi
