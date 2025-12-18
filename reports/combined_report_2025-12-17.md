# Overall Summary
**[Issue #57036](https://github.com/dart-lang/sdk/issues/57036) (dart-lang/sdk): [Dot Shorthands][meta] Dot shorthands implementation**
  * **Reactions:** **91** -- 👍 31 🎉 56 👀 4
  * This meta issue tracks the implementation of the dot shorthands feature, providing a checklist of work items and links to relevant resources.

**🔥🔥🔥 [PR #177551](https://github.com/flutter/flutter/pull/177551) (flutter/flutter): Platform view blur clipping - Rounded Rect (iOS)**
  * **Comments:** 15
  * Fixes an issue on iOS where blurs on platform views were not correctly clipped by rounded rectangles. This is resolved by forwarding the clip shape to the mutator stack, allowing the native `UIVisualEffectView` that renders the blur to apply the appropriate corner radius.

**🔥 [PR #10312](https://github.com/flutter/packages/pull/10312) (flutter/packages): feat(android): add audio track selection for ExoPlayer**
  * **Comments:** 8
  * This PR adds `getAudioTracks()` and `selectAudioTrack()` methods to the Android video player, allowing developers to list and switch between available audio tracks using ExoPlayer's track selection APIs.

**🔥 [PR #171348](https://github.com/flutter/flutter/pull/171348) (flutter/flutter): Feat: Add top gap for cupertino sheet**
  * **Comments:** 7
  * Adds a `topGap` property to `CupertinoSheetRoute` and `showCupertinoSheet` that allows developers to customize the space between the top of the screen and the sheet.

**🔥 [PR #177855](https://github.com/flutter/flutter/pull/177855) (flutter/flutter): Add Cyrillic keyboard layout support for flutter_tools terminal commands**
  * **Comments:** 10
  * This PR adds support for the Cyrillic (ЙЦУКЕН) keyboard layout to the `flutter_tools` terminal handler, allowing developers to use commands like hot reload and hot restart without needing to switch to a Latin keyboard layout.

**[PR #179210](https://github.com/flutter/flutter/pull/179210) (flutter/flutter): Fix pinned header in NestedScrollView**
  * **Comments:** 2
  * Fixes a highly-requested issue ([#91972](https://github.com/flutter/flutter/issues/91972)) where a pinned header in the body of a `NestedScrollView` would not stay pinned correctly. The fix updates the `SliverOverlapInjector` to properly set its `layoutExtent` and ensure correct overlap for following slivers.

**🔥 [PR #12787](https://github.com/flutter/website/pull/12787) (flutter/website): Refactor AI Toolkit documentation to update LLM provider references a…**
  * **Comments:** 6
  * This PR updates the AI Toolkit documentation to reflect the consolidation of the deprecated `google_generative_ai` and `vertexai_firebase` packages into the new `firebase_ai` package, updating all provider references and code examples to use the new unified `FirebaseProvider`.

**[PR #608](https://github.com/flutter/genui/pull/608) (flutter/genui): Bump versions in preparation for publishing**
  * **Comments:** 0
  * Prepares for a new `0.6.0` release by introducing several breaking changes to the public API, including the renaming of `GenUiManager` to `A2uiMessageProcessor` and the removal of the `GenUiConfiguration` class.


# GitHub PR Report for dart-lang/ai
## From 2025-12-16

Based on the provided information, there were no pull requests merged or issues closed during this period. Consequently, there were no changes to the repository's codebase, features, or public API.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2025-12-16

This period focused on improvements to language features and the web platform. The highly anticipated meta-issue for the dot shorthands language feature ([#57036](https://github.com/dart-lang/sdk/issues/57036)), which received significant community interest, has been closed, marking progress on its implementation. Tooling for pattern matching was also enhanced by fixing a bug where autocomplete was not available for pattern variables inside a `switch` statement's `when` clause ([#62210](https://github.com/dart-lang/sdk/issues/62210)). Finally, for web developers, an issue was resolved where a missing `<meta charset="UTF-8">` tag in `index.html` would cause a web app to fail with a cryptic error ([#62090](https://github.com/dart-lang/sdk/issues/62090)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62210](https://github.com/dart-lang/sdk/issues/62210): Missing autocomplete/content assist in `when` clause of `switch`
* **Author:** [denniskaselow](https://github.com/denniskaselow)
* Autocomplete for variables declared in a `switch` case pattern is not available within the `when` guard clause, although it works correctly in the case body.

### [Issue #62090](https://github.com/dart-lang/sdk/issues/62090): [WEB] app will not start if index.html is missing meta charset tag
* **Author:** [jmandawg](https://github.com/jmandawg)
* A Flutter web app will fail to start with a cryptic `RangeError` if the `<meta charset="UTF-8">` tag is removed from its `web/index.html` file.

### [Issue #57036](https://github.com/dart-lang/sdk/issues/57036): [Dot Shorthands][meta] Dot shorthands implementation
* **Author:** [kallentu](https://github.com/kallentu)
* **Reactions:** **91** -- 👍 31 🎉 56 👀 4
* This meta issue tracks the implementation of the dot shorthands feature, providing a checklist of work items and links to relevant resources.


# GitHub PR Report for dart-lang/language
## From 2025-12-16

Based on the provided information, there were no merged pull requests or closed issues during this period. Consequently, there were no code changes, bug fixes, or updates to the repository's public API or language features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2025-12-16

During this period, there were no code or documentation changes to the repository, as no pull requests were merged and no issues were closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/ai
## From 2025-12-16

During this period, no pull requests were merged and no issues were closed, resulting in no changes to the repository's codebase or features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-12-16

During this period, there were no pull requests merged or issues closed, resulting in no changes to the repository's codebase or functionality.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-12-16

This period saw several notable improvements to Flutter's widget library, platform-specific rendering, and developer tooling. A long-standing layout issue was resolved, fixing how a pinned header in the body of a `NestedScrollView` interacts with the outer header, addressing a highly-requested feature ([#91972](https://github.com/flutter/flutter/issues/91972), [#179210](https://github.com/flutter/flutter/pull/179210)). For the public API, a new `topGap` property was added to `CupertinoSheetRoute` to allow developers to customize the space above a modal sheet ([#171348](https://github.com/flutter/flutter/pull/171348)). On iOS, a popular pull request ([#177551](https://github.com/flutter/flutter/pull/177551)) fixed an issue where blurs on platform views were not correctly clipped by rounded rectangles. Developer experience was also enhanced, with a highly-discussed change ([#177855](https://github.com/flutter/flutter/pull/177855)) adding support for Cyrillic keyboard layouts to `flutter_tools` terminal commands. Other key fixes include correcting the intrinsic height calculation in `ListTile` to prevent layout overflows ([#179515](https://github.com/flutter/flutter/pull/179515)) and adding a new `--default-linux-sysroot` flag to the `gn` tool for engine developers ([#179303](https://github.com/flutter/flutter/pull/179303)).

## Merged Pull Requests

### [PR #179951](https://github.com/flutter/flutter/pull/179951): [ Tool ] Fix update-packages not accounting for path dependencies
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-12-16 03:41 PM
* **Comments:** 1
* This PR fixes an issue in the `update-packages` tool where projects with local path dependencies failed to update correctly. The tool now processes interdependent projects together, copying their `pubspec.yaml` files into a temporary directory that preserves their relative path structure, allowing path dependencies to be resolved.

### [PR #179950](https://github.com/flutter/flutter/pull/179950): `flutter update-packages --force-upgrade --update-hashes`
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2025-12-16 11:13 AM
* **Comments:** 3
* This PR force-upgrades several package dependencies to resolve a broken dependency graph that was causing failures in the CI environment.

### [PR #179920](https://github.com/flutter/flutter/pull/179920): [Reland] Unmodified android sdk bundle
* **Author:** [gmackall](https://github.com/gmackall)
* **Merged At:** 2025-12-16 01:08 PM
* **Comments:** 0
* This PR switches the CI to use an unmodified Android SDK bundle, which places the NDK in its standard directory rather than a custom path. This change simplifies the SDK packaging script and adds a mechanism to automatically discover the NDK path during test runs, removing the need for workarounds in numerous build configuration files.

### [PR #179912](https://github.com/flutter/flutter/pull/179912): fix: line endings for flutter/dart/flutter-dev
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* **Merged At:** 2025-12-16 01:34 PM
* **Comments:** 1
* This pull request updates the `.gitattributes` file to enforce Unix-style (LF) line endings for the `flutter`, `dart`, and `flutter-dev` shell scripts, preventing them from being corrupted by Windows-style line endings on build machines.

### [PR #179897](https://github.com/flutter/flutter/pull/179897): Revert "chore: linux fuchsia tests are flaking"
* **Author:** [zijiehe-google-com](https://github.com/zijiehe-google-com)
* **Merged At:** 2025-12-15 08:58 PM
* **Comments:** 2
* This PR removes the `bringup: true` flag from the `linux_fuchsia_tests` CI configuration, indicating that the test is now considered stable and its failures will once again block the tree.

### [PR #179895](https://github.com/flutter/flutter/pull/179895): Revert "[ios][pv] accept/reject gesture based on hitTest (with new wi…
* **Author:** [hellohuanlin](https://github.com/hellohuanlin)
* **Merged At:** 2025-12-16 01:52 PM
* **Comments:** 1
* This PR reverts a previous change that introduced a `hitTest`-based API for deciding whether gestures should be handled by iOS platform views, opting for a simpler immediate fix while planning to revisit the hit-testing approach later.

### [PR #179888](https://github.com/flutter/flutter/pull/179888): [CP-beta][ Widget Preview ] Pass DTD URI as a constant in a generated file
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-12-16 10:02 AM
* **Comments:** 2
* Fixes a bug in `flutter widget-preview start` that caused growing disk usage by passing the Dart Tooling Daemon (DTD) URI as a constant in a generated file instead of a command-line argument, which prevents the build cache from being invalidated on each run.

### [PR #179887](https://github.com/flutter/flutter/pull/179887): [CP-stable][ Widget Preview ] Pass DTD URI as a constant in a generated file
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-12-16 10:03 AM
* **Comments:** 2
* Fixes an issue where `flutter widget-preview start` would create new cached build artifacts on each execution by passing the Dart Tooling Daemon URI via a generated source file instead of a `dart-define`, allowing the build cache to be reused.

### [PR #179884](https://github.com/flutter/flutter/pull/179884): Filter out FrameEvents/updateAcquireFence log spam from adb logcat
* **Author:** [shindonghwi](https://github.com/shindonghwi)
* **Merged At:** 2025-12-16 12:24 PM
* **Comments:** 0
* Filters out spammy `FrameEvents/updateAcquireFence` messages from the `adb logcat` output, which can occur when using Android platform views, to prevent harmless system logs from obscuring application messages.

### [PR #179868](https://github.com/flutter/flutter/pull/179868): Align `Build.API_LEVELS` usage in `FlutterImageDecoder.java‎` with existing usage
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-12-16 02:15 PM
* **Comments:** 5
* Refactors `FlutterImageDecoder.java` to use a static import for `Build.API_LEVELS`, aligning its usage with existing patterns in the codebase.

### [PR #179799](https://github.com/flutter/flutter/pull/179799): [CP-stable]Update .ci.yaml in flutter/flutter to use either macOS 15.5 or macOS …
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-12-16 10:10 AM
* **Comments:** 2
* Updates various CI configuration files to allow test runners to use either macOS 15.5 or macOS 15.7, increasing the pool of available machines for testing.

### [PR #179751](https://github.com/flutter/flutter/pull/179751): Roll pub packages
* **Author:** [flutter-pub-roller-bot](https://github.com/flutter-pub-roller-bot)
* **Merged At:** 2025-12-15 04:00 PM
* **Comments:** 3
* This PR updates the `yaml_edit` and `webview_flutter_wkwebview` packages to their latest versions.

### [PR #179707](https://github.com/flutter/flutter/pull/179707): [CP-stable]Ensure that the engine converts std::filesystem::path objects to UTF-8 strings on Windows
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-12-16 10:23 AM
* **Comments:** 2
* Fixes a crash when launching Windows apps from a path containing non-ASCII characters by introducing a new utility function to ensure `std::filesystem::path` objects are correctly converted to UTF-8 strings.

### [PR #179624](https://github.com/flutter/flutter/pull/179624): Update some comments related to theme normalization
* **Author:** [bleroux](https://github.com/bleroux)
* **Merged At:** 2025-12-16 03:10 PM
* **Comments:** 0
* This pull request updates documentation comments in several Material theme classes to consistently reflect recent theme normalization changes, clarifying how local themes fall back to the global `ThemeData`.

### [PR #179515](https://github.com/flutter/flutter/pull/179515): ListTile fix MinIntrinsicHeight calculation
* **Author:** [RamonFarizel](https://github.com/RamonFarizel)
* **Merged At:** 2025-12-16 03:31 PM
* **Comments:** 2
* This PR fixes the `computeMinIntrinsicHeight` calculation in `ListTile` to correctly account for vertical padding, ensuring proper layout when the widget is used in contexts that rely on intrinsic sizing.

### [PR #179303](https://github.com/flutter/flutter/pull/179303): add default-linux-sysroot to gn frontend args
* **Author:** [planetmarshall](https://github.com/planetmarshall)
* **Merged At:** 2025-12-15 04:14 PM
* **Comments:** 2
* This PR adds a `--[no-]default-linux-sysroot` flag to the `gn` tool, allowing developers to control whether the default Flutter-provided sysroot is used when building for Linux.

### [PR #179210](https://github.com/flutter/flutter/pull/179210): Fix pinned header in NestedScrollView
* **Author:** [manu-sncf](https://github.com/manu-sncf)
* **Merged At:** 2025-12-16 03:20 PM
* **Comments:** 2
* This PR fixes an issue where a pinned header in the body of a `NestedScrollView` would not stay pinned correctly, which is resolved by updating the `SliverOverlapInjector` to properly set its `layoutExtent` and ensure correct overlap for following slivers.

### [PR #178601](https://github.com/flutter/flutter/pull/178601): Minor fixes for libstdc++ 15
* **Author:** [selfisekai](https://github.com/selfisekai)
* **Merged At:** 2025-12-16 02:39 PM
* **Comments:** 1
* This pull request fixes build failures with libstdc++ 15 by adding several missing C++ standard library headers and changing an internal tool's API to use `std::string` instead of `std::string_view` for a file path.

### 🔥 [PR #177855](https://github.com/flutter/flutter/pull/177855): Add Cyrillic keyboard layout support for flutter_tools terminal commands
* **Author:** [777genius](https://github.com/777genius)
* **Merged At:** 2025-12-16 02:50 PM
* **Comments:** 10
* This PR adds support for the Cyrillic (ЙЦУКЕН) keyboard layout to the `flutter_tools` terminal handler, allowing developers to use commands like hot reload and hot restart without needing to switch to a Latin keyboard layout.

### 🔥🔥🔥 [PR #177551](https://github.com/flutter/flutter/pull/177551): Platform view blur clipping - Rounded Rect (iOS)
* **Author:** [Hari-07](https://github.com/Hari-07)
* **Merged At:** 2025-12-16 01:20 PM
* **Comments:** 15
* Fixes an issue on iOS where blurs on platform views were not correctly clipped by rounded rectangles. This is resolved by forwarding the clip shape to the mutator stack, allowing the native `UIVisualEffectView` that renders the blur to apply the appropriate corner radius.

### 🔥 [PR #171348](https://github.com/flutter/flutter/pull/171348): Feat: Add top gap for cupertino sheet
* **Author:** [rkishan516](https://github.com/rkishan516)
* **Merged At:** 2025-12-16 02:17 PM
* **Comments:** 7
* Adds a `topGap` property to `CupertinoSheetRoute` and `showCupertinoSheet` that allows developers to customize the space between the top of the screen and the sheet.


## Closed Issues

### [Issue #179948](https://github.com/flutter/flutter/issues/179948): mac-72 is dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The Mac host `mac-72` is reported to be unresponsive.

### [Issue #179947](https://github.com/flutter/flutter/issues/179947): mac-1 is dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The build machine `mac-1` is reported to be offline.

### [Issue #179941](https://github.com/flutter/flutter/issues/179941): widget_preview_scaffold blocking packages_autoroller
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* The package autoroller is blocked by a dependency version mismatch for `unified_analytics`, where `widget_preview_scaffold` requires an older version than `flutter_tools`.

### [Issue #179919](https://github.com/flutter/flutter/issues/179919): mac-37 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The machine mac-37 has lost its external network connection from a connected phone device.

### [Issue #179911](https://github.com/flutter/flutter/issues/179911): mac-34 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The host mac-34 has lost its external network connection, affecting an attached phone device.

### [Issue #179853](https://github.com/flutter/flutter/issues/179853): [WEB/WASM][Critical Bug] JSUint8ArrayImpl.sublist() returns incorrect length when called on a list view
* **Author:** [AlexDochioiu](https://github.com/AlexDochioiu)
* **Reactions:** **1** -- 👍 1
* In WASM web builds, calling `sublist()` on a `Uint8List.view()` of a `JSUint8ArrayImpl` returns a list with an incorrect length because the view's original offset is incorrectly subtracted a second time.

### [Issue #179678](https://github.com/flutter/flutter/issues/179678): [Accessibility] Semantics `header` property is ignored on Android
* **Author:** [JJdeGroot](https://github.com/JJdeGroot)
* **Reactions:** **2** -- 👍 2
* On Android, the `Semantics` widget's `header: true` property is ignored, preventing TalkBack from announcing headers, due to a recent commit that replaced the check for the `IS_HEADER` flag with a check for `headingLevel`.

### [Issue #179377](https://github.com/flutter/flutter/issues/179377): `ListTile` intrinsic height incorrectly returns `minTileHeight` instead of actual content height
* **Author:** [ericwimp8](https://github.com/ericwimp8)
* **Reactions:** **1** -- 👀 1
* When `ListTileThemeData.minTileHeight` is set, the `ListTile` widget incorrectly reports this value as its intrinsic height instead of its actual content height, causing `RenderFlex` overflow errors when used within an `IntrinsicHeight` widget if the content is taller than the specified minimum.

### [Issue #179298](https://github.com/flutter/flutter/issues/179298): Add support for `use_default_linux_sysroot` in `gn` frontend
* **Author:** [planetmarshall](https://github.com/planetmarshall)
* This issue requests adding a switch to the `gn` frontend to control the `use_default_linux_sysroot` argument, which is needed to disable the default sysroot when running engine unit tests on local Linux systems that have major differences from the Flutter-provided sysroot.

### [Issue #179242](https://github.com/flutter/flutter/issues/179242): Flutter and dart shell script should have Unix line endings
* **Author:** [davidmichaelkarr](https://github.com/davidmichaelkarr)
* The `flutter` and `dart` shell scripts on Windows are saved with DOS (CRLF) line endings, causing errors when run from Unix-like shells such as Cygwin, and should be converted to use Unix (LF) line endings.

### [Issue #179135](https://github.com/flutter/flutter/issues/179135): New screen is pushed on stack when reopening app from another app
* **Author:** [quetool](https://github.com/quetool)
* On Android, reopening an app via a deep link from another app incorrectly pushes a new screen onto the navigation stack instead of resuming the existing instance, a regression introduced after version 3.24.5.

### [Issue #179075](https://github.com/flutter/flutter/issues/179075): LinearGradient rendering
* **Author:** [YinLenRen](https://github.com/YinLenRen)
* On a Moto G54, a `LinearGradient` background occasionally renders as a solid red color instead of the specified gradient, though the issue has only been observed once and is not reliably reproducible.

### [Issue #179072](https://github.com/flutter/flutter/issues/179072): [tool_crash] FileSystemException: Failed to decode data using encoding 'utf-8', null
* **Author:** [love-my-hybb](https://github.com/love-my-hybb)
* The `flutter run` command crashes with a `FileSystemException` when it fails to decode a settings file as UTF-8 while preparing the Android project.

### [Issue #179070](https://github.com/flutter/flutter/issues/179070): Flicker bug when moving from one page to another in adnroid/ ios seems to be fine
* **Author:** [brishav](https://github.com/brishav)
* **Reactions:** **1** -- 👍 1
* A user is reporting a flickering animation during page transitions on Android when using the `animations` package; the issue does not occur on iOS and a screen recording has been provided.

### [Issue #179009](https://github.com/flutter/flutter/issues/179009): App is Crashing
* **Author:** [muktharmuhammed](https://github.com/muktharmuhammed)
* The application is crashing on some devices when converting a widget boundary to a PNG image using `boundary.toImage`, which is a regression from functionality that worked four months ago.

### [Issue #170540](https://github.com/flutter/flutter/issues/170540): [Android] Consider showing a scrollbar for scrollable widgets by default with trackpad, mouse usage
* **Author:** [camsim99](https://github.com/camsim99)
* To align with Android's large-screen quality guidelines, this issue proposes that scrollable widgets should automatically display a scrollbar by default when a mouse or trackpad is used, removing the current need for developers to add one manually.

### [Issue #169465](https://github.com/flutter/flutter/issues/169465): CupertinoSheetRoute customize top gap
* **Author:** [samanson123](https://github.com/samanson123)
* **Reactions:** **2** -- 👍 2
* This feature request proposes making the hardcoded top gap in `CupertinoSheetRoute` customizable by adding an optional `topGap` parameter to the `showCupertinoModalPopup` function.

### [Issue #159807](https://github.com/flutter/flutter/issues/159807): [in_app_purchase] Crash for iOS 18.2 when purchase, when Deprecated field `applicationUsername` is null.
* **Author:** [givip](https://github.com/givip)
* **Reactions:** **8** -- 👍 8
* A crash occurs on iOS 18.2 when initiating a purchase because passing a null value for the deprecated `applicationUsername` field results in an `NSInvalidArgumentException`.

### [Issue #119106](https://github.com/flutter/flutter/issues/119106): [in_app_purchase] iOS Swift migration
* **Author:** [hellohuanlin](https://github.com/hellohuanlin)
* **Reactions:** **5** -- 👍 3 👀 2
* This issue tracks the migration of the `in_app_purchase` plugin's iOS implementation to Swift, which is necessary to support new features in the Swift-only StoreKit2 framework.

### [Issue #91972](https://github.com/flutter/flutter/issues/91972): Add support for SliverOverlapInjector.pinned
* **Author:** [lotusprey](https://github.com/lotusprey)
* **Reactions:** **16** -- 👍 16
* A user is requesting support for a `pinned` property on `SliverOverlapInjector` to prevent a pinned `SliverAppBar` in a `NestedScrollView`'s header from overlapping another pinned `SliverAppBar` in its body during scrolling.

### [Issue #86554](https://github.com/flutter/flutter/issues/86554): [in_app_purchase] Provide a easy way to get product signature
* **Author:** [rafagan](https://github.com/rafagan)
* **Reactions:** **2** -- 👍 2
* A user is requesting a simpler method to retrieve non-consumable product signatures and check their expiration status, as the current process of restoring all purchases and filtering a stream is too complex for this purpose.

### [Issue #78605](https://github.com/flutter/flutter/issues/78605): [in_app_purchase] Exception is not caught when querying past purchases fails 
* **Author:** [AdamJonsson](https://github.com/AdamJonsson)
* When the `queryPastPurchases()` method fails, such as when there is no internet connection, it does not throw a catchable exception, and the Future never completes.


# GitHub PR Report for flutter/genui
## From 2025-12-16

This period focused on preparing for a new `0.6.0` release, which includes several significant breaking changes to the public API. As part of this release preparation, the `GenUiManager` class was renamed to `A2uiMessageProcessor` and the `GenUiConfiguration` class was removed, with a new migration guide added to assist with the update ([PR #608](https://github.com/flutter/genui/pull/608)). Additional updates include the addition of a 'Features' section to the `README.md` to better highlight project capabilities ([PR #604](https://github.com/flutter/genui/pull/604)) and an internal code cleanup to ensure path separators are handled more consistently ([PR #605](https://github.com/flutter/genui/pull/605)).

## Merged Pull Requests

### [PR #608](https://github.com/flutter/genui/pull/608): Bump versions in preparation for publishing
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-12-16 01:14 PM
* **Comments:** 0
* This PR bumps package versions to 0.6.0 in preparation for a new release, introducing several breaking changes including the renaming of `GenUiManager` to `A2uiMessageProcessor` and the removal of the `GenUiConfiguration` class, and adds a new migration guide.

### [PR #605](https://github.com/flutter/genui/pull/605): [cleanup] refer to path separator char consistently
* **Author:** [yjbanov](https://github.com/yjbanov)
* **Merged At:** 2025-12-16 09:49 AM
* **Comments:** 0
* This PR refactors the `DataPath` class to consistently use its internal `_separator` constant when splitting path strings, replacing a hardcoded `/` character for better maintainability.

### [PR #604](https://github.com/flutter/genui/pull/604): Add features section to README
* **Author:** [sethladd](https://github.com/sethladd)
* **Merged At:** 2025-12-15 06:17 PM
* **Comments:** 0
* Adds a 'Features' section to the `README.md` file to highlight the key capabilities of the project.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2025-12-16

This period saw a significant enhancement to media playback capabilities on Android. The primary update was the introduction of audio track selection for the ExoPlayer implementation in pull request [#10312](https://github.com/flutter/packages/pull/10312). This feature expands the public API by adding new `getAudioTracks()` and `selectAudioTrack()` methods, giving developers the ability to programmatically list and switch between available audio tracks in a video.

## Merged Pull Requests

### 🔥 [PR #10312](https://github.com/flutter/packages/pull/10312): feat(android): add audio track selection for ExoPlayer
* **Author:** [nateshmbhat](https://github.com/nateshmbhat)
* **Merged At:** 2025-12-16 07:25 AM
* **Comments:** 8
* This PR adds `getAudioTracks()` and `selectAudioTrack()` methods to the Android video player, allowing developers to list and switch between available audio tracks using ExoPlayer's track selection APIs.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-12-16

This was a quiet period for the repository, with no new pull requests merged or issues closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-12-16

This period saw a significant update to the AI Toolkit documentation to reflect important package changes. In a notable refactor ([PR #12787](https://github.com/flutter/website/pull/12787)), the documentation was updated to account for the consolidation of the deprecated `google_generative_ai` and `vertexai_firebase` packages into the new, unified `firebase_ai` package. As part of this change, all provider references and code examples now use the new `FirebaseProvider`. Additionally, feedback on the developer setup guides was addressed, including issues related to VS Code shortcuts ([Issue #12827](https://github.com/flutter/website/issues/12827)) and requests for alternative IDE configurations ([Issue #12826](https://github.com/flutter/website/issues/12826)).

## Merged Pull Requests

### 🔥 [PR #12787](https://github.com/flutter/website/pull/12787): Refactor AI Toolkit documentation to update LLM provider references a…
* **Author:** [csells](https://github.com/csells)
* **Merged At:** 2025-12-16 11:36 AM
* **Comments:** 6
* This PR updates the AI Toolkit documentation to reflect the consolidation of the deprecated `google_generative_ai` and `vertexai_firebase` packages into the new `firebase_ai` package, updating all provider references and code examples to use the new unified `FirebaseProvider`.


## Closed Issues

### [Issue #12827](https://github.com/flutter/website/issues/12827): Install and set up Flutter
* **Author:** [OsDim](https://github.com/OsDim)
* A user on Windows 11 reports that the `Control + Shift + P` shortcut to open the VS Code command palette is not working as described in the Flutter installation guide.

### [Issue #12826](https://github.com/flutter/website/issues/12826): Virtual Studio Android
* **Author:** [joesmorguekh-bot](https://github.com/joesmorguekh-bot)
* A user requests that the Windows setup documentation be updated to include instructions for configuring Microsoft Visual Studio for Flutter Android development, as an alternative to the existing Android Studio guide.



## Top Hacker News Stories

### 83  [Coursera to combine with Udemy](https://investor.coursera.com/news/news-details/2025/Coursera-to-Combine-with-Udemy-to-Empower-the-Global-Workforce-with-Skills-for-the-AI-Era/default.aspx)
* **Author:** [throwaway019254](https://news.ycombinator.com/user?id=throwaway019254) | **Comments:** [28](https://news.ycombinator.com/item?id=46301346)

### 9  [Learning the oldest programming language (2024)](https://uncenter.dev/posts/learning-fortran/)
* **Author:** [lioeters](https://news.ycombinator.com/user?id=lioeters) | **Comments:** [3](https://news.ycombinator.com/item?id=46301696)

### 695 🔥🔥🔥 [AI will make formal verification go mainstream](https://martin.kleppmann.com/2025/12/08/ai-formal-verification.html)
* **Author:** [evankhoury](https://news.ycombinator.com/user?id=evankhoury) | **Comments:** [356](https://news.ycombinator.com/item?id=46294574)

### 483 🔥🔥 [Is Mozilla trying hard to kill itself?](https://infosec.press/brunomiguel/is-mozilla-trying-hard-to-kill-itself)
* **Author:** [pabs3](https://news.ycombinator.com/user?id=pabs3) | **Comments:** [418](https://news.ycombinator.com/item?id=46299934)

### 60  [TLA+ Modeling Tips](http://muratbuffalo.blogspot.com/2025/12/tla-modeling-tips.html)
* **Author:** [birdculture](https://news.ycombinator.com/user?id=birdculture) | **Comments:** [14](https://news.ycombinator.com/item?id=46299389)

### 826 🔥🔥🔥 [alpr.watch](https://alpr.watch/)
* **Author:** [theamk](https://news.ycombinator.com/user?id=theamk) | **Comments:** [386](https://news.ycombinator.com/item?id=46290916)

### 710 🔥🔥🔥 [No Graphics API](https://www.sebastianaaltonen.com/blog/no-graphics-api)
* **Author:** [ryandrake](https://news.ycombinator.com/user?id=ryandrake) | **Comments:** [129](https://news.ycombinator.com/item?id=46293062)

### 684 🔥🔥🔥 [Announcing the Beta release of ty](https://astral.sh/blog/ty)
* **Author:** [gavide](https://news.ycombinator.com/user?id=gavide) | **Comments:** [130](https://news.ycombinator.com/item?id=46294289)

### 27  [Modern SID chip substitutes [video]](https://www.youtube.com/watch?v=nooPmXxO6K0)
* **Author:** [vismit2000](https://news.ycombinator.com/user?id=vismit2000) | **Comments:** [1](https://news.ycombinator.com/item?id=46260485)

### 401 🔥🔥 [No AI* Here – A Response to Mozilla's Next Chapter](https://www.waterfox.com/blog/no-ai-here-response-to-mozilla/)
* **Author:** [MrAlex94](https://news.ycombinator.com/user?id=MrAlex94) | **Comments:** [233](https://news.ycombinator.com/item?id=46295268)

### 87  [AI's real superpower: consuming, not creating](https://msanroman.io/blog/ai-consumption-paradigm)
* **Author:** [firefoxd](https://news.ycombinator.com/user?id=firefoxd) | **Comments:** [68](https://news.ycombinator.com/item?id=46299552)

### 708 🔥🔥🔥 [Pricing Changes for GitHub Actions](https://resources.github.com/actions/2026-pricing-changes-for-github-actions/)
* **Author:** [kevin-david](https://news.ycombinator.com/user?id=kevin-david) | **Comments:** [762](https://news.ycombinator.com/item?id=46291156)

### 472 🔥🔥 [GPT Image 1.5](https://openai.com/index/new-chatgpt-images-is-here/)
* **Author:** [charlierguo](https://news.ycombinator.com/user?id=charlierguo) | **Comments:** [223](https://news.ycombinator.com/item?id=46291941)
* This link leads to the official OpenAI developer documentation for a new multimodal model, `gpt-image-1.5`.

### 33  [Playing Santa changed Bob Rutan profoundly](https://www.esquire.com/lifestyle/a69597294/santaland-bob-rutan/)
* **Author:** [Lightbody](https://news.ycombinator.com/user?id=Lightbody) | **Comments:** [10](https://news.ycombinator.com/item?id=46255746)

### 197 🔥 [I ported JustHTML from Python to JavaScript with Codex CLI and GPT-5.2 in hours](https://simonwillison.net/2025/Dec/15/porting-justhtml/)
* **Author:** [pbowyer](https://news.ycombinator.com/user?id=pbowyer) | **Comments:** [115](https://news.ycombinator.com/item?id=46295771)

### 564 🔥🔥 [Thin desires are eating life](https://www.joanwestenberg.com/thin-desires-are-eating-your-life/)
* **Author:** [mitchbob](https://news.ycombinator.com/user?id=mitchbob) | **Comments:** [202](https://news.ycombinator.com/item?id=46283276)

### 1  [Subsets (YC S23) is hiring engineers in Copenhagen, Denmark](https://www.workatastartup.com/companies/subsets)
* **Author:** [Oliverbrandt](https://news.ycombinator.com/user?id=Oliverbrandt) | **Comments:** [null](https://news.ycombinator.com/item?id=46299022)

### 50  [Annual Production of 1/72 (22mm) scale plastic soldiers, 1958-2025](https://plasticsoldierreview.com/ShowFeature.aspx?id=27)
* **Author:** [YeGoblynQueenne](https://news.ycombinator.com/user?id=YeGoblynQueenne) | **Comments:** [35](https://news.ycombinator.com/item?id=46254909)

### 466 🔥🔥 [40 percent of fMRI signals do not correspond to actual brain activity](https://www.tum.de/en/news-and-events/all-news/press-releases/details/40-percent-of-mri-signals-do-not-correspond-to-actual-brain-activity)
* **Author:** [geox](https://news.ycombinator.com/user?id=geox) | **Comments:** [181](https://news.ycombinator.com/item?id=46288415)

### 541 🔥🔥 [Mozilla appoints new CEO Anthony Enzor-Demeo](https://blog.mozilla.org/en/mozilla/leadership/mozillas-next-chapter-anthony-enzor-demeo-new-ceo/)
* **Author:** [recvonline](https://news.ycombinator.com/user?id=recvonline) | **Comments:** [814](https://news.ycombinator.com/item?id=46288491)

### 81  [VA Linux: The biggest dotcom IPO](https://dfarq.homeip.net/va-linux-the-biggest-dotcom-ipo/)
* **Author:** [giuliomagnifico](https://news.ycombinator.com/user?id=giuliomagnifico) | **Comments:** [40](https://news.ycombinator.com/item?id=46230456)

### 6  [Short-Circuiting Correlated Subqueries in SQLite](https://emschwartz.me/short-circuiting-correlated-subqueries-in-sqlite/)
* **Author:** [emschwartz](https://news.ycombinator.com/user?id=emschwartz) | **Comments:** [0](https://news.ycombinator.com/item?id=46300776)

### 3  [The Coupang data breach that hit two-thirds of South Korea](https://www.ft.com/content/df4042fa-3e56-410f-b905-4aed8fd434ac)
* **Author:** [zdw](https://news.ycombinator.com/user?id=zdw) | **Comments:** [2](https://news.ycombinator.com/item?id=46251960)

### 22  [Living Particle System](https://creative-art-points.vercel.app/)
* **Author:** [lovegrenoble](https://news.ycombinator.com/user?id=lovegrenoble) | **Comments:** [0](https://news.ycombinator.com/item?id=46249197)

### 30  [Show HN: I built a WebMIDI sequencer to control my hardware synths](https://www.simplychris.ai/droplets)
* **Author:** [simplychris](https://news.ycombinator.com/user?id=simplychris) | **Comments:** [13](https://news.ycombinator.com/item?id=46234304)
* An engineer built a browser-based tool that uses the WebMIDI API to sequence hardware synthesizers with AI-generated patterns. The application runs entirely in Chrome or Edge and connects to local MIDI devices without requiring a login.



