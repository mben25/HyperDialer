# Hyper Dialer Module

## DISCLAIMER
- Miui/HyperOS apps are owned by Xiaomi™.
- The MIT license specified here is for the Magisk Module only, not for Xiaomi apps.

## Descriptions
HyperOS 3 Phone, Contacts and in-call screen (InCallUI) by Xiaomi Inc. ported to AOSP ROMs as a Magisk/KernelSU module.

## Contents
- `system/priv-app/XiaomiContacts` (`com.android.contacts`, Phone + Contacts)
- `system/priv-app/XiaomiInCallUI` (`com.android.incallui`)
- Privileged permissions and sysconfig allowlists
- `post-fs-data.sh`: masks AOSP `/product/priv-app/Contacts` (same package name) with an empty tmpfs

## Requirements
- Android 14 (SDK 34) and up, arm64-v8a
- Magisk or KernelSU or APatch

## Installation
- Install the zip from the Releases page via the root manager app and reboot
- Set **Phone** as the default phone app (Settings > Apps > Default apps > Phone app) to use the Xiaomi dialer and in-call screen

## Support & Bug Report
- https://github.com/mben25/HyperDialer/issues

## Credits and Contributors
- mbenanaya
