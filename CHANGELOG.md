# Hyper Dialer changelog

## v0.4 (6)
- Hide AOSP Contacts (`/product/priv-app/Contacts`, same `com.android.contacts` package) with an empty tmpfs at post-fs-data, so only Xiaomi Contacts is scanned. Works with mountify, where `.replace` and `/product` overlays are not applied.
- Add `updateJson` so KernelSU / Magisk / APatch can update the module from GitHub releases.

## v0.3 (5)
- Initial release (HyperOS 3 Phone, Contacts, InCallUI).
