# GitHub PR Report for flutter/flutter
## From 2025-11-07

This period saw several significant enhancements to the Flutter framework's public API and tooling. Most notably, the `HapticFeedback` class was expanded with methods for success, warning, and error notifications ([PR #177721](https://github.com/flutter/flutter/pull/177721)), resolving a highly requested feature ([Issue #150029](https://github.com/flutter/flutter/issues/150029)). State preservation in lists was improved with a fix for `ListView.separated` and `SliverList.separated` that introduces a new `findItemIndexCallback`, deprecating the old callback to correctly account for separators ([PR #174491](https://github.com/flutter/flutter/pull/174491)). For Android developers, a new `disable-abi-filtering` flag gives more control over build configurations by allowing custom Gradle `abiFilters` to be respected ([PR #177753](https://github.com/flutter/flutter/pull/177753)). Other key updates include the addition of `InputDecoration.maintainLabelSize` to prevent label truncation in `InputDecorator` intrinsic width calculations ([PR #178101](https://github.com/flutter/flutter/pull/178101)), a fix for a tool crash caused by invalid UTF-8 characters from ADB logs ([PR #178170](https://github.com/flutter/flutter/pull/178170)), and an engine-level migration to Skia's modern `SkPathBuilder` API ([PR #178142](https://github.com/flutter/flutter/pull/178142)).

## Merged Pull Requests

### [PR #178170](https://github.com/flutter/flutter/pull/178170): [ Tool ] Ignore invalid UTF-8 from ADB's stdout
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-11-07
* **Comments:** 3
* **Summary:** This pull request fixes a regression in the Flutter tool's Android log reader by ignoring invalid UTF-8 characters from the ADB `stdout` stream, which prevents the tool from crashing when processing malformed logcat data.

### [PR #178142](https://github.com/flutter/flutter/pull/178142): Reland "Update all uses of mutable SkPath methods to use SkPathBuilder"
* **Author:** [jason-simmons](https://github.com/jason-simmons)
* **Merged At:** 2025-11-07
* **Comments:** 0
* **Summary:** Replaces all uses of Skia's mutable `SkPath` methods with the modern `SkPathBuilder` API throughout the engine. This change aligns with upstream Skia recommendations and adds the `SK_HIDE_PATH_EDIT_METHODS` build flag to prevent future use of the legacy API.

### [PR #178101](https://github.com/flutter/flutter/pull/178101): Allow label to be used to compute InputDecorator Intrinsic width
* **Author:** [bleroux](https://github.com/bleroux)
* **Merged At:** 2025-11-07
* **Comments:** 1
* **Summary:** Adds `InputDecoration.maintainLabelSize`, a new property that, when enabled, includes the label's width in the `InputDecorator`'s intrinsic width calculation to prevent the label from being truncated.

### [PR #178078](https://github.com/flutter/flutter/pull/178078): [web] Remove unnecessary android_sdk dep
* **Author:** [mdebbar](https://github.com/mdebbar)
* **Merged At:** 2025-11-07
* **Comments:** 1
* **Summary:** Removes the unnecessary `android_sdk` and `open_jdk` dependencies from several web-related CI test configurations.

### 🔥 [PR #177753](https://github.com/flutter/flutter/pull/177753): Respect product flavor abiFilters by adding a `disable-abi-filtering` Android project flag.
* **Author:** [mboetger](https://github.com/mboetger)
* **Merged At:** 2025-11-07
* **Comments:** 6
* **Summary:** Introduces a `disable-abi-filtering` flag for Android builds that prevents the Flutter tool from applying default ABI filters, allowing developers' custom `abiFilters` in Gradle product flavors to be respected.

### [PR #177721](https://github.com/flutter/flutter/pull/177721): Add haptic notifications support.
* **Author:** [ksokolovskyi](https://github.com/ksokolovskyi)
* **Merged At:** 2025-11-07
* **Comments:** 3
* **Summary:** Adds `successNotification`, `warningNotification`, and `errorNotification` methods to the `HapticFeedback` class, allowing developers to trigger platform-specific haptics for these common states on iOS and Android (API 30+).

### [PR #177313](https://github.com/flutter/flutter/pull/177313): Fix text input actions in DropdownMenu.
* **Author:** [ksokolovskyi](https://github.com/ksokolovskyi)
* **Merged At:** 2025-11-07
* **Comments:** 3
* **Summary:** Fixes an issue where `TextInputAction` was not correctly handled in `DropdownMenu` by moving the submission logic to `onSubmitted` and wrapping menu items with `ExcludeFocus` to allow for proper focus traversal.

### 🔥 [PR #174491](https://github.com/flutter/flutter/pull/174491): fix: findChildIndexCallback to take seperators into account for seperated named constructor in ListView and SliverList
* **Author:** [rkishan516](https://github.com/rkishan516)
* **Merged At:** 2025-11-07
* **Comments:** 6
* **Summary:** Fixes state preservation in `ListView.separated` and `SliverList.separated` by adding a new `findItemIndexCallback` that works with item indices, deprecating the old `findChildIndexCallback` which required developers to manually account for separators.


## Closed Issues

### [Issue #178168](https://github.com/flutter/flutter/issues/178168): linux-17 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* **Closed At:** 2025-11-07

### [Issue #178155](https://github.com/flutter/flutter/issues/178155): Bad UTF-8 encoding (U+FFFD; REPLACEMENT CHARACTER) found while decoding string: flutter: [BleCommunicationService]
* **Author:** [maurodev16](https://github.com/maurodev16)
* **Closed At:** 2025-11-07

### [Issue #178145](https://github.com/flutter/flutter/issues/178145): [DraggableScrollableSheet] Unclear assertion in the framework
* **Author:** [tjamet](https://github.com/tjamet)
* **Closed At:** 2025-11-07

### [Issue #178128](https://github.com/flutter/flutter/issues/178128): Flutter Arch Linux Web-server Problem!
* **Author:** [guicybercode](https://github.com/guicybercode)
* **Closed At:** 2025-11-07

### [Issue #178099](https://github.com/flutter/flutter/issues/178099): TextField intrinsic width does not take label into account
* **Author:** [bleroux](https://github.com/bleroux)
* **Closed At:** 2025-11-07

### [Issue #177230](https://github.com/flutter/flutter/issues/177230): [tool_crash] DartDevelopmentServiceException
* **Author:** [patrickskyman](https://github.com/patrickskyman)
* **Closed At:** 2025-11-07

### [Issue #177101](https://github.com/flutter/flutter/issues/177101): App will immediately crash because of flutter map sdk
* **Author:** [leslie0007](https://github.com/leslie0007)
* **Closed At:** 2025-11-07

### [Issue #177009](https://github.com/flutter/flutter/issues/177009): [DropdownMenu] Keyboard not closing when clicking on `done` with `requestFocusOnTap: true` on mobiles
* **Author:** [Gustl22](https://github.com/Gustl22)
* **Closed At:** 2025-11-07

### [Issue #175845](https://github.com/flutter/flutter/issues/175845): [Android] reconfigure abiFilters not effect in productFlavors abiFilters
* **Author:** [yiky84119](https://github.com/yiky84119)
* **Closed At:** 2025-11-07
* **Reactions:** **2** -- 👍 1 ❤️ 1

### [Issue #174261](https://github.com/flutter/flutter/issues/174261): ListView.separated findChildIndexCallback doesn't take separators into account
* **Author:** [SynSzakala](https://github.com/SynSzakala)
* **Closed At:** 2025-11-07
* **Reactions:** **4** -- 👍 4

### [Issue #150029](https://github.com/flutter/flutter/issues/150029): HapticFeedback: Support UINotificationFeedbackType.success/warning/error on iOS
* **Author:** [yuukiw00w](https://github.com/yuukiw00w)
* **Closed At:** 2025-11-07
* **Reactions:** **9** -- 👍 9


