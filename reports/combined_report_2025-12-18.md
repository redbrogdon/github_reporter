# Overall Summary
**🔥🔥 [PR #583](https://github.com/flutter/genui/pull/583) (flutter/genui): Add Dartantic Content Generator**
  * **Comments:** 10
  * This PR introduces the `genui_dartantic` package, a new `ContentGenerator` implementation that enables GenUI to work with multiple AI providers, including OpenAI, Anthropic, and Google, by integrating with the `dartantic_ai` package.

**[PR #179753](https://github.com/flutter/flutter/pull/179753) (flutter/flutter): Android implementation of content sizing**
  * **Comments:** 4
  * Re-lands the Android implementation of content sizing, which allows a `FlutterView` to be sized based on its content. This change, which fulfills a long-standing feature request ([Issue #149033](https://github.com/flutter/flutter/issues/149033)), enables support for `wrap_content` in native Android layouts.

**🔥 [PR #12830](https://github.com/flutter/website/pull/12830) (flutter/website): [experiment] Update Flutter docs to reflect Hooks changes in Dart.**
  * **Comments:** 6
  * This PR updates the Flutter documentation to reflect the introduction of Dart build hooks for FFI, introducing a new `package_ffi` template and renaming "FFI plugins" to "FFI packages".

**[Issue #59470](https://github.com/dart-lang/sdk/issues/59470) (dart-lang/sdk): [Wildcard Variables][lint] `no_wildcard_variable_uses` and the new wildcard variables feature.**
  * To align with the upcoming wildcard variables feature, this issue proposes updating the `no_wildcard_variable_uses` lint to warn only on the use of a single underscore (`_`).

**[PR #178098](https://github.com/flutter/flutter/pull/178098) (flutter/flutter): Adds property passthrough for CheckboxListTile, SwitchListTile and RadioListTile**
  * Fulfilling a popular feature request ([Issue #83898](https://github.com/flutter/flutter/issues/83898)), this PR adds `horizontalTitleGap`, `minVerticalPadding`, `minLeadingWidth`, and `minTileHeight` properties to `CheckboxListTile`, `SwitchListTile`, and `RadioListTile` to allow for more granular layout control.

**[PR #179736](https://github.com/flutter/flutter/pull/179736) (flutter/flutter): Add FloatingActionButtonTheme**
  * This PR introduces `FloatingActionButtonTheme`, an `InheritedTheme` widget that allows developers to override `FloatingActionButton` styles for a specific part of the widget tree, providing more granular control than the global theme.

**[Issue #62221](https://github.com/dart-lang/sdk/issues/62221) (dart-lang/sdk): Out-of-bounds access by dart:ffi passing struct by value**
  * An out-of-bounds memory access occurs when passing a struct by value with `dart:ffi` because it generates a memory load that is larger than the actual size of the struct, resulting in a heap-buffer-overflow.

**[Issue #4594](https://github.com/dart-lang/language/issues/4594) (dart-lang/language): Type inference issue with firstWhere and orElse returning null**
  * A compiler error occurs when the `orElse` callback for `firstWhere` returns `null`, as the type system incorrectly infers a non-nullable return type from the list's elements instead of the expected nullable type of the context.


# GitHub PR Report for dart-lang/ai
## From 2025-12-17

During this period, there were no merged pull requests or closed issues, resulting in no changes to the repository's codebase or features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2025-12-17

While no pull requests were merged during this period, progress was tracked through several closed issues focusing on `dart:ffi`, language features, and platform stability. A critical out-of-bounds memory access bug in `dart:ffi` was resolved for structs passed by value ([#62221](https://github.com/dart-lang/sdk/issues/62221)), and foundational work was done to create `dart:ffi` stubs for web compilers like `dart2js` and DDC ([#62126](https://github.com/dart-lang/sdk/issues/62126)). In preparation for new language capabilities, the linter was updated to correctly handle the upcoming wildcard variables feature ([#59470](https://github.com/dart-lang/sdk/issues/59470)). Developer tooling was also improved with a fix for auto-completion of dot shorthands within annotation parameter lists ([#62260](https://github.com/dart-lang/sdk/issues/62260)), and a fatal VM error on Windows was addressed ([#62252](https://github.com/dart-lang/sdk/issues/62252)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62260](https://github.com/dart-lang/sdk/issues/62260): Dot shorthands doesn't auto-complete on annotation parameter list
* **Author:** [FMorschel](https://github.com/FMorschel)
* Auto-completion for dot shorthands is not working correctly when used within an annotation's parameter list.

### [Issue #62252](https://github.com/dart-lang/sdk/issues/62252): utils_win.cc: 49: error: Fatal error in Utils::VSNPrint with format '%ls (at %s:%d)'
* **Author:** [MouriKogorou](https://github.com/MouriKogorou)
* A fatal error in `Utils::VSNPrint` is reported on Windows x64, which appears to be a regression in Dart stable versions 3.10.4 and 3.10.5, as version 3.10.3 works correctly.

### [Issue #62221](https://github.com/dart-lang/sdk/issues/62221): Out-of-bounds access by dart:ffi passing struct by value
* **Author:** [rmacnak-google](https://github.com/rmacnak-google)
* An out-of-bounds memory access occurs when passing a struct by value with `dart:ffi` because it generates a memory load that is larger than the actual size of the struct, resulting in a heap-buffer-overflow.

### [Issue #62126](https://github.com/dart-lang/sdk/issues/62126): Create `dart:ffi` stubs for `dart2js` and `DDC`
* **Author:** [bkonyi](https://github.com/bkonyi)

### [Issue #59470](https://github.com/dart-lang/sdk/issues/59470): [Wildcard Variables][lint] `no_wildcard_variable_uses` and the new wildcard variables feature.
* **Author:** [kallentu](https://github.com/kallentu)
* To align with the upcoming wildcard variables feature, this issue proposes updating the `no_wildcard_variable_uses` lint to warn only on the use of a single underscore (`_`), updating its documentation, and adding a quick fix to the `UNUSED_VARIABLE` lint to suggest renaming to `_`.


# GitHub PR Report for dart-lang/language
## From 2025-12-17

While no pull requests were merged, an important discussion was concluded regarding a type inference bug in the language. As detailed in issue [#4594](https://github.com/dart-lang/language/issues/4594), the compiler can fail to infer the correct nullable return type for the `firstWhere` method when its `orElse` callback returns `null`, resulting in a compiler error. This occurs because the type system incorrectly infers a non-nullable type from the list's elements instead of accommodating the nullable type from the callback's context.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #4594](https://github.com/dart-lang/language/issues/4594): Type inference issue with firstWhere and orElse returning null
* **Author:** [koppular](https://github.com/koppular)
* A compiler error occurs when the `orElse` callback for `firstWhere` returns `null`, as the type system incorrectly infers a non-nullable return type from the list's elements instead of the expected nullable type of the context.


# GitHub PR Report for dart-lang/native
## From 2025-12-17

This release addresses a significant build issue for iOS developers. Following a recent package update, users reported build failures on older Xcode versions due to the build process incorrectly using the macOS SDK sysroot when targeting iOS ([#2835](https://github.com/dart-lang/native/issues/2835)). This has been resolved in pull request [#2866](https://github.com/dart-lang/native/pull/2866), which corrects the sysroot path detection and ensures the proper target SDK is used. Additionally, the fix includes conditionally compiling certain test utilities for macOS only, resolving an incompatibility with iOS builds.

## Merged Pull Requests

### [PR #2866](https://github.com/dart-lang/native/pull/2866): [objective_c] Fix older XCode builds
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-12-17 02:39 PM
* **Comments:** 2
* This PR fixes a build failure on older Xcode versions by correctly specifying the target SDK when locating the sysroot path. It also resolves a related issue by only including certain test utilities, which are incompatible with iOS, in macOS builds.


## Closed Issues

### [Issue #2835](https://github.com/dart-lang/native/issues/2835): iOS Build Failure after updating to 9.2.1: "using sysroot for 'MacOSX' but targeting 'iPhone'"
* **Author:** [corepuncher](https://github.com/corepuncher)
* Updating the `objective_c` package to v9.2.1 causes iOS build failures due to an incorrect sysroot, where the build process mistakenly uses the macOS SDK while targeting iOS, and the issue can be resolved by pinning the dependency to v9.1.0.


# GitHub PR Report for flutter/ai
## From 2025-12-17

This was a quiet period for the repository, with no pull requests merged or issues closed. Consequently, there were no direct changes to the codebase or its public API.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-12-17

During this period, no pull requests were merged and no issues were closed, resulting in no changes to the repository's codebase.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-12-17

This period saw significant enhancements to platform integration and widget APIs. A major development for Android is the re-landing of content sizing for `FlutterView` ([PR #179753](https://github.com/flutter/flutter/pull/179753)), which allows the view to be sized based on its content, fulfilling a long-standing feature request ([Issue #149033](https://github.com/flutter/flutter/issues/149033)). The Material library received several updates, including the introduction of a new `FloatingActionButtonTheme` ([PR #179736](https://github.com/flutter/flutter/pull/179736)) for more granular styling, and the addition of layout properties to `CheckboxListTile`, `SwitchListTile`, and `RadioListTile` ([PR #178098](https://github.com/flutter/flutter/pull/178098)) to address a popular request ([Issue #83898](https://github.com/flutter/flutter/issues/83898)). Documentation for the `Card` widget was also improved to clarify its behavior ([PR #178834](https://github.com/flutter/flutter/pull/178834)), and assertion messages in the `Tab` widget were made more helpful ([PR #178295](https://github.com/flutter/flutter/pull/178295)). On the bug-fixing front, a fix was implemented for an issue on iOS where `WKWebView` platform views could become unresponsive ([PR #179908](https://github.com/flutter/flutter/pull/179908)), and a series of patches resolved crashes in several Cupertino widgets when rendered in zero-sized environments ([PR #179845](https://github.com/flutter/flutter/pull/179845), [PR #179748](https://github.com/flutter/flutter/pull/179748)). Finally, work continues to improve the migration experience to Android Gradle Plugin 9, with new error handlers and updated documentation links ([PR #179765](https://github.com/flutter/flutter/pull/179765), [PR #180018](https://github.com/flutter/flutter/pull/180018)).

## Merged Pull Requests

### [PR #180018](https://github.com/flutter/flutter/pull/180018): [AGP 9] Fix-Forward Website URL
* **Author:** [jesswrd](https://github.com/jesswrd)
* **Merged At:** 2025-12-17 02:48 PM
* **Comments:** 2
* Updates the URL in `flutter_tools` error messages to point to the correct migration guide for Android Gradle Plugin (AGP) 9.

### [PR #180004](https://github.com/flutter/flutter/pull/180004): Bump `engine.version` for 3.40.0-0.2.pre release
* **Author:** [camsim99](https://github.com/camsim99)
* **Merged At:** 2025-12-17 10:08 AM
* **Comments:** 2
* This PR updates the `engine.version` file to roll the Flutter engine to a newer commit for the `3.40.0-0.2.pre` release.

### [PR #179974](https://github.com/flutter/flutter/pull/179974): [CP-beta][ios][pv] quick fix to enable and re-enable web view's gesture recognizer
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-12-17 08:38 AM
* **Comments:** 2
* Fixes a regression on iOS where `WKWebView` platform views become unresponsive to taps after being scrolled by resetting the view's internal gesture recognizer.

### [PR #179970](https://github.com/flutter/flutter/pull/179970): Deduplicate wasm dry run entries in analytics.
* **Author:** [biggs0125](https://github.com/biggs0125)
* **Merged At:** 2025-12-16 09:26 PM
* **Comments:** 0
* This pull request prevents duplicate package entries from being sent during a WebAssembly (Wasm) dry run by using a `Set` to store the findings, ensuring each incompatible package is only reported once.

### [PR #179963](https://github.com/flutter/flutter/pull/179963): Modify the `create_cipd_packages.sh` script to allow uploading multiple `build-tools` versions, and update to new bundle
* **Author:** [gmackall](https://github.com/gmackall)
* **Merged At:** 2025-12-17 11:01 AM
* **Comments:** 1
* Modifies the Android SDK packaging script to allow bundling multiple versions of a tool, adding `build-tools` versions 36.1.0, 35.0.0, and 34.0.0, and `cmake` 3.22.1 to the CIPD package used in CI.

### [PR #179932](https://github.com/flutter/flutter/pull/179932): Make sure that a CupertinoTextFormFieldRow doesn't crash in 0x0 envir…
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-16 11:48 PM
* **Comments:** 0
* This pull request adds a regression test to prevent a crash in `CupertinoTextFormFieldRow` that occurs when the widget is rendered in a zero-sized environment.

### [PR #179908](https://github.com/flutter/flutter/pull/179908): [ios][pv] quick fix to enable and re-enable web view's gesture recognizer
* **Author:** [hellohuanlin](https://github.com/hellohuanlin)
* **Merged At:** 2025-12-16 09:36 PM
* **Comments:** 2
* This PR introduces a workaround for an issue on iOS where `WKWebView`s can become unresponsive to taps by searching the view hierarchy for the web view's internal gesture recognizer and toggling it to reset its state.

### [PR #179902](https://github.com/flutter/flutter/pull/179902): Platform View Hide/Show Integration test
* **Author:** [mboetger](https://github.com/mboetger)
* **Merged At:** 2025-12-16 04:59 PM
* **Comments:** 1
* Adds a golden file integration test that repeatedly toggles the visibility of a platform view to prevent a regression where this action could cause the UI to freeze.

### [PR #179898](https://github.com/flutter/flutter/pull/179898): Clamps input value for progress indicator
* **Author:** [chunhtai](https://github.com/chunhtai)
* **Merged At:** 2025-12-17 12:52 PM
* **Comments:** 3
* This PR updates the `ProgressIndicator` widget to clamp its `value` property to the 0.0-1.0 range, which aligns its behavior with its existing documentation.

### [PR #179865](https://github.com/flutter/flutter/pull/179865): Make sure that a CupertinoTextField doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-16 11:21 PM
* **Comments:** 0
* Adds a regression test to ensure that `CupertinoTextField` does not crash when rendered in a zero-sized environment.

### [PR #179845](https://github.com/flutter/flutter/pull/179845): Make sure that a CupertinoTabView doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-16 11:34 PM
* **Comments:** 0
* This PR fixes a crash in `CupertinoTabView` that occurred when the widget was rendered in a zero-sized container, and adds a test to verify the fix.

### [PR #179826](https://github.com/flutter/flutter/pull/179826): Add package info to wasm dry run events.
* **Author:** [biggs0125](https://github.com/biggs0125)
* **Merged At:** 2025-12-16 05:49 PM
* **Comments:** 0
* Enhances the analytics for Wasm dry run errors by capturing detailed package information, including the specific public packages and versions associated with each error, and uses prefixes to indicate if errors also occurred in private packages or the host application.

### [PR #179765](https://github.com/flutter/flutter/pull/179765): [AGP 9] Added Flutter Errors
* **Author:** [jesswrd](https://github.com/jesswrd)
* **Merged At:** 2025-12-17 11:01 AM
* **Comments:** 0
* Adds new Gradle error handlers to detect and provide guidance on common build failures when using Android Gradle Plugin 9, specifically for issues related to the deprecated `kotlin-android` plugin and the new AGP DSL.

### [PR #179753](https://github.com/flutter/flutter/pull/179753): Revert "Revert "Android implementation of content sizing""
* **Author:** [mboetger](https://github.com/mboetger)
* **Merged At:** 2025-12-17 03:05 PM
* **Comments:** 4
* Re-lands the Android implementation of content sizing, which allows a `FlutterView` to be sized based on its content and enables support for `wrap_content` in native Android layouts.

### [PR #179748](https://github.com/flutter/flutter/pull/179748): Make sure that a CupertinoSwitch doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-16 11:05 PM
* **Comments:** 0
* This PR fixes a crash in the `CupertinoSwitch` widget that occurred when it was laid out with a zero size, and adds a test to verify the fix.

### [PR #179736](https://github.com/flutter/flutter/pull/179736): Add FloatingActionButtonTheme
* **Author:** [bleroux](https://github.com/bleroux)
* **Merged At:** 2025-12-17 06:57 AM
* **Comments:** 0
* This PR introduces `FloatingActionButtonTheme`, an `InheritedTheme` widget that allows developers to override `FloatingActionButton` styles for a specific part of the widget tree, providing more granular control than the global theme.

### [PR #179682](https://github.com/flutter/flutter/pull/179682): Update more comments related to theme normalization
* **Author:** [bleroux](https://github.com/bleroux)
* **Merged At:** 2025-12-17 03:45 AM
* **Comments:** 0
* This PR updates documentation comments for various Material theme classes to improve consistency and align with the ongoing theme normalization effort.

### [PR #179159](https://github.com/flutter/flutter/pull/179159): Update the Material `IconAlignment` sample
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* **Merged At:** 2025-12-17 12:40 PM
* **Comments:** 0
* This PR migrates the `IconAlignment` code sample to remove references to the deprecated `ButtonStyleButton.iconAlignment` property, renaming and moving the sample file and updating documentation comments in various button widgets.

### [PR #178834](https://github.com/flutter/flutter/pull/178834): Improve the documentation of `Card`
* **Author:** [dkwingsmt](https://github.com/dkwingsmt)
* **Merged At:** 2025-12-17 03:59 PM
* **Comments:** 5
* This PR improves the documentation for the `Card` widget, clarifying the visual differences and behaviors of the elevated, filled, and outlined constructors, especially in relation to Material 2 and Material 3 theming.

### [PR #178616](https://github.com/flutter/flutter/pull/178616): Update `BuildContext` docs to make it easier to understand
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-12-16 11:02 PM
* **Comments:** 0
* This PR updates the documentation for `BuildContext` with a wording change to improve clarity.

### [PR #178295](https://github.com/flutter/flutter/pull/178295): Improve assertion messages in Tab widget for better clarity
* **Author:** [JeelChandegra](https://github.com/JeelChandegra)
* **Merged At:** 2025-12-17 01:37 PM
* **Comments:** 5
* Improves assertion messages in the `Tab` widget to provide clearer developer guidance when its properties are used incorrectly, such as when providing both a `text` and a `child`.

### [PR #178098](https://github.com/flutter/flutter/pull/178098): Adds property passthrough for CheckboxListTile, SwitchListTile and RadioListTile
* **Author:** [Guldem](https://github.com/Guldem)
* **Merged At:** 2025-12-17 01:03 AM
* **Comments:** 0
* This PR adds `horizontalTitleGap`, `minVerticalPadding`, `minLeadingWidth`, and `minTileHeight` properties to `CheckboxListTile`, `SwitchListTile`, and `RadioListTile`, passing them through to the underlying `ListTile` to allow for more granular layout control.


## Closed Issues

### [Issue #180020](https://github.com/flutter/flutter/issues/180020): win-3 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The `win-3` machine has lost its external connection from a connected phone device.

### [Issue #180016](https://github.com/flutter/flutter/issues/180016): win-1 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The Windows host `win-1` has lost its external network connection, affecting communication with a connected phone device.

### [Issue #180007](https://github.com/flutter/flutter/issues/180007): mac-31 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The Mac agent `mac-31` has lost its external connection from the attached phone device.

### [Issue #180006](https://github.com/flutter/flutter/issues/180006): mac-18 and mac-22 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The mac-18 and mac-22 machines have lost their external network connection from the attached phone devices.

### [Issue #180005](https://github.com/flutter/flutter/issues/180005): linux-37, linux-8 and linux-1 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The Linux hosts linux-37, linux-8, and linux-1 have lost external network connectivity from their attached phone devices.

### [Issue #179990](https://github.com/flutter/flutter/issues/179990): Camera preview screen freezes when starting video recording.
* **Author:** [Akshay-Kumar-Sah-Mass](https://github.com/Akshay-Kumar-Sah-Mass)
* When starting a video recording, the camera preview freezes for approximately 500ms, likely due to the native camera pipeline warming up, though the final captured video is unaffected.

### [Issue #179972](https://github.com/flutter/flutter/issues/179972): [Impeller] App crash when using webview
* **Author:** [U2yyy](https://github.com/U2yyy)
* A Flutter application using Impeller on Android crashes with a SIGSEGV in the `RenderThread` when pushing a screen containing a `WebViewWidget`, with the native stack trace pointing to vendor-specific OpenGL ES (GLES) libraries.

### [Issue #179965](https://github.com/flutter/flutter/issues/179965): linux-8 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The host `linux-8` has lost its external connection from a connected phone device.

### [Issue #179914](https://github.com/flutter/flutter/issues/179914): [AGP 9] Add Docs to Migrate Android Build files to Sucessfully Build on AGP 9
* **Author:** [jesswrd](https://github.com/jesswrd)
* This issue tracks the creation of a migration guide to help developers manually update their Android build files for compatibility with Android Gradle Plugin 9, as an automatic migration tool will not be provided.

### [Issue #179735](https://github.com/flutter/flutter/issues/179735): Missing FloatingActionButtonTheme
* **Author:** [bleroux](https://github.com/bleroux)
* This issue proposes adding a `FloatingActionButtonTheme` widget to allow for subtree-specific theming of `FloatingActionButton`s, noting that the corresponding `FloatingActionButtonThemeData` class exists but the theme widget is missing.

### [Issue #179520](https://github.com/flutter/flutter/issues/179520): devicelab: downloading sdktools is slow (500Kb/s)
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* The download speed for `sdkmanager` on devicelab bots is limited to 500Kb/s, which is likely causing test timeouts.

### [Issue #179078](https://github.com/flutter/flutter/issues/179078): IOS app crash io.flutter.1.raster
* **Author:** [unkown-arch](https://github.com/unkown-arch)
* A Flutter app crashes on real iOS devices with a `high watermark memory limit exceeded` error on the raster thread, likely caused by displaying multiple videos in a `PageView` using the `chewie` and `video_player` packages.

### [Issue #178659](https://github.com/flutter/flutter/issues/178659): Linux: Apps using native assets need `lld` which may not be available
* **Author:** [simolus3](https://github.com/simolus3)
* On Linux, building applications with native assets fails because the build process requires the `lld` linker, which is not installed by default when following the official documentation for setting up `clang`, and this issue proposes solutions such as updating the docs or allowing Flutter to fall back to a GCC linker.

### [Issue #178611](https://github.com/flutter/flutter/issues/178611): Card.outlined doesn't apply border if custom CardThemeData applied (even without `side` parameter)
* **Author:** [Nazacheres](https://github.com/Nazacheres)
* When a custom `CardThemeData` is provided in the app's theme, the `Card.outlined` constructor fails to apply its default border, even if the custom theme does not specify a `side` property.

### [Issue #149033](https://github.com/flutter/flutter/issues/149033): Allow an embedded Flutter View on Android to size itself
* **Author:** [jiahaog](https://github.com/jiahaog)
* This feature request asks to allow an embedded Flutter view on Android to dynamically size itself based on its content, enabling the use of `layout_height="wrap_content"` in native layouts instead of requiring a fixed height.

### [Issue #146928](https://github.com/flutter/flutter/issues/146928): [image_picker] Kotlin code with `internal` or `private` visibility should not be referenced from Java code.
* **Author:** [peixinli](https://github.com/peixinli)
* The `image_picker` plugin for Android has an issue where `ImagePickerUtils.java` incorrectly accesses a private method from the Kotlin `ActivityResultContracts.PickVisualMedia` class, which could cause instability.

### [Issue #83898](https://github.com/flutter/flutter/issues/83898): Allow SwitchListTile, CheckboxListTile and RadioListTile to also be able to change horizontalTitleGap, minVerticalPadding, minLeadingWidth
* **Author:** [jlubeck](https://github.com/jlubeck)
* **Reactions:** **1** -- 👍 1
* This feature request proposes adding the `horizontalTitleGap`, `minVerticalPadding`, and `minLeadingWidth` properties to `SwitchListTile`, `CheckboxListTile`, and `RadioListTile` to allow for more flexible layout control, similar to the standard `ListTile` widget.

### [Issue #15141](https://github.com/flutter/flutter/issues/15141): BuildContext docs unclear
* **Author:** [eseidelGoogle](https://github.com/eseidelGoogle)
* The documentation for `BuildContext` is unclear regarding the statement that a widget's build context is different from the build context of the widgets returned by its build method.


# GitHub PR Report for flutter/genui
## From 2025-12-17

This development cycle introduced significant new capabilities, most notably the addition of the `genui_dartantic` package in a highly-discussed pull request ([PR #583](https://github.com/flutter/genui/pull/583)). This new `ContentGenerator` implementation expands GenUI to support multiple AI providers, including OpenAI, Anthropic, and Google. In preparation for a future release, the initial boilerplate for a new `genai_primitives` package was also created ([PR #606](https://github.com/flutter/genui/pull/606)). On the bug-fix front, a critical layout issue reported in [Issue #559](https://github.com/flutter/genui/issues/559), where `TextField` widgets would crash with an "unbounded width" error, was resolved. The fix in [PR #603](https://github.com/flutter/genui/pull/603) addresses this by adding a missing `weight` property to the `Component` constructor and setting a default weight for `TextField`s when nested within a `Row`.

## Merged Pull Requests

### [PR #617](https://github.com/flutter/genui/pull/617): Add missing files for publishing genui_dartantic
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-12-17 03:25 PM
* **Comments:** 0
* Adds a `CHANGELOG.md` and a `LICENSE` file to the `genui_dartantic` package in preparation for its initial publication.

### [PR #616](https://github.com/flutter/genui/pull/616): Temporarily remove dartantic from monorepo
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-12-17 02:45 PM
* **Comments:** 0
* This PR temporarily removes the `dartantic` package from the monorepo to resolve a dependency conflict where it requires a newer version of the `mcp_dart` package than is allowed by the `a2a` library.

### [PR #615](https://github.com/flutter/genui/pull/615): Fix test  failures at main.
* **Author:** [polina-c](https://github.com/polina-c)
* **Merged At:** 2025-12-17 01:00 PM
* **Comments:** 0
* Pins the `a2a` dependency to version 3.2.0 in the `verdure` example and `genui_a2ui` package to resolve test failures on the main branch.

### [PR #606](https://github.com/flutter/genui/pull/606): Create boilerplate for the package genai_primitives.
* **Author:** [polina-c](https://github.com/polina-c)
* **Merged At:** 2025-12-17 01:08 PM
* **Comments:** 2
* Adds the initial boilerplate and file structure for the new `genai_primitives` package.

### [PR #603](https://github.com/flutter/genui/pull/603): fix(genui): add missing `weight` property to `Component` constructor; default `TextField` `width` to 1 when nested in a `Row`
* **Author:** [andrewkolos](https://github.com/andrewkolos)
* **Merged At:** 2025-12-16 08:18 PM
* **Comments:** 2
* This PR fixes an issue where the `weight` property was not being correctly parsed and passed to the `Component` constructor, and also assigns a default weight of 1 to `TextField` components when nested in a `Row` to prevent layout-related crashes.

### 🔥 [PR #583](https://github.com/flutter/genui/pull/583): Add Dartantic Content Generator
* **Author:** [csells](https://github.com/csells)
* **Merged At:** 2025-12-17 01:16 PM
* **Comments:** 10
* This PR introduces the `genui_dartantic` package, a new `ContentGenerator` implementation that enables GenUI to work with multiple AI providers, including OpenAI, Anthropic, and Google, by integrating with the `dartantic_ai` package.


## Closed Issues

### [Issue #559](https://github.com/flutter/genui/issues/559): GenUI TextField crashes with “InputDecorator unbounded width” when generated using A2UI (Flutter GenUI v0.5.1)
* **Author:** [SheikMohideen007](https://github.com/SheikMohideen007)
* The A2UI generator creates `TextField` widgets without the necessary width constraints, causing an "InputDecorator unbounded width" runtime error, even when the prompt explicitly instructs the generator to wrap them in a width-bounded parent like `Expanded` or `Box`.


# GitHub PR Report for flutter/packages
## From 2025-12-17

During this period, there were no merged pull requests or closed issues, resulting in no changes to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-12-17

This update focused on improving the correctness and quality of existing samples. A notable fix in the `navigation_and_routing` sample, detailed in [#2753](https://github.com/flutter/samples/pull/2753), addresses a bug with `TabController` state management. The logic for updating the controller's index was moved from the `build` method to `didUpdateWidget`, ensuring the index updates correctly and efficiently only when the widget's properties change, which aligns better with Flutter's widget lifecycle best practices.

## Merged Pull Requests

### [PR #2753](https://github.com/flutter/samples/pull/2753): Fix TabController index update
* **Author:** [ishifr](https://github.com/ishifr)
* **Merged At:** 2025-12-17 09:26 AM
* **Comments:** 0
* This PR fixes a bug in the `navigation_and_routing` sample by moving the `TabController` index update logic from the `build` method to `didUpdateWidget`, ensuring the index is correctly updated only when the widget's properties change.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-12-17

This period saw a significant, experimental update to the documentation to align with new Dart language features. In [PR #12830](https://github.com/flutter/website/pull/12830), which garnered significant discussion, the docs were updated for the introduction of Dart build hooks for FFI, renaming "FFI plugins" to "FFI packages" and adding a new `package_ffi` template. New content was also added for the GenUI SDK, including a page explaining how to handle user input events ([PR #12824](https://github.com/flutter/website/pull/12824)). Rounding out the updates are several important corrections, such as fixing a code example in the `UISceneDelegate` breaking change notice ([PR #12832](https://github.com/flutter/website/pull/12832)) and repairing a broken link in the app architecture documentation ([PR #12835](https://github.com/flutter/website/pull/12835)).

## Merged Pull Requests

### [PR #12836](https://github.com/flutter/website/pull/12836): Updating banner for livestream
* **Author:** [redbrogdon](https://github.com/redbrogdon)
* **Merged At:** 2025-12-17 09:23 AM
* **Comments:** 2
* Updates the site banner to promote an upcoming livestream with Flutter updates and a live Q&A.

### [PR #12835](https://github.com/flutter/website/pull/12835): Fix link to Very Good Engineering architecture documentation
* **Author:** [MoritzMessner](https://github.com/MoritzMessner)
* **Merged At:** 2025-12-17 11:11 AM
* **Comments:** 5
* Fixes a broken link to the "Very Good Engineering" architecture documentation in the app architecture recommendations guide.

### [PR #12832](https://github.com/flutter/website/pull/12832): Fix code example in breaking-change/uiscenedelegate.md
* **Author:** [Monkey-Matt](https://github.com/Monkey-Matt)
* **Merged At:** 2025-12-17 02:47 AM
* **Comments:** 4
* This PR corrects a code example in the `UISceneDelegate` breaking change documentation by moving the `didInitializeImplicitFlutterEngine` method inside the `AppDelegate` class definition.

### 🔥 [PR #12830](https://github.com/flutter/website/pull/12830): [experiment] Update Flutter docs to reflect Hooks changes in Dart.
* **Author:** [antfitch](https://github.com/antfitch)
* **Merged At:** 2025-12-17 10:34 AM
* **Comments:** 6
* This PR updates the Flutter documentation to reflect the introduction of Dart build hooks for FFI, introducing a new `package_ffi` template and renaming "FFI plugins" to "FFI packages".

### [PR #12824](https://github.com/flutter/website/pull/12824): Adding a page on handling input events
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2025-12-17 02:39 PM
* **Comments:** 3
* Adds a new documentation page for the GenUI SDK that explains how user input events are captured, processed, and transmitted to the AI agent.


## Closed Issues

No issues were closed during this time.



## Top Hacker News Stories

### 233 🔥 [Beginning January 2026, all ACM publications will be made open access](https://dl.acm.org/openaccess)
* **Author:** [Kerrick](https://news.ycombinator.com/user?id=Kerrick) | **Comments:** [22](https://news.ycombinator.com/item?id=46313991)

### 257 🔥🔥 [Classical statues were not painted horribly](https://worksinprogress.co/issue/were-classical-statues-painted-horribly/)
* **Author:** [bensouthwood](https://news.ycombinator.com/user?id=bensouthwood) | **Comments:** [144](https://news.ycombinator.com/item?id=46311856)

### 68  [Using TypeScript to Obtain One of the Rarest License Plates](https://www.jack.bio/blog/licenseplate)
* **Author:** [lafond](https://news.ycombinator.com/user?id=lafond) | **Comments:** [44](https://news.ycombinator.com/item?id=46313379)

### 153 🔥 [Your job is to deliver code you have proven to work](https://simonwillison.net/2025/Dec/18/code-proven-to-work/)
* **Author:** [simonw](https://news.ycombinator.com/user?id=simonw) | **Comments:** [120](https://news.ycombinator.com/item?id=46313297)

### 56  [Virtualizing Nvidia HGX B200 GPUs with Open Source](https://www.ubicloud.com/blog/virtualizing-nvidia-hgx-b200-gpus-with-open-source)
* **Author:** [ben_s](https://news.ycombinator.com/user?id=ben_s) | **Comments:** [14](https://news.ycombinator.com/item?id=46312792)

### 11  [Launch HN: Pulse (YC S24) – Production-grade unstructured document extraction]()
* **Author:** [sidmanchkanti21](https://news.ycombinator.com/user?id=sidmanchkanti21) | **Comments:** [1](https://news.ycombinator.com/item?id=46313930)
* **Pulse** is a document extraction system designed to create reliable, LLM-ready text from complex documents. It uses a hybrid approach of computer vision and language models to address the subtle, hard-to-detect errors common in VLM-based extraction, making the process more auditable and robust.

### 185 🔥 [Are Apple gift cards safe to redeem?](https://daringfireball.net/linked/2025/12/17/are-apple-gift-cards-safe-to-redeem)
* **Author:** [tosh](https://news.ycombinator.com/user?id=tosh) | **Comments:** [124](https://news.ycombinator.com/item?id=46313061)

### 10  [Valve Is Running Apple's Playbook in Reverse](https://www.garbagecollected.dev/p/valve-the-reverse-apple)
* **Author:** [ee64a4a](https://news.ycombinator.com/user?id=ee64a4a) | **Comments:** [1](https://news.ycombinator.com/item?id=46314109)

### 129 🔥 [Please Just Try Htmx](http://pleasejusttryhtmx.com/)
* **Author:** [iNic](https://news.ycombinator.com/user?id=iNic) | **Comments:** [128](https://news.ycombinator.com/item?id=46312973)

### 180 🔥 [Jonathan Blow has spent the past decade designing 1,400 puzzles for you](https://arstechnica.com/gaming/2025/12/jonathan-blow-has-spent-the-past-decade-designing-1400-puzzles-for-you/)
* **Author:** [furcyd](https://news.ycombinator.com/user?id=furcyd) | **Comments:** [228](https://news.ycombinator.com/item?id=46240855)

### 23  [Show HN: A local-first memory store for LLM agents (SQLite)](https://github.com/CaviraOSS/OpenMemory)
* **Author:** [nullure](https://news.ycombinator.com/user?id=nullure) | **Comments:** [12](https://news.ycombinator.com/item?id=46262294)

### 98  [RCE via ND6 Router Advertisements in FreeBSD](https://www.freebsd.org/security/advisories/FreeBSD-SA-25:12.rtsold.asc)
* **Author:** [weeha](https://news.ycombinator.com/user?id=weeha) | **Comments:** [50](https://news.ycombinator.com/item?id=46310104)

### 163 🔥 [Slowness is a virtue](https://blog.jakobschwichtenberg.com/p/slowness-is-a-virtue)
* **Author:** [jakobgreenfeld](https://news.ycombinator.com/user?id=jakobgreenfeld) | **Comments:** [64](https://news.ycombinator.com/item?id=46311092)

### 260 🔥🔥 [Creating apps like Signal could be 'hostile activity' claims UK watchdog](https://www.techradar.com/vpn/vpn-privacy-security/creating-apps-like-signal-or-whatsapp-could-be-hostile-activity-claims-uk-watchdog)
* **Author:** [donohoe](https://news.ycombinator.com/user?id=donohoe) | **Comments:** [189](https://news.ycombinator.com/item?id=46311355)

### 1  [Hightouch (YC S19) Is Hiring](https://hightouch.com/careers)
* **Author:** [joshwget](https://news.ycombinator.com/user?id=joshwget) | **Comments:** [null](https://news.ycombinator.com/item?id=46311637)

### 1063 🔥🔥🔥 [Gemini 3 Flash: Frontier intelligence built for speed](https://blog.google/products/gemini/gemini-3-flash/)
* **Author:** [meetpateltech](https://news.ycombinator.com/user?id=meetpateltech) | **Comments:** [560](https://news.ycombinator.com/item?id=46301851)
* This comment provides a collection of official links to the documentation, developer blog posts, and model card for Google's **Gemini 3 Flash**. The resources cover the model's API, features, and integration into Google Search.

### 10  [Dogalog: A realtime Prolog-based livecoding music environment](https://github.com/danja/dogalog)
* **Author:** [triska](https://news.ycombinator.com/user?id=triska) | **Comments:** [2](https://news.ycombinator.com/item?id=46262031)

### 126 🔥 [Egyptian Hieroglyphs: Lesson 1](https://www.egyptianhieroglyphs.net/egyptian-hieroglyphs/lesson-1/)
* **Author:** [jameslk](https://news.ycombinator.com/user?id=jameslk) | **Comments:** [49](https://news.ycombinator.com/item?id=46309407)

### 526 🔥🔥 [I got hacked: My Hetzner server started mining Monero](https://blog.jakesaunders.dev/my-server-started-mining-monero-this-morning/)
* **Author:** [jakelsaunders94](https://news.ycombinator.com/user?id=jakelsaunders94) | **Comments:** [324](https://news.ycombinator.com/item?id=46305585)

### 71  [Spain fines Airbnb €65M: Why the government is cracking down on illegal rentals](https://www.euronews.com/travel/2025/12/15/spain-fines-airbnb-65-million-why-the-government-is-cracking-down-on-illegal-rentals)
* **Author:** [robtherobber](https://news.ycombinator.com/user?id=robtherobber) | **Comments:** [69](https://news.ycombinator.com/item?id=46313266)

### 248 🔥 [After ruining a treasured water resource, Iran is drying up](https://e360.yale.edu/features/iran-water-drought-dams-qanats)
* **Author:** [YaleE360](https://news.ycombinator.com/user?id=YaleE360) | **Comments:** [188](https://news.ycombinator.com/item?id=46310976)

### 115 🔥 [What is an elliptic curve? (2019)](https://www.johndcook.com/blog/2019/02/21/what-is-an-elliptic-curve/)
* **Author:** [tzury](https://news.ycombinator.com/user?id=tzury) | **Comments:** [12](https://news.ycombinator.com/item?id=46309571)

### 90  [It's all about momentum](https://combo.cc/posts/its-all-about-momentum-innit/)
* **Author:** [sph](https://news.ycombinator.com/user?id=sph) | **Comments:** [31](https://news.ycombinator.com/item?id=46310856)

### 21  [From profiling to kernel patch: the journey to an eBPF performance fix](https://rovarma.com/articles/from-profiling-to-kernel-patch-the-journey-to-an-ebpf-performance-fix/)
* **Author:** [todsacerdoti](https://news.ycombinator.com/user?id=todsacerdoti) | **Comments:** [1](https://news.ycombinator.com/item?id=46258583)

### 82  [Most parked domains now serving malicious content](https://krebsonsecurity.com/2025/12/most-parked-domains-now-serving-malicious-content/)
* **Author:** [bookofjoe](https://news.ycombinator.com/user?id=bookofjoe) | **Comments:** [23](https://news.ycombinator.com/item?id=46312021)



