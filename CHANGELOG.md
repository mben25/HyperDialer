# Hyper Dialer changelog

## v0.5 (7)
- Fix the in-call screen crashing and reopening during calls. InCallUI declared the `com.miui.system` shared library; when it is installed (e.g. by HyperCore), its `miui.yellowpage.YellowPageUtils` shadows the copy bundled in InCallUI and fails on `miui.os.Build`, so InCallUI crashed on every caller lookup and Telecom fell back to the AOSP Dialer, which crashed too. InCallUI is self-contained, so the library declaration is neutralized and the APK re-signed.
- Clear PackageManager's cached parse of the module APKs at boot, so updated APKs are always rescanned.

## v0.4 (6)
- Hide AOSP Contacts (`/product/priv-app/Contacts`, same `com.android.contacts` package) with an empty tmpfs at post-fs-data, so only Xiaomi Contacts is scanned. Works with mountify, where `.replace` and `/product` overlays are not applied.
- Add `updateJson` so KernelSU / Magisk / APatch can update the module from GitHub releases.

## v0.3 (5)
- Initial release (HyperOS 3 Phone, Contacts, InCallUI).
