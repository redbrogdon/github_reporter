# Overall Summary
Here is your highlights section:

**[Issue #170403](https://github.com/flutter/flutter/issues/170403) (flutter/flutter): Unhandled Exception when pop Dialog into Autocomplete onSelected method**
  * **Reactions:** **4** -- 👍 4
  * An Unhandled Exception occurs when `Navigator.of(context).pop()` is called from the `onSelected` method of an `Autocomplete` widget if the `Autocomplete` is a child of a `Dialog`. This issue was fixed by [PR #180824](https://github.com/flutter/flutter/pull/180824), which added a `mounted` check after the `optionsBuilder` completes.

**🔥🔥 [PR #10739](https://github.com/flutter/packages/pull/10739) (flutter/packages): [google_fonts] Update the font generator to exclude variable font entries when a static entry of the same weight and style exists**
  * **Comments:** 10
  * This PR updates the `google_fonts` generator to exclude variable font entries when a static font of the same weight and style exists, fixing an issue with duplicate 400-weight fonts and improving font selection consistency for future explicit variable font support.

**🔥 [PR #178057](https://github.com/flutter/flutter/pull/178057) (flutter/flutter): Fix: Allow dartpad embed clipboard-write permission for "Copy to clipboard" functionality**
  * **Comments:** 6
  * Adds the `allow="clipboard-write"` attribute to Dartpad `iframe` elements, fixing a permission error that prevented the "Copy to clipboard" functionality from working within Dartpad embeds on the Flutter documentation website.

**🔥 [Issue #62128](https://github.com/dart-lang/sdk/issues/62128) (dart-lang/sdk): Add --allow-native-core-library-imports to DDC and dart2js to allow for native library imports**
  * This issue explores adding a flag (`--allow-native-core-library-imports`) for DDC and dart2js to permit native core library imports, hinting at potential future directions for native integration and expanding compiler capabilities.

**[PR #180776](https://github.com/flutter/flutter/pull/180776) (flutter/flutter): Migrate doc and code to use sendAnnounce**
  * **Comments:** 0
  * Migrates documentation and code to use `SemanticsService.sendAnnouncement` instead of `SemanticsService.announce`, now requiring a `View` object to explicitly target accessibility announcements to a specific view.

**[PR #180507](https://github.com/flutter/flutter/pull/180507) (flutter/flutter): Bump ffigen**
  * **Comments:** 4
  * This PR bumps the `ffigen` package from version 18.1.0 to 20.1.1, updating the generated FFI bindings and configuration.

**[Issue #147545](https://github.com/flutter/flutter/issues/147545) (flutter/flutter): [camera_android_camerax] Modify `availableCameras` to set camera name to `Camera2CameraInfo.getCameraId`**
  * **Reactions:** **3** -- 👍 3
  * The `camera_android_camerax` plugin's `availableCameras` function now retrieves camera names directly from `Camera2CameraInfo.getCameraId()`, resolving an issue where camera names were previously generic. This was addressed by [PR #10775](https://github.com/flutter/packages/pull/10775).

**[PR #12914](https://github.com/flutter/website/pull/12914) (flutter/website): docs: Add page transition builder reorganization guide**
  * **Comments:** 2
  * Adds a new breaking change document with a migration guide for developers whose apps use `CupertinoPageTransitionsBuilder`, explaining its relocation from the Material library to the Cupertino library and the necessary import changes.

**[Issue #2716](https://github.com/dart-lang/native/issues/2716) (dart-lang/native): [record_use] Correctness: Record dynamic invocations**
  * The current recording mechanism for `@RecordUse` annotations is extended to capture truly dynamic method invocations, providing developers with more comprehensive usage insights into whether an annotated method might be invoked dynamically.

**[PR #4589](https://github.com/dart-lang/language/pull/4589) (dart-lang/language): Fix a typo in Augmentations proposal**
  * **Comments:** 0
  * Fixes a typo in the Augmentations feature specification by correcting the term 'augmenting function' to 'augmenting constructor' within a compile-time error rule.


# GitHub PR Report for dart-lang/ai
## From 2026-01-12

There were no pull requests merged or issues closed in the repository during this period, indicating no changes to summarize at this time.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2026-01-12

This period saw several important issues closed, primarily enhancing the developer experience with the Dart analyzer and proposing extensions to compiler capabilities. Notable improvements address gaps in IDE tooling, such as resolving autocompletion failures for "dot shorthands" within `if (case .^)` statements ([#62381](https://github.com/dart-lang/sdk/issues/62381)) and ensuring that the "Find references" feature correctly identifies invocations of `const factory` constructors utilizing redirecting constructors ([#55348](https://github.com/dart-lang/sdk/issues/55348)). The community also advanced discussions on greater control over the analyzer, with an issue closed requesting a flag to run it without invoking custom plugins due to security and workflow concerns ([#62353](https://github.com/dart-lang/sdk/issues/62353)). Additionally, the project is considering expanding compiler capabilities, evidenced by the closure of an issue requesting a flag (`--allow-native-core-library-imports`) for DDC and dart2js to permit native core library imports ([#62128](https://github.com/dart-lang/sdk/issues/62128)), hinting at potential future directions for native integration. Minor internal issues related to Windows UBSan failures and test stability ([#62365](https://github.com/dart-lang/sdk/issues/62365), [#62266](https://github.com/dart-lang/sdk/issues/62266)) and dependency cleanups were also resolved.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62386](https://github.com/dart-lang/sdk/issues/62386): Error
* **Author:** [alfredmukasa](https://github.com/alfredmukasa)
* This issue is an empty template titled 'Error', reminding users to provide diagnostic information for problems related to the Dart analyzer, linter, core libraries, compilers, or VM, and directing them to specific repositories for other Dart ecosystem components or to community resources for questions.

### [Issue #62381](https://github.com/dart-lang/sdk/issues/62381): [Dot shorthands] Autocompletion if(...case...)
* **Author:** [softak098](https://github.com/softak098)
* Autocompletion for Dart "dot shorthands" (e.g., `.a3`) does not work within `if (case .^)` statements, `switch` expressions/statements, or `if (a != .^)` comparisons, despite the manual syntax being valid for the compiler.

### [Issue #62365](https://github.com/dart-lang/sdk/issues/62365): win ubsan failure on standalone/file_system_watcher_isolate_exit_leak_test
* **Author:** [aam](https://github.com/aam)
* A Windows UBSan failure occurs in `standalone/file_system_watcher_isolate_exit_leak_test` due to a runtime error where `dart::bin::FileSystemWatcher::DestroyWatch(__int64)` is called through a pointer of an incorrect function type during isolate shutdown.

### [Issue #62353](https://github.com/dart-lang/sdk/issues/62353): Provide a flag to run the analyzer without invoking custom plugins
* **Author:** [sigurdm](https://github.com/sigurdm)
* The user requests a flag, such as `--no-plugins`, to run the analyzer without invoking custom plugins due to security risks associated with untrusted code and the difficulty of manually disabling them in `analysis_options.yaml` files.

### [Issue #62294](https://github.com/dart-lang/sdk/issues/62294): Remove built_value dependency from DebugEvent/BatchedDebugEvents
* **Author:** [jyameo](https://github.com/jyameo)

### [Issue #62292](https://github.com/dart-lang/sdk/issues/62292): Remove built_value dependency from BuildResult/BuildStatus
* **Author:** [jyameo](https://github.com/jyameo)

### [Issue #62266](https://github.com/dart-lang/sdk/issues/62266): pkg/perf_witness/test/recorder_server_test flaky -> RuntimeError
* **Author:** [alexmarkov](https://github.com/alexmarkov)
* The `pkg/perf_witness/test/recorder_server_test` on `unittest-asserts-release-mac-x64` has escalated from flaky to consistently failing with `RuntimeError`, specifically due to a recorder process exiting with code -2 and test timeouts.

### [Issue #62128](https://github.com/dart-lang/sdk/issues/62128): Add --allow-native-core-library-imports to DDC and dart2js to allow for native library imports
* **Author:** [bkonyi](https://github.com/bkonyi)

### [Issue #62030](https://github.com/dart-lang/sdk/issues/62030): [analyzer_testing] Testing warnings is not valid anymore
* **Author:** [FMorschel](https://github.com/FMorschel)
* Testing warnings is no longer valid because `Registry.ruleRegistry.registerLintRule` internally casts `DiagnosticCode` to `LintCode`, preventing correct testing of warnings as outlined in referenced issues.

### [Issue #55348](https://github.com/dart-lang/sdk/issues/55348): const factory with redirecting constructor will not show up in find references
* **Author:** [hbali](https://github.com/hbali)
* Dart's "Find references" functionality does not detect invocations of `const factory` constructors that utilize redirecting constructors, hindering developer workflow, particularly for patterns common in generated code like `freezed`.


# GitHub PR Report for dart-lang/language
## From 2026-01-12

This update to the repository primarily involved a minor but precise clarification within the language specification's Augmentations proposal. Specifically, a typo was corrected where 'augmenting function' was updated to 'augmenting constructor' in a compile-time error rule, enhancing the accuracy of this core language feature's definition as detailed in [PR #4589](https://github.com/dart-lang/language/pull/4589).

## Merged Pull Requests

### [PR #4589](https://github.com/dart-lang/language/pull/4589): Fix a typo in Augmentations proposal
* **Author:** [sgrekhov](https://github.com/sgrekhov)
* **Merged At:** 2026-01-12 02:59 PM
* **Comments:** 0
* Fixes a typo in the Augmentations feature specification by correcting the term 'augmenting function' to 'augmenting constructor' within a compile-time error rule.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2026-01-12

While no new pull requests were merged, recent development efforts have significantly refined the `record_use` feature, focusing on its completeness and correctness, particularly with `dart2js`. Improvements address the proper recording of `const` instances in method calls ([#2945](https://github.com/dart-lang/native/issues/2945)) and `const map` and `list` arguments ([#2896](https://github.com/dart-lang/native/issues/2896)) within `dart2js`. Work also continued on migrating `dart2js` input fully to the `@RecordUse` annotation, phasing out older pragmas ([#2882](https://github.com/dart-lang/native/issues/2882)). Correctness enhancements include resolving backend parity issues with `loadDeferredLibrary` outside `dart2js` ([#2892](https://github.com/dart-lang/native/issues/2892)) and, importantly for developers, extending the recording mechanism to accurately capture truly dynamic method invocations, providing more comprehensive usage insights ([#2716](https://github.com/dart-lang/native/issues/2716)). Additionally, a performance enhancement was implemented for the `swift2objc` tool, addressing the slow parsing of `Const Foundation` symbols ([#2551](https://github.com/dart-lang/native/issues/2551)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #2945](https://github.com/dart-lang/native/issues/2945): [record_use] Completeness: dart2js: const instances in call with arguments recording
* **Author:** [dcharkes](https://github.com/dcharkes)
* `dart2js` fails to correctly process `const` instances passed to methods annotated with `@RecordUse()`, a feature that works as expected on the VM.

### [Issue #2896](https://github.com/dart-lang/native/issues/2896): [record_use] Completeness: dart2js: const map and list arguments
* **Author:** [dcharkes](https://github.com/dcharkes)
* The `dart2js` output for `record_use` is incomplete, specifically missing `const map` and `list` arguments, due to a serialization issue where `ResourceIdentifier` loses internal const indices; potential solutions involve either converting `package:record_use` types late or maintaining an internal global list of indices.

### [Issue #2892](https://github.com/dart-lang/native/issues/2892): [record_use] Correctness: `loadDeferredLibrary` outside dart2js
* **Author:** [dcharkes](https://github.com/dcharkes)
* The internal `record_use` annotation on `dart2js`'s `loadDeferredLibrary` method creates backend parity issues and inconsistent JSON output, with proposed solutions including removing the annotation or using a custom, non-internal JSON format.

### [Issue #2882](https://github.com/dart-lang/native/issues/2882): [record_use] Completeness: dart2js: Change the input to use @RecordUse
* **Author:** [dcharkes](https://github.com/dcharkes)
* The issue notes that `@pragma('dart2js:resource-identifier')` is still present, meaning the migration to `@RecordUse` for dart2js input is incomplete.

### [Issue #2716](https://github.com/dart-lang/native/issues/2716): [record_use] Correctness: Record dynamic invocations
* **Author:** [dcharkes](https://github.com/dcharkes)
* The current recording mechanism for `@RecordUse` annotations only captures static calls and tear-offs, missing truly dynamic method invocations; this issue proposes adding new usage records for dynamic calls to provide developers with insight into whether an annotated method might be invoked dynamically.

### [Issue #2551](https://github.com/dart-lang/native/issues/2551): [swift2objc] Const Foundation
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* This issue addresses slow `swift2objc` runs caused by repeated `Foundation` symbolgraph parsing, proposing to speed it up by pre-parsing and storing the AST, checking in the symbolgraph JSON, or codegening constant AST objects.


# GitHub PR Report for flutter/ai
## From 2026-01-12

No changes were made to the repository during this period, as no pull requests were merged and no issues were closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2026-01-12

During this period, the repository saw a general update to its codelabs, ensuring all tutorial content is current and accurate. This broad refresh was introduced by [PR #2367](https://github.com/flutter/codelabs/pull/2367). No issues were closed within this timeframe.

## Merged Pull Requests

### [PR #2367](https://github.com/flutter/codelabs/pull/2367): Update codelabs
* **Author:** [domesticmouse](https://github.com/domesticmouse)
* **Merged At:** 2026-01-11 07:21 PM
* **Comments:** 1
* This PR updates all the codelabs.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2026-01-12

This update to the repository introduces several key improvements focused on API stability, developer tooling, and documentation usability. A significant crash in the `RawAutocomplete` widget, which occurred when popping a dialog from its `onSelected` method, has been fixed, directly addressing a highly reacted issue ([Issue #170403](https://github.com/flutter/flutter/issues/170403)) through [PR #180824](https://github.com/flutter/flutter/pull/180824). Similarly, a regression causing the `flutter run -d all` command to crash when deploying to multiple devices has been resolved in `flutter_tools` ([PR #180845](https://github.com/flutter/flutter/pull/180845)), closing [Issue #179857](https://github.com/flutter/flutter/issues/179857). On the public API front, the `SemanticsService` has been updated to use `sendAnnouncement`, now requiring an explicit `View` object for accessibility announcements ([PR #180776](https://github.com/flutter/flutter/pull/180776)). For Android developers, the `PlatformPlugin` was updated to prevent calling deprecated system UI styling methods for the status and navigation bars on Android 15+ ([PR #180061](https://github.com/flutter/flutter/pull/180061)), which was tracked in [Issue #165582](https://github.com/flutter/flutter/issues/165582). Furthermore, the `ffigen` package has been bumped, bringing updates to FFI bindings ([PR #180507](https://github.com/flutter/flutter/pull/180507)), and the critical "Copy to clipboard" functionality within Dartpad embeds on the Flutter documentation website has been restored by adding necessary `clipboard-write` permissions ([PR #178057](https://github.com/flutter/flutter/pull/178057)), addressing [Issue #178056](https://github.com/flutter/flutter/issues/178056). Additional fixes ensure robust behavior for widgets like `FlutterLogo` ([PR #180617](https://github.com/flutter/flutter/pull/180617)) and `LongPressDraggable` ([PR #180408](https://github.com/flutter/flutter/pull/180408)) when rendered in zero-area environments.

## Merged Pull Requests

### [PR #180858](https://github.com/flutter/flutter/pull/180858): add engine.version and release-candidate-branch.version
* **Author:** [walley892](https://github.com/walley892)
* **Merged At:** 2026-01-12 10:58 AM
* **Comments:** 2
* Adds new files `engine.version` and `release-candidate-branch.version` to track the current engine Git hash and the name of the release candidate branch, respectively.

### [PR #180845](https://github.com/flutter/flutter/pull/180845): [ Tool ] Fix `flutter run -d all` crash
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2026-01-12 10:27 AM
* **Comments:** 1
* Fixes a regression in `flutter run -d all` that prevented deploying applications to multiple devices by updating `flutter_tools` to correctly handle a set of target platforms rather than assuming a single platform when building assets.

### [PR #180824](https://github.com/flutter/flutter/pull/180824): Fix RawAutocomplete unmounted crash during async optionsBuilder
* **Author:** [augustocesarperin](https://github.com/augustocesarperin)
* **Merged At:** 2026-01-12 12:04 PM
* **Comments:** 3
* Fixes a crash in `RawAutocomplete` by adding a `mounted` check after its asynchronous `optionsBuilder` completes, preventing attempts to access state on an unmounted widget.

### [PR #180788](https://github.com/flutter/flutter/pull/180788): Reland `Enabled some disabled impeller fragment shader dart tests`
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2026-01-12 10:27 AM
* **Comments:** 1
* This PR re-lands the enablement of several previously disabled Impeller fragment shader tests, addressing reliability by waiting for async tests and introducing helper functions for conditional test execution for Impeller or Skia, while two tests that still fail on Impeller remain disabled.

### [PR #180784](https://github.com/flutter/flutter/pull/180784): Turn on fragment shader equality test
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2026-01-12 02:12 PM
* **Comments:** 3
* Re-enables the `ImageFilter.shader` equality test by updating the C++ `ImageFilter::equals` method to perform a deep comparison of underlying `DlImageFilter` objects, ensuring that shader uniform values are considered when determining equality.

### [PR #180776](https://github.com/flutter/flutter/pull/180776): Migrate doc and code to use sendAnnounce
* **Author:** [chunhtai](https://github.com/chunhtai)
* **Merged At:** 2026-01-12 10:05 AM
* **Comments:** 0
* Migrates documentation and code to use `SemanticsService.sendAnnouncement` instead of `SemanticsService.announce`, requiring a `View` object to explicitly target accessibility announcements to a specific view. This change updates the `Autocomplete` widget to use the new API and enhances the testing framework to verify announcements in multi-view contexts.

### [PR #180733](https://github.com/flutter/flutter/pull/180733): Improve code quality in `BinaryMessenger.java`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-12 10:36 AM
* **Comments:** 0
* Removes redundant `public` and `static` modifiers from the `TaskQueue` interface and `TaskQueueOptions` class within `BinaryMessenger.java`, improving code quality by adhering to Java language specifications where these modifiers are implicit for nested types.

### [PR #180731](https://github.com/flutter/flutter/pull/180731): Fix `documentation member not recognized` because of missing import in `FlutterEngine.java`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-12 11:39 AM
* **Comments:** 2
* This PR fixes a compile-time error in `FlutterEngine.java` by adding a missing `import android.view.Surface;`, resolving a 'documentation member not recognized' issue, and also corrects a minor typo.

### [PR #180712](https://github.com/flutter/flutter/pull/180712): Roll libpng to version 1.6.53
* **Author:** [jason-simmons](https://github.com/jason-simmons)
* **Merged At:** 2026-01-12 03:27 PM
* **Comments:** 1
* Rolls the `libpng` dependency to version 1.6.53, which updates the library's version in DEPS, adjusts several image test fixtures, and removes a block of image decoding verification code from `image_decoder_unittests.cc`.

### [PR #180617](https://github.com/flutter/flutter/pull/180617): Make sure that a FlutterLogo doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2026-01-11 09:01 PM
* **Comments:** 0
* Adds a new test case to verify that the `FlutterLogo` widget does not crash when rendered within a zero-area environment, addressing issue #6537.

### [PR #180507](https://github.com/flutter/flutter/pull/180507): Bump ffigen
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2026-01-12 02:13 AM
* **Comments:** 4
* This PR bumps the `ffigen` package from version 18.1.0 to 20.1.1, moving it from a direct dependency to a dev dependency, and updates the generated FFI bindings and configuration in an integration test to reflect the new `ffigen` output.

### [PR #180408](https://github.com/flutter/flutter/pull/180408): Make sure that a LongPressDraggable doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2026-01-11 10:11 PM
* **Comments:** 0
* Adds a test case for the `LongPressDraggable` widget to ensure it does not crash when rendered in a zero-area (0x0) environment, addressing issue #6537.

### [PR #180273](https://github.com/flutter/flutter/pull/180273): Add API sample and docs for Expansible widget
* **Author:** [gowsikraja](https://github.com/gowsikraja)
* **Merged At:** 2026-01-12 11:15 AM
* **Comments:** 0
* Adds an API example for the `Expansible` widget, demonstrating programmatic control via `ExpansibleController`, and updates the documentation to link to this new example, which also includes a new widget test.

### [PR #180061](https://github.com/flutter/flutter/pull/180061):  Update `PlatformPlugin` to not call `setStatusBarColor`, `setNavigationBarColor`, `setNavigationBarDividerColor` when disabled
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-12 01:24 PM
* **Comments:** 3
* This PR updates the `PlatformPlugin` to prevent calling `setStatusBarColor`, `setNavigationBarColor`, and `setNavigationBarDividerColor` on Android 15 (API 35) and newer versions. This ensures that deprecated and ineffective system UI styling methods are not invoked, avoiding unnecessary operations.

### 🔥 [PR #178057](https://github.com/flutter/flutter/pull/178057): Fix: Allow dartpad embed clipboard-write permission for "Copy to clipboard" functionality
* **Author:** [dixita0607](https://github.com/dixita0607)
* **Merged At:** 2026-01-12 08:17 AM
* **Comments:** 6
* Adds the `allow="clipboard-write"` attribute to Dartpad `iframe` elements, fixing a permission error that prevented the "Copy to clipboard" functionality from working within Dartpad embeds on the Flutter documentation website.


## Closed Issues

### [Issue #180863](https://github.com/flutter/flutter/issues/180863): win-5 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The issue reports that the "win-5" device lost its external connection from the phone device.

### [Issue #180852](https://github.com/flutter/flutter/issues/180852): mac-23 marked dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The `mac-23` machine has been marked as dead, indicating it is no longer operational.

### [Issue #180851](https://github.com/flutter/flutter/issues/180851): List of Mac bots marked dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* A list of Mac bots have been marked as dead, indicating a potential issue with the build infrastructure as shown in an attached image.

### [Issue #180850](https://github.com/flutter/flutter/issues/180850): win-5 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The win-5 system lost its external connection to a phone device.

### [Issue #180798](https://github.com/flutter/flutter/issues/180798): flutter run fails with "Fragment shader active uniforms exceed GL_MAX_FRAGMENT_UNIFORM_VECTORS" on Android Emulator
* **Author:** [sam55-pixel](https://github.com/sam55-pixel)
* A Flutter app crashes on an Android emulator with a "Fragment shader active uniforms exceed GL_MAX_FRAGMENT_UNIFORM_VECTORS" error when using the `hive` and `hive_flutter` packages, specifically related to Impeller's GLES backend.

### [Issue #180762](https://github.com/flutter/flutter/issues/180762): reenable `ImageFilter.shader equality checks consider uniform values` test
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* The `ImageFilter.shader equality checks consider uniform values` test, previously disabled, has atrophied and now fails when re-enabled, requiring investigation to pass and re-enable it.

### [Issue #180634](https://github.com/flutter/flutter/issues/180634): Fix google_fonts 7.0.0 introduces variable fonts variants
* **Author:** [guidezpl](https://github.com/guidezpl)

### [Issue #180320](https://github.com/flutter/flutter/issues/180320): Add SemanticsRole.tooltip to RawTooltip
* **Author:** [victorsanni](https://github.com/victorsanni)
* This issue proposes adding `SemanticsRole.tooltip` to the newly introduced `RawTooltip` widget, as it currently lacks a proper semantic role.

### [Issue #180169](https://github.com/flutter/flutter/issues/180169): external device via data cable isnt connecting
* **Author:** [sabirismail2013-glitch](https://github.com/sabirismail2013-glitch)
* An external device connected via a data cable is not being recognized by VS Code or Android Studio, and `flutter doctor` is crashing with a timeout error indicating the connected device exceeded the maximum allowed duration.

### [Issue #180115](https://github.com/flutter/flutter/issues/180115): Issue: iOS App Launches to Blank Screen Without Crash
* **Author:** [SangeetaSinghDev](https://github.com/SangeetaSinghDev)
* A Flutter application successfully launches on iOS devices and simulators but displays a persistent blank black screen, failing to render the first UI frame without crashing or reporting any errors, while the Android build functions correctly.

### [Issue #179857](https://github.com/flutter/flutter/issues/179857): [tool_crash] Exception: Unsupported platform name "multiple"
* **Author:** [MickaelHrndz](https://github.com/MickaelHrndz)
* **Reactions:** **1** -- 👍 1
* Running `flutter run -d all` crashes with an "Unsupported platform name 'multiple'" exception when deploying to both Android and Windows, even though the app successfully launches on both platforms.

### [Issue #178770](https://github.com/flutter/flutter/issues/178770): Triage process self-test
* **Author:** [flutter-triage-bot[bot]](https://github.com/apps/flutter-triage-bot)
* This issue is a self-test for the triage process and should be handled as a normal, low-priority issue.

### [Issue #178698](https://github.com/flutter/flutter/issues/178698): Add example for Expansible widget
* **Author:** [victorsanni](https://github.com/victorsanni)
* Add examples demonstrating how to use the Expansible widget.

### [Issue #178056](https://github.com/flutter/flutter/issues/178056): "Copy to clipboard" not working in Dartpad Embed
* **Author:** [dixita0607](https://github.com/dixita0607)
* The "Copy to clipboard" button in Dartpad Embeds on Flutter documentation pages is not working due to a missing `clipboard-write` permission, causing console errors when clicked; this can be fixed by adding `allow="clipboard-write"` to the iframe embed.

### [Issue #176943](https://github.com/flutter/flutter/issues/176943): CP ci.yaml and configs to run on either macOS 15.5 or 15.7 for beta and stable
* **Author:** [vashworth](https://github.com/vashworth)
* This issue proposes copying `ci.yaml` and related configurations to the beta and stable branches, enabling CI tests to run on either macOS 15.5 or 15.7.

### [Issue #170403](https://github.com/flutter/flutter/issues/170403): Unhandled Exception when pop Dialog into Autocomplete onSelected method
* **Author:** [rogeriomq](https://github.com/rogeriomq)
* **Reactions:** **4** -- 👍 4
* An Unhandled Exception occurs when `Navigator.of(context).pop()` is called from the `onSelected` method of an `Autocomplete` widget if the `Autocomplete` is a child of a `Dialog`, resulting in an assertion failure related to `_zOrderIndex` in `overlay.dart`.

### [Issue #165582](https://github.com/flutter/flutter/issues/165582): [Android] Update `PlatformPlugin` to not call `setStatusBarColor`, `setNavigationBarColor`, `setNavigationBarDividerColor` when disabled
* **Author:** [camsim99](https://github.com/camsim99)
* This issue tracks the need to update the `PlatformPlugin` to stop calling the deprecated and disabled Android 15+ APIs for `setStatusBarColor`, `setNavigationBarColor`, and `setNavigationBarDividerColor`, and to update documentation accordingly.

### [Issue #147545](https://github.com/flutter/flutter/issues/147545): [camera_android_camerax] Modify `availableCameras` to set camera name to `Camera2CameraInfo.getCameraId`
* **Author:** [camsim99](https://github.com/camsim99)
* **Reactions:** **3** -- 👍 3
* The `camera_android_camerax` plugin currently assigns random names to available cameras, and this issue proposes modifying `availableCameras` to use `Camera2CameraInfo.getCameraId()` for consistency and feature parity with `camera_android`.


# GitHub PR Report for flutter/genui
## From 2026-01-12

This period saw a focused effort on improving the project's release process documentation. Specifically, a new guide was added detailing the necessary steps and permissions required to publish packages to pub.dev under the `labs.flutter.dev` publisher, as documented in [#657](https://github.com/flutter/genui/pull/657). No issues were closed during this time.

## Merged Pull Requests

### [PR #657](https://github.com/flutter/genui/pull/657): Document how to get permissions to publish.
* **Author:** [polina-c](https://github.com/polina-c)
* **Merged At:** 2026-01-12 01:25 PM
* **Comments:** 0
* Adds documentation to the release README explaining how to obtain necessary permissions to publish packages to pub.dev for the `labs.flutter.dev` publisher.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2026-01-12

The repository has seen targeted enhancements primarily in its `google_fonts` and `camera_android_camerax` packages. A notable update to `google_fonts` ([PR #10739](https://github.com/flutter/packages/pull/10739)) refined its font generator to prioritize static font entries over variable fonts of the same weight and style, effectively resolving issues with duplicate 400-weight fonts. This significant change, which also involved renaming generated files from `.g.dart` to `.dart` and adding public API documentation, sets the stage for more explicit variable font support and improves overall font selection consistency. Concurrently, the `camera_android_camerax` plugin received an update ([PR #10775](https://github.com/flutter/packages/pull/10775)) to ensure that the `availableCameras` function now accurately retrieves camera names directly from `Camera2CameraInfo.getCameraId()`, moving away from generic camera identifiers.

## Merged Pull Requests

### [PR #10775](https://github.com/flutter/packages/pull/10775): [camera_android_camerax] get camera name from Camera2CameraInfo.getCameraId in availableCameras
* **Author:** [dasyad00](https://github.com/dasyad00)
* **Merged At:** 2026-01-12 03:29 PM
* **Comments:** 1
* The `camera_android_camerax` plugin's `availableCameras` function now retrieves camera names directly from `Camera2CameraInfo.getCameraId()`, resolving an issue where camera names were previously generic and not based on the actual camera IDs.

### 🔥 [PR #10739](https://github.com/flutter/packages/pull/10739): [google_fonts] Update the font generator to exclude variable font entries when a static entry of the same weight and style exists
* **Author:** [guidezpl](https://github.com/guidezpl)
* **Merged At:** 2026-01-12 03:39 PM
* **Comments:** 10
* Updates the `google_fonts` generator to exclude variable font entries when a static font of the same weight and style exists, fixing an issue with duplicate 400-weight fonts. This change also renames generated files from `.g.dart` to `.dart` and adds public API documentation, improving font selection consistency and preparing for future explicit variable font support.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2026-01-12

There were no pull requests merged and no issues closed during this period, indicating no changes were made to the repository's codebase or outstanding items addressed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2026-01-12

The recent updates to the repository primarily focus on enhancing the clarity and accuracy of documentation, addressing critical installation issues, and guiding developers through API-related changes. A significant update includes a migration guide for developers whose apps use `CupertinoPageTransitionsBuilder`, clarifying its relocation from the Material to the Cupertino library and the necessary import changes ([PR #12914](https://github.com/flutter/website/pull/12914)). The installation experience for new users has been improved by correcting Linux setup instructions to use `~/.bashrc` for `PATH` configuration ([PR #12906](https://github.com/flutter/website/pull/12906), resolving [Issue #12705](https://github.com/flutter/website/issues/12705)), and by adding a note to the VS Code setup guide to clarify that checks for Android Studio can be safely ignored if Android development is not targeted ([PR #12907](https://github.com/flutter/website/pull/12907), addressing [Issue #12820](https://github.com/flutter/website/issues/12820)). Furthermore, the glossary has been expanded with a definition for "Adaptive" design, distinguishing it from "Responsive" design ([PR #12909](https://github.com/flutter/website/pull/12909), fulfilling [Issue #12646](https://github.com/flutter/website/issues/12646)), and a previously identified mistake in the `AppDelegate` migration code preview on the `uiscenedelegate` breaking changes documentation page has been acknowledged for correction ([Issue #12829](https://github.com/flutter/website/issues/12829)). Other changes include routine pub dependency updates across various projects ([PR #12918](https://github.com/flutter/website/pull/12918)) and minor refinements to existing glossary entries.

## Merged Pull Requests

### [PR #12919](https://github.com/flutter/website/pull/12919): Document Claude and Codex setup on MCP server page
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2026-01-12 03:35 PM
* **Comments:** 2
* Adds documentation sections to the MCP server page, providing instructions and CLI commands for configuring Claude Code and Codex CLI to use the Dart and Flutter MCP server.

### [PR #12918](https://github.com/flutter/website/pull/12918): Update a variety of pub dependencies
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2026-01-12 03:36 PM
* **Comments:** 2
* Updates multiple pub dependencies to their latest versions across various example projects and the site, including major version updates for several packages, and also updates the `currentFlutterVersion` in the site configuration.

### [PR #12917](https://github.com/flutter/website/pull/12917): Fix typo and other inconsistencies in glossary entries
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2026-01-12 03:37 PM
* **Comments:** 2
* This PR fixes a typo in the definition of "prop drilling", corrects the syntax for an internal link to "hot restart", and adds consistent internal links to "framework" and "Impeller" within glossary entries.

### [PR #12914](https://github.com/flutter/website/pull/12914): docs: Add page transition builder reorganization guide
* **Author:** [rkishan516](https://github.com/rkishan516)
* **Merged At:** 2026-01-12 11:10 AM
* **Comments:** 2
* Adds a new breaking change document with a migration guide for developers whose apps use `CupertinoPageTransitionsBuilder`, explaining that it has moved from the Material library to the Cupertino library and may require adding a `package:flutter/cupertino.dart` import.

### [PR #12909](https://github.com/flutter/website/pull/12909): Docs: Add Adaptive definition to glossary
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-12 11:05 AM
* **Comments:** 3
* Adds a definition for 'Adaptive' design to the glossary, clarifying its distinction from 'Responsive' design and providing related links.

### [PR #12907](https://github.com/flutter/website/pull/12907): Docs: Add note about Android Studio check in VS Code setup
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-12 03:37 PM
* **Comments:** 2
* Adds a note to the Quick Start guide warning users that the VS Code setup process might check for Android Studio, which can be safely ignored if not targeting Android platforms.

### [PR #12906](https://github.com/flutter/website/pull/12906): Fix(docs): Use .bashrc instead of .bash_profile for Linux install
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-12 03:38 PM
* **Comments:** 2
* Fixes the Linux installation documentation to specify adding the Flutter SDK's `bin` directory to the `PATH` using `~/.bashrc` instead of `~/.bash_profile`, which is the correct file for interactive shell configurations.


## Closed Issues

### [Issue #12915](https://github.com/flutter/website/issues/12915): ~
* **Author:** [esmanuraka218-source](https://github.com/esmanuraka218-source)
* This issue provides Flutter UI code for a reading screen, Firestore service code for managing book content, and an age verification utility, rather than reporting a problem or suggesting an improvement for the linked Flutter documentation page.

### [Issue #12829](https://github.com/flutter/website/issues/12829): There is a mistake in the code preview of Migrate AppDelegate
* **Author:** [burekas7](https://github.com/burekas7)
* The `didInitializeImplicitFlutterEngine` method is incorrectly placed outside the `AppDelegate` class block in a code preview on the `uiscenedelegate` breaking changes documentation page, and should instead be moved inside.

### [Issue #12820](https://github.com/flutter/website/issues/12820): Flutter install assumes Android Studio is installed, fails when it can't find it.
* **Author:** [MrTheSaw](https://github.com/MrTheSaw)
* The Flutter quick start installation on macOS fails when it cannot find Android Studio, even if it's not installed, and the user suggests it should instead issue a warning about Android targeting limitations at the end of the installation and explain how to re-check later.

### [Issue #12705](https://github.com/flutter/website/issues/12705): Change export ~/.bash_profile to export ~/.bashrc,
* **Author:** [bolon667](https://github.com/bolon667)
* The issue reports that the Flutter installation guide's command to export PATH into `~/.bash_profile` is ineffective on Linux Mint, and suggests changing it to modify `~/.bashrc` instead.

### [Issue #12646](https://github.com/flutter/website/issues/12646): Add glossary entry for "Adaptive"
* **Author:** [parlough](https://github.com/parlough)
* This issue requests adding a glossary entry for the term "Adaptive" in the context of Flutter to the project's `glossary.yml` file.



## Top Hacker News Stories

### 106 🔥 [Local Journalism Is How Democracy Shows Up Close to Home](https://buckscountybeacon.com/2026/01/opinion-local-journalism-is-how-democracy-shows-up-close-to-home/)
* **Author:** [mooreds](https://news.ycombinator.com/user?id=mooreds) | **Comments:** [42](https://news.ycombinator.com/item?id=46600850)

### 137 🔥 [Apple Creator Studio](https://www.apple.com/newsroom/2026/01/introducing-apple-creator-studio-an-inspiring-collection-of-creative-apps/)
* **Author:** [lemonlime227](https://news.ycombinator.com/user?id=lemonlime227) | **Comments:** [129](https://news.ycombinator.com/item?id=46601157)

### 65  [Why Stoicism is one of the best mind hacks ever devised](https://aeon.co/essays/why-stoicism-is-one-of-the-best-mind-hacks-ever-devised)
* **Author:** [suioir](https://news.ycombinator.com/user?id=suioir) | **Comments:** [47](https://news.ycombinator.com/item?id=46601121)

### 1104 🔥🔥🔥 [Cowork: Claude Code for the rest of your work](https://claude.com/blog/cowork-research-preview)
* **Author:** [adocomplete](https://news.ycombinator.com/user?id=adocomplete) | **Comments:** [484](https://news.ycombinator.com/item?id=46593022)

### 26  [Show HN: SnackBase – Open-source, GxP-compliant back end for Python teams](https://snackbase.dev)
* **Author:** [lalitgehani](https://news.ycombinator.com/user?id=lalitgehani) | **Comments:** [0](https://news.ycombinator.com/item?id=46600092)
* SnackBase is a self-hosted Python backend (FastAPI + SQLAlchemy) designed for the Healthcare and Life Sciences domain, aiming to accelerate development by providing GxP-compliant infrastructure such as immutable audit logs and native Python hooks. It solves the problem of spending months building compliant infrastructure and the difficulty of validating existing BaaS tools for FDA regulations within a Python ecosystem.

### 177 🔥 [Text-based web browsers](https://cssence.com/2026/text-based-web-browsers/)
* **Author:** [pabs3](https://news.ycombinator.com/user?id=pabs3) | **Comments:** [67](https://news.ycombinator.com/item?id=46597518)

### 672 🔥🔥🔥 [TimeCapsuleLLM: LLM trained only on data from 1800-1875](https://github.com/haykgrigo3/TimeCapsuleLLM)
* **Author:** [admp](https://news.ycombinator.com/user?id=admp) | **Comments:** [275](https://news.ycombinator.com/item?id=46590280)

### 78  [Owners, not renters: Mozilla's open source AI strategy](https://blog.mozilla.org/en/mozilla/mozilla-open-source-ai-strategy/)
* **Author:** [nalinidash](https://news.ycombinator.com/user?id=nalinidash) | **Comments:** [50](https://news.ycombinator.com/item?id=46599897)

### 44  [Designing an IPv6-native P2P transport – lessons from building I6P](https://theushen.medium.com/designing-an-ipv6-native-p2p-transport-lessons-from-building-i6p-b8ca216d1d73)
* **Author:** [TheusHen](https://news.ycombinator.com/user?id=TheusHen) | **Comments:** [36](https://news.ycombinator.com/item?id=46554775)

### 113 🔥 [FOSS in times of war, scarcity and (adversarial) AI [video]](https://fosdem.org/2026/schedule/event/FE7ULY-foss-in-times-of-war-scarcity-and-ai/)
* **Author:** [maelito](https://news.ycombinator.com/user?id=maelito) | **Comments:** [68](https://news.ycombinator.com/item?id=46598991)

### 467 🔥🔥 [Postal Arbitrage](https://walzr.com/postal-arbitrage)
* **Author:** [The28thDuck](https://news.ycombinator.com/user?id=The28thDuck) | **Comments:** [240](https://news.ycombinator.com/item?id=46591708)

### 81  [Git Rebase for the Terrified](https://www.brethorsting.com/blog/2026/01/git-rebase-for-the-terrified/)
* **Author:** [aaronbrethorst](https://news.ycombinator.com/user?id=aaronbrethorst) | **Comments:** [89](https://news.ycombinator.com/item?id=46530920)

### 692 🔥🔥🔥 [Floppy disks turn out to be the greatest TV remote for kids](https://blog.smartere.dk/2026/01/floppy-disks-the-best-tv-remote-for-kids/)
* **Author:** [mchro](https://news.ycombinator.com/user?id=mchro) | **Comments:** [394](https://news.ycombinator.com/item?id=46587934)

### 129 🔥 [The UK is shaping a future of Precrime and dissent management](https://freedomnews.org.uk/2025/04/11/how-the-uk-is-shaping-a-future-of-precrime-and-dissent-management/)
* **Author:** [robtherobber](https://news.ycombinator.com/user?id=robtherobber) | **Comments:** [105](https://news.ycombinator.com/item?id=46600194)

### 284 🔥🔥 [The chess bot on Delta Air Lines will destroy you (2024) [video]](https://www.youtube.com/watch?v=c0mLhHDcY3I)
* **Author:** [cjaackie](https://news.ycombinator.com/user?id=cjaackie) | **Comments:** [247](https://news.ycombinator.com/item?id=46593395)

### 379 🔥🔥 [Unauthenticated remote code execution in OpenCode](https://cy.md/opencode-rce/)
* **Author:** [CyberShadow](https://news.ycombinator.com/user?id=CyberShadow) | **Comments:** [126](https://news.ycombinator.com/item?id=46581095)
* Previous versions of OpenCode contained a severe vulnerability that allowed any visited website to execute arbitrary commands on the local machine. Users are advised to update to v1.1.10 or newer to address this critical security flaw.

### 24  [NASA topples towers used to test Saturn rockets, space shuttle](https://arstechnica.com/space/2026/01/nasa-topples-towers-used-to-test-saturn-rockets-space-shuttle/)
* **Author:** [bookofjoe](https://news.ycombinator.com/user?id=bookofjoe) | **Comments:** [2](https://news.ycombinator.com/item?id=46600484)

### 423 🔥🔥 [Date is out, Temporal is in](https://piccalil.li/blog/date-is-out-and-temporal-is-in/)
* **Author:** [alexanderameye](https://news.ycombinator.com/user?id=alexanderameye) | **Comments:** [176](https://news.ycombinator.com/item?id=46589658)

### 140 🔥 [Some ecologists fear their field is losing touch with nature](https://www.nature.com/articles/d41586-025-04150-w)
* **Author:** [Growtika](https://news.ycombinator.com/user?id=Growtika) | **Comments:** [67](https://news.ycombinator.com/item?id=46540126)

### 71  [Robotopia: A 3D, first-person, talking simulator](https://elbowgreasegames.substack.com/p/introducing-robotopia-a-3d-first)
* **Author:** [psawaya](https://news.ycombinator.com/user?id=psawaya) | **Comments:** [32](https://news.ycombinator.com/item?id=46545636)

### 114 🔥 [The Cray-1 Computer System (1977) [pdf]](https://s3data.computerhistory.org/brochures/cray.cray1.1977.102638650.pdf)
* **Author:** [LordGrey](https://news.ycombinator.com/user?id=LordGrey) | **Comments:** [65](https://news.ycombinator.com/item?id=46557733)

### 194 🔥 [Fabrice Bellard's TS Zip (2024)](https://www.bellard.org/ts_zip/)
* **Author:** [everlier](https://news.ycombinator.com/user?id=everlier) | **Comments:** [80](https://news.ycombinator.com/item?id=46593802)

### 362 🔥🔥 [LLVM: The bad parts](https://www.npopov.com/2026/01/11/LLVM-The-bad-parts.html)
* **Author:** [vitaut](https://news.ycombinator.com/user?id=vitaut) | **Comments:** [74](https://news.ycombinator.com/item?id=46588837)

### 944 🔥🔥🔥 [Apple picks Gemini to power Siri](https://www.cnbc.com/2026/01/12/apple-google-ai-siri-gemini.html)
* **Author:** [stygiansonic](https://news.ycombinator.com/user?id=stygiansonic) | **Comments:** [578](https://news.ycombinator.com/item?id=46589675)

### 67  [Implementing a web server in a single printf() call (2014)](https://tinyhack.com/2014/03/12/implementing-a-web-server-in-a-single-printf-call/)
* **Author:** [nateb2022](https://news.ycombinator.com/user?id=nateb2022) | **Comments:** [8](https://news.ycombinator.com/item?id=46549714)



