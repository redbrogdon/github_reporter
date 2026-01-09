# Overall Summary
**🔥🔥🔥 [PR #177888](https://github.com/flutter/flutter/pull/177888) (flutter/flutter): flutter_tools: Auto-generate ExportOptions.plist for manual iOS code signing**
  * **Comments:** 14
  * This PR enhances `flutter build ipa` to automatically generate a complete `ExportOptions.plist` for manual iOS code signing configurations, resolving export failures caused by incomplete plist files and eliminating the need for users to manage them manually.

**☂️ [Issue #62012](https://github.com/dart-lang/sdk/issues/62012) (dart-lang/sdk): RegExp is deprecated in dart**
  * **Reactions:** **5** -- 👍 5
  * This issue reports `RegExp` deprecation warnings after upgrading Flutter to 3.38.1 and asks for guidance on how to migrate from `RegExp`, especially since `Pattern` is presented as an interface.

**🔥 [PR #12899](https://github.com/flutter/website/pull/12899) (flutter/website): docs: note scrollbar differences between Material and Cupertino**
  * **Comments:** 7
  * Adds a note to the platform adaptations documentation clarifying the visual differences in scrollbar behavior between Material and Cupertino platforms. This explains that Material scrollbars are typically visible, while Cupertino scrollbars are minimal and appear only briefly during scrolling, reflecting each platform’s conventions and maintaining a native look and feel.

**[PR #179147](https://github.com/flutter/flutter/pull/179147) (flutter/flutter): Implementation of tooltip windows for win32**
  * **Comments:** 5
  * This PR implements tooltip windows for the Win32 platform, featuring non-activating and size-to-content behavior with configurable positioning.

**[PR #178102](https://github.com/flutter/flutter/pull/178102) (flutter/flutter): Add new motion accessibility features to iOS.**
  * **Comments:** 5
  * This PR introduces three new iOS motion accessibility features to Flutter's `AccessibilityFeatures` API, including `autoPlayAnimatedImages`, `autoPlayVideos`, and `deterministicCursor`.

**[PR #2914](https://github.com/dart-lang/native/pull/2914) (dart-lang/native): [swiftgen] Fix incorrect ffigen dep version**
  * **Comments:** 4
  * Fixes an incorrect `ffigen` dependency version in the `swiftgen` package by updating `ffigen` to `^20.0.0` and `objective_c` to `^9.2.0`, which resolves issue #2873.

**[Issue #289](https://github.com/dart-lang/native/issues/289) (dart-lang/native): How will YAML change as we add more languages?**
  * **Reactions:** **1** -- 👍 1
  * This issue discusses how to adapt the YAML configuration to support new languages like ObjC, Java, Swift, and Kotlin, proposing solutions such as adding language-specific top-level keys or restructuring the config to group settings by language.

**[Issue #55486](https://github.com/dart-lang/sdk/issues/55486) (dart-lang/sdk): `TargetKind.parameter` doesn't consider extension type "parameters"**
  * The `TargetKind.parameter` attribute does not correctly identify parameters within an implicit extension type constructor, while it functions as expected with an explicit constructor; it should be updated to recognize these implicit parameters.

**[Issue #47952](https://github.com/dart-lang/sdk/issues/47952) (dart-lang/sdk): Support annotating a class with `@visibleForTesting`, which should report on instance creation as well.**
  * The user requests support for annotating classes with `@visibleForTesting` (or `@protected`) to restrict their usage, specifically for internal classes like `StatefulWidget` states, by generating analyzer warnings when instances are created or used outside their intended library or tests.

**[PR #180610](https://github.com/flutter/flutter/pull/180610) (flutter/flutter): Revert "Reverts "[reland] Unify canvas creation and Surface code in S…kwasm and CanvasKit (#179473)" (#180152)"**
  * **Comments:** 3
  * This PR re-applies a refactoring of the web engine's rendering layer, unifying Surface and Rasterizer implementations into a generic compositing directory with a new CanvasProvider abstraction, which enables the Skwasm backend to correctly handle WebGL context loss and recovery and improves overall modularity and maintainability.


# GitHub PR Report for dart-lang/ai
## From 2026-01-08

During this period, there were no pull requests merged and no issues closed, indicating that the repository's codebase and issue backlog remained unchanged.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2026-01-08

This period saw a concerted effort to enhance developer experience through improvements to linting rules and addressing significant aspects of the public API surface and language features. A notable change involves the deprecation of `RegExp`, which has generated considerable user discussion and a need for clear migration guidance ([#62012](https://github.com/dart-lang/sdk/issues/62012)). Multiple issues revolved around the `prefer_const_constructors` lint rule, with reports of false positives for factory constructors dealing with generic types ([#58912](https://github.com/dart-lang/sdk/issues/58912)) and instances where `for` elements are used in UI-as-code ([#57988](https://github.com/dart-lang/sdk/issues/57988)), alongside a request for more configurable exceptions to this rule ([#57947](https://github.com/dart-lang/sdk/issues/57947)). Further refinements include ensuring `TargetKind.parameter` correctly identifies parameters within implicit extension type constructors ([#55486](https://github.com/dart-lang/sdk/issues/55486)), and a request for supporting `@visibleForTesting` annotations on classes to improve code visibility control ([#47952](https://github.com/dart-lang/sdk/issues/47952)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62333](https://github.com/dart-lang/sdk/issues/62333): vm/dart/heap_snapshot_referrers_test flaky -> Timeout on vm-msan-linux-release-x64
* **Author:** [aam](https://github.com/aam)
* The `vm/dart/heap_snapshot_referrers_test` is flaky, experiencing timeouts on the `vm-msan-linux-release-x64` builder, where diagnostic stacks indicate multiple threads are stuck in wait states.

### [Issue #62301](https://github.com/dart-lang/sdk/issues/62301): Remove built_value dependency from RunRequest
* **Author:** [jyameo](https://github.com/jyameo)

### [Issue #62295](https://github.com/dart-lang/sdk/issues/62295): Remove built_value dependency from DebugInfo
* **Author:** [jyameo](https://github.com/jyameo)

### [Issue #62012](https://github.com/dart-lang/sdk/issues/62012): RegExp is deprecated in dart
* **Author:** [bambinoua](https://github.com/bambinoua)
* **Reactions:** **5** -- 👍 5
* This issue reports `RegExp` deprecation warnings after upgrading Flutter to 3.38.1 and asks for guidance on how to migrate from `RegExp`, especially since `Pattern` is presented as an interface.

### [Issue #55486](https://github.com/dart-lang/sdk/issues/55486): `TargetKind.parameter` doesn't consider extension type "parameters"
* **Author:** [matanlurey](https://github.com/matanlurey)
* The `TargetKind.parameter` attribute does not correctly identify parameters within an implicit extension type constructor, while it functions as expected with an explicit constructor; it should be updated to recognize these implicit parameters.

### [Issue #58912](https://github.com/dart-lang/sdk/issues/58912): `prefer_const_constructors` : False positive on factory constructor for generic type 
* **Author:** [khoadng](https://github.com/khoadng)
* **Reactions:** **1** -- 👍 1
* The `prefer_const_constructors` lint incorrectly flags a factory constructor for a generic type (`Foo.bar()`), because applying the `const` suggestion results in a compile-time error, while removing the generic type from the list initialization (`<T>[]`) to silence the warning causes a runtime type error.

### [Issue #47952](https://github.com/dart-lang/sdk/issues/47952): Support annotating a class with `@visibleForTesting`, which should report on instance creation as well.
* **Author:** [f-person](https://github.com/f-person)
* The user requests support for annotating classes with `@visibleForTesting` (or `@protected`) to restrict their usage, specifically for internal classes like `StatefulWidget` states, by generating analyzer warnings when instances are created or used outside their intended library or tests.

### [Issue #57988](https://github.com/dart-lang/sdk/issues/57988): prefer_const_constructors false positive with for UI-as-code
* **Author:** [a14n](https://github.com/a14n)
* **Reactions:** **3** -- 👍 3
* The `prefer_const_constructors` lint rule incorrectly suggests marking a constructor call as `const` within a factory, specifically when the constructor's list argument uses a `for` element over a non-constant list, rendering the entire expression non-constant.

### [Issue #57947](https://github.com/dart-lang/sdk/issues/57947): Allow exceptions to `prefer_const_constructors`
* **Author:** [ghost](https://github.com/ghost)
* The `prefer_const_constructors` lint, while beneficial, creates problems during large `const` refactors when consumers have out-of-sync `dart:ui` dependencies, leading to a request for configurable exceptions for specific constructors.


# GitHub PR Report for dart-lang/language
## From 2026-01-08

There were no pull requests merged and no issues closed during this period, indicating no significant changes or updates were integrated into the repository in this timeframe.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2026-01-08

Recent development efforts have largely centered on enhancing the stability, correctness, and future-readiness of native interop mechanisms, particularly around `ffigen` and `swiftgen`. A critical update landed via [PR #2914](https://github.com/dart-lang/native/pull/2914), which resolved a crucial dependency conflict in `swiftgen` by updating `ffigen` to version `^20.0.0` and `objective_c` to `^9.2.0`, addressing [Issue #2873](https://github.com/dart-lang/native/issues/2873) that had previously prevented `swiftgen`'s proper usage. Significant attention was also given to `ffigen`'s code generation logic, fixing issues such as incorrect handling of `as-int` enums that led to runtime failures ([Issue #1464](https://github.com/dart-lang/native/issues/1464)), resolving name collisions like `isProxy` in `NSURLProtectionSpace` with `objc.NSObject` ([Issue #1731](https://github.com/dart-lang/native/issues/1731)), and correcting incompatible return types for inherited Objective-C methods ([Issue #227](https://github.com/dart-lang/native/issues/227)). Further improvements to `ffigen` addressed compilation problems for C enum bindings ([Issue #1402](https://github.com/dart-lang/native/issues/1402)) and semantic errors when generating Swift bindings, particularly with unknown type names ([Issue #1289](https://github.com/dart-lang/native/issues/1289)). Strategic discussions also explored how `ffigen`'s YAML configuration will adapt to support more languages like ObjC, Java, Swift, and Kotlin ([Issue #289](https://github.com/dart-lang/native/issues/289)), and the value of separating user-facing code from boilerplate for better readability ([Issue #210](https://github.com/dart-lang/native/issues/210)). Finally, the `@RecordUse()` annotation now implies `@pragma('dart2js:never-inline')` for `dart2js`, ensuring consistent behavior with the VM ([Issue #2937](https://github.com/dart-lang/native/issues/2937)).

## Merged Pull Requests

### [PR #2914](https://github.com/dart-lang/native/pull/2914): [swiftgen] Fix incorrect ffigen dep version
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2026-01-08 01:08 AM
* **Comments:** 4
* Fixes an incorrect `ffigen` dependency version in the `swiftgen` package by updating `ffigen` to `^20.0.0` and `objective_c` to `^9.2.0`, which resolves issue #2873.


## Closed Issues

### [Issue #2937](https://github.com/dart-lang/native/issues/2937): [record_use] Correctness: dart2js: `@RecordUse()` should imply `@pragma('dart2js:never-inline')`
* **Author:** [dcharkes](https://github.com/dcharkes)
* The `@RecordUse()` annotation for dart2js should automatically imply `@pragma('dart2js:never-inline')`, consistent with the existing logic for the VM.

### [Issue #2885](https://github.com/dart-lang/native/issues/2885): [record_use] Completeness: dart2js: share tests expectations with the vm
* **Author:** [dcharkes](https://github.com/dcharkes)
* This issue proposes sharing test expectations between dart2js and the VM to ensure proper feature parity, with progress blocked by a list of dependent issues.

### [Issue #2873](https://github.com/dart-lang/native/issues/2873): [swiftgen] Published version (0.1.1) requires ffigen 20.0.0 but defines it's own ffigen constraints as ^19.0.0 which can't resolve
* **Author:** [tarrinneal](https://github.com/tarrinneal)
* The published version 0.1.1 of `swiftgen` requires `ffigen 20.0.0` while its own `pubspec` defines `ffigen` constraints as `^19.0.0`, creating a version conflict that prevents usage without overriding.

### [Issue #1731](https://github.com/dart-lang/native/issues/1731): `NSURLProtectionSpace.isProxy` conflicts with `isProxy` declaration in `objc.NSObject`
* **Author:** [kekland](https://github.com/kekland)
* When generating code with `objective_c` and `ffigen`, the `isProxy` getter on the generated `NSURLProtectionSpace` class conflicts with the `isProxy()` method recently added to `objc.NSObject`, leading to a build error due to the name collision.

### [Issue #1651](https://github.com/dart-lang/native/issues/1651): [ffigen] Crash while evaluating a policy 
* **Author:** [matiasleyba](https://github.com/matiasleyba)
* The user is encountering a crash when calling `evaluatePolicy` through `ffigen` bindings for `LocalAuthentication`, specifically inside a platform thread, and is seeking help to determine if their implementation or use case is incorrect.

### [Issue #1464](https://github.com/dart-lang/native/issues/1464): enums `as-int` still generates `.value` property call
* **Author:** [dupuchba](https://github.com/dupuchba)
* When `ffigen` is configured to treat enums `as-int`, it correctly generates an abstract class for the enum but still produces method bindings that attempt to call a non-existent `.value` getter on instances of this abstract class, causing runtime failures.

### [Issue #1402](https://github.com/dart-lang/native/issues/1402): Unsupported generation of C enums
* **Author:** [hkaripineni](https://github.com/hkaripineni)
* The generated C enum bindings produce compilation errors due to an invalid switch expression, which can be resolved by replacing it with a switch statement.

### [Issue #1289](https://github.com/dart-lang/native/issues/1289): ffigen has an unknown type name error [Semantic Issue] when generating swift binding.
* **Author:** [yanshouwang](https://github.com/yanshouwang)
* The user reports that `ffigen` fails to generate Swift bindings due to an "unknown type name 'AVLayerVideoGravity'" semantic error when parsing a Swift-generated Objective-C header, even though `AVFoundation.h` and the Swift header are included in `ffigen.yaml` and the type is explicitly defined for inclusion.

### [Issue #227](https://github.com/dart-lang/native/issues/227): Incompatible return types of method in same class hierarchy
* **Author:** [mkustermann](https://github.com/mkustermann)
* The `ffigen` tool generates incompatible return types for the `valueForKey_` method in the `NSDictionary` class, where it returns `Pointer<ObjCObject>` while its superclass `NSObject` declares it as `NSObject`, leading to a compilation error because `Pointer` is not a subtype of `NSObject`.

### [Issue #210](https://github.com/dart-lang/native/issues/210): Should we separate user facing code from boilerplate?
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* This issue proposes improving generated code readability by separating user-facing code from boilerplate into distinct files.

### [Issue #276](https://github.com/dart-lang/native/issues/276): ffigen4.x 5.x genearted code compile problem 
* **Author:** [joyhope](https://github.com/joyhope)
* The user is encountering a compile problem with `ffigen` versions 4.x and 5.x where generated code is missing data structures like `snd_pcm_access_t`, causing an "Undefined name" error, while version 3.x works correctly.

### [Issue #904](https://github.com/dart-lang/native/issues/904): Add ObjectiveC common types
* **Author:** [dcharkes](https://github.com/dcharkes)
* This issue proposes adding common ObjectiveC types, such as `Pointer<NSObject>`, to this FFI helpers package to make them reusable when generating multiple ObjectiveC bindings for `package:ffigen`.

### [Issue #289](https://github.com/dart-lang/native/issues/289): How will YAML change as we add more languages?
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Reactions:** **1** -- 👍 1
* This issue discusses how to adapt the YAML configuration to support new languages like ObjC, Java, Swift, and Kotlin, proposing solutions such as adding language-specific top-level keys or restructuring the config to group settings by language.


# GitHub PR Report for flutter/ai
## From 2026-01-08

During this period, there were no pull requests merged and no issues closed, indicating that the repository's codebase and feature set remained stable with no new changes or bug fixes introduced.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2026-01-08

No pull requests were merged and no issues were closed during this period, indicating a quiet development phase with no new changes or bug fixes introduced to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2026-01-08

The repository saw significant improvements in developer tooling, particularly for iOS, with a major enhancement to `flutter build ipa` now automatically generating `ExportOptions.plist` for manual code signing ([PR #177888]), simplifying a common source of export failures. Further iOS tooling fixes include resolving code signing issues caused by extended attributes ([PR #180355]). For Windows, a new capability was introduced with the implementation of tooltip windows, featuring configurable positioning and non-activating behavior ([PR #179147]). Core UI components received updates, notably the `CupertinoSheet` now supporting an optional native-styled drag handle via a new `showDragHandle` property ([PR #179962]), directly addressing [Issue #179358], and a fix for `CupertinoSheetTransition` to prevent ticker errors during widget updates ([PR #180609]), resolving [Issue #179337]. Accessibility features were expanded for iOS, exposing new motion settings like `autoPlayAnimatedImages` through Flutter's `AccessibilityFeatures` API ([PR #178102]), responding to [Issue #177330]. Critical bug fixes include preventing the `EditableText` widget from crashing in zero-sized environments ([PR #180457]) and ensuring `SemanticsService.announce` functions correctly within web dialogs ([PR #179958]), addressing [Issue #179076]. On the web platform, a key refactoring was re-applied to unify the rendering layer, improving modularity and WebGL context loss handling for the Skwasm backend ([PR #180610]), alongside a security enhancement to prevent the web server from serving files outside the project directory ([PR #180699]). Finally, the Dart SDK was rolled to version 3.11.0-296.2.beta ([PR #180685]), and internal CI/test infrastructure was bolstered with Android SDK bundle updates and fixes for flaky tests.

## Merged Pull Requests

### [PR #180699](https://github.com/flutter/flutter/pull/180699): [web] Don't serve files outside of project
* **Author:** [mdebbar](https://github.com/mdebbar)
* **Merged At:** 2026-01-08 02:18 PM
* **Comments:** 0
* Restricts the `ReleaseAssetServer` in `flutter_tools` to only serve files from within the project's designated directories. This enhances security by preventing unauthorized access to files outside the project, such as in the user's home directory, and mitigates directory traversal risks.

### [PR #180698](https://github.com/flutter/flutter/pull/180698): Update engine.version for 3.38.6 release
* **Author:** [walley892](https://github.com/walley892)
* **Merged At:** 2026-01-08 10:49 AM
* **Comments:** 2
* Updates the `engine.version` file to reflect a recent Dart version bump, aligning the engine with the requirements for the 3.38.6 release.

### [PR #180685](https://github.com/flutter/flutter/pull/180685): Roll Dart SDK to 3.11.0-296.2.beta
* **Author:** [iinozemtsev](https://github.com/iinozemtsev)
* **Merged At:** 2026-01-08 11:39 AM
* **Comments:** 1
* This PR rolls the Dart SDK to version 3.11.0-296.2.beta, incorporating a cherry-picked revert from commit `4f0e4600aef0f15527eaf534820956f37a71ef7c`.

### [PR #180661](https://github.com/flutter/flutter/pull/180661): fix: missing MSVC 2022
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* **Merged At:** 2026-01-07 04:49 PM
* **Comments:** 3
* This PR fixes an issue in `vs_toolchain.py` where MSVC 2022 was not being correctly detected by streamlining the search for Visual Studio versions to include both symbolic and numeric identifiers, ensuring correct detection of installed toolchains.

### [PR #180659](https://github.com/flutter/flutter/pull/180659): Reverts "Roll Dart SDK to 3.11.0-296.1.beta (#180633)"
* **Author:** [auto-submit[bot]](https://github.com/apps/auto-submit)
* **Merged At:** 2026-01-07 04:21 PM
* **Comments:** 0
* Reverts the previous roll of the Dart SDK to `3.11.0-296.1.beta` because it broke an internal build.

### [PR #180658](https://github.com/flutter/flutter/pull/180658): [ Widget Preview ] Move widget_preview_scaffold tests to `dev/integration_tests/widget_preview_scaffold`
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2026-01-08 01:16 PM
* **Comments:** 0
* Moves the `widget_preview_scaffold` integration tests from `packages/flutter_tools/test` to `dev/integration_tests`. This change helps to separate Flutter-specific code from the non-Flutter code within the `flutter_tools` test suite, improving organization.

### [PR #180655](https://github.com/flutter/flutter/pull/180655): [ Tool ] Fix flake in overall_experience_test.dart
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2026-01-08 08:27 AM
* **Comments:** 1
* Fixes a flaky test in `overall_experience_test.dart` by updating its expectation to account for variable line wrapping of diagnostic messages, which was caused by long file paths on some systems.

### [PR #180653](https://github.com/flutter/flutter/pull/180653): Also host build-tools 33.0.1, platform-34, and platform-35 in our android_sdk bundle
* **Author:** [gmackall](https://github.com/gmackall)
* **Merged At:** 2026-01-07 04:06 PM
* **Comments:** 1
* Updates the Android SDK bundle used in CI to include build-tools 33.0.1 and Android platforms 34 and 35, which reduces download-related flakiness during CI runs.

### [PR #180651](https://github.com/flutter/flutter/pull/180651): De-interleaves engine dart test output
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2026-01-08 12:58 PM
* **Comments:** 3
* This PR de-interleaves the logging output from engine Dart tests and prints the rendering backend used for each test, improving test readability. It also introduces a `TestingContext` abstraction to `tester_main.cc` to support more rendering backends in the future, with a concrete Impeller Vulkan implementation.

### [PR #180610](https://github.com/flutter/flutter/pull/180610): Revert "Reverts "[reland] Unify canvas creation and Surface code in S…kwasm and CanvasKit (#179473)" (#180152)"
* **Author:** [harryterkelsen](https://github.com/harryterkelsen)
* **Merged At:** 2026-01-08 11:14 AM
* **Comments:** 3
* This PR re-applies a refactoring of the web engine's rendering layer, unifying Surface and Rasterizer implementations into a generic compositing directory with a new CanvasProvider abstraction, which enables the Skwasm backend to correctly handle WebGL context loss and recovery and improves overall modularity and maintainability.

### [PR #180609](https://github.com/flutter/flutter/pull/180609): Do not dispose CupertinoSheetTransition animation on update and throw ticker error
* **Author:** [MitchellGoodwin](https://github.com/MitchellGoodwin)
* **Merged At:** 2026-01-07 07:13 PM
* **Comments:** 0
* This PR fixes a ticker error in `CupertinoSheetTransition` by preventing the `_stretchDragController` from being unnecessarily disposed and re-initialized during widget updates. This ensures the animation controller's lifecycle correctly matches the widget's, resolving exceptions that occurred in some cases.

### [PR #180583](https://github.com/flutter/flutter/pull/180583): Improve code quality in `AndroidTouchProcessorTest.java`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-08 11:25 AM
* **Comments:** 1
* Refactors `AndroidTouchProcessorTest.java` by replacing `assertEquals(true, ...)` with `assertTrue(...)` for boolean assertions, thereby improving the readability and quality of the test code.

### [PR #180457](https://github.com/flutter/flutter/pull/180457): Make sure that an EditableText doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2026-01-08 02:48 PM
* **Comments:** 1
* This PR fixes a crash in the `EditableText` widget when it is rendered in a zero-sized environment, preventing application failures in such scenarios. This change also includes a new test to verify the fix.

### [PR #180355](https://github.com/flutter/flutter/pull/180355): Fix iOS xattr removal to clear all extended attributes
* **Author:** [Saqib198](https://github.com/Saqib198)
* **Merged At:** 2026-01-08 01:31 PM
* **Comments:** 2
* This PR fixes iOS code signing failures caused by extended attributes like `com.apple.provenance` by changing the `xattr` command to recursively clear all extended attributes instead of selectively removing only `com.apple.FinderInfo`.

### [PR #179962](https://github.com/flutter/flutter/pull/179962): Add drag handle to CupertinoSheet
* **Author:** [MitchellGoodwin](https://github.com/MitchellGoodwin)
* **Merged At:** 2026-01-07 04:32 PM
* **Comments:** 4
* Adds a `showDragHandle` property to `CupertinoSheet` and `showCupertinoSheet` to optionally display a native-styled drag handle at the top, which is disabled by default and includes padding to prevent content from overlapping with the handle.

### [PR #179958](https://github.com/flutter/flutter/pull/179958): [web] Fix SemanticsService.announce not working inside dialogs
* **Author:** [flutter-zl](https://github.com/flutter-zl)
* **Merged At:** 2026-01-08 12:55 PM
* **Comments:** 0
* This PR fixes `SemanticsService.announce` not working inside modal dialogs on the web. It achieves this by temporarily moving the `aria-live` element into the topmost modal dialog during announcements. A small delay is also introduced to ensure screen readers, like VoiceOver, finish processing preceding element labels before the announcement, preventing conflicts.

### [PR #179147](https://github.com/flutter/flutter/pull/179147): Implementation of tooltip windows for win32
* **Author:** [mattkae](https://github.com/mattkae)
* **Merged At:** 2026-01-08 02:34 PM
* **Comments:** 5
* This PR implements tooltip windows for the Win32 platform, featuring non-activating and size-to-content behavior with configurable positioning. It introduces explicit window constraints to `FlutterWindowMetricsEvent` and a new `FlutterWindowsViewSizingDelegate` to manage view sizing, while also improving multi-window destruction logic and updating the example application to demonstrate this new functionality.

### [PR #178102](https://github.com/flutter/flutter/pull/178102): Add new motion accessibility features to iOS.
* **Author:** [ksokolovskyi](https://github.com/ksokolovskyi)
* **Merged At:** 2026-01-08 01:44 PM
* **Comments:** 5
* This PR introduces three new iOS motion accessibility features to Flutter's `AccessibilityFeatures` API, including `autoPlayAnimatedImages`, `autoPlayVideos`, and `deterministicCursor`, and refactors the native iOS accessibility settings logic into a new, dedicated `AccessibilityFeatures.swift` class, enhancing maintainability and testability.

### 🔥🔥🔥 [PR #177888](https://github.com/flutter/flutter/pull/177888): flutter_tools: Auto-generate ExportOptions.plist for manual iOS code signing
* **Author:** [MohammedTarigg](https://github.com/MohammedTarigg)
* **Merged At:** 2026-01-08 04:40 AM
* **Comments:** 14
* This PR enhances `flutter build ipa` to automatically generate a complete `ExportOptions.plist` for manual iOS code signing configurations, resolving export failures caused by incomplete plist files and eliminating the need for users to manage them manually.


## Closed Issues

### [Issue #180697](https://github.com/flutter/flutter/issues/180697): linux-52 marked dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The `linux-52` instance or system has been marked as dead, indicating it is no longer operational, and an image attachment visually confirms this status.

### [Issue #180695](https://github.com/flutter/flutter/issues/180695): mac-23 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The mac-23 device has lost its external connection to a phone device.

### [Issue #180660](https://github.com/flutter/flutter/issues/180660): MSVC 2022 fails to be found.
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* The build with MSVC 2022 is failing because the `search_versions` variable is being overwritten in each iteration, leaving only 2026 available and preventing 2022 from being found.

### [Issue #180260](https://github.com/flutter/flutter/issues/180260): Linux_build_test flutter_gallery__transition_perf_e2e is 2.02% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* The `Linux_build_test flutter_gallery__transition_perf_e2e` post-submit test builder is experiencing 2.02% flakiness, exceeding the 2.00% threshold, and requires a fix.

### [Issue #180258](https://github.com/flutter/flutter/issues/180258): Linux build_android_host_app_with_module_source is 2.02% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* The `Linux build_android_host_app_with_module_source` post-submit test builder has a 2.02% flakiness ratio, exceeding the 2.00% threshold, and requires investigation and a fix.

### [Issue #180080](https://github.com/flutter/flutter/issues/180080): `flutter_tools` package has many analysis errors from `widget_preview_scaffold.shard`
* **Author:** [eyebrowsoffire](https://github.com/eyebrowsoffire)
* Running `flutter analyze` on the `flutter_tools` package unexpectedly reports 1636 issues, all originating from `test/widget_preview_scaffold.shard`, which should ideally keep analysis output clean.

### [Issue #180044](https://github.com/flutter/flutter/issues/180044): my app wont run after i upgraded flutter and dart sdk
* **Author:** [akhilshaji0077](https://github.com/akhilshaji0077)
* After upgrading Flutter and Dart SDKs, the user's iOS app fails to build, with Xcode output showing warnings related to `url_launcher_ios` and `pay_ios` packages.

### [Issue #179982](https://github.com/flutter/flutter/issues/179982): Linux build_android_host_app_with_module_aar is 2.00% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* The `Linux build_android_host_app_with_module_aar` post-submit test builder is exhibiting 2.00% flakiness, exceeding the 2.00% threshold, and requires a fix as per the test flakiness documentation.

### [Issue #179946](https://github.com/flutter/flutter/issues/179946): [webview_flutter] External URL is not loading in webview
* **Author:** [coder-gamer23](https://github.com/coder-gamer23)
* The user is reporting that `webview_flutter` version 4.13.0 fails to load external URLs, presenting an assertion error stating "A platform implementation for `webview_flutter` has not been set" because `WebViewPlatform.instance` is null, despite explicit dependency overrides in `pubspec.yaml` for `webview_flutter`, `webview_flutter_android`, and `webview_flutter_wkwebview`.

### [Issue #179886](https://github.com/flutter/flutter/issues/179886): Flutter widget preview terminates if computer is put to sleep
* **Author:** [DanTup](https://github.com/DanTup)
* The Flutter widget preview terminates and Chrome closes when the computer goes to sleep, instead of remaining active as expected.

### [Issue #179860](https://github.com/flutter/flutter/issues/179860): Transparent share extension
* **Author:** [mrafieefard](https://github.com/mrafieefard)
* The user reports that their iOS share extension, which embeds a Flutter view, displays a black or white background instead of the expected transparent background, despite explicitly setting transparency in both the native `ShareViewController.swift` and the Flutter `ShareExtension` widget.

### [Issue #179438](https://github.com/flutter/flutter/issues/179438): Using the back gesture on Flutter Web (the gesture used to dismiss the keyboard) causes the canvas to remain permanently shrunken.
* **Author:** [feinliebe](https://github.com/feinliebe)
* **Reactions:** **2** -- 👍 2
* Using the back gesture to dismiss the keyboard on Flutter Web in an Android Chrome browser causes the Flutter canvas to permanently shrink to about 50% of the screen, leaving the remaining area as empty HTML space.

### [Issue #179358](https://github.com/flutter/flutter/issues/179358): [CupertinoSheet] Add native styled drag handles
* **Author:** [MitchellGoodwin](https://github.com/MitchellGoodwin)
* This issue proposes adding a boolean property to `CupertinoSheetRoute` to display a native-styled drag handle, or grabber, at the top of the `CupertinoSheet`, aligning with iOS design guidelines for resizable sheets and leveraging existing native implementations like `presentationDragIndicator` in SwiftUI or `prefersGrabberVisible` in UIKit.

### [Issue #179337](https://github.com/flutter/flutter/issues/179337): CupertinoSheetTransitionState creates multiple tickers / AnimationController dispose does not free tickers.
* **Author:** [ElectricCookie](https://github.com/ElectricCookie)
* A `CupertinoSheetTransitionState` throws an error when attempting to recreate its `AnimationController` during `didUpdateWidget`, as `SingleTickerProviderStateMixin` does not reset after `AnimationController.dispose()`, causing it to assert that multiple tickers were created by the same provider.

### [Issue #179076](https://github.com/flutter/flutter/issues/179076): [Web] SemanticsService.sendAnnouncement is not working inside a dialog
* **Author:** [Mickelle](https://github.com/Mickelle)
* `SemanticsService.sendAnnouncement` fails to announce messages when called from within any type of dialog (AlertDialog, SimpleDialog, Custom Dialog) on the Web platform, although it works correctly when called outside a dialog.

### [Issue #177330](https://github.com/flutter/flutter/issues/177330): Expose iOS "Customize onscreen motion" accessibility settings
* **Author:** [chrisbobbe](https://github.com/chrisbobbe)
* **Reactions:** **1** -- 👍 1
* This issue proposes adding new fields to `AccessibilityFeatures` in Flutter to expose iOS "Customize onscreen motion" accessibility settings, particularly "Auto-Play Animated Images," allowing apps like Zulip to adapt content based on user preferences.

### [Issue #176332](https://github.com/flutter/flutter/issues/176332): [a11y] [Web] "Back" button is read as "one more item" on all the pages
* **Author:** [flutter-zl](https://github.com/flutter-zl)
* A VoiceOver accessibility bug on Flutter web causes the "Back" button to be incorrectly read as "back, and 1 more item" or "4 more items" when repeatedly focused, confusing screen reader users.

### [Issue #174502](https://github.com/flutter/flutter/issues/174502): Mac tool_integration_tests_5_5 is 2.13% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* The `Mac tool_integration_tests_5_5` post-submit test builder is exhibiting 2.13% flakiness over the last 100 commits, exceeding the 2.00% threshold, and requires investigation and a fix.

### [Issue #173092](https://github.com/flutter/flutter/issues/173092): error: `tracksWithMediaType:` is deprecated: first deprecated in macOS 15.0 - Use `loadTracksWithMediaType:completionHandler:` instead
* **Author:** [jmagman](https://github.com/jmagman)
* The `tracksWithMediaType:` method is deprecated in iOS 18 and macOS 15 and is causing a compilation error in `video_player_avfoundation`; it should be replaced with `loadTracksWithMediaType:completionHandler:`.

### [Issue #130279](https://github.com/flutter/flutter/issues/130279): [package tooling] Move dart pub get into fetch deps command
* **Author:** [reidbaker](https://github.com/reidbaker)
* Integrate `dart pub get` into the new `fetch-deps` command to fetch Dart dependencies prior to building.

### [Issue #79546](https://github.com/flutter/flutter/issues/79546): [video_player ] Document how to dispose multiple videos properly. 
* **Author:** [unoravi](https://github.com/unoravi)
* The user is encountering a "VideoPlayerController was used after being disposed" error when attempting to dispose an old controller after creating a new `VideoPlayer` instance and updating the UI, and is seeking documentation or guidance on the proper way to manage and dispose multiple `VideoPlayerController` objects during video transitions.

### [Issue #51250](https://github.com/flutter/flutter/issues/51250): Flutter video_player widget doesn't fit into the parent widget.
* **Author:** [n-santamaria](https://github.com/n-santamaria)
* **Reactions:** **2** -- 👍 2
* When using the `video_player` widget inside an `AspectRatio(4/3)` within a `carouselslider`, the video content can unexpectedly overflow the carousel for certain videos.


# GitHub PR Report for flutter/genui
## From 2026-01-08

The repository has undergone a targeted modernization effort, primarily focusing on its example clients. [PR #646](https://github.com/flutter/genui/pull/646) updated the Verdure client dependencies, specifically upgrading Flutter Riverpod to `^3.1.0` and its related annotation and generator packages to `^4.0.0`. These dependency updates enabled several code modernizations, including the adoption of Dart 3 pattern matching syntax and the utilization of the `spacing` property in Flutter layout widgets, alongside general code cleanup, type clarifications, and formatting improvements.

## Merged Pull Requests

### [PR #646](https://github.com/flutter/genui/pull/646): [examples] Verdure client cleanup and dependency updates
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2026-01-08 10:26 AM
* **Comments:** 2
* This PR updates the Verdure client dependencies, upgrading Flutter Riverpod to `^3.1.0` and its related annotation and generator packages to `^4.0.0`. These updates lead to several code modernizations, including migrating generated providers to `final`, adopting Dart 3 pattern matching syntax, utilizing the `spacing` property in Flutter layout widgets, and performing general code cleanup such as type clarifications and formatting improvements.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2026-01-08

The repository received an important technical update primarily focused on platform compatibility for the `video_player_avfoundation` plugin. [PR #10553](https://github.com/flutter/packages/pull/10553) addressed compilation warnings on iOS 18 and macOS 15 by migrating from the deprecated `tracksWithMediaType:` API to the more current `loadTracksWithMediaType:completionHandler:`, ensuring the plugin remains functional and free of warnings on newer Apple operating systems while also preserving backward compatibility.

## Merged Pull Requests

### [PR #10553](https://github.com/flutter/packages/pull/10553): [video_player_avfoundation] Fix deprecated tracksWithMediaType usage
* **Author:** [raju-muliyashiya](https://github.com/raju-muliyashiya)
* **Merged At:** 2026-01-08 02:55 PM
* **Comments:** 1
* Updates the `video_player_avfoundation` plugin to resolve compilation warnings on iOS 18/macOS 15 by migrating from the deprecated `tracksWithMediaType:` API to `loadTracksWithMediaType:completionHandler:` for newer OS versions, while providing backward compatibility for older systems.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2026-01-08

During this period, there were no pull requests merged and no issues closed, indicating no changes were made to the repository's codebase or public API surface.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2026-01-08

Recent updates to the repository primarily focused on enhancing documentation clarity, particularly regarding platform-specific UI behaviors and fundamental Flutter terminology. A significant documentation improvement addresses the visual and behavioral differences in scrollbars between Material and Cupertino designs, clarifying how they adhere to their respective platform conventions, as resolved by [#12899](https://github.com/flutter/website/pull/12899), which closed [#4306](https://github.com/flutter/website/issues/4306). Furthermore, core Flutter development concepts received attention, with updates to state management documentation to accurately use the term "prop drilling" instead of "dependency injection" for passing data via constructors, an important clarification initiated by [#12828](https://github.com/flutter/website/issues/12828) and implemented in [#12862](https://github.com/flutter/website/pull/12862). The project's glossary was also expanded with new entries for key terms like "Embedder," which defines the platform-specific component supporting Flutter, a change suggested by [#12645](https://github.com/flutter/website/issues/12645) and added in [#12896](https://github.com/flutter/website/pull/12896), alongside a new banner promoting best practices documentation for building AI-powered apps with Flutter in [#12903](https://github.com/flutter/website/pull/12903).

## Merged Pull Requests

### [PR #12903](https://github.com/flutter/website/pull/12903): Update banner to call out AI best practices docs
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2026-01-08 01:30 PM
* **Comments:** 2
* Updates the website banner to promote newly published best practices for building AI-powered apps with Flutter, replacing a previous announcement about a livestream.

### 🔥 [PR #12899](https://github.com/flutter/website/pull/12899): docs: note scrollbar differences between Material and Cupertino
* **Author:** [BenjChristiansen](https://github.com/BenjChristiansen)
* **Merged At:** 2026-01-08 03:08 PM
* **Comments:** 7
* Adds a note to the platform adaptations documentation clarifying the visual differences in scrollbar behavior between Material and Cupertino platforms. This explains that Material scrollbars are typically visible, while Cupertino scrollbars are minimal and appear only briefly during scrolling, reflecting each platform’s conventions and maintaining a native look and feel.

### [PR #12896](https://github.com/flutter/website/pull/12896): Add Embedder to the glossary
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-08 12:59 PM
* **Comments:** 2
* This PR adds a new "Embedder" entry to the project's glossary, defining it as the platform-specific component that supports Flutter on a native platform and detailing its role in coordinating with the underlying operating system.

### [PR #12862](https://github.com/flutter/website/pull/12862): Fix(docs): Use 'prop drilling' terminology and add glossary entry (fixes #12828)
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-08 01:08 PM
* **Comments:** 2
* Updates state management documentation to use the term 'prop drilling' for constructor-based data passing, replacing a previous reference to 'dependency injection', and adds a new 'Prop drilling' entry to the glossary.


## Closed Issues

### [Issue #12828](https://github.com/flutter/website/issues/12828): Is there a incorrect terminology in the section "Using widget constructors"
* **Author:** [FrogerSRB](https://github.com/FrogerSRB)
* The user is questioning whether "dependency injection" is the correct term used in the "Using widget constructors" section of the Flutter state management documentation, suggesting "prop drilling" might be more appropriate given the context of the preceding overview.

### [Issue #12766](https://github.com/flutter/website/issues/12766): The Ai Toolkit example is not working
* **Author:** [juan-campuzano](https://github.com/juan-campuzano)
* The hosted Flutter AI Toolkit example (`flutter-ai-toolkit-examp-60bad.web.app/`), referenced in the documentation, throws an error when a message is sent to the model.

### [Issue #12645](https://github.com/flutter/website/issues/12645): Add glossary entry for "Embedder"
* **Author:** [parlough](https://github.com/parlough)
* This issue requests adding "Embedder" to the Flutter website's glossary, defining it within the context of Flutter.

### [Issue #4306](https://github.com/flutter/website/issues/4306): Note differences in scrollbars between Cupertino and Material on 'Platform specific behaviors and adaptations' page
* **Author:** [socialcalendarteam](https://github.com/socialcalendarteam)
* The documentation page 'Platform specific behaviors and adaptations' (https://docs.flutter.dev/resources/platform-adaptations) fails to note the differences in scrollbar appearance and behavior between Cupertino and Material design, which should be added.



## Top Hacker News Stories

### 97  [Kagi releases alpha version of Orion for Linux](https://help.kagi.com/orion/misc/linux-status.html)
* **Author:** [HelloUsername](https://news.ycombinator.com/user?id=HelloUsername) | **Comments:** [48](https://news.ycombinator.com/item?id=46553343)

### 227 🔥 [Mathematics for Computer Science (2018) [pdf]](https://courses.csail.mit.edu/6.042/spring18/mcs.pdf)
* **Author:** [vismit2000](https://news.ycombinator.com/user?id=vismit2000) | **Comments:** [33](https://news.ycombinator.com/item?id=46550895)

### 65  [Linux Runs on Raspberry Pi RP2350's Hazard3 RISC-V Cores (2024)](https://www.hackster.io/news/jesse-taube-gets-linux-up-and-running-on-the-raspberry-pi-rp2350-s-hazard3-risc-v-cores-19088b87bb2c)
* **Author:** [walterbell](https://news.ycombinator.com/user?id=walterbell) | **Comments:** [20](https://news.ycombinator.com/item?id=46478558)

### 48  [How wolves became dogs](https://www.economist.com/christmas-specials/2025/12/18/how-wolves-became-dogs)
* **Author:** [mooreds](https://news.ycombinator.com/user?id=mooreds) | **Comments:** [30](https://news.ycombinator.com/item?id=46500798)

### 19  [When Kitty Litter Caused a Nuclear Catastrophe](https://practical.engineering/blog/2025/4/15/when-kitty-litter-caused-a-nuclear-catastrophe)
* **Author:** [tape_measure](https://news.ycombinator.com/user?id=tape_measure) | **Comments:** [3](https://news.ycombinator.com/item?id=46493199)

### 17  [Sorted string tables (SST) from first principles](https://www.bitsxpages.com/p/sorted-string-tables-sst-from-first)
* **Author:** [apurvamehta](https://news.ycombinator.com/user?id=apurvamehta) | **Comments:** [1](https://news.ycombinator.com/item?id=46506143)

### 611 🔥🔥🔥 [How to Code Claude Code in 200 Lines of Code](https://www.mihaileric.com/The-Emperor-Has-No-Clothes/)
* **Author:** [nutellalover](https://news.ycombinator.com/user?id=nutellalover) | **Comments:** [196](https://news.ycombinator.com/item?id=46545620)

### 96  [Samba Was Written (2003)](https://download.samba.org/pub/tridge/misc/french_cafe.txt)
* **Author:** [tosh](https://news.ycombinator.com/user?id=tosh) | **Comments:** [38](https://news.ycombinator.com/item?id=46486545)

### 316 🔥🔥 [European Commission issues call for evidence on open source](https://lwn.net/Articles/1053107/)
* **Author:** [pabs3](https://news.ycombinator.com/user?id=pabs3) | **Comments:** [213](https://news.ycombinator.com/item?id=46550912)

### 257 🔥🔥 [Embassy: Modern embedded framework, using Rust and async](https://github.com/embassy-rs/embassy)
* **Author:** [birdculture](https://news.ycombinator.com/user?id=birdculture) | **Comments:** [115](https://news.ycombinator.com/item?id=46547740)

### 143 🔥 [Hacking a Casio F-91W digital watch (2023)](https://medium.com/infosec-watchtower/how-i-hacked-casio-f-91w-digital-watch-892bd519bd15)
* **Author:** [jollyjerry](https://news.ycombinator.com/user?id=jollyjerry) | **Comments:** [40](https://news.ycombinator.com/item?id=46489232)

### 288 🔥🔥 [Sopro TTS: A 169M model with zero-shot voice cloning that runs on the CPU](https://github.com/samuel-vitorino/sopro)
* **Author:** [sammyyyyyyy](https://news.ycombinator.com/user?id=sammyyyyyyy) | **Comments:** [108](https://news.ycombinator.com/item?id=46546113)

### 230 🔥 [What happened to WebAssembly](https://emnudge.dev/blog/what-happened-to-webassembly/)
* **Author:** [enz](https://news.ycombinator.com/user?id=enz) | **Comments:** [194](https://news.ycombinator.com/item?id=46551044)

### 2396 🔥🔥🔥 [Bose has released API docs and opened the API for its EoL SoundTouch speakers](https://arstechnica.com/gadgets/2026/01/bose-open-sources-its-soundtouch-home-theater-smart-speakers-ahead-of-eol/)
* **Author:** [rayrey](https://news.ycombinator.com/user?id=rayrey) | **Comments:** [358](https://news.ycombinator.com/item?id=46541892)

### 209 🔥 [Richard D. James aka Aphex Twin speaks to Tatsuya Takahashi (2017)](https://web.archive.org/web/20180719052026/http://item.warp.net/interview/aphex-twin-speaks-to-tatsuya-takahashi/)
* **Author:** [lelandfe](https://news.ycombinator.com/user?id=lelandfe) | **Comments:** [73](https://news.ycombinator.com/item?id=46546614)

### 70  [Photographing the hidden world of slime mould](https://www.bbc.com/news/articles/c9d9409p76qo)
* **Author:** [1659447091](https://news.ycombinator.com/user?id=1659447091) | **Comments:** [17](https://news.ycombinator.com/item?id=46461862)

### 78  [Show HN: Executable Markdown files with Unix pipes]()
* **Author:** [jedwhite](https://news.ycombinator.com/user?id=jedwhite) | **Comments:** [60](https://news.ycombinator.com/item?id=46549444)
* This open-source tool allows markdown files to be executed directly as shell scripts using a shebang, piping their content through Claude Code to orchestrate tasks. This enables LLM-driven workflows to run shell commands, interact with files, and chain operations via Unix pipes, replacing glue code with more auditable and composable markdown-based scripts.

### 502 🔥🔥 [The Jeff Dean Facts](https://github.com/LRitzdorf/TheJeffDeanFacts)
* **Author:** [ravenical](https://news.ycombinator.com/user?id=ravenical) | **Comments:** [173](https://news.ycombinator.com/item?id=46540498)

### 266 🔥🔥 [The unreasonable effectiveness of the Fourier transform](https://joshuawise.com/resources/ofdm/)
* **Author:** [voxadam](https://news.ycombinator.com/user?id=voxadam) | **Comments:** [112](https://news.ycombinator.com/item?id=46544981)

### 365 🔥🔥 [AI coding assistants are getting worse?](https://spectrum.ieee.org/ai-coding-degrades)
* **Author:** [voxadam](https://news.ycombinator.com/user?id=voxadam) | **Comments:** [588](https://news.ycombinator.com/item?id=46542036)

### 24  [1ML for non-specialists: introduction](https://pithlessly.github.io/1ml-intro)
* **Author:** [birdculture](https://news.ycombinator.com/user?id=birdculture) | **Comments:** [5](https://news.ycombinator.com/item?id=46470293)

### 242 🔥 [Replit founder Amjad Masad isn’t afraid of Silicon Valley](https://sfstandard.com/2026/01/07/called-terrorist-sympathizer-now-ai-company-valued-3b/)
* **Author:** [newusertoday](https://news.ycombinator.com/user?id=newusertoday) | **Comments:** [321](https://news.ycombinator.com/item?id=46544276)

### 226 🔥 [Why I left iNaturalist](https://kueda.net/blog/2026/01/06/why-i-left-inat/)
* **Author:** [erutuon](https://news.ycombinator.com/user?id=erutuon) | **Comments:** [126](https://news.ycombinator.com/item?id=46548940)

### 3  [London–Calcutta Bus Service](https://en.wikipedia.org/wiki/London%E2%80%93Calcutta_bus_service)
* **Author:** [thunderbong](https://news.ycombinator.com/user?id=thunderbong) | **Comments:** [0](https://news.ycombinator.com/item?id=46554462)

### 50  [Mysterious Victorian-era shoes are washing up on a beach in Wales](https://www.smithsonianmag.com/smart-news/hundreds-of-mysterious-victorian-era-shoes-are-washing-up-on-a-beach-in-wales-nobody-knows-where-they-came-from-180987943/)
* **Author:** [Brajeshwar](https://news.ycombinator.com/user?id=Brajeshwar) | **Comments:** [16](https://news.ycombinator.com/item?id=46509376)



