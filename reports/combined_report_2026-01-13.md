# Overall Summary
**🔥🔥🔥 [PR #12925](https://github.com/flutter/website/pull/12925) (flutter/website): Update Swift Package Manager pubspec.yaml syntax to use config section**
  * **Comments:** 6
  * Updates the Swift Package Manager documentation to use the new `flutter: config:` section in `pubspec.yaml` for configuration, replacing the deprecated `disable-swift-package-manager` field and including a migration note for users about the old syntax causing errors in Flutter 3.38 and later.

**🔥🔥 [PR #180867](https://github.com/flutter/flutter/pull/180867) (flutter/flutter): [CP-stable][ Tool ] Fix `flutter run -d all` crash**
  * **Comments:** 5
  * This PR fixes a crash that occurred when running `flutter run -d all` with multiple connected devices by updating the `HotRunner` to correctly manage a set of target platforms, ensuring asset bundles are built for all devices.

**🔥 [Issue #174537](https://github.com/flutter/flutter/issues/174537) (flutter/flutter): Missing Geist Font**
  * **Reactions:** **6** -- 👍 5 ❤️ 1
  * The Geist font is missing.

**🔥 [Issue #1772](https://github.com/dart-lang/native/issues/1772) (dart-lang/native): [swift2objc] Can we remove the `Wrapper` suffix from all the APIs?**
  * This issue proposes removing the `Wrapper` suffix that `swift2objc` adds to wrapped APIs, suggesting that a Swift language feature like namespaces or modules could be used instead to avoid naming conflicts.

**🔥 [Issue #125630](https://github.com/flutter/flutter/issues/125630) (flutter/flutter): [Impeller] Compiler: GLSL array literals in shaders crash at runtime.**
  * **Reactions:** **3** -- 👍 3
  * Using GLSL array literals in a shader loaded with `FragmentProgram.fromAsset` results in a runtime crash, specifically an "Invalid SkSL" error indicating a "missing index in '[]'" during the SkSL compilation phase.

**[PR #332](https://github.com/dart-lang/ai/pull/332) (dart-lang/ai): Add analytics events for initialization and list* method calls**
  * **Comments:** 2
  * This PR adds analytics events for server initialization and `list*` method calls to understand client usage and feature support. This change exposes various previously private handler methods in `dart_mcp` as public with `@mustCallSuper`, allowing a new `AnalyticsEvents` mixin in `dart_mcp_server` to intercept these calls and send metrics.

**[PR #178931](https://github.com/flutter/flutter/pull/178931) (flutter/flutter): Add Flutter as a Swift Package dependency**
  * **Comments:** 1
  * Adds the Flutter framework as a Swift Package dependency for iOS and macOS, which allows Xcode to manage framework copying, thinning, and codesigning, and adapts Flutter's Xcode build scripts to this new integration.

**[Issue #62319](https://github.com/dart-lang/sdk/issues/62319) (dart-lang/sdk): build of wasm fails 3.40.0-1.0.pre-330**
  * A Flutter WebAssembly (WASM) build fails with a "Stack Overflow" error during the `dart2wasm` compilation process (specifically within `DummyValuesCollector.prepareDummyValue`) when using Flutter `3.40.0-1.0.pre-330` from the master channel, but succeeds on version `3.38.5`.

**[Issue #62273](https://github.com/dart-lang/sdk/issues/62273) (dart-lang/sdk): Bug Report: dart2wasm crash in ParameterInfo.fromMember during DispatchTable.build**
  * The dart2wasm compiler crashes with a null check error in `ParameterInfo.fromMember` during the dispatch table build phase when compiling a Flutter web application to WebAssembly, even after migrating to `package:web`, and this occurs with various common Flutter packages, preventing successful WASM compilation.

**[Issue #51306](https://github.com/dart-lang/sdk/issues/51306) (dart-lang/sdk): Add a diagnostic for using `@override` inside a method**
  * **Reactions:** **1** -- 👍 1
  * The issue requests adding a diagnostic to flag the incorrect usage of the `@override` annotation when applied to declarations inside a method, such as local functions, because such declarations cannot legitimately override anything.


# GitHub PR Report for dart-lang/ai
## From 2026-01-13

The primary change to the repository involves the introduction of analytics events, specifically for server initialization and `list*` method calls, to gather insights into client usage. This was accomplished through [PR #332](https://github.com/dart-lang/ai/pull/332), which notably altered the public API surface by exposing several previously private handler methods within `dart_mcp`. These methods are now public and marked with `@mustCallSuper`, allowing a new `AnalyticsEvents` mixin in `dart_mcp_server` to intercept and report these metrics.

## Merged Pull Requests

### [PR #332](https://github.com/dart-lang/ai/pull/332): Add analytics events for initialization and list* method calls
* **Author:** [jakemac53](https://github.com/jakemac53)
* **Merged At:** 2026-01-13 10:14 AM
* **Comments:** 2
* This PR adds analytics events for server initialization and `list*` method calls to understand client usage and feature support. This change exposes various previously private handler methods in `dart_mcp` as public with `@mustCallSuper`, allowing a new `AnalyticsEvents` mixin in `dart_mcp_server` to intercept these calls and send metrics.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2026-01-13

The recent changes to the repository primarily focus on enhancing developer tooling and stabilizing the WebAssembly compilation pipeline, alongside improving language diagnostics. Significant work went into refining the Language Server Protocol (LSP) integration, specifically addressing issues where named constructors ([#62394](https://github.com/dart-lang/sdk/issues/62394)) and unnamed constructors ([#62393](https://github.com/dart-lang/sdk/issues/62393)) failed to appear in LSP workspace symbol lists, thus improving code navigation for users. The `dart2wasm` compiler saw critical fixes, resolving a "Stack Overflow" error during compilation ([#62319](https://github.com/dart-lang/sdk/issues/62319)) and a crash related to dispatch table building ([#62273](https://github.com/dart-lang/sdk/issues/62273)), which previously hindered Flutter WebAssembly development. Furthermore, the analyzer now provides better diagnostics by flagging the incorrect usage of the `@override` annotation inside methods ([#51306](https://github.com/dart-lang/sdk/issues/51306)), a user-requested feature. Other notable improvements include an exception fix in `AstWriter` when viewing primary constructors ([#62389](https://github.com/dart-lang/sdk/issues/62389)) and consistency adjustments for `analyzer_testing` stubs ([#62234](https://github.com/dart-lang/sdk/issues/62234)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62394](https://github.com/dart-lang/sdk/issues/62394): Named constructors don't appear in LSP workspace symbol list when name is typed
* **Author:** [DanTup](https://github.com/DanTup)
* Named constructors are not appearing in the LSP workspace symbol list when searched by their specific name, although they are found when searching by the associated class name.

### [Issue #62393](https://github.com/dart-lang/sdk/issues/62393): Unnamed constructors never show up in LSP workspace symbols list
* **Author:** [DanTup](https://github.com/DanTup)
* Unnamed constructors are not appearing in the LSP workspace symbols list because the current filtering mechanism relies on names, preventing them from matching even when searching for the containing class name.

### [Issue #62389](https://github.com/dart-lang/sdk/issues/62389): Exception in AstWriter: NoSuchMethodError: Class 'PrimaryConstructorBodyImpl' has no instance getter 'declaredFragment'
* **Author:** [DanTup](https://github.com/DanTup)
* When viewing the AST of a file using primary constructors in the Insights pages, an exception `NoSuchMethodError: Class 'PrimaryConstructorBodyImpl' has no instance getter 'declaredFragment'` is thrown.

### [Issue #62324](https://github.com/dart-lang/sdk/issues/62324): pkg/perf_witness/test/recorder_server_test on unittest-asserts-release-win-x64 was flaky, turned RuntimeError
* **Author:** [aam](https://github.com/aam)
* The `pkg/perf_witness/test/recorder_server_test` is flaky on Windows (unittest-asserts-release-win-x64), exiting with a RuntimeError (code 255) due to failures in capturing expected 'sleep' events and creating timeline files by the `perf_witness` recorder.

### [Issue #62319](https://github.com/dart-lang/sdk/issues/62319): build of wasm fails  3.40.0-1.0.pre-330
* **Author:** [bsutton](https://github.com/bsutton)
* A Flutter WebAssembly (WASM) build fails with a "Stack Overflow" error during the `dart2wasm` compilation process (specifically within `DummyValuesCollector.prepareDummyValue`) when using Flutter `3.40.0-1.0.pre-330` from the master channel, but succeeds on version `3.38.5`.

### [Issue #62300](https://github.com/dart-lang/sdk/issues/62300): Remove built_value dependency from RegisterEvent
* **Author:** [jyameo](https://github.com/jyameo)

### [Issue #62273](https://github.com/dart-lang/sdk/issues/62273): Bug Report: dart2wasm crash in ParameterInfo.fromMember during DispatchTable.build
* **Author:** [rpk98c](https://github.com/rpk98c)
* The dart2wasm compiler crashes with a null check error in `ParameterInfo.fromMember` during the dispatch table build phase when compiling a Flutter web application to WebAssembly, even after migrating to `package:web`, and this occurs with various common Flutter packages, preventing successful WASM compilation.

### [Issue #62234](https://github.com/dart-lang/sdk/issues/62234): analyzer_testing stub for 'dart:ui' is placed at 'package:ui'
* **Author:** [srawlins](https://github.com/srawlins)
* The `analyzer_testing` stub for `dart:ui` is confusingly implemented as `package:ui`, and the issue suggests correcting this to directly provide `dart:ui` in the mock SDK to reduce developer confusion.

### [Issue #51306](https://github.com/dart-lang/sdk/issues/51306): Add a diagnostic for using `@override` inside a method
* **Author:** [natebosch](https://github.com/natebosch)
* **Reactions:** **1** -- 👍 1
* The issue requests adding a diagnostic to flag the incorrect usage of the `@override` annotation when applied to declarations inside a method, such as local functions, because such declarations cannot legitimately override anything.


# GitHub PR Report for dart-lang/language
## From 2026-01-13

During this period, no pull requests were merged and no issues were closed, indicating no significant changes or updates were introduced to the repository's codebase or functionality.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2026-01-13

While no pull requests were merged during this period, the repository addressed two significant closed issues. A key development impacting the public API surface and language features is the discussion in [Issue #1772](https://github.com/dart-lang/native/issues/1772), which proposes removing the `Wrapper` suffix from APIs generated by `swift2objc`, suggesting that Swift language features like namespaces or modules could be leveraged for better naming conventions. Concurrently, internal compiler architecture saw attention with [Issue #2900](https://github.com/dart-lang/native/issues/2900), detailing a plan to refactor the `dart2js` compiler to reduce its reliance on `package:record_use` throughout its internals, instead converting to `record_use` types only just before file writing to improve its incremental serialization.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #2900](https://github.com/dart-lang/native/issues/2900): [record_use] Implementation: dart2js: Stop using `package:record_use` in compiler internals
* **Author:** [dcharkes](https://github.com/dcharkes)
* The `dart2js` compiler currently uses `package:record_use` in its internals, which is unsuitable for its incremental serialization needs, so the plan is to refactor `dart2js` to convert to `record_use` types only just before writing the file instead of throughout its internal logic.

### [Issue #1772](https://github.com/dart-lang/native/issues/1772): [swift2objc] Can we remove the `Wrapper` suffix from all the APIs?
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* This issue proposes removing the `Wrapper` suffix that `swift2objc` adds to wrapped APIs, suggesting that a Swift language feature like namespaces or modules could be used instead to avoid naming conflicts.


# GitHub PR Report for flutter/ai
## From 2026-01-13

No changes were introduced to the repository during this period, as no pull requests were merged and no issues were closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2026-01-13

During this period, no pull requests were merged and no issues were closed, indicating no significant changes or updates were made to the repository's codebase or public API surface.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2026-01-13

Recent updates to the repository primarily focused on enhancing stability, improving platform integrations, and advancing the Impeller rendering engine. A critical fix addressed a widespread crash when running `flutter run -d all` with multiple devices ([PR #180867]), complemented by robust exception handling for `DartDevelopmentServiceException` during web application launches ([PR #180905], resolving [Issue #178151]). Impeller saw significant improvements, including a crash fix related to shadow path rendering ([PR #180920]), the addition of build-time checks for its SkSL compiler to prevent runtime crashes from invalid GLSL array literals ([PR #180861], addressing [Issue #125630]), and expanded test coverage with the enablement of the Metal backend for Dart engine tests ([PR #180700]). Platform integration was boosted by the new ability to add Flutter as a Swift Package dependency for iOS and macOS projects ([PR #178931], addressing [Issue #166489]), streamlining framework management in Xcode. Further compatibility improvements include removing `RequiresApi 23` annotations from several Android platform components ([PR #180629]) and an important documentation update regarding the deprecation of `setStatusBarColor` and `setNavigationBarColor` on Android 15+ ([Issue #165327]). Dependency updates included a Dart SDK bump to 3.11.0-296.3.beta ([PR #180916]) and various pub package rolls, while a new `TabBar` API example ([PR #180728]) was added to demonstrate scroll notification integration. The community also highlighted a strong demand for additional Google Fonts, with requests such as the Geist font receiving significant reactions ([Issue #174537]).

## Merged Pull Requests

### [PR #180931](https://github.com/flutter/flutter/pull/180931): Update changelog for flutter 3.38.7 stable hotfix
* **Author:** [walley892](https://github.com/walley892)
* **Merged At:** 2026-01-13 01:47 PM
* **Comments:** 1
* Updates the changelog to prepare for the 3.38.7 stable hotfix, documenting a fix for crashes when running `flutter run -d all` with multiple devices.

### [PR #180930](https://github.com/flutter/flutter/pull/180930): Bump engine version for flutter 3.41 beta
* **Author:** [walley892](https://github.com/walley892)
* **Merged At:** 2026-01-13 02:32 PM
* **Comments:** 2
* Bumps the engine version for Flutter 3.41 beta, following a recent Dart update.

### [PR #180928](https://github.com/flutter/flutter/pull/180928): Roll pub packages
* **Author:** [flutter-pub-roller-bot](https://github.com/flutter-pub-roller-bot)
* **Merged At:** 2026-01-13 02:58 PM
* **Comments:** 0
* This PR updates the `dwds` package within `flutter_tools` from version 26.2.3 to 26.2.4, as part of a general pub package roll.

### [PR #180920](https://github.com/flutter/flutter/pull/180920): [Impeller] Fix crash trying to check for duplicate vertices in shadow_path code
* **Author:** [flar](https://github.com/flar)
* **Merged At:** 2026-01-13 02:47 PM
* **Comments:** 4
* Fixes a crash in Impeller's shadow path code by ensuring that vectors are not empty before attempting to access their last elements when checking for duplicate vertices, preventing calls to `vector::back()` on empty vectors.

### [PR #180916](https://github.com/flutter/flutter/pull/180916): bump dart version
* **Author:** [walley892](https://github.com/walley892)
* **Merged At:** 2026-01-13 12:39 PM
* **Comments:** 3
* Updates the Dart SDK to version 3.11.0-296.3.beta, along with associated dependency revisions.

### [PR #180911](https://github.com/flutter/flutter/pull/180911): In flutter_test_performance, consider the blank line at the start of "flutter test" output to be optional.
* **Author:** [jason-simmons](https://github.com/jason-simmons)
* **Merged At:** 2026-01-13 01:02 PM
* **Comments:** 1
* Updates the `flutter_test_performance` tool to make the initial blank line in "flutter test" output optional, addressing a change in Dart test package v1.29 where this line is no longer present and preventing parsing failures.

### [PR #180910](https://github.com/flutter/flutter/pull/180910): Move all getUniformX tests to web_ui/test.
* **Author:** [walley892](https://github.com/walley892)
* **Merged At:** 2026-01-13 03:21 PM
* **Comments:** 1
* Moves all `getUniformX` fragment shader tests and their associated uniform accessor verification logic to `web_ui/test/ui/fragment_shader_test.dart` to centralize web UI shader testing. This change also introduces new GLSL shader fixtures, updates `impellerc` generated SKSL strings, and adapts tests to load shaders from assets.

### [PR #180905](https://github.com/flutter/flutter/pull/180905): [ Tool ] Handle `DartDevelopmentServiceException` when launching web applications
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2026-01-13 11:52 AM
* **Comments:** 0
* Adds exception handling to `flutter_tools` to catch `DartDevelopmentServiceException` when launching web applications, preventing crashes and allowing for a graceful exit if the target application shuts down immediately after launch.

### [PR #180900](https://github.com/flutter/flutter/pull/180900): Roll pub packages
* **Author:** [flutter-pub-roller-bot](https://github.com/flutter-pub-roller-bot)
* **Merged At:** 2026-01-13 11:25 AM
* **Comments:** 1
* This PR updates multiple pub package dependencies across the repository, including minor version bumps for `ffi`, `mustache_template`, and `watcher`, and a downgrade for `webview_flutter`, as part of an automated dependency roll.

### [PR #180886](https://github.com/flutter/flutter/pull/180886): Manually roll test dependencies
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2026-01-13 06:42 AM
* **Comments:** 2
* This PR manually updates several test dependencies, including `test` to version `1.29.0`, `test_api` to `0.7.9`, and `test_core` to `0.6.15`, across various `pubspec.yaml` files, due to failures in the automated dependency roller and `flutter update-packages` command.

### [PR #180875](https://github.com/flutter/flutter/pull/180875): Reenable 4 fragment shader tests
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2026-01-13 12:46 PM
* **Comments:** 1
* Re-enables four fragment shader tests that were previously disabled due to Impeller-related issues by converting them from `_runSkiaTest` to standard `test` functions. This change also updates the `ink_sparkle` shader to compile for Metal, GLES, and Vulkan runtime stages, ensuring compatibility across various graphics backends.

### [PR #180867](https://github.com/flutter/flutter/pull/180867): [CP-stable][ Tool ] Fix `flutter run -d all` crash 
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2026-01-13 10:16 AM
* **Comments:** 5
* This PR fixes a crash that occurred when running `flutter run -d all` with multiple connected devices by updating the `HotRunner` to correctly manage a set of target platforms, ensuring asset bundles are built for all devices.

### [PR #180861](https://github.com/flutter/flutter/pull/180861): Add build-time checks for ImpellerC's SkSL compiler
* **Author:** [b-luk](https://github.com/b-luk)
* **Merged At:** 2026-01-13 09:39 AM
* **Comments:** 0
* Adds build-time checks to ImpellerC's SkSL compiler, enhancing `CompilerSkSL` to detect unsupported array initializers and validating compiled SkSL by creating a `SkRuntimeEffect` to catch array assignments and other invalid cases, ensuring more robust shader compilation.

### [PR #180859](https://github.com/flutter/flutter/pull/180859): Update engine version
* **Author:** [walley892](https://github.com/walley892)
* **Merged At:** 2026-01-12 06:31 PM
* **Comments:** 4
* Updates the engine version dependency to `7cbafe57090d7d5a1400c124adbb124aec3ee8af`.

### [PR #180830](https://github.com/flutter/flutter/pull/180830): Make sure that an ErrorWidget doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2026-01-13 10:50 AM
* **Comments:** 0
* Adds a test to ensure that `ErrorWidget` does not crash when rendered in a zero-size environment.

### [PR #180810](https://github.com/flutter/flutter/pull/180810): Make sure that a FormField doesn't crash at 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2026-01-13 09:26 AM
* **Comments:** 0
* This PR fixes an issue where `FormField` widgets could crash when rendered with a zero area by adding a dedicated test case to ensure proper behavior and prevent regressions.

### [PR #180728](https://github.com/flutter/flutter/pull/180728): Add TabBar API example for scroll notification integration
* **Author:** [huycozy](https://github.com/huycozy)
* **Merged At:** 2026-01-13 10:08 AM
* **Comments:** 2
* Adds a new `TabBar` API example that demonstrates how to integrate scroll notifications (ScrollMetricsNotification and ScrollNotification) with a `NotificationListener` to apply custom visual effects, such as gradient masks, based on the tab bar's scroll offset.

### [PR #180715](https://github.com/flutter/flutter/pull/180715): Make sure that a FocusScope doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2026-01-13 12:08 PM
* **Comments:** 0
* Adds a test to verify that `FocusScope` handles zero physical size environments without crashing, resolving a stability issue related to rendering in such conditions.

### [PR #180700](https://github.com/flutter/flutter/pull/180700): Adds metal background to engine dart tests
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2026-01-13 10:25 AM
* **Comments:** 3
* Enables Dart engine tests to run against the Impeller Metal backend. This involves adding a new Metal-specific tester context and updating the test runner to allow explicit selection of the Metal rendering backend for these tests.

### [PR #180629](https://github.com/flutter/flutter/pull/180629): Removes `RequiresApi 23`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-13 11:38 AM
* **Comments:** 2
* Removes `RequiresApi 23` annotations from several Android platform components in the Flutter engine, including `FlutterViewDelegate`, `PlatformViewWrapper`, `PlatformViewsController`, and `ProcessTextPlugin`, to resolve a compatibility issue.

### [PR #180422](https://github.com/flutter/flutter/pull/180422): Make sure that a DragTarget doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2026-01-13 09:00 AM
* **Comments:** 1
* Adds a test to ensure the `DragTarget` widget does not crash when rendered in a zero-size environment, addressing a reported issue.

### [PR #180357](https://github.com/flutter/flutter/pull/180357): Make sure that a DisplayFeatureSubScreen doesn't crash in 0x0 environ…
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2026-01-13 09:00 AM
* **Comments:** 1
* Adds a test case to ensure that `DisplayFeatureSubScreen` does not crash when rendered with a zero-sized area, addressing an issue on devices with display features.

### [PR #180254](https://github.com/flutter/flutter/pull/180254): Make sure that a Banner doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2026-01-13 10:35 AM
* **Comments:** 2
* Adds a new test to verify that the `Banner` widget does not crash when rendered in a zero-area (0x0) environment, addressing a reported issue.

### [PR #179957](https://github.com/flutter/flutter/pull/179957): Update link to FlutterTest font generation script
* **Author:** [lsaudon](https://github.com/lsaudon)
* **Merged At:** 2026-01-13 03:45 PM
* **Comments:** 1
* Updates the link in the `FlutterTest` font documentation to reflect the current path of its generation script within the `flutter/flutter` repository.

### [PR #178931](https://github.com/flutter/flutter/pull/178931): Add Flutter as a Swift Package dependency
* **Author:** [vashworth](https://github.com/vashworth)
* **Merged At:** 2026-01-13 12:38 PM
* **Comments:** 1
* Adds the Flutter framework as a Swift Package dependency for iOS and macOS, which allows Xcode to manage framework copying, thinning, and codesigning, and adapts Flutter's Xcode build scripts to this new integration.


## Closed Issues

### [Issue #180936](https://github.com/flutter/flutter/issues/180936): mac-66 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The user is reporting that a mac-66 device lost its external connection to a phone.

### [Issue #180934](https://github.com/flutter/flutter/issues/180934): mac-71 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* Issue mac-71 lost its external connection from the phone device, with no further details provided in the issue description.

### [Issue #180917](https://github.com/flutter/flutter/issues/180917): linux-23's phone device low on battery.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* linux-23's phone device is experiencing a low battery issue.

### [Issue #180912](https://github.com/flutter/flutter/issues/180912): Enable fragment_shader_tests.dart's 'FragmentShader simple shader renders correctly' test for impeller
* **Author:** [b-luk](https://github.com/b-luk)
* Enable the 'FragmentShader simple shader renders correctly' test in `fragment_shader_tests.dart` for Impeller, as part of the broader effort to enable all tests in that file for Impeller (#180764).

### [Issue #180903](https://github.com/flutter/flutter/issues/180903): Linux_mokey flutter_test_performance is broken with recent package update
* **Author:** [jtmcdole](https://github.com/jtmcdole)

### [Issue #180888](https://github.com/flutter/flutter/issues/180888): ios 26.2 video player crashing
* **Author:** [shrutgyan](https://github.com/shrutgyan)
* The app crashes on iOS 26.2 when playing a video, restarting the app, and then attempting to play the same video again, specifically during the `await controller.initialize()` call.

### [Issue #180884](https://github.com/flutter/flutter/issues/180884): [tool_crash] ProcessException: The system cannot find the file specified.
 Command: D:\dheer@j\flutter\bin\cache\dart-sdk\bin\dart.exe, OS error code: 2
* **Author:** [widgetwalker](https://github.com/widgetwalker)
* Running `flutter run -d edge` fails with a `ProcessException` because the system cannot find `dart.exe` at `D:\dheer@j\flutter\bin\cache\dart-sdk\bin\dart.exe`, and the Flutter doctor also crashes due to a missing `devtools` directory within the `dart-sdk` cache.

### [Issue #180878](https://github.com/flutter/flutter/issues/180878): linux-56 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The `linux-56` system is experiencing a loss of external connection from a connected phone device, with no severity specified beyond a generic "help us understand" category.

### [Issue #180877](https://github.com/flutter/flutter/issues/180877): mac-37 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The mac-37 device has lost its external connection to a phone, indicated by the provided screenshot, and the user needs assistance with this issue.

### [Issue #180876](https://github.com/flutter/flutter/issues/180876): win-13 in quarantined state because the local Temp directory exceeded 1024 files.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* win-13 is in a quarantined state because its local Temp directory exceeded 1024 files.

### [Issue #180869](https://github.com/flutter/flutter/issues/180869): win-5 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The `win-5` device has lost its external connection to a phone, causing a breakage where builds cannot be triggered.

### [Issue #180268](https://github.com/flutter/flutter/issues/180268): Mac_arm64_mokey native_assets_android is 2.08% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* The `Mac_arm64_mokey native_assets_android` test builder is exceeding its flakiness threshold with a 2.08% ratio, requiring investigation and a fix.

### [Issue #180195](https://github.com/flutter/flutter/issues/180195): iOS 18.3.2: Black screen on launch in TestFlight/Release (works in Debug/Xcode run)
* **Author:** [CasGroenewald](https://github.com/CasGroenewald)
* A Flutter app on iOS 18.3.2 displays a black screen on launch when distributed through TestFlight (Release build) to an iPhone 12 Pro, although it runs correctly from Xcode in debug mode.

### [Issue #180189](https://github.com/flutter/flutter/issues/180189): macOS build fails: Module 'FlutterMacOS' not found with video_player_avfoundation & window_manager
* **Author:** [priyankgandhi0](https://github.com/priyankgandhi0)
* When building a Flutter macOS app with `video_player` and `window_manager` plugins on Flutter stable 3.35.7 (Intel), the build fails with "Module 'FlutterMacOS' not found" errors originating from these plugins.

### [Issue #180067](https://github.com/flutter/flutter/issues/180067): webview_flutter causes all network requests to fail on iOS physical devices in existing project
* **Author:** [wujingquan](https://github.com/wujingquan)
* Adding the `webview_flutter` plugin to an existing Flutter project causes all network requests (using `dio` or `http`) to fail with a `SocketException: Failed host lookup` error, specifically on physical iOS devices, while working correctly on Android and iOS simulators.

### [Issue #180014](https://github.com/flutter/flutter/issues/180014): iOS 26.0 Simulator runtime missing on Mac_arm64 builders (Xcode 26 upgrade)
* **Author:** [okorohelijah](https://github.com/okorohelijah)
* Mac_arm64 builders are failing after upgrading to Xcode 26.0.1 because the iOS 26.0 simulator runtime is missing, causing tests to fail with "Platform Not Installed," and a potential fix involves updating `create_simulator.sh` to correctly handle the new runtime identifier.

### [Issue #178974](https://github.com/flutter/flutter/issues/178974): Request to add Playwrite "Guides" font families
* **Author:** [enoiu](https://github.com/enoiu)
* The user requests that the "Guides" variants of the Playwrite font family (e.g., Playwrite BR Guides, Playwrite US Modern Guides) be added to the `google_fonts` package, as only the base Playwrite family was included in version 6.3.0.

### [Issue #178151](https://github.com/flutter/flutter/issues/178151): [tool_crash] DartDevelopmentServiceException
* **Author:** [User789566](https://github.com/User789566)
* The `flutter run -d chrome` command is crashing with a `DartDevelopmentServiceException` on Flutter stable channel 3.35.7 on Windows.

### [Issue #178126](https://github.com/flutter/flutter/issues/178126): Codeshare Tooltip
* **Author:** [victorsanni](https://github.com/victorsanni)
* Non-Material design systems in Flutter struggle to create custom tooltips because the existing `Tooltip` widget is Material-opinionated, and `OverlayPortal` lacks the additional logic required for their singular and ephemeral nature.

### [Issue #174826](https://github.com/flutter/flutter/issues/174826): Missing 'funnelDisplay' font
* **Author:** [Zalezny](https://github.com/Zalezny)
* The user requests to add the 'funnelDisplay' font, available on Google Fonts, to the project.

### [Issue #174532](https://github.com/flutter/flutter/issues/174532): Missing `Iansui` font
* **Author:** [wix3000](https://github.com/wix3000)
* The user is requesting to add the 'Iansui' font from Google Fonts.

### [Issue #174533](https://github.com/flutter/flutter/issues/174533): Missing 'Google Sans Code'
* **Author:** [piedcipher](https://github.com/piedcipher)
* The `google_fonts` package needs to be updated to include the 'Google Sans Code' font, a new addition highlighted by Google Design.

### [Issue #174534](https://github.com/flutter/flutter/issues/174534): Missing Google Font: Sour Gummy
* **Author:** [askamist](https://github.com/askamist)
* **Reactions:** **1** -- 👍 1
* The Sour Gummy font is missing from the `google_fonts` package.

### [Issue #166489](https://github.com/flutter/flutter/issues/166489): [SwiftPM] Flutter generates a local Flutter framework swift package
* **Author:** [vashworth](https://github.com/vashworth)
* This issue proposes that Flutter plugins declare a Swift Package Manager dependency on the Flutter framework via symlinked relative paths, allowing Xcode to automatically handle framework copying, thinning, and codesigning instead of using a pre-action bash script.

### [Issue #174536](https://github.com/flutter/flutter/issues/174536): Missing Google Font Parkinsans
* **Author:** [Ndinos](https://github.com/Ndinos)
* The user is requesting support for the "Parkinsans" Google Font within the `google_fonts` package, as `GoogleFonts.parkinsansTextTheme()` is currently undefined and causing an error.

### [Issue #165327](https://github.com/flutter/flutter/issues/165327): [Android] Update documentation on `setStatusBarColor`, `setNavigationBarColor`, `setNavigationBarDividerColor`
* **Author:** [camsim99](https://github.com/camsim99)
* **Reactions:** **1** -- 👍 1
* Update Dart developer documentation to inform users that `setStatusBarColor`, `setNavigationBarColor`, and `setNavigationBarDividerColor` are deprecated and disabled in Android 15 and will no longer function on Android 15+.

### [Issue #174537](https://github.com/flutter/flutter/issues/174537): Missing Geist Font
* **Author:** [rowandrhodes](https://github.com/rowandrhodes)
* **Reactions:** **6** -- 👍 5 ❤️ 1
* The Geist font is missing.

### [Issue #156948](https://github.com/flutter/flutter/issues/156948): [Web] Text selection, and tooltip interactions seems broken on iOS
* **Author:** [Miiite](https://github.com/Miiite)
* When running a web application on an iOS device, text selection within a TextField exhibits a double overlay and its contextual tooltip menu is often misplaced.

### [Issue #174538](https://github.com/flutter/flutter/issues/174538): Missing `SUSE`
* **Author:** [Muhammed-Rahif](https://github.com/Muhammed-Rahif)
* The `SUSE` font, available on fonts.google.com, is missing from the `google_fonts` package in Flutter.

### [Issue #125630](https://github.com/flutter/flutter/issues/125630): [Impeller] Compiler: GLSL array literals in shaders crash at runtime.
* **Author:** [nanokatze](https://github.com/nanokatze)
* **Reactions:** **3** -- 👍 3
* Using GLSL array literals in a shader loaded with `FragmentProgram.fromAsset` results in a runtime crash, specifically an "Invalid SkSL" error indicating a "missing index in '[]'" during the SkSL compilation phase.


# GitHub PR Report for flutter/genui
## From 2026-01-13

The recent activity in the repository primarily focused on maintenance and internal process improvements. A significant update involved refreshing various package dependencies and documenting an improved error handling fix for catalog example loading within the `genui` changelog, as detailed in [#658](https://github.com/flutter/genui/pull/658). Concurrently, internal operational challenges were addressed regarding package release permissions for the `genui_firebase_ai` package, ensuring more team members have the necessary authorization to publish new versions, which was resolved through discussions in [#643](https://github.com/flutter/genui/issues/643).

## Merged Pull Requests

### [PR #658](https://github.com/flutter/genui/pull/658): Refresh changelog and dependencies before publishing.
* **Author:** [polina-c](https://github.com/polina-c)
* **Merged At:** 2026-01-12 05:22 PM
* **Comments:** 2
* Updates the `genui` changelog to document an improved error handling fix for catalog example loading and refreshes various package dependencies.


## Closed Issues

### [Issue #643](https://github.com/flutter/genui/issues/643): More team members should have permissions to release package.
* **Author:** [polina-c](https://github.com/polina-c)
* Most team members lack permissions to publish new versions of the `genui_firebase_ai` package, causing the release process to fail, and steps are needed to document how to acquire these permissions.


# GitHub PR Report for flutter/packages
## From 2026-01-13

Recent updates to the repository primarily focused on improving package quality and internal tooling across various packages. The `google_fonts` package saw significant enhancements to its public API documentation, with comprehensive additions for core classes like `GoogleFontsDescriptor` and `GoogleFontsVariant`, alongside a shift from `print` to `debugPrint` for improved debug-mode logging ([#10782](https://github.com/flutter/packages/pull/10782)). For the `google_maps_flutter` package, a notable change involved migrating the iOS implementation of heatmaps to utilize fully typed Pigeon data, moving away from legacy JSON serialization for more streamlined data transfer and updating the minimum supported Flutter SDK version to 3.35 ([#10754](https://github.com/flutter/packages/pull/10754)). Furthermore, an internal configuration adjustment was made to prevent Gemini Code Assist from commenting on draft pull requests by setting `include_drafts` to `false` ([#10765](https://github.com/flutter/packages/pull/10765)).

## Merged Pull Requests

### [PR #10782](https://github.com/flutter/packages/pull/10782): [google_fonts] Add missing public API documentation
* **Author:** [guidezpl](https://github.com/guidezpl)
* **Merged At:** 2026-01-13 09:56 AM
* **Comments:** 0
* Adds comprehensive public API documentation to several core classes within the `google_fonts` package, including `GoogleFontsDescriptor` and `GoogleFontsVariant`, and replaces `print` statements with `debugPrint` for improved debug-mode logging.

### [PR #10765](https://github.com/flutter/packages/pull/10765): Set Gemini Code Assist include_drafts to false
* **Author:** [jmagman](https://github.com/jmagman)
* **Merged At:** 2026-01-13 07:01 AM
* **Comments:** 1
* Sets `include_drafts` to `false` in `.gemini/config.yaml` to prevent Gemini Code Assist from commenting on draft pull requests, aligning its behavior with the `flutter/flutter` repository.

### [PR #10754](https://github.com/flutter/packages/pull/10754): [google_maps_flutter] Migrate iOS heatmaps to Pigeon
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2026-01-13 07:38 AM
* **Comments:** 0
* Migrates the iOS implementation of heatmaps in `google_maps_flutter` to use fully typed Pigeon data instead of legacy JSON serialization, simplifying data transfer between Dart and native. This change also updates the minimum supported Flutter SDK version to 3.35.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2026-01-13

Overall, recent activity in the repository, primarily through the closure of several issues, points towards an ongoing effort to enrich the `flutter/samples` collection and improve its usability and developer experience. Discussions concluded regarding the potential inclusion of a new `flutter_v2ray_client` sample, aimed at demonstrating a high-performance VPN client ([#2743](https://github.com/flutter/samples/issues/2743)). Architectural best practices within existing samples were also a focus, with a closed discussion around whether making an auth repository listenable constitutes an anti-pattern in the compass app example ([#2740](https://github.com/flutter/samples/issues/2740)). Furthermore, the community explored enhancements to repository management and discoverability, including adding Releases links and a dedicated Releases page for easier installation and testing ([#2730](https://github.com/flutter/samples/issues/2730)). Significant future-looking proposals also closed, notably one suggesting the integration of AI features using Gemini for automating repository updates and facilitating PR review functionality ([#2719](https://github.com/flutter/samples/issues/2719)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #2743](https://github.com/flutter/samples/issues/2743): Add flutter_v2ray_client sample: Flutter VPN & V2Ray Client
* **Author:** [amir-zr](https://github.com/amir-zr)
* The user proposes a new `flutter_v2ray_client` sample demonstrating a high-performance VPN client using V2Ray/Xray protocols in Flutter, and is asking if this educational sample is suitable for the `flutter/samples` repository before submitting a PR.

### [Issue #2740](https://github.com/flutter/samples/issues/2740): Anti pattern concern
* **Author:** [NGURE-TIM](https://github.com/NGURE-TIM)
* The user is questioning whether making the auth repository listenable in the compass app example is an anti-pattern, as they believe the data layer should only be accessed by the view model layer via method calls, and a listenable repository might allow direct access from the view.

### [Issue #2730](https://github.com/flutter/samples/issues/2730): Add Releases links
* **Author:** [bensalcie](https://github.com/bensalcie)
* The issue requests adding Releases links and a dedicated Releases page to facilitate quick installation and testing of the app.

### [Issue #2719](https://github.com/flutter/samples/issues/2719): Add AI features to repository
* **Author:** [ericwindmill](https://github.com/ericwindmill)
* This issue proposes adding AI features using Gemini, specifically for automating repository updates with configuration and prompts via GitHub Actions and for providing PR review functionality.


# GitHub PR Report for flutter/website
## From 2026-01-13

This release delivers crucial documentation updates for core Flutter features and significantly enhances the Flutter Web Experience (FWE) tutorials. A primary focus was addressing the Swift Package Manager documentation to reflect the new `flutter: config:` section in `pubspec.yaml`, rectifying deprecated syntax that caused issues in Flutter 3.38 and later, as resolved by [PR #12925](https://github.com/flutter/website/pull/12925) in response to [Issue #12924](https://github.com/flutter/website/issues/12924). The Flutter Web Experience tutorials underwent substantial improvements, including a refactored page structure with a `TutorialStructureExtension` to standardize layouts, enhance media display, and introduce features like foldable code blocks and summary cards ([PR #12923](https://github.com/flutter/website/pull/12923), [PR #12900](https://github.com/flutter/website/pull/12900)). To bolster learning, interactive "Test yourself" quizzes were integrated into various FWE lessons, addressing [Issue #12799](https://github.com/flutter/website/issues/12799) via [PR #12920](https://github.com/flutter/website/pull/12920). Additionally, the "Create with AI" documentation was expanded to provide a more detailed and promotional description of the Dart and Flutter MCP server's capabilities, fulfilling [Issue #12356](https://github.com/flutter/website/issues/12356) through [PR #12927](https://github.com/flutter/website/pull/12927). A minor internal refactor of the Card component's SCSS ([PR #12928](https://github.com/flutter/website/pull/12928)) also landed, improving styling modularity.

## Merged Pull Requests

### [PR #12928](https://github.com/flutter/website/pull/12928): Refactor Card scss
* **Author:** [ericwindmill](https://github.com/ericwindmill)
* **Merged At:** 2026-01-13 03:23 PM
* **Comments:** 2
* This PR refactors the Card component's SCSS by extracting its styles from the `card-list` and `card-grid` selectors, enabling the `card` class to be used independently of those container classes.

### [PR #12927](https://github.com/flutter/website/pull/12927): Add more mention of mcp to AI pages
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-13 12:13 PM
* **Comments:** 3
* Expands the "Create with AI" documentation page to provide a more detailed description of the Dart and Flutter MCP server's capabilities, including its ability to introspect the widget tree, manage dependencies, control the runtime, and fix errors.

### 🔥 [PR #12925](https://github.com/flutter/website/pull/12925): Update Swift Package Manager pubspec.yaml syntax to use config section
* **Author:** [dbebawy](https://github.com/dbebawy)
* **Merged At:** 2026-01-13 12:50 PM
* **Comments:** 6
* Updates the Swift Package Manager documentation to use the new `flutter: config:` section in `pubspec.yaml` for configuration, replacing the deprecated `disable-swift-package-manager` field and including a migration note for users about the old syntax causing errors in Flutter 3.38 and later.

### [PR #12923](https://github.com/flutter/website/pull/12923): refactor tutorial structure to page extension
* **Author:** [schultek](https://github.com/schultek)
* **Merged At:** 2026-01-13 07:56 AM
* **Comments:** 2
* Refactors tutorial page structure by removing the `TutorialLesson` custom Jaspr component and introducing a `TutorialStructureExtension` page extension. This change allows the page extension to automatically construct tutorial layouts from Markdown content, using horizontal rules to define sections, simplifying the Jaspr codebase.

### [PR #12920](https://github.com/flutter/website/pull/12920): Add initial quizzes to FWE lessons
* **Author:** [ericwindmill](https://github.com/ericwindmill)
* **Merged At:** 2026-01-12 05:58 PM
* **Comments:** 2
* Adds initial "Test yourself" quizzes to multiple Flutter Web Experience (FWE) tutorial lessons, including Adaptive Layout, Advanced UI, State Management, Navigation, and more, enabling users to reinforce their understanding of key concepts.

### [PR #12900](https://github.com/flutter/website/pull/12900): FWE clean up
* **Author:** [ericwindmill](https://github.com/ericwindmill)
* **Merged At:** 2026-01-13 08:34 AM
* **Comments:** 3
* This PR refactors and cleans up tutorial pages (FWE lessons) by introducing a `TutorialStructureExtension` and associated styling to standardize content structure, improve image and video display, and enable foldable code blocks and static summary cards for enhanced readability.


## Closed Issues

### [Issue #12924](https://github.com/flutter/website/issues/12924): Swift Package Manager docs use deprecated pubspec.yaml syntax
* **Author:** [dbebawy](https://github.com/dbebawy)
* The Swift Package Manager documentation at `/packages-and-plugins/swift-package-manager/for-app-developers` uses deprecated `disable-swift-package-manager` pubspec.yaml syntax instead of the new `config` section, leading to errors for users of Flutter 3.38.x and later.

### [Issue #12799](https://github.com/flutter/website/issues/12799): Add quizzes to FWE pages
* **Author:** [parlough](https://github.com/parlough)
* This issue proposes adding interactive quizzes to the new FWE pages to help users consolidate their learning, demonstrating the desired MDX quiz format.

### [Issue #12356](https://github.com/flutter/website/issues/12356): Would love more "sales" of Flutter MCP on https://dart.dev/tools/mcp-server
* **Author:** [sethladd](https://github.com/sethladd)
* The `create-with-ai` page on the Flutter website should be updated to more effectively promote the Flutter-specific capabilities of the Dart+Flutter MCP server, including relevant features and screenshots, instead of requiring users to visit the separate Dart MCP server page.

### [Issue #11057](https://github.com/flutter/website/issues/11057): Assess iOS + i18n docs for accuracy
* **Author:** [sethladd](https://github.com/sethladd)
* The issue requests a review of two Flutter documentation pages related to iOS internationalization and localization to ensure their accuracy.

### [Issue #10820](https://github.com/flutter/website/issues/10820): Ensure Swift code samples are Swift 6 compatible
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* This issue requests an audit and update of Swift code samples in the documentation to ensure compatibility with Swift 6's strict concurrency checking, specifically on pages like "Add Flutter Screen" and "Flutter for SwiftUI devs."



## Top Hacker News Stories

### 172 🔥 [SparkFun Officially Dropping AdaFruit due to CoC Violation](https://www.sparkfun.com/official-response)
* **Author:** [yaleman](https://news.ycombinator.com/user?id=yaleman) | **Comments:** [105](https://news.ycombinator.com/item?id=46616488)

### 174 🔥 [I Hate GitHub Actions with Passion](https://xlii.space/eng/i-hate-github-actions-with-passion/)
* **Author:** [xlii](https://news.ycombinator.com/user?id=xlii) | **Comments:** [126](https://news.ycombinator.com/item?id=46614558)

### 37  [Why some clothes shrink in the wash – and how to 'unshrink' them](https://www.swinburne.edu.au/news/2025/08/why-some-clothes-shrink-in-the-wash-and-how-to-unshrink-them/)
* **Author:** [OptionOfT](https://news.ycombinator.com/user?id=OptionOfT) | **Comments:** [20](https://news.ycombinator.com/item?id=46572307)

### 584 🔥🔥 [There's a ridiculous amount of tech in a disposable vape](https://blog.jgc.org/2026/01/theres-ridiculous-amount-of-tech-in.html)
* **Author:** [abnercoimbre](https://news.ycombinator.com/user?id=abnercoimbre) | **Comments:** [503](https://news.ycombinator.com/item?id=46591810)

### 200 🔥 [I’m leaving Redis for SolidQueue](https://www.simplethread.com/redis-solidqueue/)
* **Author:** [amalinovic](https://news.ycombinator.com/user?id=amalinovic) | **Comments:** [83](https://news.ycombinator.com/item?id=46614037)

### 141 🔥 [FBI raids Washington Post reporter's home in 'highly unusual and aggressive' act](https://www.theguardian.com/us-news/2026/jan/14/fbi-raid-washington-post-hannah-natanson)
* **Author:** [echelon_musk](https://news.ycombinator.com/user?id=echelon_musk) | **Comments:** [38](https://news.ycombinator.com/item?id=46616745)

### 11  [Edge of Emulation: Game Boy Sewing Machines](https://shonumi.github.io/articles/art22.html)
* **Author:** [mosura](https://news.ycombinator.com/user?id=mosura) | **Comments:** [0](https://news.ycombinator.com/item?id=46616496)

### 30  [India's Electric Two-Wheeler Market: Rise, Reset and What Comes Next](https://micromobility.io/news/indias-electric-two-wheeler-market-rise-reset-and-what-comes-next)
* **Author:** [prabinjoel](https://news.ycombinator.com/user?id=prabinjoel) | **Comments:** [21](https://news.ycombinator.com/item?id=46557853)

### 77  [Show HN: Tiny FOSS Compass and Navigation App (<2MB)](https://github.com/CompassMB/MBCompass)
* **Author:** [nativeforks](https://news.ycombinator.com/user?id=nativeforks) | **Comments:** [26](https://news.ycombinator.com/item?id=46614688)

### 277 🔥🔥 [1000 Blank White Cards](https://en.wikipedia.org/wiki/1000_Blank_White_Cards)
* **Author:** [eieio](https://news.ycombinator.com/user?id=eieio) | **Comments:** [49](https://news.ycombinator.com/item?id=46611823)

### 25  [Never-before-seen Linux malware is "more advanced than typical"](https://arstechnica.com/security/2026/01/never-before-seen-linux-malware-is-far-more-advanced-than-typical/)
* **Author:** [Brajeshwar](https://news.ycombinator.com/user?id=Brajeshwar) | **Comments:** [3](https://news.ycombinator.com/item?id=46616569)

### 1  [Lago (Open-Source Billing) is hiring across teams and geos]()
* **Author:** [Rafsark](https://news.ycombinator.com/user?id=Rafsark) | **Comments:** [null](https://news.ycombinator.com/item?id=46615235)
* Lago is an open-source company primarily using Ruby, which provides billing solutions for complex infrastructure and enterprise use cases, including clients like Groq and PayPal. They are currently expanding their focus to leverage billing and usage data for RevOps and are actively hiring for various roles.

### 88  [Why NUKEMAP isn't on Google Maps anymore (2019)](https://blog.nuclearsecrecy.com/2019/12/13/why-nukemap-isnt-on-google-maps-anymore/)
* **Author:** [fanf2](https://news.ycombinator.com/user?id=fanf2) | **Comments:** [11](https://news.ycombinator.com/item?id=46615374)

### 158 🔥 [Is Rust faster than C?](https://steveklabnik.com/writing/is-rust-faster-than-c/)
* **Author:** [vincentchau](https://news.ycombinator.com/user?id=vincentchau) | **Comments:** [146](https://news.ycombinator.com/item?id=46569175)

### 274 🔥🔥 [ASCII Clouds](https://caidan.dev/portfolio/ascii_clouds/)
* **Author:** [majkinetor](https://news.ycombinator.com/user?id=majkinetor) | **Comments:** [50](https://news.ycombinator.com/item?id=46611507)

### 289 🔥🔥 [Every GitHub object has two IDs](https://www.greptile.com/blog/github-ids)
* **Author:** [dakshgupta](https://news.ycombinator.com/user?id=dakshgupta) | **Comments:** [65](https://news.ycombinator.com/item?id=46602591)

### 39  [System Programming in Linux: A Hands-On Introduction "Demo" Programs](https://github.com/stewartweiss/intro-linux-sys-prog)
* **Author:** [teleforce](https://news.ycombinator.com/user?id=teleforce) | **Comments:** [2](https://news.ycombinator.com/item?id=46614285)

### 315 🔥🔥 [A 40-line fix eliminated a 400x performance gap](https://questdb.com/blog/jvm-current-thread-user-time/)
* **Author:** [bluestreak](https://news.ycombinator.com/user?id=bluestreak) | **Comments:** [67](https://news.ycombinator.com/item?id=46609630)

### 152 🔥 [Show HN: OSS AI agent that indexes and searches the Epstein files](https://epstein.trynia.ai/)
* **Author:** [jellyotsiro](https://news.ycombinator.com/user?id=jellyotsiro) | **Comments:** [75](https://news.ycombinator.com/item?id=46611348)
* An open-source AI agent has been developed to index and semantically search the entire 100M-word Epstein files, providing precise, natural language answers grounded with direct source references. This tool enables users to explore the primary sources directly and verify claims without manually sifting through thousands of pages.

### 42  [Systematically generating tests that would have caught Anthropic's top‑K bug](https://theorem.dev/blog/anthropic-bug-test/)
* **Author:** [jasongross](https://news.ycombinator.com/user?id=jasongross) | **Comments:** [9](https://news.ycombinator.com/item?id=46579387)

### 78  [Putting the "You" in CPU (2023)](https://cpu.land/)
* **Author:** [vinhnx](https://news.ycombinator.com/user?id=vinhnx) | **Comments:** [12](https://news.ycombinator.com/item?id=46554982)

### 208 🔥 [The Gleam Programming Language](https://gleam.run/)
* **Author:** [Alupis](https://news.ycombinator.com/user?id=Alupis) | **Comments:** [118](https://news.ycombinator.com/item?id=46611667)

### 6  [How Iran Switched Off the Internet](https://www.ft.com/content/5d848323-84a9-4512-abd2-dd09e0a786a3)
* **Author:** [ViktorRay](https://news.ycombinator.com/user?id=ViktorRay) | **Comments:** [0](https://news.ycombinator.com/item?id=46617280)

### 258 🔥🔥 [No management needed: anti-patterns in early-stage engineering teams](https://www.ablg.io/blog/no-management-needed)
* **Author:** [tonioab](https://news.ycombinator.com/user?id=tonioab) | **Comments:** [278](https://news.ycombinator.com/item?id=46605854)

### 292 🔥🔥 [The truth behind the 2026 J.P. Morgan Healthcare Conference](https://www.owlposting.com/p/the-truth-behind-the-2026-jp-morgan)
* **Author:** [abhishaike](https://news.ycombinator.com/user?id=abhishaike) | **Comments:** [68](https://news.ycombinator.com/item?id=46605332)



