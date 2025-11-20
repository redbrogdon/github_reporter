# Overall Summary
**🔥🔥🔥 [PR #177705](https://github.com/flutter/flutter/pull/177705) (flutter/flutter): Allow the `RawAutocomplete` to display the options even when one is selected**
  * **Comments:** 13
  * Updates the `RawAutocomplete` widget to show its options view whenever the input field is focused and has available options, even if a value has already been selected. This allows users to easily review or change their selection by re-focusing the field.

**🔥 [Issue #178452](https://github.com/flutter/flutter/issues/178452) (flutter/flutter): Xcode Archive Fails with "Improperly formatted define flag" Error in Flutter 3.38.0**
  * **Reactions:** **10** -- 👍 9 👀 1
  * In Flutter 3.38.0, Xcode archiving fails with an "Improperly formatted define flag" error, likely caused by an extra leading space in build settings like `GCC_PREPROCESSOR_DEFINITIONS` that is mishandled by the `xcode_backend.sh` script, particularly in projects using CocoaPods.

**🔥 [PR #2329](https://github.com/dart-lang/native/pull/2329) (dart-lang/native): [objective_c] Migrate to native assets**
  * **Comments:** 8
  * Migrates the `objective_c` package to use native assets, removing its dependency on the Flutter SDK and enabling its use in command-line Dart applications. This change replaces the previous podspec/CMake build system with a native assets build hook and reorganizes the FFI bindings to correctly load symbols from both the package's dynamic library and the main executable's Objective-C runtime.

**🔥 [PR #177730](https://github.com/flutter/flutter/pull/177730) (flutter/flutter): Document that `error` parameter must be initialized**
  * **Comments:** 7
  * This PR updates the documentation for Flutter's Linux APIs to clarify that `GError*` variables must be initialized before being passed as `error` out-parameters, preventing a common programming error with GLib's error handling.

**[Issue #178623](https://github.com/flutter/flutter/issues/178623) (flutter/flutter): macOS: Frameworks for code assets have wrong layout, causing AppStore rejections**
  * **Reactions:** **2** -- ❤️ 2
  * On macOS, framework bundles for code assets are generated with an incorrect layout, where the `Resources` symbolic link points to `Versions/A/Resources` instead of the required `Versions/Current/Resources`, causing app submissions to be rejected by the App Store.

**[Issue #4570](https://github.com/dart-lang/language/issues/4570) (dart-lang/language): Unexpected behaviour when runtime type checking `FutureOr`**
  * A runtime type check of a `FutureOr` value using `variable.runtimeType is Future` always evaluates to false, causing a conditional `await` to be skipped.

**[Issue #61964](https://github.com/dart-lang/sdk/issues/61964) (dart-lang/sdk): Build Hooks not ran when using dart pub global activate/run**
  * Build hooks are not being triggered when using `dart pub global activate/run` or running a script directly with `dart <script>.dart`, which is inconsistent with the expected behavior seen when using `dart run` or `dart build`.

**[Issue #62036](https://github.com/dart-lang/sdk/issues/62036) (dart-lang/sdk): Renaming field/parameter (from constructor) doesn't handle dot shorthand invocation**
  * The rename refactoring for a constructor parameter fails to update its name at call sites that use the dot shorthand invocation syntax.

**[Issue #60635](https://github.com/dart-lang/sdk/issues/60635) (dart-lang/sdk): Rename _fe_analyzer_shared's ErrorCode**
  * **Reactions:** **4** -- 👍 4
  * This issue proposes renaming the `ErrorCode` superclass to the more accurate `DiagnosticCode`, as the current name is confusing for non-error diagnostics like warnings and lints, which is a problem now surfaced by the new analyzer plugin system.


# GitHub PR Report for dart-lang/ai
## From 2025-11-19

This period focused on tooling and developer experience improvements. Following feedback in issue [#319](https://github.com/dart-lang/ai/issues/319), a request was made to better support projects using Flutter Version Management (FVM). The `dart-mcp` tool's reliance on the global `flutter` command creates conflicts, and the proposed enhancement would allow developers to configure a path to their project-specific Flutter executable, resolving versioning issues.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #319](https://github.com/dart-lang/ai/issues/319): Support fvm in dart mcp
* **Author:** [Harishwarrior](https://github.com/Harishwarrior)
* The `dart-mcp` tool currently relies on the global `flutter` command, which creates conflicts in projects using Flutter Version Management (FVM), so this issue requests a new configuration parameter to allow developers to specify the path to the project-specific Flutter version.


# GitHub PR Report for dart-lang/sdk
## From 2025-11-19

While no pull requests were merged, progress was made on improving tooling and addressing issues related to new and upcoming language features. The "Dot Shorthands" feature received particular attention, with fixes for an analyzer crash ([#62026](https://github.com/dart-lang/sdk/issues/62026)) and a bug in the rename refactoring tool ([#62036](https://github.com/dart-lang/sdk/issues/62036)). Tooling for Primary Constructors was also enhanced ([#62020](https://github.com/dart-lang/sdk/issues/62020)). A notable internal API discussion was closed in [#60635](https://github.com/dart-lang/sdk/issues/60635), which proposed renaming the analyzer's `ErrorCode` to the more accurate `DiagnosticCode` to better support non-error diagnostics from plugins. Other key closures include a fix for build hooks not running with `dart pub global activate` ([#61964](https://github.com/dart-lang/sdk/issues/61964)) and proposals for new lints like `unnecessary_else_block` ([#60078](https://github.com/dart-lang/sdk/issues/60078)) and `avoid_returning_widgets` ([#59498](https://github.com/dart-lang/sdk/issues/59498)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62036](https://github.com/dart-lang/sdk/issues/62036): Renaming field/parameter (from constructor) doesn't handle dot shorthand invocation
* **Author:** [FMorschel](https://github.com/FMorschel)
* The rename refactoring for a constructor parameter fails to update its name at call sites that use the dot shorthand invocation syntax.

### [Issue #62026](https://github.com/dart-lang/sdk/issues/62026): Bad state: Missing a visit method for a node of type DotShorthandPropertyAccessImpl
* **Author:** [VladislavGlushko](https://github.com/VladislavGlushko)
* The Dart analyzer crashes with a "Bad state" error because the `ExitDetector` is missing a visit method for the `DotShorthandPropertyAccessImpl` AST node.

### [Issue #62020](https://github.com/dart-lang/sdk/issues/62020): [Primary Constructors] support for `avoid_types_as_parameter_names` [core]
* **Author:** [pq](https://github.com/pq)

### [Issue #61975](https://github.com/dart-lang/sdk/issues/61975): standalone/io/unix_socket_test broke failed on vm-asan-mac-release-arm64 with "Invalid dylib module map detected"
* **Author:** [aam](https://github.com/aam)
* The `standalone/io/unix_socket_test` is failing on the `vm-asan-mac-release-arm64` builder because an unexpected AddressSanitizer warning, "Invalid dyld module map detected," is being written to stderr, causing a test assertion on stderr's contents to fail.

### [Issue #61964](https://github.com/dart-lang/sdk/issues/61964): Build Hooks not ran when using dart pub global activate/run
* **Author:** [alextekartik](https://github.com/alextekartik)
* Build hooks are not being triggered when using `dart pub global activate/run` or running a script directly with `dart <script>.dart`, which is inconsistent with the expected behavior seen when using `dart run` or `dart build`.

### [Issue #61622](https://github.com/dart-lang/sdk/issues/61622): [Dot Shorthands] DevRel support
* **Author:** [kallentu](https://github.com/kallentu)
* **Reactions:** **1** -- ❤️ 1
* This issue tracks the go-to-market and Developer Relations tasks required to support the "Dot Shorthands" feature, including creating promotional content and updating existing website examples, codelabs, and samples.

### [Issue #60635](https://github.com/dart-lang/sdk/issues/60635): Rename _fe_analyzer_shared's ErrorCode
* **Author:** [srawlins](https://github.com/srawlins)
* **Reactions:** **4** -- 👍 4
* This issue proposes renaming the `ErrorCode` superclass to the more accurate `DiagnosticCode`, as the current name is confusing for non-error diagnostics like warnings and lints, which is a problem now surfaced by the new analyzer plugin system.

### [Issue #60078](https://github.com/dart-lang/sdk/issues/60078): [linter] `unnecessary_else_block` suggestion
* **Author:** [FMorschel](https://github.com/FMorschel)
* This issue proposes a new lint rule, `unnecessary_else_block`, to flag `else` blocks that are redundant because the preceding `if` block unconditionally exits the function, which would help reduce nesting and improve readability.

### [Issue #59498](https://github.com/dart-lang/sdk/issues/59498): avoid_returning_widgets
* **Author:** [jesperu7](https://github.com/jesperu7)
* **Reactions:** **1** -- 👍 1
* This issue proposes a new lint rule, `avoid_returning_widgets`, to discourage returning widgets from functions and instead promote creating them within dedicated widget classes to improve code maintainability, performance, and clarity.


# GitHub PR Report for dart-lang/language
## From 2025-11-19

While no new code was merged, an important discussion was concluded regarding the runtime behavior of a core language feature. Issue [#4570](https://github.com/dart-lang/language/issues/4570) addressed unexpected results when performing a runtime type check on a `FutureOr` value. Specifically, it was noted that checking `variable.runtimeType is Future` would always evaluate to false, causing conditional `await` expressions to be skipped incorrectly. The closure of this issue provides clarification on the expected behavior of runtime type checks involving `FutureOr`.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #4570](https://github.com/dart-lang/language/issues/4570): Unexpected behaviour when runtime type checking `FutureOr`
* **Author:** [OutdatedGuy](https://github.com/OutdatedGuy)
* A runtime type check of a `FutureOr` value using `variable.runtimeType is Future` always evaluates to false, causing a conditional `await` to be skipped.


# GitHub PR Report for dart-lang/native
## From 2025-11-19

This period saw significant enhancements to the `objective_c` package, preparing it for broader and more stable use. A major architectural change was the migration to native assets in a widely discussed pull request ([PR #2329](https://github.com/dart-lang/native/pull/2329)), which removes the package's dependency on the Flutter SDK and enables its use in pure Dart command-line applications. This work supports the goal of graduating the package from its experimental "labs" status to a stable publisher, a move necessary to unblock its adoption in foundational plugins, as noted in [Issue #2477](https://github.com/dart-lang/native/issues/2477). These improvements are being prepared for release in `objective_c` version 9.1.0 and `ffigen` version 20.1.0 ([PR #2801](https://github.com/dart-lang/native/pull/2801)).

## Merged Pull Requests

### [PR #2801](https://github.com/dart-lang/native/pull/2801): [ffigen] Prepare to publish ffigen 20.1.0
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-18 04:30 PM
* **Comments:** 2
* This pull request prepares for the release of `ffigen` version 20.1.0 and `objective_c` version 9.1.0 by removing the `-dev` suffix from their version numbers.

### 🔥 [PR #2329](https://github.com/dart-lang/native/pull/2329): [objective_c] Migrate to native assets
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-19 03:05 PM
* **Comments:** 8
* Migrates the `objective_c` package to use native assets, removing its dependency on the Flutter SDK and enabling its use in command-line Dart applications. This change replaces the previous podspec/CMake build system with a native assets build hook and reorganizes the FFI bindings to correctly load symbols from both the package's dynamic library and the main executable's Objective-C runtime.


## Closed Issues

### [Issue #2477](https://github.com/dart-lang/native/issues/2477): [objective_c] Move to a non-labs publisher
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Reactions:** **1** -- 👍 1
* To enable foundational Flutter plugins like `path_provider` to use `ffigen` for their iOS/macOS implementations, the `objective_c` package must first be moved from its experimental "labs" status to a stable, non-labs publisher.


# GitHub PR Report for flutter/ai
## From 2025-11-19

This period saw updates focused on UI enhancements and developer customization. A notable addition is the introduction of the `VoiceNoteRecorderStyle` class, which allows for customizable styling of the `WaveformRecorder` component ([PR #161](https://github.com/flutter/ai/pull/161)). This change exposes properties like wave color and text style, replacing previously hardcoded values and expanding the public API. Additionally, a user experience fix was implemented to ensure the text input is no longer obscured by the system navigation bar on Android devices ([PR #167](https://github.com/flutter/ai/pull/167)).

## Merged Pull Requests

### [PR #167](https://github.com/flutter/ai/pull/167): move text input out of the way of the Android 3-button nav
* **Author:** [csells](https://github.com/csells)
* **Merged At:** 2025-11-18 08:26 PM
* **Comments:** 0
* Wraps the `ChatInput` widget in a `SafeArea` to fix an issue where the text input would overlap with Android's 3-button system navigation bar.

### [PR #161](https://github.com/flutter/ai/pull/161): Enable customisable styling for WaveformRecorder via VoiceNoteRecorderStyle
* **Author:** [csongorkeller](https://github.com/csongorkeller)
* **Merged At:** 2025-11-18 06:14 PM
* **Comments:** 4
* This pull request introduces the `VoiceNoteRecorderStyle` class to allow for customizable styling of the `WaveformRecorder` component, replacing previously hardcoded values for its height, wave color, and duration text style.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-11-19

There were no changes to the repository during this period, as no pull requests were merged and no issues were closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-11-19

This cycle saw a notable enhancement to the public API with an update to the `RawAutocomplete` widget, which now displays its options view whenever the field is focused, even if a value has already been selected ([PR #177705](https://github.com/flutter/flutter/pull/177705)). For developers targeting Apple platforms, a critical tooling fix corrects the symbolic link layout for macOS frameworks ([PR #178625](https://github.com/flutter/flutter/pull/178625)), addressing an issue that caused App Store rejections ([Issue #178623](https://github.com/flutter/flutter/issues/178623)). On the performance front, the OpenGL ES backend was optimized to avoid expensive GPU round-trips in release builds by limiting framebuffer status checks to debug mode only ([PR #178707](https://github.com/flutter/flutter/pull/178707)). Finally, in a discussed change, documentation for the Linux APIs was updated to clarify that `GError*` parameters must be initialized, preventing a common native programming error ([PR #177730](https://github.com/flutter/flutter/pull/177730)).

## Merged Pull Requests

### [PR #178820](https://github.com/flutter/flutter/pull/178820): [web] Skip flaky service worker test
* **Author:** [mdebbar](https://github.com/mdebbar)
* **Merged At:** 2025-11-19 02:35 PM
* **Comments:** 0
* This PR skips a flaky service worker test in the web test suite to improve CI stability.

### [PR #178707](https://github.com/flutter/flutter/pull/178707): Only call glCheckFrameBufferStatus in the render pass in debug builds
* **Author:** [walley892](https://github.com/walley892)
* **Merged At:** 2025-11-19 01:52 PM
* **Comments:** 0
* This change avoids a potentially expensive GPU round-trip in release builds by restricting calls to `glCheckFramebufferStatus` in the OpenGL ES render pass to debug builds only.

### [PR #178687](https://github.com/flutter/flutter/pull/178687): Manual pub roll
* **Author:** [Piinks](https://github.com/Piinks)
* **Merged At:** 2025-11-19 01:24 PM
* **Comments:** 4
* This PR manually updates multiple Dart and native Android dependencies throughout the Flutter repository.

### [PR #178625](https://github.com/flutter/flutter/pull/178625): Fix layout for macOS frameworks for code assets
* **Author:** [simolus3](https://github.com/simolus3)
* **Merged At:** 2025-11-19 10:19 AM
* **Comments:** 2
* Fixes an issue in the native assets tooling where macOS frameworks were generated with an incorrect symbolic link for the `Resources` directory, ensuring the link now correctly points to `Versions/Current/Resources` to align with the standard framework structure.

### [PR #178592](https://github.com/flutter/flutter/pull/178592): Remove unnecessary `String.valueOf` in `TextInputChannel.java`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-18 05:23 PM
* **Comments:** 1
* This PR is a minor code cleanup that removes unnecessary `String.valueOf` calls in `TextInputChannel.java`, relying on Java's automatic string conversion for concatenation instead.

### 🔥 [PR #178585](https://github.com/flutter/flutter/pull/178585): Small cleanup in `DeferredComponentManager.java‎`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-18 06:03 PM
* **Comments:** 9
* This PR performs minor cleanup in `DeferredComponentManager.java`, fixing a documentation link and removing redundant `public` and `abstract` modifiers from the interface methods.

### [PR #178569](https://github.com/flutter/flutter/pull/178569): Update `_CircularProgressIndicatorState` to use `transform` directly
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-19 11:47 AM
* **Comments:** 2
* This PR refactors the `_RefreshProgressIndicatorState` to use `Tween.transform` directly instead of `Tween.evaluate`, simplifying the code as `evaluate` is a wrapper for `transform`.

### [PR #178372](https://github.com/flutter/flutter/pull/178372): Fix train hopping animation status listeners
* **Author:** [ksokolovskyi](https://github.com/ksokolovskyi)
* **Merged At:** 2025-11-18 11:53 PM
* **Comments:** 1
* This PR fixes a bug in `TrainHoppingAnimation` that prevented status listeners from being notified of status changes by calling the correct `notifyStatusListeners` method instead of `notifyListeners`.

### [PR #178156](https://github.com/flutter/flutter/pull/178156): Make sure that a TabPageSelector doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-11-18 08:24 PM
* **Comments:** 0
* This PR fixes a crash in the `TabPageSelector` widget that occurred when it was rendered in a zero-sized environment.

### 🔥 [PR #177730](https://github.com/flutter/flutter/pull/177730): Document that `error` parameter must be initialized
* **Author:** [logiclrd](https://github.com/logiclrd)
* **Merged At:** 2025-11-19 12:37 PM
* **Comments:** 7
* This PR updates the documentation for Flutter's Linux APIs to clarify that `GError*` variables must be initialized before being passed as `error` out-parameters, preventing a common programming error with GLib's error handling.

### 🔥🔥🔥 [PR #177705](https://github.com/flutter/flutter/pull/177705): Allow the `RawAutocomplete` to display the options even when one is selected
* **Author:** [ValentinVignal](https://github.com/ValentinVignal)
* **Merged At:** 2025-11-19 02:55 PM
* **Comments:** 13
* Updates the `RawAutocomplete` widget to show its options view whenever the input field is focused and has available options, even if a value has already been selected. This allows users to easily review or change their selection by re-focusing the field.

### [PR #177646](https://github.com/flutter/flutter/pull/177646): Make sure that a ReorderableListView doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-11-18 11:19 PM
* **Comments:** 2
* Fixes a crash in `ReorderableListView` that occurred when the widget was constrained to a zero-by-zero size, and adds a test to verify the fix.


## Closed Issues

### [Issue #178812](https://github.com/flutter/flutter/issues/178812): linux-17 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The host `linux-17` has lost its external network connection from the attached phone device.

### [Issue #178794](https://github.com/flutter/flutter/issues/178794): Light map style json defaults to dark mode even when adding light style only
* **Author:** [bishal-railar](https://github.com/bishal-railar)
* On Android, the GoogleMap widget defaults to the system's dark theme, ignoring a provided light style JSON, while on iOS it correctly displays the light style as intended.

### [Issue #178771](https://github.com/flutter/flutter/issues/178771): low frame rate (30 fps) on Windows (multi window example)
* **Author:** [damywise](https://github.com/damywise)
* **Reactions:** **5** -- 👍 5
* The Flutter multiple-windows example exhibits a low frame rate of 30-40 FPS on Windows, in contrast to its smooth performance on macOS.

### [Issue #178725](https://github.com/flutter/flutter/issues/178725): [Web Integration Test] AppConnectionException / Chrome debug connection fails on latest Flutter 3.38.0
* **Author:** [vskawran](https://github.com/vskawran)
* On Flutter 3.38.0, web integration tests fail with an `AppConnectionException` because the debug connection to Chrome cannot be established.

### [Issue #178639](https://github.com/flutter/flutter/issues/178639): Flutter docs need to be generated with a newer dartdoc
* **Author:** [szakarias](https://github.com/szakarias)
* The Flutter API documentation needs to be regenerated with a newer version of `dartdoc` to correctly render deprecated classes, which are currently being displayed with a strikethrough.

### [Issue #178623](https://github.com/flutter/flutter/issues/178623): macOS: Frameworks for code assets have wrong layout, causing AppStore rejections
* **Author:** [simolus3](https://github.com/simolus3)
* **Reactions:** **2** -- ❤️ 2
* On macOS, framework bundles for code assets are generated with an incorrect layout, where the `Resources` symbolic link points to `Versions/A/Resources` instead of the required `Versions/Current/Resources`, causing app submissions to be rejected by the App Store.

### [Issue #178563](https://github.com/flutter/flutter/issues/178563): App runs on simulator but fails on physical iOS device (no logs in Xcode/Android Studio)
* **Author:** [keshavbhusal1](https://github.com/keshavbhusal1)
* An application that runs on the iOS simulator fails to install on a physical device with an "invalid signature" error (MobileDeviceErrorDomain -402620396), and no logs are produced in Xcode or Android Studio to aid in debugging.

### [Issue #178452](https://github.com/flutter/flutter/issues/178452): Xcode Archive Fails with "Improperly formatted define flag" Error in Flutter 3.38.0
* **Author:** [alihamza0173](https://github.com/alihamza0173)
* **Reactions:** **10** -- 👍 9 👀 1
* In Flutter 3.38.0, Xcode archiving fails with an "Improperly formatted define flag" error, likely caused by an extra leading space in build settings like `GCC_PREPROCESSOR_DEFINITIONS` that is mishandled by the `xcode_backend.sh` script, particularly in projects using CocoaPods.

### [Issue #178336](https://github.com/flutter/flutter/issues/178336): TrainHoppingAnimation Calls notifyListeners() on Status Change Instead of notifyStatusListeners()
* **Author:** [swrenn](https://github.com/swrenn)
* The `TrainHoppingAnimation` incorrectly calls `notifyListeners()` instead of `notifyStatusListeners()` in its internal status listener, preventing its own status listeners from being notified of status changes.

### [Issue #178315](https://github.com/flutter/flutter/issues/178315): Bold Text settings are not working for embedded webview
* **Author:** [hannah-hyj](https://github.com/hannah-hyj)
* The accessibility "Bold Text" setting on both iOS and Android is not being applied to text within embedded webviews.

### [Issue #178270](https://github.com/flutter/flutter/issues/178270): Pub roller stuck on version constraints for video_player_android
* **Author:** [Piinks](https://github.com/Piinks)
* The pub roller is stuck due to a build failure in the `video_player_android` package, which is unable to resolve the `kotlin-stdlib:2.2.20` dependency during Kotlin compilation.

### [Issue #178032](https://github.com/flutter/flutter/issues/178032): Linux web_long_running_tests_3_5 is 3.00% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* The `Linux web_long_running_tests_3_5` post-submit test has a 3.00% flakiness ratio, which exceeds the 2.00% threshold.

### [Issue #177719](https://github.com/flutter/flutter/issues/177719): [tool_crash] FileSystemException: Failed to decode data using encoding 'utf-8', null
* **Author:** [Yahayaamadou](https://github.com/Yahayaamadou)
* The flutter tool is crashing with a `FileSystemException` due to a failure to decode a file as UTF-8 while checking for AndroidX support.

### [Issue #177700](https://github.com/flutter/flutter/issues/177700): [ANR] [Android] [osup_sync_object_timedwait]
* **Author:** [dhc-jiangsongwen](https://github.com/dhc-jiangsongwen)
* A Flutter app on Android is experiencing an Application Not Responding (ANR) error under unknown circumstances, with Firebase crash reports pointing to the native function `osup_sync_object_timedwait`.

### [Issue #177670](https://github.com/flutter/flutter/issues/177670): [Flutter web-semantics] Feature request: Enable Accessibility button upper left 1 pixel instead of offscreen 1 pixel
* **Author:** [ecolab-neil](https://github.com/ecolab-neil)
* This feature request proposes moving the invisible "Enable accessibility" button in Flutter web from its current off-screen position of (-1, -1) to an on-screen position like (1, 1), which would allow automation tools like Maestro and Appium to interact with it.

### [Issue #177429](https://github.com/flutter/flutter/issues/177429): Autocomplete doesn't open the dropdown when a value is selected
* **Author:** [ValentinVignal](https://github.com/ValentinVignal)
* **Reactions:** **1** -- 👍 1
* In the Autocomplete widget, the options dropdown fails to appear when the text field is focused if a value has already been selected from the list.

### [Issue #176425](https://github.com/flutter/flutter/issues/176425): [batch-release] A github action for parsing unreleased commit and produce release PR
* **Author:** [chunhtai](https://github.com/chunhtai)
* This issue proposes creating a GitHub action that automates the batch-release process by parsing an `unreleased.yaml` file to generate a pull request containing a version bump, an updated changelog, and the removal of the parsed file.

### [Issue #176069](https://github.com/flutter/flutter/issues/176069): [flutter_svg] It is not displayed after packaging with ColorMapper
* **Author:** [Er-Dong-Chen](https://github.com/Er-Dong-Chen)
* **Reactions:** **1** -- 👍 1
* When using `ColorMapper` with `flutter_svg`, the SVG widget fails to display in a packaged build, even though it renders correctly in the simulator.

### [Issue #175522](https://github.com/flutter/flutter/issues/175522): [impeller] OpenGL ES backend calls `glCheckFramebufferStatus` multiple times per frame
* **Author:** [eyebrowsoffire](https://github.com/eyebrowsoffire)
* The Impeller OpenGL ES backend is experiencing significant performance issues on WebGL due to multiple `glCheckFramebufferStatus` calls per frame, which can cause GPU stalls, and the proposed solution is to limit these checks to debug builds only.

### [Issue #175126](https://github.com/flutter/flutter/issues/175126): Crashlytics Dart stack traces deobfuscation is mapping to wrong files when building aab after Flutter upgrade.
* **Author:** [jillellamudisurya](https://github.com/jillellamudisurya)
* **Reactions:** **2** -- 👍 2
* After a recent Flutter upgrade, Firebase Crashlytics is failing to deobfuscate Dart stack traces for obfuscated Android App Bundles (AABs) due to incorrect symbol mapping, even though the process works correctly for APKs and symbols are uploaded successfully.

### [Issue #166605](https://github.com/flutter/flutter/issues/166605): [camera_windows] `maxVideoDuration` is deprecated
* **Author:** [bparrishMines](https://github.com/bparrishMines)
* The `maxVideoDuration` parameter is deprecated as it is an unused parameter that will be ignored on all platforms.


# GitHub PR Report for flutter/genui
## From 2025-11-19

This update cycle focused on improving the developer experience for examples and the public API. The setup for example applications was streamlined in [PR #549](https://github.com/flutter/genui/pull/549), which updates the Firebase configuration instructions and refactors the examples to support multiple generative AI backends. On the API front, a proposal in [Issue #481](https://github.com/flutter/genui/issues/481) suggested passing the `surfaceId` to the `widgetBuilder` to simplify state management for developers with custom data flows. Finally, a broken link in the main `README.md` was also addressed, ensuring users can access usage instructions ([Issue #538](https://github.com/flutter/genui/issues/538)).

## Merged Pull Requests

### [PR #549](https://github.com/flutter/genui/pull/549): Update firebase instructions
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-11-18 04:33 PM
* **Comments:** 2
* This pull request updates the Firebase configuration for the example apps, improving the `refresh_firebase.sh` script to accept a project ID as an argument and removing the previous `firebase_options.dart` stub files. The examples are also refactored to support both Firebase and direct Google Generative AI backends, simplifying the setup instructions.


## Closed Issues

### [Issue #538](https://github.com/flutter/genui/issues/538): Broken USAGE.md link in main README.md
* **Author:** [garciasces](https://github.com/garciasces)
* The link to the `USAGE.md` file in the main `README.md` is broken, returning a 404 error and preventing users from accessing the usage instructions.

### [Issue #481](https://github.com/flutter/genui/issues/481): Provide surfaceId to widget builder.
* **Author:** [polina-c](https://github.com/polina-c)
* This issue proposes passing the `surfaceId` to the `widgetBuilder` to simplify loading remembered state on re-render, which would reduce code complexity for applications with custom, manual data flows.

### [Issue #460](https://github.com/flutter/genui/issues/460): Add "stable" tag to main branch and define it as head today
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)


# GitHub PR Report for flutter/packages
## From 2025-11-19

This period focused on significant improvements to repository infrastructure and package maintenance. To streamline future releases, a new GitHub Action was introduced to automate the process of creating batch release pull requests ([PR #10298](https://github.com/flutter/packages/pull/10298)). The continuous integration environment was also stabilized by upgrading the Android Gradle Plugin and Gradle to resolve build failures ([PR #10458](https://github.com/flutter/packages/pull/10458)). For the `camera` package, an update to the Windows example removed a deprecated parameter and improved the public API surface by adding better type safety for the list of available cameras ([PR #10380](https://github.com/flutter/packages/pull/10380)).

## Merged Pull Requests

### [PR #10458](https://github.com/flutter/packages/pull/10458): Upgrade AGP to 8.9.1
* **Author:** [mboetger](https://github.com/mboetger)
* **Merged At:** 2025-11-18 04:22 PM
* **Comments:** 0
* Upgrades the Android Gradle Plugin to 8.9.1 and Gradle to 8.11.1 in the CI test environment to resolve build failures in other pull requests caused by dependencies that require a more recent AGP version.

### [PR #10380](https://github.com/flutter/packages/pull/10380): [camera] Remove deprecated feature from Windows example
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-19 10:02 AM
* **Comments:** 3
* Removes the deprecated `maxVideoDuration` parameter from the `camera_windows` example and improves type safety for the list of available cameras returned by the plugin.

### [PR #10298](https://github.com/flutter/packages/pull/10298): [ci] Adds github action for creating batch release
* **Author:** [chunhtai](https://github.com/chunhtai)
* **Merged At:** 2025-11-19 11:11 AM
* **Comments:** 1
* This PR adds a GitHub Action to automate batch releases for packages; it runs a script that consumes pending changelog YAML files to update the package version and `CHANGELOG.md`, then creates a release pull request.

### [PR #9796](https://github.com/flutter/packages/pull/9796): [rfw] Update broken links in rfw's README.md
* **Author:** [victoreronmosele](https://github.com/victoreronmosele)
* **Merged At:** 2025-11-19 04:37 AM
* **Comments:** 1
* Updates several broken links in the `rfw` package's `README.md` to point to the correct API documentation.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-11-19

During this period, there were no merged pull requests or closed issues, resulting in no changes to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-11-19

This period saw several documentation enhancements and fixes. A significant addition includes new documentation for the `genui_a2ui` package, detailing its integration with the A2UI Streaming UI Protocol ([PR #12722](https://github.com/flutter/website/pull/12722)). For an improved developer experience, the GenUI "Get Started" page has been updated to use the modern `dart pub add` command, streamlining the process of adding dependencies ([PR #12728](https://github.com/flutter/website/pull/12728)). Additionally, a series of quality-of-life improvements were made across the site, including fixing broken video embeds on the implicit animations page ([PR #12709](https://github.com/flutter/website/pull/12709)), correcting code formatting ([PR #12723](https://github.com/flutter/website/pull/12723)), and addressing rendering issues with images, such as the one reported for the `DatePickerDialog` section ([Issue #12717](https://github.com/flutter/website/issues/12717)).

## Merged Pull Requests

### [PR #12728](https://github.com/flutter/website/pull/12728): Use 'dart pub add' on GenUI get started page
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-11-19 02:37 PM
* **Comments:** 0
* Updates the GenUI "Get Started" documentation to use the `dart pub add` command for adding dependencies, replacing the previous instructions that required manually editing the `pubspec.yaml` file.

### [PR #12723](https://github.com/flutter/website/pull/12723): Fix formatting of some code alongside image cases
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-11-19 11:33 AM
* **Comments:** 2
* This PR corrects formatting for several `code-and-image` blocks in the documentation, fixing a rendering issue that was causing code examples to be displayed incorrectly.

### [PR #12722](https://github.com/flutter/website/pull/12722): Adding info about genui_a2ui
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2025-11-19 11:06 AM
* **Comments:** 2
* This change adds documentation for the `genui_a2ui` package, detailing its integration with the A2UI Streaming UI Protocol and providing setup instructions along with a complete code example.

### [PR #12709](https://github.com/flutter/website/pull/12709): Fix embedded videos on implicit animation page
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-11-19 03:00 PM
* **Comments:** 2
* This PR fixes broken video embeds on the implicit animations documentation page by replacing the page's Liquid templating logic with static HTML.


## Closed Issues

### [Issue #12717](https://github.com/flutter/website/issues/12717): Image for the DatePickerDialog section is not rendering
* **Author:** [piedcipher](https://github.com/piedcipher)
* An image in the `DatePickerDialog` section of the "User input fundamentals" documentation page is not rendering due to a markdown issue.



## Top Hacker News Stories

### 176 🔥 [Nano Banana Pro](https://blog.google/technology/ai/nano-banana-pro/)
* **Author:** [meetpateltech](https://news.ycombinator.com/user?id=meetpateltech) | **Comments:** [113](https://news.ycombinator.com/item?id=45993296)

### 165 🔥 [Red Alert 2 in web browser](https://chronodivide.com/)
* **Author:** [nsoonhui](https://news.ycombinator.com/user?id=nsoonhui) | **Comments:** [53](https://news.ycombinator.com/item?id=45991853)

### 185 🔥 [Interactive World History Atlas Since 3000 BC](http://geacron.com/home-en/)
* **Author:** [not_knuth](https://news.ycombinator.com/user?id=not_knuth) | **Comments:** [89](https://news.ycombinator.com/item?id=45990934)

### 50  [Judgement on Dr Matthew Garrett (@mjg59) vs. Dr Roy Schestowitz (Techrights.org)](https://caselaw.nationalarchives.gov.uk/ewhc/kb/2025/3063)
* **Author:** [jonty](https://news.ycombinator.com/user?id=jonty) | **Comments:** [20](https://news.ycombinator.com/item?id=45992403)

### 117 🔥 [Firefox 147 Will Support the XDG Base Directory Specification](https://www.phoronix.com/news/Firefox-147-XDG-Base-Directory)
* **Author:** [bradrn](https://news.ycombinator.com/user?id=bradrn) | **Comments:** [39](https://news.ycombinator.com/item?id=45992829)

### 120 🔥 [Adversarial Poetry as a Universal Single-Turn Jailbreak Mechanism in LLMs](https://arxiv.org/abs/2511.15304)
* **Author:** [capgre](https://news.ycombinator.com/user?id=capgre) | **Comments:** [73](https://news.ycombinator.com/item?id=45991738)

### 204 🔥 [40 years ago, Calvin and Hobbes' burst onto the page](https://www.npr.org/2025/11/18/nx-s1-5564064/calvin-and-hobbes-bill-watterson-40-years-comic-strip-lee-salem)
* **Author:** [mooreds](https://news.ycombinator.com/user?id=mooreds) | **Comments:** [66](https://news.ycombinator.com/item?id=45991787)

### 202 🔥 [Android/Linux Dual Boot](https://wiki.postmarketos.org/wiki/Dual_Booting/WiP)
* **Author:** [joooscha](https://news.ycombinator.com/user?id=joooscha) | **Comments:** [110](https://news.ycombinator.com/item?id=45951275)

### 182 🔥 [CUDA Ontology](https://jamesakl.com/posts/cuda-ontology/)
* **Author:** [gugagore](https://news.ycombinator.com/user?id=gugagore) | **Comments:** [27](https://news.ycombinator.com/item?id=45947437)

### 163 🔥 [Basalt Woven Textile](https://materialdistrict.com/material/basalt-woven-textile/)
* **Author:** [rbanffy](https://news.ycombinator.com/user?id=rbanffy) | **Comments:** [86](https://news.ycombinator.com/item?id=45989329)

### 861 🔥🔥🔥 [Europe is scaling back GDPR and relaxing AI laws](https://www.theverge.com/news/823750/european-union-ai-act-gdpr-changes)
* **Author:** [ksec](https://news.ycombinator.com/user?id=ksec) | **Comments:** [984](https://news.ycombinator.com/item?id=45980117)

### 65  [Towards Interplanetary QUIC Traffic](https://ochagavia.nl/blog/towards-interplanetary-quic-traffic/)
* **Author:** [wofo](https://news.ycombinator.com/user?id=wofo) | **Comments:** [14](https://news.ycombinator.com/item?id=45956438)

### 32  [Smart Performance Hacks for Faster Python Code](https://blog.jetbrains.com/pycharm/2025/11/10-smart-performance-hacks-for-faster-python-code/)
* **Author:** [ashvardanian](https://news.ycombinator.com/user?id=ashvardanian) | **Comments:** [8](https://news.ycombinator.com/item?id=45895100)

### 7  [Theft of the Weeping Woman from the National Gallery of Victoria](https://en.wikipedia.org/wiki/Theft_of_The_Weeping_Woman_from_the_National_Gallery_of_Victoria)
* **Author:** [neom](https://news.ycombinator.com/user?id=neom) | **Comments:** [2](https://news.ycombinator.com/item?id=45934795)

### 593 🔥🔥 [Meta Segment Anything Model 3](https://ai.meta.com/sam3/)
* **Author:** [lukeinator42](https://news.ycombinator.com/user?id=lukeinator42) | **Comments:** [118](https://news.ycombinator.com/item?id=45982073)

### 47  [Scientists Reveal How the Maya Predicted Eclipses for Centuries](https://www.sciencealert.com/scientists-reveal-how-the-maya-predicted-eclipses-for-centuries)
* **Author:** [rguiscard](https://news.ycombinator.com/user?id=rguiscard) | **Comments:** [11](https://news.ycombinator.com/item?id=45922610)

### 395 🔥🔥 [Loose wire leads to blackout, contact with Francis Scott Key bridge](https://www.ntsb.gov:443/news/press-releases/Pages/NR20251118.aspx)
* **Author:** [DamnInteresting](https://news.ycombinator.com/user?id=DamnInteresting) | **Comments:** [184](https://news.ycombinator.com/item?id=45984659)

### 115 🔥 [The lost cause of the Lisp machines](https://www.tfeb.org/fragments/2025/11/18/the-lost-cause-of-the-lisp-machines/)
* **Author:** [enbywithunix](https://news.ycombinator.com/user?id=enbywithunix) | **Comments:** [115](https://news.ycombinator.com/item?id=45984133)

### 44  [DOS Days – Laptop Displays](https://www.dosdays.co.uk/topics/laptop_displays.php)
* **Author:** [nullbyte808](https://news.ycombinator.com/user?id=nullbyte808) | **Comments:** [9](https://news.ycombinator.com/item?id=45990575)

### 282 🔥🔥 [Researchers discover security vulnerability in WhatsApp](https://www.univie.ac.at/en/news/detail/forscherinnen-entdecken-grosse-sicherheitsluecke-in-whatsapp)
* **Author:** [KingNoLimit](https://news.ycombinator.com/user?id=KingNoLimit) | **Comments:** [110](https://news.ycombinator.com/item?id=45985036)

### 165 🔥 [Verifying your Matrix devices is becoming mandatory](https://element.io/blog/verifying-your-devices-is-becoming-mandatory-2/)
* **Author:** [LorenDB](https://news.ycombinator.com/user?id=LorenDB) | **Comments:** [186](https://news.ycombinator.com/item?id=45987179)

### 30  [New Proofs Probe Soap-Film Singularities](https://www.quantamagazine.org/new-proofs-probe-soap-film-singularities-20251112/)
* **Author:** [pseudolus](https://news.ycombinator.com/user?id=pseudolus) | **Comments:** [3](https://news.ycombinator.com/item?id=45908801)

### 25  [Wrapping my head around AI wrappers](https://www.wreflection.com/p/wrapping-my-head-around-ai-wrappers)
* **Author:** [nowflux](https://news.ycombinator.com/user?id=nowflux) | **Comments:** [15](https://news.ycombinator.com/item?id=45939148)

### 456 🔥🔥 [Building more with GPT-5.1-Codex-Max](https://openai.com/index/gpt-5-1-codex-max/)
* **Author:** [hansonw](https://news.ycombinator.com/user?id=hansonw) | **Comments:** [280](https://news.ycombinator.com/item?id=45982649)

### 86  [A surprise with how '#!' handles its program argument in practice](https://utcc.utoronto.ca/~cks/space/blog/unix/ShebangRelativePathSurprise)
* **Author:** [SeenNotHeard](https://news.ycombinator.com/user?id=SeenNotHeard) | **Comments:** [72](https://news.ycombinator.com/item?id=45970885)



