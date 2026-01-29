# Overall Summary
Here's a highlights section of the most impactful pull requests and closed issues:

**🔥🔥🔥 [PR #177895](https://github.com/flutter/flutter/pull/177895) (flutter/flutter): Add `alignment` to `SizeTransition`**
  * **Comments:** 11
  * Deprecates the `axisAlignment` property in `SizeTransition` and introduces a new `alignment` property (AlignmentGeometry) to provide full control over the child's position during size transitions. This change resolves issue #19850 and includes a migration tool to assist developers in updating existing code.

**🔥🔥🔥 [Issue #176237](https://github.com/flutter/flutter/issues/176237) (flutter/flutter): RFC: Seeking feedback on improving dev experience when working on accessibility**
  * **Reactions:** **26** -- 👍 23 ❤️ 3
  * This RFC seeks feedback from Flutter developers regarding their pain points and desired tools/improvements to enhance the accessibility development experience and facilitate earlier detection of issues, aiming to shift from reactive fixes to proactive development.

**🔥🔥 [Issue #163545](https://github.com/flutter/flutter/issues/163545) (flutter/flutter): SystemChrome.setSystemUIOverlayStyle(...) does not work when targeting android 15 api 35**
  * **Reactions:** **14** -- 👍 14
  * The `SystemChrome.setSystemUIOverlayStyle` method fails to set `statusBarColor` on Android 15 (API 35); the proposed solution is to update documentation and implement API branching to avoid removed status bar color APIs.

**🔥 [Issue #4606](https://github.com/dart-lang/language/issues/4606) (dart-lang/language): Create extra instances of an inaccessible private class**
  * **Reactions:** **6** -- 👍 4 👀 2
  * Dart's dot shorthand allows creating new instances of an otherwise inaccessible private class by using an existing instance to provide the context type, which is considered an accidental privacy leak; the proposed solution is to restrict dot shorthand access to the static namespace of such private classes, with special consideration for public type aliases.

**[Issue #4618](https://github.com/dart-lang/language/issues/4618) (dart-lang/language): Native F-Bounded Polymorphism Support**
  * This issue proposes adding native F-bounded polymorphism support to Dart to eliminate `Self extends Foo<Self>` boilerplate, which currently pollutes signatures and requires excessive overrides, thereby enabling cleaner fluent APIs and better type-safe inheritance via solutions like a `Self` type or automatic inference.

**🔥 [Issue #170664](https://github.com/flutter/flutter/issues/170664) (flutter/flutter): [android] Generate symbol files for AOT snapshots even without split-debug-info**
  * **Reactions:** **5** -- 👍 5
  * The issue proposes generating symbol files for Android AOT snapshots even without split-debug-info, to make native stack traces readable for ANRs, by producing unstripped snapshots and then splitting out symbolic information for Play Store upload, similar to how iOS handles `dSYM`.

**[Issue #62479](https://github.com/dart-lang/sdk/issues/62479) (dart-lang/sdk): [Primary Constructors] VS Code support**
  * This issue tracks the work needed to implement Primary Constructors support within VS Code, including a Dart Code issue that still needs to be filed.

**[PR #181340](https://github.com/flutter/flutter/pull/181340) (flutter/flutter): Fixes metal vec3 uniform padding**
  * **Comments:** 3
  * This PR addresses https://github.com/flutter/flutter/issues/180873 by fixing incorrect `vec3` and `mat3x3` uniform padding on Metal, modifying the Impeller compiler to generate and insert appropriate padding bytes into uniform buffers, thereby ensuring correct GPU memory alignment and enabling previously skipped Impeller tests for Metal.

**[Issue #62498](https://github.com/dart-lang/sdk/issues/62498) (dart-lang/sdk): dart scripts can't be run reliably from AI**
  * Dart scripts run by an AI (Codex) fail because the `dart` binary, originating from a Flutter install, attempts to write an `engine.stamp` file in the Flutter directory during an update check, but Codex operates in a sandbox with read-only access to that location.


# GitHub PR Report for dart-lang/ai
## From 2026-01-26

There were no pull requests merged or issues closed during this period, indicating no changes were made to the repository's codebase or outstanding issues addressed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2026-01-26

Recent activity in the repository primarily focused on refining support for **Primary Constructors**, a significant language feature. This included evaluating linter support for various aspects like unused constructor parameters ([#62505], [#62248]) and auditing `BestPracticesVerifier` for proper annotation handling ([#62268]), alongside progressing integration for VS Code support ([#62479]). The Dart Analyzer also received critical attention, with a fix for incorrect handling of extension type representation getters that used disallowed names ([#62471]) and resolving a crash when running the analyzer on the SDK itself ([#62502]). Furthermore, several refactoring tools were updated to correctly handle private named parameters, enhancing features such as creating fields ([#62497]), generating constructors for final fields ([#62496]), and converting to super parameters ([#62495]) and named arguments ([#62494]). Other notable closures addressed issues like `dart` scripts failing in sandboxed AI environments due to update checks ([#62498]) and the `resolveSource` utility not properly resolving part files from imported libraries in the analyzer ([#62346]).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62505](https://github.com/dart-lang/sdk/issues/62505): [Primary Constructors] Evaluate support for avoid_unused_constructor_parameters
* **Author:** [srawlins](https://github.com/srawlins)

### [Issue #62502](https://github.com/dart-lang/sdk/issues/62502): Analyzer crash when running on the SDK
* **Author:** [jakemac53](https://github.com/jakemac53)
* The analyzer crashed with a `Null` type casting error to `ClassItem` in `LibraryManifestBuilder` when run on the SDK without custom analysis options.

### [Issue #62498](https://github.com/dart-lang/sdk/issues/62498): dart scripts can't be run reliably from AI
* **Author:** [bsutton](https://github.com/bsutton)
* Dart scripts run by an AI (Codex) fail because the `dart` binary, originating from a Flutter install, attempts to write an `engine.stamp` file in the Flutter directory during an update check, but Codex operates in a sandbox with read-only access to that location.

### [Issue #62497](https://github.com/dart-lang/sdk/issues/62497): Update create_field.dart to handle private named parameters
* **Author:** [munificent](https://github.com/munificent)

### [Issue #62496](https://github.com/dart-lang/sdk/issues/62496): Update create_constructor_for_final_fields.dart to handle private named parameters
* **Author:** [munificent](https://github.com/munificent)

### [Issue #62495](https://github.com/dart-lang/sdk/issues/62495): Update convert_to_super_parameters.dart to handle private named parameters
* **Author:** [munificent](https://github.com/munificent)

### [Issue #62494](https://github.com/dart-lang/sdk/issues/62494): Update convert_to_named_arguments.dart to handle private named parameters
* **Author:** [munificent](https://github.com/munificent)

### [Issue #62479](https://github.com/dart-lang/sdk/issues/62479): [Primary Constructors] VS Code support
* **Author:** [kallentu](https://github.com/kallentu)
* This issue tracks the work needed to implement Primary Constructors support within VS Code, including a Dart Code issue that still needs to be filed.

### [Issue #62471](https://github.com/dart-lang/sdk/issues/62471): Analyzer does not reject extension type representation getter with disallowed name.
* **Author:** [lrhn](https://github.com/lrhn)
* The analyzer incorrectly allows extension type representation getters to use names disallowed by the "Object Five" rule, a discrepancy corrected by the CFE which already rejects such declarations.

### [Issue #62470](https://github.com/dart-lang/sdk/issues/62470): runtime/platform/synchronization_posix.cc: 73: error: pthread error: 22 (Invalid argument)
* **Author:** [alexmarkov](https://github.com/alexmarkov)
* Multiple dart-fuzz bot shards are failing with `pthread error: 22 (Invalid argument)` in `synchronization_posix.cc` and a related `pthread_mutex_lock` assertion failure on `linux_simarm` platforms when the profiler is enabled, with a specific commit range suspected.

### [Issue #62346](https://github.com/dart-lang/sdk/issues/62346): `resolveSource` seemingly not resolving parts from imports?
* **Author:** [rrousselGit](https://github.com/rrousselGit)
* The `resolveSources` utility, when used with newer Analyzer versions, appears to be failing to resolve part files of imported libraries, specifically for Freezed-generated code, leading to missing definitions like `copyWith` on analyzed classes.

### [Issue #62304](https://github.com/dart-lang/sdk/issues/62304): Remove built_value dependency from built_value and built_collection packages
* **Author:** [jyameo](https://github.com/jyameo)

### [Issue #62268](https://github.com/dart-lang/sdk/issues/62268): [Primary Constructors] Audit `BestPracticesVerifier`, including all of the verifiers which that
* **Author:** [srawlins](https://github.com/srawlins)
* This issue is about auditing the `BestPracticesVerifier` for Primary Constructors to ensure it properly supports various annotations and attributes, including `Deprecated.optional`, `deprecated`, `experimental`, `must_be_immutable`, and `Preview`.

### [Issue #62248](https://github.com/dart-lang/sdk/issues/62248): [Primary Constructors] Unused local elements warnings (unused local variable, unused element, ...)
* **Author:** [srawlins](https://github.com/srawlins)


# GitHub PR Report for dart-lang/language
## From 2026-01-26

This period focused on discussions around the Dart language's design and future, with several issues closed that propose significant language enhancements and address semantic nuances. A key concern addressed involved an accidental privacy leak within Dart's dot shorthand, which allowed creating instances of otherwise inaccessible private classes; a proposed solution aims to restrict this access to the static namespace of such classes ([Issue #4606](https://github.com/dart-lang/language/issues/4606)). Discussions also explored expanding the language's expressiveness, including a proposal for native F-bounded polymorphism support to streamline boilerplate and facilitate cleaner API designs ([Issue #4618](https://github.com/dart-lang/language/issues/4618)). Additionally, the community weighed a bold suggestion to refactor the Dart language with C++20 or Rust to potentially boost performance, reputation, and ranking ([Issue #4619](https://github.com/dart-lang/language/issues/4619)). Minor clarifications were also made regarding the inclusion of WebAssembly within the shared memory multithreading proposal ([Issue #4615](https://github.com/dart-lang/language/issues/4615)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #4619](https://github.com/dart-lang/language/issues/4619): Suggest immediately refactoring Dart language with C++20 and/or Rust to improve performance, reputation, and ranking
* **Author:** [KuiperBelt-LAW](https://github.com/KuiperBelt-LAW)
* **Reactions:** **2** -- 👎 2
* This issue proposes immediately refactoring the Dart language with C++20 and/or Rust to boost performance, reputation, and ranking, citing Dart's syntax similarity to C++20 and C++'s role in Flutter as supporting factors.

### [Issue #4618](https://github.com/dart-lang/language/issues/4618): Native F-Bounded Polymorphism Support
* **Author:** [NattyPluz](https://github.com/NattyPluz)
* This issue proposes adding native F-bounded polymorphism support to Dart to eliminate `Self extends Foo<Self>` boilerplate, which currently pollutes signatures and requires excessive overrides, thereby enabling cleaner fluent APIs and better type-safe inheritance via solutions like a `Self` type or automatic inference.

### [Issue #4615](https://github.com/dart-lang/language/issues/4615): shared memory multithreading: worth mentioning Wasm here?
* **Author:** [kevmoo](https://github.com/kevmoo)
* This issue asks whether WebAssembly (Wasm) should be mentioned within the shared memory multithreading proposal document.

### [Issue #4606](https://github.com/dart-lang/language/issues/4606): Create extra instances of an inaccessible private class
* **Author:** [eernstg](https://github.com/eernstg)
* **Reactions:** **6** -- 👍 4 👀 2
* Dart's dot shorthand allows creating new instances of an otherwise inaccessible private class by using an existing instance to provide the context type, which is considered an accidental privacy leak; the proposed solution is to restrict dot shorthand access to the static namespace of such private classes, with special consideration for public type aliases.


# GitHub PR Report for dart-lang/native
## From 2026-01-26

There were no pull requests merged and no issues closed during this period, indicating that no changes were made to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/ai
## From 2026-01-26

There were no pull requests merged or issues closed during this period, indicating no recent changes to the repository's codebase or outstanding issues addressed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2026-01-26

During this period, no pull requests were merged and no issues were closed, indicating no significant changes or updates were made to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2026-01-26

This release cycle brought significant enhancements to the framework's animation capabilities, improved Android developer experience, and critical fixes for rendering and platform compatibility. A major public API update for `SizeTransition` was introduced ([PR #177895](https://github.com/flutter/flutter/pull/177895)), deprecating `axisAlignment` in favor of a new `alignment` property (AlignmentGeometry) to provide more comprehensive control over child positioning, directly addressing [Issue #19850](https://github.com/flutter/flutter/issues/19850). For Android development, efforts focused on better debugging and crash reporting with improved symbol generation for AOT snapshots ([Issue #170664](https://github.com/flutter/flutter/issues/170664)) and refining the stripping of `libapp.so` symbols in release builds ([PR #181275](https://github.com/flutter/flutter/pull/181275)). Core rendering stability was boosted by fixing incorrect `vec3` uniform padding on Metal (Impeller) ([PR #181340](https://github.com/flutter/flutter/pull/181340)), resolving [Issue #180873](https://github.com/flutter/flutter/issues/180873), and by correcting unwanted focus outlines in Firefox web views ([PR #181498](https://github.com/flutter/flutter/pull/181498)). Furthermore, crucial platform-specific issues were resolved, including the failure of `SystemChrome.setSystemUIOverlayStyle` to set `statusBarColor` on Android 15 ([Issue #163545](https://github.com/flutter/flutter/issues/163545)) and addressing Xcode debugging difficulties on updated macOS versions ([Issue #180304](https://github.com/flutter/flutter/issues/180304)). The community also saw an important Request For Comments (RFC) seeking feedback to enhance the accessibility development experience ([Issue #176237](https://github.com/flutter/flutter/issues/176237)), signaling future improvements in this critical area, alongside general code maintenance like the removal of an unused Android lifecycle listener ([PR #181406](https://github.com/flutter/flutter/pull/181406)).

## Merged Pull Requests

### [PR #181516](https://github.com/flutter/flutter/pull/181516): Bump engine.version for 3.38.8
* **Author:** [eyebrowsoffire](https://github.com/eyebrowsoffire)
* **Merged At:** 2026-01-26 03:21 PM
* **Comments:** 2
* Bumps the engine version to `db373eb85a06eb3d706af362a45d42d0972f4b46`, aligning with the 3.38.8 release.

### [PR #181506](https://github.com/flutter/flutter/pull/181506): Fixes duplicated import in accessibility test library
* **Author:** [chunhtai](https://github.com/chunhtai)
* **Merged At:** 2026-01-26 01:35 PM
* **Comments:** 2
* Removes a duplicated `dart:ui` import from the `accessibility.dart` test library and explicitly qualifies `FlutterView` references with the `ui` prefix where necessary.

### [PR #181501](https://github.com/flutter/flutter/pull/181501): Fix Gradle path in Android Platform Embedder README.
* **Author:** [ksokolovskyi](https://github.com/ksokolovskyi)
* **Merged At:** 2026-01-26 12:42 PM
* **Comments:** 1
* Fixes an incorrect Gradle local installation path in the Android Platform Embedder README.md.

### [PR #181498](https://github.com/flutter/flutter/pull/181498): fix firefox 3 38
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2026-01-26 10:17 AM
* **Comments:** 2
* This PR fixes an issue where Firefox would render an unwanted focus outline on Flutter web views by changing the CSS rule from `outline: none;` to `outline: rgb(0, 0, 0) none 0px;` to ensure the outline is properly hidden.

### [PR #181494](https://github.com/flutter/flutter/pull/181494): use git hash not content hash for engine.version
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2026-01-26 07:44 AM
* **Comments:** 2
* Updates the `bin/internal/engine.version` file to use the Git commit hash instead of a content hash, which resolves an issue where the engine version was not updating properly.

### [PR #181406](https://github.com/flutter/flutter/pull/181406): Remove unused `ActivityLifecycleListener` class
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-26 12:42 PM
* **Comments:** 5
* Removes the unused `ActivityLifecycleListener` interface and its corresponding build configuration from the Android platform code, cleaning up dead code.

### [PR #181340](https://github.com/flutter/flutter/pull/181340): Fixes metal vec3 uniform padding
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2026-01-26 01:52 PM
* **Comments:** 3
* This PR addresses https://github.com/flutter/flutter/issues/180873 by fixing incorrect `vec3` and `mat3x3` uniform padding on Metal, modifying the Impeller compiler to generate and insert appropriate padding bytes into uniform buffers, thereby ensuring correct GPU memory alignment and enabling previously skipped Impeller tests for Metal.

### [PR #181338](https://github.com/flutter/flutter/pull/181338): Improve code quality in `PlatformViewsController.java`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-26 09:46 AM
* **Comments:** 1
* This PR improves code quality in `PlatformViewsController` and `PlatformViewsController2` by fixing typos, simplifying collection handling with `addAll()`, and removing redundant integer casts for layout parameters.

### [PR #181275](https://github.com/flutter/flutter/pull/181275): [Reland] Don't strip symbols from `libapp.so` on android by default
* **Author:** [gmackall](https://github.com/gmackall)
* **Merged At:** 2026-01-26 12:49 PM
* **Comments:** 2
* This change resolves an issue where debug symbols for `libapp.so` were not stripped in Android release builds by modifying the Flutter Gradle Plugin to expose `libapp.so` directly to the Android Gradle Plugin for symbol stripping, instead of bundling it in a JAR.

### 🔥🔥🔥 [PR #177895](https://github.com/flutter/flutter/pull/177895): Add `alignment` to `SizeTransition`
* **Author:** [IvoneDjaja](https://github.com/IvoneDjaja)
* **Merged At:** 2026-01-26 02:32 PM
* **Comments:** 11
* Deprecates the `axisAlignment` property in `SizeTransition` and introduces a new `alignment` property (AlignmentGeometry) to provide full control over the child's position during size transitions. This change resolves issue #19850 and includes a migration tool to assist developers in updating existing code.


## Closed Issues

### [Issue #181450](https://github.com/flutter/flutter/issues/181450): [tool_crash] ExistingDartDevelopmentServiceException
* **Author:** [velan1207](https://github.com/velan1207)
* The `flutter run` command crashes with an `ExistingDartDevelopmentServiceException` error, despite Flutter Doctor reporting no issues.

### [Issue #181392](https://github.com/flutter/flutter/issues/181392): Post submit dashboard stuck in infinite queue
* **Author:** [reidbaker](https://github.com/reidbaker)
* The post-submit dashboard is stuck in an infinite queue, preventing users from triggering builds or contributing code, which is a critical breakage with no known workarounds.

### [Issue #181203](https://github.com/flutter/flutter/issues/181203): [CP] Fix for Firefox style test
* **Author:** [harryterkelsen](https://github.com/harryterkelsen)
* This issue requests to cherry-pick a fix from the main branch to beta to resolve Firefox style test failures caused by a recent Firefox update.

### [Issue #180873](https://github.com/flutter/flutter/issues/180873): enable 'FragmentShader shader with array uniforms renders correctly' for impeller
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* A fragment shader test with array uniforms fails on Impeller due to `mat2Array` uniforms being partially initialized, with a reported uniform data size differing from Skia.

### [Issue #180428](https://github.com/flutter/flutter/issues/180428): Codelabs First App won't start on any device in a Windows environment
* **Author:** [pademo57](https://github.com/pademo57)
* The 'First App' Codelab fails to run on Windows, reporting an error that the 'dart:ui' library is unavailable on the platform.

### [Issue #180407](https://github.com/flutter/flutter/issues/180407): "Unable to build plugin frameworks" I got this error when build flutter frameworks for ios
* **Author:** [bagusrizky15](https://github.com/bagusrizky15)
* The user is unable to build Flutter plugin frameworks for iOS, encountering a `ClangStatCache` build failure when using Xcode with the iPhoneOS 18.2 SDK.

### [Issue #180387](https://github.com/flutter/flutter/issues/180387): Crash: InternalFlutterGpu_Texture_AsImage SIGABRT on iOS (raster thread)
* **Author:** [kp990](https://github.com/kp990)
* A Flutter app on iOS is experiencing random `SIGABRT` crashes within the `InternalFlutterGpu_Texture_AsImage` function on the raster thread, affecting multiple iPhone models across various iOS versions (18.x and 26.x) when running Flutter stable 3.32.1.

### [Issue #180304](https://github.com/flutter/flutter/issues/180304): Flutter runs on iPhone after macOS 26.2 upgrade, but Xcode cannot run or debug
* **Author:** [codon19](https://github.com/codon19)
* **Reactions:** **2** -- 👍 1 🚀 1
* After upgrading macOS to 26.2 and Xcode to 26.2, Flutter apps can be deployed to iPhone using `flutter run`, but Xcode itself fails to run or debug them, with no logs or effective breakpoints.

### [Issue #176237](https://github.com/flutter/flutter/issues/176237): RFC: Seeking feedback on improving dev experience when working on accessibility
* **Author:** [chunhtai](https://github.com/chunhtai)
* **Reactions:** **26** -- 👍 23 ❤️ 3
* This RFC seeks feedback from Flutter developers regarding their pain points and desired tools/improvements to enhance the accessibility development experience and facilitate earlier detection of issues, aiming to shift from reactive fixes to proactive development.

### [Issue #171396](https://github.com/flutter/flutter/issues/171396): web skwam regression
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* This issue reports a performance regression in the web version of "skwam", with supporting performance monitoring links provided.

### [Issue #170664](https://github.com/flutter/flutter/issues/170664): [android] Generate symbol files for AOT snapshots even without split-debug-info
* **Author:** [mraleph](https://github.com/mraleph)
* **Reactions:** **5** -- 👍 5
* The issue proposes generating symbol files for Android AOT snapshots even without split-debug-info, to make native stack traces readable for ANRs, by producing unstripped snapshots and then splitting out symbolic information for Play Store upload, similar to how iOS handles `dSYM`.

### [Issue #163545](https://github.com/flutter/flutter/issues/163545): SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: theme.themeData.primaryColor)) does not work when targeting android 15 api 35
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Reactions:** **14** -- 👍 14
* The `SystemChrome.setSystemUIOverlayStyle` method fails to set `statusBarColor` on Android 15 (API 35); the proposed solution is to update documentation and implement API branching to avoid removed status bar color APIs.

### [Issue #19850](https://github.com/flutter/flutter/issues/19850): SizeTransition hard codes cross axis alignment.
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* The `SizeTransition` widget hard codes cross axis alignment and uses a confusing `axisAlignment` double property instead of the more standard `AlignmentGeometry`, limiting its flexibility.


# GitHub PR Report for flutter/genui
## From 2026-01-26

The primary change to the repository centers on a significant dependency reduction, with [PR #682](https://github.com/flutter/genui/pull/682) removing the `package:intl` dependency entirely. This refactoring involved replacing the dependency's non-internationalized date/time formatting within `debug_utils.dart` with a new `FixedDateTimeFormatter`, and updating date/time validation in `json_schema_builder` to leverage custom methods based on `DateTime.tryParse`. This move aims to streamline the codebase by internalizing common date and time utility functions previously handled by an external package.

## Merged Pull Requests

### [PR #682](https://github.com/flutter/genui/pull/682): Remove `package:intl` dependency
* **Author:** [mosuem](https://github.com/mosuem)
* **Merged At:** 2026-01-26 08:17 AM
* **Comments:** 4
* Removes the `package:intl` dependency by replacing its non-internationalized date/time formatting in `debug_utils.dart` with a new `FixedDateTimeFormatter` and its date/time validation in `json_schema_builder` with custom `DateTime.tryParse` based methods.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2026-01-26

There were no pull requests merged or issues closed during this period, indicating no changes were made to the repository based on the provided data.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2026-01-26

During this period, there were no pull requests merged and no issues closed, indicating no changes were made to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2026-01-26

The repository has seen several important updates focused on enhancing the accuracy, relevance, and accessibility of its documentation and tutorials. A significant effort was made to modernize existing tutorial content, notably replacing the outdated `dartpedia` package with directly provided code for the `Summary` data model and correcting erroneous `const` usage in `GamePage` examples, as detailed in [PR #12996](https://github.com/flutter/website/pull/12996), which directly addressed issues like the `dartpedia` lesson being outdated ([Issue #12983](https://github.com/flutter/website/issues/12983)) and `const` constructor errors ([Issue #12986](https://github.com/flutter/website/issues/12986)). Furthermore, an irrelevant placeholder video was removed from the "Set up a stateful Flutter project" page, improving content focus ([PR #12996](https://github.com/flutter/website/pull/12996) resolving [Issue #12992](https://github.com/flutter/website/issues/12992)). User experience was also improved by fixing broken links in key Flutter and Dart tutorials, a change that received notable attention ([PR #12993](https://github.com/flutter/website/pull/12993)). In terms of expanding technical resources, a new redirect was added for the Pigeon native interop design document ([PR #12982](https://github.com/flutter/website/pull/12982)), making crucial information about native integration more readily available. Finally, a small CSS tweak was implemented to prevent tutorial images from overflowing the viewport on smaller screens, enhancing the responsive design of the website ([PR #12994](https://github.com/flutter/website/pull/12994)).

## Merged Pull Requests

### [PR #12996](https://github.com/flutter/website/pull/12996): Patch FWE content
* **Author:** [ericwindmill](https://github.com/ericwindmill)
* **Merged At:** 2026-01-26 02:23 PM
* **Comments:** 2
* This PR updates tutorial content by removing a placeholder video, replacing the `dartpedia` package with directly provided code for the `Summary` data model, and fixing erroneous `const` usage in `GamePage` examples.

### [PR #12994](https://github.com/flutter/website/pull/12994): Small FWE CSS tweak
* **Author:** [ericwindmill](https://github.com/ericwindmill)
* **Merged At:** 2026-01-26 03:03 PM
* **Comments:** 2
* This PR fixes images overflowing the viewport on screens smaller than 500px wide by applying `max-width` and `width: 100%` to images in tutorial pages. It also introduces a `learn-image-wrapper` class to consistently apply these responsive styles to images within the `/learn` directory.

### [PR #12993](https://github.com/flutter/website/pull/12993): fix: update broken Flutter and Dart tutorial links
* **Author:** [UnderTheHoodRobin](https://github.com/UnderTheHoodRobin)
* **Merged At:** 2026-01-26 03:03 PM
* **Comments:** 5
* Fixes two broken links in the documentation for the 'Getting started with Dart' and 'Introduction to Flutter UI' tutorials, updating them to point to their correct and latest official versions.

### [PR #12982](https://github.com/flutter/website/pull/12982): add pigeon native interop doc
* **Author:** [tarrinneal](https://github.com/tarrinneal)
* **Merged At:** 2026-01-26 03:14 PM
* **Comments:** 2
* Adds a redirect for the Pigeon native interop design document to `firebase.json`, making the document accessible via a short URL.


## Closed Issues

### [Issue #12992](https://github.com/flutter/website/issues/12992): Video is unrelated to the contents of the article
* **Author:** [adriancuadrado](https://github.com/adriancuadrado)
* The video on the "Set up a stateful Flutter project" documentation page discusses "unbounded height," which is irrelevant to the page's content, and should be updated or removed.

### [Issue #12990](https://github.com/flutter/website/issues/12990): Go
* **Author:** [zyousef734-gif](https://github.com/zyousef734-gif)
* A typo has been reported on the Flutter installation documentation page at `docs.flutter.dev/install`.

### [Issue #12988](https://github.com/flutter/website/issues/12988): App multiple clients data
* **Author:** [mhmirza128-web](https://github.com/mhmirza128-web)
* A user new to MacBook and Flutter is attempting to create an app and is seeking information on "noncoding App" solutions within the Flutter ecosystem, specifically after reviewing the quick installation guide.

### [Issue #12987](https://github.com/flutter/website/issues/12987): NotVirus13
* **Author:** [n78810142-max](https://github.com/n78810142-max)
* This issue appears to be spam, promoting a torrent tracker that the user claims is virus-free.

### [Issue #12986](https://github.com/flutter/website/issues/12986): Can't define the 'const' constructor because the field '_game' is initialized with a non-constant value.
* **Author:** [adriancuadrado](https://github.com/adriancuadrado)
* A user is encountering a `const` constructor error in VSCode when copying Flutter code from the layout tutorial, specifically because the `_game` field is initialized with a non-constant `Game()` value within a `const` class constructor.

### [Issue #12983](https://github.com/flutter/website/issues/12983): dartpedia discontinued in dart3, therefore lesson is outdated
* **Author:** [kode-emperor](https://github.com/kode-emperor)
* **Reactions:** **1** -- 👍 1
* The tutorial at `docs.flutter.dev/learn/tutorial/http-requests` is outdated because the `dartpedia` package, used for processing Wikipedia responses and creating `Summary` models, has been discontinued in Dart 3, making the lesson difficult to follow; the proposed fix is to provide or suggest an alternative package compatible with the current SDK.



## Top Hacker News Stories

### 157 🔥 [Xfwl4 – The Roadmap for a Xfce Wayland Compositor](https://alexxcons.github.io/blogpost_15.html)
* **Author:** [pantalaimon](https://news.ycombinator.com/user?id=pantalaimon) | **Comments:** [92](https://news.ycombinator.com/item?id=46779645)

### 70  [430k-year-old well-preserved wooden tools are the oldest ever found](https://archaeologymag.com/2026/01/430000-year-old-wooden-tools-marathousa/)
* **Author:** [bookofjoe](https://news.ycombinator.com/user?id=bookofjoe) | **Comments:** [53](https://news.ycombinator.com/item?id=46781530)

### 233 🔥 [I made my own Git](https://tonystr.net/blog/git_immitation)
* **Author:** [TonyStr](https://news.ycombinator.com/user?id=TonyStr) | **Comments:** [95](https://news.ycombinator.com/item?id=46778341)

### 5  [Management as AI superpower: Thriving in a world of agentic AI](https://www.oneusefulthing.org/p/management-as-ai-superpower)
* **Author:** [swolpers](https://news.ycombinator.com/user?id=swolpers) | **Comments:** [0](https://news.ycombinator.com/item?id=46782811)

### 516 🔥🔥 [Heathrow scraps liquid container limit](https://www.bbc.com/news/articles/c1evvx89559o)
* **Author:** [robotsliketea](https://news.ycombinator.com/user?id=robotsliketea) | **Comments:** [682](https://news.ycombinator.com/item?id=46736815)

### 1  [Artie (YC S23) Is Hiring a Founding Recruiter](https://www.ycombinator.com/companies/artie/jobs/MX163y2-founding-recruiter)
* **Author:** [j-cheong](https://news.ycombinator.com/user?id=j-cheong) | **Comments:** [null](https://news.ycombinator.com/item?id=46782763)

### 110 🔥 [Amazon to Shut Down All Amazon Go and Amazon Fresh Stores](https://www.wsj.com/business/retail/amazon-to-shut-down-all-amazon-go-and-amazon-fresh-stores-0301dfb7)
* **Author:** [gmays](https://news.ycombinator.com/user?id=gmays) | **Comments:** [78](https://news.ycombinator.com/item?id=46781707)

### 117 🔥 [Snow Simulation Toy](https://potch.me/2026/snow-simulation-toy.html)
* **Author:** [surprisetalk](https://news.ycombinator.com/user?id=surprisetalk) | **Comments:** [29](https://news.ycombinator.com/item?id=46691548)

### 54  [The Enchiridion by Epictetus](https://www.gutenberg.org/files/45109/45109-h/45109-h.htm)
* **Author:** [atropoles](https://news.ycombinator.com/user?id=atropoles) | **Comments:** [22](https://news.ycombinator.com/item?id=46735637)

### 21  [Two Twisty Shapes Resolve a Centuries-Old Topology Puzzle](https://www.quantamagazine.org/two-twisty-shapes-resolve-a-centuries-old-topology-puzzle-20260120/)
* **Author:** [tzury](https://news.ycombinator.com/user?id=tzury) | **Comments:** [0](https://news.ycombinator.com/item?id=46770855)

### 5  [OpenSSL: Stack buffer overflow in CMS AuthEnvelopedData parsing](https://openssl-library.org/news/vulnerabilities/#CVE-2025-15467)
* **Author:** [MagerValp](https://news.ycombinator.com/user?id=MagerValp) | **Comments:** [0](https://news.ycombinator.com/item?id=46782662)

### 15  [A simulation where life unfolds in real time](https://soupof.life)
* **Author:** [maybe-tomorrow](https://news.ycombinator.com/user?id=maybe-tomorrow) | **Comments:** [5](https://news.ycombinator.com/item?id=46702948)

### 179 🔥 [Cloudflare claimed they implemented Matrix on Cloudflare workers. They didn't](https://tech.lgbt/@JadedBlueEyes/115967791152135761)
* **Author:** [JadedBlueEyes](https://news.ycombinator.com/user?id=JadedBlueEyes) | **Comments:** [69](https://news.ycombinator.com/item?id=46781516)

### 633 🔥🔥🔥 [TikTok users can't upload anti-ICE videos. The company blames tech issues](https://www.cnn.com/2026/01/26/tech/tiktok-ice-censorship-glitch-cec)
* **Author:** [kotaKat](https://news.ycombinator.com/user?id=kotaKat) | **Comments:** [414](https://news.ycombinator.com/item?id=46779809)

### 134 🔥 [Velox: A Port of Tauri to Swift by Miguel de Icaza](https://github.com/velox-apps/velox)
* **Author:** [wahnfrieden](https://news.ycombinator.com/user?id=wahnfrieden) | **Comments:** [56](https://news.ycombinator.com/item?id=46687729)

### 133 🔥 [The age of Pump and Dump software](https://tautvilas.medium.com/software-pump-and-dump-c8a9a73d313b)
* **Author:** [brisky](https://news.ycombinator.com/user?id=brisky) | **Comments:** [48](https://news.ycombinator.com/item?id=46780065)

### 82  [Show HN: We Built the 1. EU-Sovereignty Audit for Websites](https://lightwaves.io/en/eu-audit/)
* **Author:** [cmkr](https://news.ycombinator.com/user?id=cmkr) | **Comments:** [62](https://news.ycombinator.com/item?id=46779994)

### 235 🔥 [A list of fun destinations for telnet](https://telnet.org/htm/places.htm)
* **Author:** [tokyobreakfast](https://news.ycombinator.com/user?id=tokyobreakfast) | **Comments:** [75](https://news.ycombinator.com/item?id=46775135)

### 16  [Handling Long Branches](https://maskray.me/blog/2026-01-25-handling-long-branches)
* **Author:** [ingve](https://news.ycombinator.com/user?id=ingve) | **Comments:** [0](https://news.ycombinator.com/item?id=46762827)

### 54  [Amazon Closing Fresh and Go Stores](https://finance.yahoo.com/news/amazon-closing-fresh-grocery-convenience-150437789.html)
* **Author:** [trenning](https://news.ycombinator.com/user?id=trenning) | **Comments:** [32](https://news.ycombinator.com/item?id=46781444)

### 382 🔥🔥 [Kimi Released Kimi K2.5, Open-Source Visual SOTA-Agentic Model](https://www.kimi.com/blog/kimi-k2-5.html)
* **Author:** [nekofneko](https://news.ycombinator.com/user?id=nekofneko) | **Comments:** [166](https://news.ycombinator.com/item?id=46775961)

### 551 🔥🔥 [Apple introduces new AirTag with longer range and improved findability](https://www.apple.com/newsroom/2026/01/apple-introduces-new-airtag-with-expanded-range-and-improved-findability/)
* **Author:** [meetpateltech](https://news.ycombinator.com/user?id=meetpateltech) | **Comments:** [664](https://news.ycombinator.com/item?id=46765819)

### 408 🔥🔥 [ChatGPT Containers can now run bash, pip/npm install packages and download files](https://simonwillison.net/2026/Jan/26/chatgpt-containers/)
* **Author:** [simonw](https://news.ycombinator.com/user?id=simonw) | **Comments:** [290](https://news.ycombinator.com/item?id=46770221)

### 382 🔥🔥 [The hidden engineering of runways](https://practical.engineering/blog/2026/1/20/the-hidden-engineering-of-runways)
* **Author:** [crescit_eundo](https://news.ycombinator.com/user?id=crescit_eundo) | **Comments:** [90](https://news.ycombinator.com/item?id=46694193)

### 112 🔥 [The Universal Pattern Popping Up in Math, Physics and Biology (2013)](https://www.quantamagazine.org/in-mysterious-pattern-math-and-nature-converge-20130205/)
* **Author:** [kerim-ca](https://news.ycombinator.com/user?id=kerim-ca) | **Comments:** [41](https://news.ycombinator.com/item?id=46728878)



