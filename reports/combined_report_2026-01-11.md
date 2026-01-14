# Overall Summary
Here's a highlight section of the most impactful pull requests and closed issues from the recent reports:

**🔥🔥🔥 [PR #178711](https://github.com/flutter/flutter/pull/178711) (flutter/flutter): [ Tool ] Add support for linux riscv64 architecture**
  * **Comments:** 17
  * This PR adds support for building desktop Flutter applications for Linux RISC-V 64-bit architecture, updating the Flutter tool, build system, and artifacts. It also introduces an experimental feature flag (`--enable-riscv64`) to allow cross-building for `riscv64` targets from other Linux hosts.

**🔥🔥🔥 [Issue #170792](https://github.com/flutter/flutter/issues/170792) (flutter/flutter): Can't capture the output of a `BackdropFilterLayer` without painting it to the screen**
  * **Reactions:** **31** -- 👍 31
  * The user is unable to capture the output of a `BackdropFilterLayer` as an image for use in a shader without also painting it to the screen, as attempts either invalidate the scene builder or fail to include the actual background content.

**🔥🔥🔥 [PR #180759](https://github.com/flutter/flutter/pull/180759) (flutter/flutter): Enabled some disabled impeller fragment shader dart tests**
  * **Comments:** 13
  * This PR enables several previously disabled Impeller fragment shader tests by refactoring the `fragment_shader_test.dart` suite to use conditional helper functions, allowing tests to run specifically for Skia or Impeller and removing a blanket skip.

**🔥🔥🔥 [Issue #20189](https://github.com/dart-lang/sdk/issues/20189) (dart-lang/sdk): Interoperating with large JS libraries is challenging**
  * The user finds it very painful to interoperate with large JavaScript libraries using Dart's `dart:js` due to excessive quotes, strings, and brackets, making tooling difficult and APIs hard to read; they desire a more toolable, scalable, developer-friendly, and efficient JS interop mechanism.

**🔥 [PR #180022](https://github.com/flutter/flutter/pull/180022) (flutter/flutter): Re-prioritize pipeline compile jobs and perform them eagerly instead of waiting.**
  * **Comments:** 4
  * Removes Impeller's "lazy shader mode" and re-enables eager Pipeline State Object (PSO) pre-flight, introducing a `PipelineCompileQueue` that allows critical compilation jobs to be performed immediately on the calling thread, preventing rendering jank on low-end devices.

**🔥 [PR #179824](https://github.com/flutter/flutter/pull/179824) (flutter/flutter): Make sure that a CupertinoTabScaffold doesn't crash in 0x0 environment**
  * **Comments:** 7
  * Addresses a crash in `CupertinoTabScaffold` when rendered in a 0x0 environment by adding a new test to ensure the widget handles zero area correctly without crashing.

**🔥 [PR #180573](https://github.com/flutter/flutter/pull/180573) (flutter/flutter): Unpin google_mobile_ads**
  * **Comments:** 7
  * Unpins the `google_mobile_ads` package, allowing it to update to version 7.0.0 and resolving a previous iOS build failure (issue #156912) due to recent Xcode updates, also updating `webview_flutter` and `webview_flutter_android` as a result.

**🔥 [Issue #12197](https://github.com/flutter/website/issues/12197) (flutter/website): Add /llms.txt to Flutter docs for LLM-friendly indexing**
  * **Reactions:** **9** -- 👍 9
  * This issue proposes adding a top-level `/llms.txt` file to `docs.flutter.dev` to provide LLMs with an up-to-date, Markdown-based map of important documentation, aiming to improve answer quality and reduce outdated information from AI tools.

**🔥 [Issue #180632](https://github.com/flutter/flutter/issues/180632) (flutter/flutter): Flutter web with canvaskit no longer runs on Edge version 144 - URGENT**
  * Flutter web applications using CanvasKit no longer run on Edge version 144.0.3719.59 (beta), displaying a blank page and a console abort error, while still functioning correctly on other browsers like Chrome, Firefox, and Opera.

**🔥 [Issue #20389](https://github.com/dart-lang/sdk/issues/20389) (dart-lang/sdk): Odd behavior of file.statSync() when file is a symlink**
  * `file.statSync()` on a symlink incorrectly reports the `FileSystemEntityType` as `FILE` instead of `LINK`, causing checks for `isLink` to return false.


# GitHub PR Report for dart-lang/ai
## From 2026-01-09 to 2026-01-11

No significant changes were introduced to the repository during this period, as no pull requests were merged and no issues were closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2026-01-09 to 2026-01-11

The recent repository updates primarily focused on refining public API clarity, improving developer tooling, and addressing long-standing usability challenges. Noteworthy changes include clarifications to the `dart:io` library's `file.statSync()` behavior regarding symlinks, ensuring it correctly reports a `LINK` type ([Issue #20389](https://github.dart-lang/sdk/issues/20389)), and enhancing the API documentation for `Future.catchError` to explicitly detail its `onError` callback signatures ([Issue #16004](https://github.dart-lang/sdk/issues/16004)). Significant effort was also directed towards improving the developer experience with tooling, resolving issues like the analyzer generating excessive, confusing errors from a single syntax mistake ([Issue #22938](https://github.dart-lang/sdk/issues/22938)) and ensuring diagnostic messages from analysis server plugins are correctly displayed in IDEs ([Issue #62357](https://github.dart-lang/sdk/issues/62357)). Furthermore, the closure of discussions highlights the ongoing pursuit of better `dart:js` interop for large JavaScript libraries ([Issue #20189](https://github.dart-lang/sdk/issues/20189)) and the exploration of an `IOSink` implementation that writes to a `StringBuffer` ([Issue #9051](https://github.dart-lang/sdk/issues/9051)), both of which could expand the public API surface. A minor formatting correction within a linter rule was also implemented ([Issue #62378](https://github.com/dart-lang/sdk/issues/62378)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62383](https://github.com/dart-lang/sdk/issues/62383): [analyzer_testing] Make `PubPackageResolutionTest._testFilePath` public
* **Author:** [FMorschel](https://github.com/FMorschel)
* The user wants to make `PubPackageResolutionTest._testFilePath` public to properly test a lint that analyzes files within `test` and inner packages, as `assertDiagnostics` currently prevents accurate URI-based testing for these non-`lib` locations.

### [Issue #62378](https://github.com/dart-lang/sdk/issues/62378): [linter] Stray newline and spaces typo.
* **Author:** [modulovalue](https://github.com/modulovalue)
* **Reactions:** **1** -- 👍 1
* A formatting typo in `invalid_runtime_check_with_js_interop_types.dart` introduces a stray newline and spaces, differing from the likely intended formatting seen in other files.

### [Issue #62357](https://github.com/dart-lang/sdk/issues/62357): [analysis_server_plugin] Plugins diagnostic messages don't show on IDE
* **Author:** [FMorschel](https://github.com/FMorschel)
* Diagnostic messages from the `essential_lints` analysis server plugin, specifically `unnecessary_setstate`, are not appearing in the IDE, suggesting they are not being forwarded by the analysis server.

### [Issue #22938](https://github.com/dart-lang/sdk/issues/22938): One-line syntax error results in many error reports from analyzer
* **Author:** [sethladd](https://github.com/sethladd)
* A single missing opening parenthesis in the code causes the analyzer to report many seemingly random errors, rather than a clear, concise error pointing to the original syntax mistake.

### [Issue #20389](https://github.com/dart-lang/sdk/issues/20389): Odd behavior of file.statSync() when file is a symlink
* **Author:** [sethladd](https://github.com/sethladd)
* `file.statSync()` on a symlink incorrectly reports the `FileSystemEntityType` as `FILE` instead of `LINK`, causing checks for `isLink` to return false.

### [Issue #20189](https://github.com/dart-lang/sdk/issues/20189): Interoperating with large JS libraries is challenging
* **Author:** [sethladd](https://github.com/sethladd)
* The user finds it very painful to interoperate with large JavaScript libraries using Dart's `dart:js` due to excessive quotes, strings, and brackets, making tooling difficult and APIs hard to read; they desire a more toolable, scalable, developer-friendly, and efficient JS interop mechanism.

### [Issue #16004](https://github.com/dart-lang/sdk/issues/16004): API description for catchError missing what the callback can take
* **Author:** [sethladd](https://github.com/sethladd)
* The documentation for `Future.catchError` currently omits the possible signatures for its `onError` callback, which can accept either an error or an error and a stack trace; the user requests updating the API docs to clarify this.

### [Issue #15679](https://github.com/dart-lang/sdk/issues/15679): Possible optimization: checking ioore exception once inside of loop
* **Author:** [sethladd](https://github.com/sethladd)
* This issue suggests an optimization for the dart2js compiler, proposing that index out-of-range checks (`ioore`) for array accesses within a loop could potentially be performed only once instead of multiple times, assuming the index variable does not change.

### [Issue #9051](https://github.com/dart-lang/sdk/issues/9051): Request: IOSink that constructs a StringBuffer
* **Author:** [sethladd](https://github.com/sethladd)
* This issue requests an `IOSink` implementation that writes to a `StringBuffer`, similar to Java's `StringWriter`, acknowledging the technical challenges of bridging byte-oriented `IOSink` with string-oriented `StringBuffer` and the need for encoding.


# GitHub PR Report for dart-lang/language
## From 2026-01-09 to 2026-01-11

No pull requests were merged, and no issues were closed during this period, indicating that there were no changes made to the repository's codebase or outstanding issues addressed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2026-01-09 to 2026-01-11

There were no pull requests merged or issues closed in the repository during this period, indicating no recent changes to its codebase or reported issues.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/ai
## From 2026-01-09 to 2026-01-11

During this period, there were no pull requests merged and no issues closed, indicating a quiet development cycle with no significant changes to the repository's codebase or public API surface.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2026-01-09 to 2026-01-11

No pull requests were merged, and no issues were closed during this period, indicating a quiet development cycle with no new changes or bug fixes introduced to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2026-01-09 to 2026-01-11

This release cycle brought significant architectural and performance improvements, alongside critical stability fixes and platform expansions. A major **experimental feature now supports building desktop Flutter applications for Linux RISC-V 64-bit architecture**, updating the toolchain and build system ([PR #178711], which also clarified missing Fuchsia artifacts for RISC-V in [PR #180779] addressing [Issue #180775]). The Impeller rendering engine saw a key performance enhancement by **re-prioritizing pipeline compile jobs** to be performed eagerly, removing the "lazy shader mode" to prevent rendering jank, a change addressing several related issues ([PR #180022], closing [Issue #176663], [Issue #176658], and [Issue #176656]).

However, several changes were quickly reverted to ensure stability: an attempt to **unpin the `google_mobile_ads` package** ([PR #180573], previously tracked in [Issue #156912]) and update `webview_flutter` was rolled back due to post-submit build failures ([PR #180761]), effectively re-pinning dependencies. Similarly, efforts to enable more Impeller fragment shader tests ([PR #180759]) were reverted due to observed flakiness ([PR #180785]). An iOS build fix that broadly removed extended attributes also caused build failures and was reverted to a more targeted approach, which relates to a previous issue with iOS codesigning ([PR #180709], relevant to [Issue #180351]).

Robustness was enhanced with fixes preventing widgets like `CupertinoTabScaffold` ([PR #179824]), `Expansible` ([PR #180478]), and `Container` ([PR #180350]) from crashing in zero-size environments. A notable rendering limitation remains, where it's currently **not possible to capture the output of a `BackdropFilterLayer` without also painting it to the screen** ([Issue #170792]). Accessibility saw an update with `clearSemantics` being overridden in `RenderTable` to properly dispose cached `SemanticsNode`s ([PR #180665], resolving [Issue #180666]), and a critical typo in `dropdown_menu.dart` was corrected ([PR #180172], fixing [Issue #180171]). The changelog for Flutter 3.38.6 was also updated, detailing various platform-specific fixes and CI improvements ([PR #180708]).

## Merged Pull Requests

### [PR #180785](https://github.com/flutter/flutter/pull/180785): Reverts "Enabled some disabled impeller fragment shader dart tests (#180759)"
* **Author:** [auto-submit[bot]](https://github.com/apps/auto-submit)
* **Merged At:** 2026-01-09 04:51 PM
* **Comments:** 0
* This PR reverts a previous change that enabled some Impeller fragment shader Dart tests, re-disabling them due to observed flakiness in `fragment_shader_test.dart` on LUCI.

### [PR #180779](https://github.com/flutter/flutter/pull/180779): fix: there are no riscv fuchsia artifacts
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* **Merged At:** 2026-01-09 04:16 PM
* **Comments:** 1
* Removes the erroneous download instruction for `riscv64` Fuchsia debug symbols from `FlutterRunnerDebugSymbols` and its corresponding test, fixing an issue where the system attempted to download artifacts that are not produced.

### [PR #180761](https://github.com/flutter/flutter/pull/180761): Reverts "Unpin google_mobile_ads (#180573)"
* **Author:** [auto-submit[bot]](https://github.com/apps/auto-submit)
* **Merged At:** 2026-01-09 10:57 AM
* **Comments:** 1
* This PR reverts a previous change that unpinned the `google_mobile_ads` package, re-pinning it to version 5.1.0 because the unpinning caused post-submit builds to fail and required a lockfile regeneration. The revert also restores `webview_flutter` packages to their earlier versions.

### 🔥🔥🔥 [PR #180759](https://github.com/flutter/flutter/pull/180759): Enabled some disabled impeller fragment shader dart tests
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2026-01-09 02:32 PM
* **Comments:** 13
* This PR enables several previously disabled Impeller fragment shader tests by refactoring the `fragment_shader_test.dart` suite to use conditional helper functions, allowing tests to run specifically for Skia or Impeller and removing a blanket skip. Additionally, it streamlines shader compilation in `BUILD.gn` by integrating SDF shaders into the general compilation target.

### [PR #180709](https://github.com/flutter/flutter/pull/180709): Reverts "Fix iOS xattr removal to clear all extended attributes (#180355)"
* **Author:** [auto-submit[bot]](https://github.com/apps/auto-submit)
* **Merged At:** 2026-01-08 04:03 PM
* **Comments:** 0
* This PR reverts a previous change that broadly removed all extended attributes (`xattr -cr`) during iOS builds; this change caused post-submit failures because Xcode was unable to delete build artifacts, so the original, more targeted removal of only `com.apple.FinderInfo` is restored to fix these new build issues.

### [PR #180708](https://github.com/flutter/flutter/pull/180708): Update flutter changelog for 3.38.6
* **Author:** [walley892](https://github.com/walley892)
* **Merged At:** 2026-01-09 08:40 AM
* **Comments:** 0
* Updates the Flutter changelog to include release notes for version 3.38.6, detailing fixes for issues such as Windows app crashes, unclickable iOS WebViews, Android accessibility crashes, and other platform-specific improvements and CI updates.

### [PR #180703](https://github.com/flutter/flutter/pull/180703): Update CODEOWNERS to remove chinmaygarde.
* **Author:** [chinmaygarde](https://github.com/chinmaygarde)
* **Merged At:** 2026-01-09 12:44 PM
* **Comments:** 1
* Removes @chinmaygarde from the CODEOWNERS file for the embedder API, specifically for `embedder.h` and `embedder_frozen.h`.

### [PR #180665](https://github.com/flutter/flutter/pull/180665): [A11y ] Add `clearSemantics`in table
* **Author:** [hannah-hyj](https://github.com/hannah-hyj)
* **Merged At:** 2026-01-09 12:56 PM
* **Comments:** 0
* Overrides `clearSemantics` in `RenderTable` to correctly clear cached `SemanticsNode`s for rows and cells. This fixes an accessibility-related assertion error (issue #180666) that occurred when semantics were disposed and re-initialized.

### [PR #180600](https://github.com/flutter/flutter/pull/180600): Merge `widget_tester_leaks_free_test.dart` into `widget_tester_test.dart`
* **Author:** [dkwingsmt](https://github.com/dkwingsmt)
* **Merged At:** 2026-01-09 04:32 PM
* **Comments:** 0
* Consolidates the `widget_tester_leaks_free_test.dart` file into `widget_tester_test.dart`, integrating its leak test into the main test file. This refactoring is now possible due to recent additions of leak tracking in CI, which eliminates the need for a separate test file for leak-related assertions.

### 🔥 [PR #180573](https://github.com/flutter/flutter/pull/180573): Unpin google_mobile_ads
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2026-01-09 08:41 AM
* **Comments:** 7
* Unpins the `google_mobile_ads` package, allowing it to update to version 7.0.0 and resolving a previous iOS build failure (issue #156912) due to recent Xcode updates, also updating `webview_flutter` and `webview_flutter_android` as a result.

### [PR #180478](https://github.com/flutter/flutter/pull/180478): Make sure that an Expansible doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2026-01-09 05:48 PM
* **Comments:** 1
* Adds a test case to the `Expansible` widget to ensure it does not crash when rendered in a zero-size (0x0) environment, addressing a known issue.

### [PR #180350](https://github.com/flutter/flutter/pull/180350): Make sure that a Container doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2026-01-09 05:48 PM
* **Comments:** 2
* Adds a new test to ensure that the `Container` widget does not crash when rendered with a zero area (0x0) size, addressing a known issue.

### [PR #180172](https://github.com/flutter/flutter/pull/180172): Fix typo in dropdown_menu.dart
* **Author:** [Koichi5](https://github.com/Koichi5)
* **Merged At:** 2026-01-09 09:20 AM
* **Comments:** 3
* This PR fixes a typo in `dropdown_menu.dart` by correcting the variable name `_internalFocudeNode` to `_internalFocusNode`, which resolves an issue where the focus node was not being correctly referenced.

### [PR #180022](https://github.com/flutter/flutter/pull/180022): Re-prioritize pipeline compile jobs and perform them eagerly instead of waiting.
* **Author:** [chinmaygarde](https://github.com/chinmaygarde)
* **Merged At:** 2026-01-09 02:45 PM
* **Comments:** 4
* Removes Impeller's "lazy shader mode" and re-enables eager Pipeline State Object (PSO) pre-flight, introducing a `PipelineCompileQueue` that allows critical compilation jobs to be performed immediately on the calling thread, preventing rendering jank on low-end devices.

### 🔥 [PR #179824](https://github.com/flutter/flutter/pull/179824): Make sure that a CupertinoTabScaffold doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2026-01-09 07:36 PM
* **Comments:** 7
* Addresses a crash in `CupertinoTabScaffold` when rendered in a 0x0 environment by adding a new test to ensure the widget handles zero area correctly without crashing.

### 🔥🔥🔥 [PR #178711](https://github.com/flutter/flutter/pull/178711): [ Tool ] Add support for linux riscv64 architecture
* **Author:** [vhaudiquet](https://github.com/vhaudiquet)
* **Merged At:** 2026-01-09 12:33 PM
* **Comments:** 17
* This PR adds support for building desktop Flutter applications for Linux RISC-V 64-bit architecture, updating the Flutter tool, build system, and artifacts. It also introduces an experimental feature flag (`--enable-riscv64`) to allow cross-building for `riscv64` targets from other Linux hosts.


## Closed Issues

### [Issue #180797](https://github.com/flutter/flutter/issues/180797): In App Purchase - Product not found despite being there in Play Console
* **Author:** [thisisjaymehta](https://github.com/thisisjaymehta)
* When querying for an in-app purchase product on Android using the `in_app_purchase` package, the product is returned in `notFoundIDs` despite being correctly configured in the Google Play Console.

### [Issue #180786](https://github.com/flutter/flutter/issues/180786): win-8 in quarantined state because the local Temp directory exceeded 1024 files.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* A `win-8` system is in a quarantined state because its local `Temp` directory has exceeded 1024 files.

### [Issue #180775](https://github.com/flutter/flutter/issues/180775): Flutter tool attempts to download Fuchsia riscv that does not exist
* **Author:** [jtmcdole](https://github.com/jtmcdole)

### [Issue #180773](https://github.com/flutter/flutter/issues/180773): linux-37 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The linux-37 system lost its external connection from the phone device, which appears to be a breakage issue without a workaround based on the provided checkboxes.

### [Issue #180760](https://github.com/flutter/flutter/issues/180760): linux-8 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The linux-8 device lost its external connection to a phone device.

### [Issue #180751](https://github.com/flutter/flutter/issues/180751): linux-14 marked dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The build configuration "linux-14" has been marked as dead, as shown in the provided image.

### [Issue #180745](https://github.com/flutter/flutter/issues/180745): `Linux linux_license` is timing out and blocking the tree
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* The `Linux linux_license` test is taking 1.6 hours, timing out, and blocking the development tree, requiring immediate attention and consideration for marking as flakey.

### [Issue #180732](https://github.com/flutter/flutter/issues/180732): [Impeller] Incorrect Path Rendering (and Artifacts)
* **Author:** [mbas83](https://github.com/mbas83)
* The Impeller engine incorrectly renders an oval path, showing artifacts and varying behavior across OpenGL (solid rectangle) and Vulkan (incorrect path with artifacts) backends, with the rendering success dependent on the order of path commands.

### [Issue #180671](https://github.com/flutter/flutter/issues/180671): Android GLSurfaceView onSurfaceCreated bug
* **Author:** [gghh0408](https://github.com/gghh0408)
* The `GLSurfaceView`'s `onSurfaceCreated()` method is unexpectedly re-invoked whenever the Android app returns from the background, navigates back from another page, or loses/regains focus, despite `setPreserveEGLContextOnPause(true)` and `wantKeepAlive => true` being set, causing the surface to be rebuilt unnecessarily.

### [Issue #180666](https://github.com/flutter/flutter/issues/180666): Add `clearSemantics` in table
* **Author:** [hannah-hyj](https://github.com/hannah-hyj)
* This issue requests adding `clearSemantics` to a table to ensure intermediate semantics nodes created by `assembleSemanticsNode` are properly disposed.

### [Issue #180632](https://github.com/flutter/flutter/issues/180632): Flutter web with canvaskit no longer runs on Edge version 144 - URGENT
* **Author:** [Henk-Keijzer](https://github.com/Henk-Keijzer)
* Flutter web applications using CanvasKit no longer run on Edge version 144.0.3719.59 (beta), displaying a blank page and a console abort error, while still functioning correctly on other browsers like Chrome, Firefox, and Opera.

### [Issue #180477](https://github.com/flutter/flutter/issues/180477): Xcode 26.2: flutter create fails to generate Podfile , pod install gives "CocoaPods did not set base configuration" error; Xcode's "Configurations" section missing
* **Author:** [zthrive](https://github.com/zthrive)
* Flutter iOS projects on Xcode 26.2 consistently fail `pod install` with a "CocoaPods did not set the base configuration" error, and the Xcode UI's 'Configurations' section is entirely missing for projects and targets, despite multiple troubleshooting attempts.

### [Issue #180439](https://github.com/flutter/flutter/issues/180439): Windows windows_host_engine_test test failure results in infra failure
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* A `Windows windows_host_engine_test` failure is being misreported as an infrastructure failure instead of a test failure because a subsequent "Set execute permission" step fails due to the `chmod` command not being found.

### [Issue #180351](https://github.com/flutter/flutter/issues/180351): Failure to codesign iOS app due to xattr issue
* **Author:** [BGB2121](https://github.com/BGB2121)
* Flutter iOS release builds fail to codesign on macOS Sonoma 15.2 with Xcode 26.1.1+ because `com.apple.provenance` extended attributes are added to the `Flutter.framework` binary during unpacking and Flutter's attempts to remove them fail silently, leading to Xcode's stricter code signing validation rejecting the binary and preventing physical device deployment.

### [Issue #180291](https://github.com/flutter/flutter/issues/180291): The widget Link shows the url of other widget on the page
* **Author:** [polina-c](https://github.com/polina-c)
* The `Link` widget incorrectly shows the URL of another widget on the page when its child is scaled down by a `FittedBox`, causing tap actions to open one URL while right-click actions copy a different, incorrect URL.

### [Issue #180171](https://github.com/flutter/flutter/issues/180171): Typo in dropdown_menu.dart
* **Author:** [Koichi5](https://github.com/Koichi5)
* A typo was found in `dropdown_menu.dart` at line 715, where `_internalFocudeNode` should be corrected to `_internalFocusNode`.

### [Issue #180156](https://github.com/flutter/flutter/issues/180156): Adding a delay parameter to SemanticsService.announce() API for developers who need custom delays for long button labels
* **Author:** [flutter-zl](https://github.com/flutter-zl)
* The issue proposes adding a `delay` parameter to the `SemanticsService.announce()` API to allow developers to specify custom delays, particularly useful for long button labels.

### [Issue #180092](https://github.com/flutter/flutter/issues/180092): Windows Crash:  FlutterDesktopTextureRegistrarMarkExternalTextureFrameAvailable  race condition on shutdown
* **Author:** [JulianPscheid](https://github.com/JulianPscheid)
* A Flutter Windows application crashes with an Access Violation (0xC0000005) in `FlutterDesktopTextureRegistrarMarkExternalTextureFrameAvailable` during shutdown, due to a race condition where background plugin threads attempt to access destroyed texture registrars as the engine tears down in response to `WM_DESTROY` messages.

### [Issue #180067](https://github.com/flutter/flutter/issues/180067): webview_flutter causes all network requests to fail on iOS physical devices in existing project
* **Author:** [wujingquan](https://github.com/wujingquan)
* Adding the `webview_flutter` plugin to an existing project causes all network requests (using dio or http) to fail with a `SocketException` (failed host lookup) on iOS physical devices, while working correctly on Android and iOS simulators.

### [Issue #180065](https://github.com/flutter/flutter/issues/180065): [tool_crash] UnsupportedError: Unsupported operation: Illegal character in path: *
* **Author:** [Emmakade](https://github.com/Emmakade)
* The Flutter `assemble` command fails with an `UnsupportedError` due to an "Illegal character in path: *" occurring when the build system attempts to process assets or paths, likely caused by a wildcard character in a path component on a Windows system.

### [Issue #180055](https://github.com/flutter/flutter/issues/180055): [local_auth] android has error after authenticate api
* **Author:** [YYL1999](https://github.com/YYL1999)
* The `local_auth` plugin on Android returns an "Authentication in progress" error when calling `authentication.authenticate`, preventing the biometric authentication process from completing successfully.

### [Issue #180089](https://github.com/flutter/flutter/issues/180089): Flutter Issue: Black screen on iOS 26 (iPhone 15) – Debug/ Summary  Flutter app launches to a black screen on iOS 26 (iPhone 15) when running in debug mode and  Test Flight also not working
* **Author:** [Raajmathankumardys](https://github.com/Raajmathankumardys)
* A Flutter app running on iOS 26 (iPhone 15) displays a black screen when launched in debug mode and also fails on TestFlight.

### [Issue #179923](https://github.com/flutter/flutter/issues/179923): [split_config.arm64_v8a.apk!libdartjni.so] globalEnv_CallObjectMethod
* **Author:** [Nitesh095](https://github.com/Nitesh095)
* The `app.hookup.com` application is crashing on arm64-v8a devices within `globalEnv_CallObjectMethod` in `libdartjni.so`, indicating a Java Native Interface (JNI) error likely originating from a Dart/Flutter call to the Android Runtime.

### [Issue #178221](https://github.com/flutter/flutter/issues/178221): Improve the error message if Tab has invalid arguments
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* The issue requests an improvement to the error message for the `Tab` widget when both `text` and `child` arguments are provided, as the current error is unhelpful and a more specific assertion message is expected.

### [Issue #176663](https://github.com/flutter/flutter/issues/176663): [Impeller] Allow reprioritzation-on-waits for PSO preflight tasks.
* **Author:** [chinmaygarde](https://github.com/chinmaygarde)
* This issue proposes that Impeller's PSO preflight tasks, when awaited, should be reprioritized to the front of the queue, possibly executing on the calling thread, to address current arbitrary task submission order.

### [Issue #176658](https://github.com/flutter/flutter/issues/176658): [Impeller] Deprecate and remove Switch::ImpellerLazyShaderMode.
* **Author:** [chinmaygarde](https://github.com/chinmaygarde)
* This issue proposes to deprecate and remove `Switch::ImpellerLazyShaderMode` in Impeller, as it is currently used by only one customer with limited effectiveness and depends on a separate issue.

### [Issue #176656](https://github.com/flutter/flutter/issues/176656): [Impeller] Allow eager pre-flight but lazy waits of PSO setup tasks.
* **Author:** [chinmaygarde](https://github.com/chinmaygarde)
* This issue proposes changing Impeller's PSO setup from fully lazy to eagerly submitting pre-flight tasks to a worker pool while keeping waits lazy, aiming to improve time-to-first-frame and device concurrency, and eventually becoming the default behavior by removing the existing lazy shader mode switch.

### [Issue #174524](https://github.com/flutter/flutter/issues/174524): [UIScene][website] Update documentation
* **Author:** [vashworth](https://github.com/vashworth)
* This issue requests documentation updates for migrating plugins, Flutter apps, and "Add to app" scenarios to UIScene, detailing changes for Info.plist, AppDelegate, SceneDelegate, platform channels, plugin registration, deprecated APIs, and SwiftUI.

### [Issue #170792](https://github.com/flutter/flutter/issues/170792): Can't capture the output of a `BackdropFilterLayer` without painting it to the screen
* **Author:** [timcreatedit](https://github.com/timcreatedit)
* **Reactions:** **31** -- 👍 31
* The user is unable to capture the output of a `BackdropFilterLayer` as an image for use in a shader without also painting it to the screen, as attempts either invalidate the scene builder or fail to include the actual background content.

### [Issue #156912](https://github.com/flutter/flutter/issues/156912): Unpin google_mobile_ads
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* This issue tracks unpinning `google_mobile_ads` from version 5.1.0, which was pinned to fix Flutter build breaks caused by version 5.2.0's Xcode 15.3 requirement and new Swift code in an Objective-C benchmark app, with resolution requiring a Flutter CI Xcode upgrade and Podfile adjustments for Swift compatibility.


# GitHub PR Report for flutter/genui
## From 2026-01-09 to 2026-01-11

No pull requests were merged, and no issues were closed during this period, indicating that no changes were made to the repository's codebase or outstanding tasks.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2026-01-09 to 2026-01-11

No pull requests were merged and no issues were closed during this period, indicating no changes were made to the repository's codebase or public API surface.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2026-01-09 to 2026-01-11

There were no pull requests merged and no issues closed during this period, indicating that no changes were made to the repository's codebase or outstanding issues addressed within this timeframe.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2026-01-09 to 2026-01-11

Recent updates to the repository primarily focus on enhancing documentation accessibility, user experience for developers, and improving how Flutter's extensive resources are indexed. A notable change, highlighted by significant community interest and reactions, addresses the proposal to implement an `/llms.txt` file within the Flutter documentation to optimize indexing for large language models, aiming to provide more accurate and up-to-date information from AI tools [[Issue #12197](https://github.com/flutter/website/issues/12197)]. To improve the developer experience, troubleshooting documentation has been expanded to assist Windows users encountering "Filename too long" errors during `flutter upgrade` [[PR #12905](https://github.com/flutter/website/pull/12905), which addresses [Issue #12898](https://github.com/flutter/website/issues/12898)], and corrections were made to the breaking changes index to ensure changes are appropriately categorized by stable release [[PR #12902](https://github.com/flutter/website/pull/12902)]. Furthermore, several new shortlinks were added to simplify access to important documentation, including details on decoupling page transition builders [[PR #12912](https://github.com/flutter/website/pull/12912)], managing iOS platform view touch gesture blocking [[PR #12910](https://github.com/flutter/website/pull/12910)], and the Flutter Wrapped 2025 report [[PR #12911](https://github.com/flutter/website/pull/12911)].

## Merged Pull Requests

### [PR #12912](https://github.com/flutter/website/pull/12912): Add website link for decouple-page-transition-builders
* **Author:** [victorsanni](https://github.com/victorsanni)
* **Merged At:** 2026-01-09 02:19 PM
* **Comments:** 2
* Adds a Firebase redirect for `/go/decouple-page-transition-builders` to a Google Docs URL, providing a convenient short link for accessing a document discussing page transition builders.

### [PR #12911](https://github.com/flutter/website/pull/12911): Add link to Flutter Wrapped 2025
* **Author:** [Piinks](https://github.com/Piinks)
* **Merged At:** 2026-01-09 01:21 PM
* **Comments:** 2
* Adds a new 301 redirect in `firebase.json` for `/go/flutter-wrapped-2025`, providing a shortlink to the Flutter Wrapped 2025 report document.

### [PR #12910](https://github.com/flutter/website/pull/12910): Add redirect for ios-platform-view-touch-gesture-blocking
* **Author:** [hellohuanlin](https://github.com/hellohuanlin)
* **Merged At:** 2026-01-09 04:17 PM
* **Comments:** 3
* Adds a permanent redirect for `/go/ios-platform-view-touch-gesture-blocking` to a Google Docs document, simplifying access to documentation related to iOS platform view touch gesture blocking.

### [PR #12905](https://github.com/flutter/website/pull/12905): fix: Add troubleshooting for Windows filename too long error (#12898)
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-09 01:25 PM
* **Comments:** 4
* Adds a troubleshooting section to the `upgrade.md` documentation for Windows users encountering a "Filename too long" error during `flutter upgrade`, providing solutions such as enabling long path support in Git and Windows, or installing Flutter at a shorter path.

### [PR #12902](https://github.com/flutter/website/pull/12902): Correcting some items in the breaking changes index
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-09 08:16 AM
* **Comments:** 2
* Corrects the indexing of several breaking changes in the documentation, moving them from the "Not yet released to stable" section to their appropriate stable release categories, addressing issues from a recent site migration.


## Closed Issues

### [Issue #12898](https://github.com/flutter/website/issues/12898): Upgrading error
* **Author:** [bernardirfan](https://github.com/bernardirfan)
* The user is unable to upgrade Flutter from version 3.38.4 to 3.38.5 (or higher) on Windows 11 using `flutter upgrade`, encountering errors about local changes and a "Filename too long" error when using `--force`, although the upgrade works correctly on Windows 10.

### [Issue #12788](https://github.com/flutter/website/issues/12788): Add instruction to reload bash profile
* **Author:** [TheCarpetMerchant](https://github.com/TheCarpetMerchant)
* The Flutter manual installation instructions on docs.flutter.dev/install/manual are missing the `source ~/.bash_profile` command to reload the bash profile.

### [Issue #12197](https://github.com/flutter/website/issues/12197): Add /llms.txt to Flutter docs for LLM-friendly indexing
* **Author:** [malthee](https://github.com/malthee)
* **Reactions:** **9** -- 👍 9
* This issue proposes adding a top-level `/llms.txt` file to `docs.flutter.dev` to provide LLMs with an up-to-date, Markdown-based map of important documentation, aiming to improve answer quality and reduce outdated information from AI tools.



## Top Hacker News Stories

### 149 🔥 [Floppy disks turn out to be the greatest TV remote for kids](https://blog.smartere.dk/2026/01/floppy-disks-the-best-tv-remote-for-kids/)
* **Author:** [mchro](https://news.ycombinator.com/user?id=mchro) | **Comments:** [72](https://news.ycombinator.com/item?id=46587934)

### 52  [LLVM: The Bad Parts](https://www.npopov.com/2026/01/11/LLVM-The-bad-parts.html)
* **Author:** [vitaut](https://news.ycombinator.com/user?id=vitaut) | **Comments:** [2](https://news.ycombinator.com/item?id=46588837)

### 36  [Reproducing DeepSeek's MHC: When Residual Connections Explode](https://taylorkolasinski.com/notes/mhc-reproduction/)
* **Author:** [taykolasinski](https://news.ycombinator.com/user?id=taykolasinski) | **Comments:** [9](https://news.ycombinator.com/item?id=46588572)

### 2223 🔥🔥🔥 [The struggle of resizing windows on macOS Tahoe](https://noheger.at/blog/2026/01/11/the-struggle-of-resizing-windows-on-macos-tahoe/)
* **Author:** [happosai](https://news.ycombinator.com/user?id=happosai) | **Comments:** [932](https://news.ycombinator.com/item?id=46579864)

### 65  [Launch a Debugging Terminal into GitHub Actions](https://blog.gripdev.xyz/2026/01/10/actions-terminal-on-failure-for-debugging/)
* **Author:** [martinpeck](https://news.ycombinator.com/user?id=martinpeck) | **Comments:** [11](https://news.ycombinator.com/item?id=46587498)

### 131 🔥 [Lightpanda migrate DOM implementation to Zig](https://lightpanda.io/blog/posts/migrating-our-dom-to-zig)
* **Author:** [gearnode](https://news.ycombinator.com/user?id=gearnode) | **Comments:** [66](https://news.ycombinator.com/item?id=46586179)

### 16  [2025 marked a record-breaking year for Apple services](https://www.apple.com/newsroom/2026/01/2025-marked-a-record-breaking-year-for-apple-services/)
* **Author:** [soheilpro](https://news.ycombinator.com/user?id=soheilpro) | **Comments:** [8](https://news.ycombinator.com/item?id=46589009)

### 93  [Ai, Japanese chimpanzee who counted and painted dies at 49](https://www.bbc.com/news/articles/cj9r3zl2ywyo)
* **Author:** [reconnecting](https://news.ycombinator.com/user?id=reconnecting) | **Comments:** [32](https://news.ycombinator.com/item?id=46585947)

### 112 🔥 [Windows 8 Desktop Environment for Linux](https://github.com/er-bharat/Win8DE)
* **Author:** [edent](https://news.ycombinator.com/user?id=edent) | **Comments:** [106](https://news.ycombinator.com/item?id=46588132)

### 31  [Why Ontario Digital Service couldn't procure '98% safe' LLMs (15M Canadians)](https://rosetta-labs-erb.github.io/authority-boundary-ledger/)
* **Author:** [csemple](https://news.ycombinator.com/user?id=csemple) | **Comments:** [18](https://news.ycombinator.com/item?id=46589386)

### 37  [Show HN: 30k IKEA items in flat text](https://huggingface.co/datasets/tsazan/ikea-us-commercetxt)
* **Author:** [tsazan](https://news.ycombinator.com/user?id=tsazan) | **Comments:** [28](https://news.ycombinator.com/item?id=46526809)
* The author converted a large dataset of IKEA products into a custom, markdown-like format called CommerceTXT to evaluate if a flatter structure improves efficiency for LLM context windows. This conversion resulted in a 24% reduction in tokens compared to an equivalent minified JSON representation.

### 661 🔥🔥🔥 [CLI agents make self-hosting on a home server easier and fun](https://fulghum.io/self-hosting)
* **Author:** [websku](https://news.ycombinator.com/user?id=websku) | **Comments:** [448](https://news.ycombinator.com/item?id=46580326)

### 209 🔥 [JRR Tolkien reads from The Hobbit for 30 Minutes (1952)](https://www.openculture.com/2026/01/j-r-r-tolkien-reads-from-the-hobbit-for-30-minutes-1952.html)
* **Author:** [bookofjoe](https://news.ycombinator.com/user?id=bookofjoe) | **Comments:** [70](https://news.ycombinator.com/item?id=46526896)

### 52  [Ireland fast tracks Bill to criminalise harmful voice or image misuse](https://www.irishtimes.com/ireland/2026/01/07/call-to-fast-track-bill-targeting-ai-deepfakes-and-identity-hijacking/)
* **Author:** [mooreds](https://news.ycombinator.com/user?id=mooreds) | **Comments:** [21](https://news.ycombinator.com/item?id=46588319)

### 5  [The Manchester Garbage Collector and purple-garden's runtime](https://xnacly.me/posts/2026/manchester-garbage-collector/)
* **Author:** [xnacly](https://news.ycombinator.com/user?id=xnacly) | **Comments:** [0](https://news.ycombinator.com/item?id=46529240)

### 193 🔥 [39c3: In-house electronics manufacturing from scratch: How hard can it be? [video]](https://media.ccc.de/v/39c3-in-house-electronics-manufacturing-from-scratch-how-hard-can-it-be)
* **Author:** [fried-gluttony](https://news.ycombinator.com/user?id=fried-gluttony) | **Comments:** [88](https://news.ycombinator.com/item?id=46553137)

### 94  [Personal thoughts/notes from working on Zootopia 2](https://blog.yiningkarlli.com/2025/12/zootopia-2.html)
* **Author:** [pantalaimon](https://news.ycombinator.com/user?id=pantalaimon) | **Comments:** [1](https://news.ycombinator.com/item?id=46525639)

### 20  [Apple picks Google's Gemini to power Siri](https://www.cnbc.com/2026/01/12/apple-google-ai-siri-gemini.html)
* **Author:** [stygiansonic](https://news.ycombinator.com/user?id=stygiansonic) | **Comments:** [10](https://news.ycombinator.com/item?id=46589675)

### 562 🔥🔥 [iCloud Photos Downloader](https://github.com/icloud-photos-downloader/icloud_photos_downloader)
* **Author:** [reconnecting](https://news.ycombinator.com/user?id=reconnecting) | **Comments:** [215](https://news.ycombinator.com/item?id=46578921)

### 24  [Keychron's Nape Pro turns your keyboard into a laptop‑style trackball rig](https://www.yankodesign.com/2026/01/08/keychrons-nape-pro-turns-your-mechanical-keyboard-into-a-laptop-style-trackball-rig-hands-on-at-ces-2026/)
* **Author:** [tortilla](https://news.ycombinator.com/user?id=tortilla) | **Comments:** [6](https://news.ycombinator.com/item?id=46589279)

### 199 🔥 [Ozempic reduced grocery spending by an average of 5.3% in the US](https://news.cornell.edu/stories/2025/12/ozempic-changing-foods-americans-buy)
* **Author:** [giuliomagnifico](https://news.ycombinator.com/user?id=giuliomagnifico) | **Comments:** [289](https://news.ycombinator.com/item?id=46587536)

### 261 🔥🔥 [This game is a single 13 KiB file that runs on Windows, Linux and in the Browser](https://iczelia.net/posts/snake-polyglot/)
* **Author:** [snoofydude](https://news.ycombinator.com/user?id=snoofydude) | **Comments:** [67](https://news.ycombinator.com/item?id=46580864)

### 55  [Zen-C: Write like a high-level language, run like C](https://github.com/z-libs/Zen-C)
* **Author:** [simonpure](https://news.ycombinator.com/user?id=simonpure) | **Comments:** [42](https://news.ycombinator.com/item?id=46587804)

### 99  [Conbini Wars – Map of Japanese convenience store ratios](https://conbini.kikkia.dev/)
* **Author:** [zdw](https://news.ycombinator.com/user?id=zdw) | **Comments:** [42](https://news.ycombinator.com/item?id=46519756)

### 50  [XMPP and Metadata](https://blog.mathieui.net/xmpp-and-metadata.html)
* **Author:** [todsacerdoti](https://news.ycombinator.com/user?id=todsacerdoti) | **Comments:** [14](https://news.ycombinator.com/item?id=46523226)



