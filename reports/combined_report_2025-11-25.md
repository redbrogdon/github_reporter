# Overall Summary
**[Issue #138627](https://github.com/flutter/flutter/issues/138627) (flutter/flutter): [desktop] toImageSync retains display list which can lead to surprising memory retention**
  * **Reactions:** **191** -- 👍 189 🚀 2
  * The `toImageSync` method on desktop platforms appears to retain its display list, causing a severe memory leak visible in the OS memory monitor but not in DevTools, which can lead to a system crash.

**[Issue #58214](https://github.com/dart-lang/sdk/issues/58214) (dart-lang/sdk): Add `unused_argument` lint**
  * **Reactions:** **47** -- 👍 46 👀 1
  * This issue proposes adding a new lint, `unused_argument`, to detect when a function argument is declared but not used, and a corresponding helper function to explicitly mark arguments as intentionally unused.

**🔥🔥🔥 [PR #176948](https://github.com/flutter/flutter/pull/176948) (flutter/flutter): Pass EXCLUDED_ARCHS from Xcode project to xcodebuild for macOS builds**
  * **Comments:** 11
  * This PR updates the macOS build process to pass the `EXCLUDED_ARCHS` build setting from the Xcode project directly to the `xcodebuild` command, fixing build failures when native dependencies do not support all target architectures.

**🔥 [PR #176519](https://github.com/flutter/flutter/pull/176519) (flutter/flutter): Disposes test restoration manager when accessed by bindings**
  * **Comments:** 10
  * Fixes a memory leak in widget tests by ensuring the `TestRestorationManager` is disposed of during test teardown, which previously did not happen if the manager was accessed via `ServicesBinding`.

**🔥 [PR #10511](https://github.com/flutter/packages/pull/10511) (flutter/packages): [all] Omit obvious local types**
  * **Comments:** 8
  * This PR updates repository-wide analysis options to favor omitting obvious local variable types, enabling new linter rules like `omit_obvious_local_variable_types` and removing the `always_specify_types` rule to align with modern Dart style.

**🔥 [PR #12125](https://github.com/flutter/website/pull/12125) (flutter/website): Update the material 3 design token docs**
  * **Comments:** 7
  * Documents a breaking change from an update to the `material_color_utilities` package, which changes the color generation algorithm for several `ColorScheme` properties to align with the latest Material 3 design tokens.

**[Issue #58361](https://github.com/dart-lang/sdk/issues/58361) (dart-lang/sdk): Lint rule for `!` postfix bang/exclamation and `late` null safety language features**
  * **Reactions:** **6** -- 👍 6
  * This issue proposes a new lint rule to flag the use of the null assertion operator (`!`) and the `late` keyword, enabling development teams to enforce coding standards and work towards stronger compile-time null safety.

**[Issue #2814](https://github.com/dart-lang/native/issues/2814) (dart-lang/native): [code_assets] Feature request: Flutter should bundle DynamicLoadingBundled native assets even if they are not statically referenced**
  * A feature is requested for the Flutter build system to bundle `DynamicLoadingBundled` native assets even if they are not statically referenced in Dart code, as the current tree-shaking behavior prevents use cases like dynamically loading plugins at runtime.

**[Issue #59364](https://github.com/dart-lang/sdk/issues/59364) (dart-lang/sdk): New lint suggestion: `uncaught_async_error_in_try_catch`**
  * This issue proposes a new lint, `uncaught_async_error_in_try_catch`, to warn developers when an asynchronous function is called within a `try...catch` block without an `await`, which prevents the `catch` block from handling potential errors.


# GitHub PR Report for dart-lang/ai
## From 2025-11-24

This was a quiet period for the repository, with no pull requests merged or issues closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2025-11-24

While no pull requests were merged, this period saw the closure of numerous issues, with a strong focus on enhancing static analysis and code quality through new linter rules. The most prominent discussion centered on detecting unused function parameters, a highly requested feature detailed in issue [#58214](https://github.com/dart-lang/sdk/issues/58214), which received significant community feedback. Other proposals aimed to bolster null safety and correctness by flagging the use of the null-assertion operator (`!`) and `late` keyword ([#58361](https://github.com/dart-lang/sdk/issues/58361)), improving async error handling ([#59364](https://github.com/dart-lang/sdk/issues/59364)), and preventing unsafe casts to extension types ([#59208](https://github.com/dart-lang/sdk/issues/59208)). Additionally, several bugs were addressed, including an invalid analyzer diagnostic for deprecated fields ([#62080](https://github.com/dart-lang/sdk/issues/62080)) and various VM test failures.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62080](https://github.com/dart-lang/sdk/issues/62080): Invalid diagnostic on initializing parameter associated with a deprecated field
* **Author:** [bwilkerson](https://github.com/bwilkerson)
* The analyzer reports an invalid diagnostic with an inaccurate message when a constructor's initializing formal parameter is associated with a deprecated field.

### [Issue #62061](https://github.com/dart-lang/sdk/issues/62061): Failures on [vm] Initial implementation of module snapshot reader
* **Author:** [alexmarkov](https://github.com/alexmarkov)
* The initial implementation of the module snapshot reader is causing three `vm/cc/Assembler` tests to crash on the `vm-linux-release-ia32` configuration.

### [Issue #62058](https://github.com/dart-lang/sdk/issues/62058): Newly introduced test vm/dart/use_macho_reduce_padding_flag_test fails with runtime error
* **Author:** [aam](https://github.com/aam)
* The newly introduced test `vm/dart/use_macho_reduce_padding_flag_test` is failing across multiple bots with a "Null check operator used on a null value" runtime error, which may be caused by the `dsymutil` binary not being found.

### [Issue #62057](https://github.com/dart-lang/sdk/issues/62057): vm/dart/use_dwarf_stack_traces_flag_test fails with runtime error
* **Author:** [aam](https://github.com/aam)
* The `vm/dart/use_dwarf_stack_traces_flag_test` is failing with a runtime error on multiple platforms since a recent commit, with logs indicating an assertion failure in `mach_o.cc` (`expected: use_zerofill || !segment->HasZerofillSections()`) during Mach-O snapshot generation.

### [Issue #59955](https://github.com/dart-lang/sdk/issues/59955): [lint] avoid_unused_parameters
* **Author:** [stephane-archer](https://github.com/stephane-archer)
* **Reactions:** **2** -- 👍 1 👀 1
* The `avoid_unused_parameters` lint does not flag an unused parameter in a `copyWith` method.

### [Issue #59475](https://github.com/dart-lang/sdk/issues/59475): [Wildcard Variables][lint] consider a `no_unused_parameters` lint
* **Author:** [pq](https://github.com/pq)
* This issue proposes a new `no_unused_parameters` lint that would flag unused parameters, encouraging developers to either remove them or explicitly mark them as intentionally unused with a wildcard variable (`_`).

### [Issue #59364](https://github.com/dart-lang/sdk/issues/59364): New lint suggestion: `uncaught_async_error_in_try_catch`
* **Author:** [gmpassos](https://github.com/gmpassos)
* This issue proposes a new lint, `uncaught_async_error_in_try_catch`, to warn developers when an asynchronous function is called within a `try...catch` block without an `await`, which prevents the `catch` block from handling potential errors.

### [Issue #59208](https://github.com/dart-lang/sdk/issues/59208): Lint for cast to extension type (formerly known as inline class)
* **Author:** [Cat-sushi](https://github.com/Cat-sushi)
* **Reactions:** **1** -- 👍 1
* This issue proposes a new lint to warn against casting a value to an extension type using `as`, since this operation bypasses any validation logic present in the constructor.

### [Issue #58884](https://github.com/dart-lang/sdk/issues/58884): Lint to warn about incorrect types in overrides in a mixed mode null safety setting
* **Author:** [nshahan](https://github.com/nshahan)
* This issue proposes a new lint to warn about incompatible method overrides between two null-safe libraries when they are connected through a non-null-safe library, a situation that currently hides type errors from the compiler.

### [Issue #58411](https://github.com/dart-lang/sdk/issues/58411): dynamic type association raise warning when using null-safety
* **Author:** [Jictyvoo](https://github.com/Jictyvoo)
* **Reactions:** **1** -- 👍 1
* A null-safety warning should be raised when a `dynamic` value, which may be null (e.g., from a map lookup), is assigned to a non-nullable variable, as this creates a potential loophole in static analysis.

### [Issue #58361](https://github.com/dart-lang/sdk/issues/58361): Lint rule for `!` postfix bang/exclamation and `late` null safety language features
* **Author:** [duttaoindril](https://github.com/duttaoindril)
* **Reactions:** **6** -- 👍 6
* This issue proposes a new lint rule to flag the use of the null assertion operator (`!`) and the `late` keyword, enabling development teams to enforce coding standards and work towards stronger compile-time null safety.

### [Issue #58214](https://github.com/dart-lang/sdk/issues/58214): Add `unused_argument` lint
* **Author:** [cubuspl42](https://github.com/cubuspl42)
* **Reactions:** **47** -- 👍 46 👀 1
* This issue proposes adding a new lint, `unused_argument`, to detect when a function argument is declared but not used, and a corresponding helper function to explicitly mark arguments as intentionally unused.


# GitHub PR Report for dart-lang/language
## From 2025-11-24

This was a quiet period for development, with no new pull requests merged or issues closed. Consequently, there were no direct changes to the codebase or its public API during this time.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2025-11-24

This period saw a significant infrastructure change with the migration of `package:record_use` from the main Dart SDK into this repository, a move aimed at better aligning its release logic and testing with other native packages ([#2677](https://github.com/dart-lang/native/issues/2677), [#2812](https://github.com/dart-lang/native/pull/2812)). Following this change, documentation for the package was updated to correct code examples and align with the current API ([#2820](https://github.com/dart-lang/native/pull/2820)). Additionally, a notable feature request was closed concerning the Flutter build system, proposing that `DynamicLoadingBundled` native assets be included in builds even without static references in Dart code to better support dynamic plugin loading use cases ([#2814](https://github.com/dart-lang/native/issues/2814)).

## Merged Pull Requests

### [PR #2820](https://github.com/dart-lang/native/pull/2820): [record_use] doc fixes
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2025-11-24 06:18 AM
* **Comments:** 1
* This pull request updates documentation in the `record_use` package, correcting a typo and revising code examples to align with the current API and use the correct `@RecordUse` annotation.

### [PR #2812](https://github.com/dart-lang/native/pull/2812): [infra] Move `package:record_use` here
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-11-24 01:24 AM
* **Comments:** 3
* Moves the `package:record_use` from the Dart SDK into this repository, updating its version, lint rules, and example code to align with its new location.


## Closed Issues

### [Issue #2814](https://github.com/dart-lang/native/issues/2814): [code_assets] Feature request: Flutter should bundle DynamicLoadingBundled native assets even if they are not statically referenced
* **Author:** [Ferry-200](https://github.com/Ferry-200)
* A feature is requested for the Flutter build system to bundle `DynamicLoadingBundled` native assets even if they are not statically referenced in Dart code, as the current tree-shaking behavior prevents use cases like dynamically loading plugins at runtime.

### [Issue #2677](https://github.com/dart-lang/native/issues/2677): [record_use] Implementation: Move package to this repo
* **Author:** [dcharkes](https://github.com/dcharkes)
* This issue proposes moving the `package:record_use` into this repository to align its release logic, lints, and tests with other packages and to enable component testing of link hooks and asset tree-shaking without requiring a full Dart SDK.


# GitHub PR Report for flutter/ai
## From 2025-11-24

Based on the provided lists, there were no pull requests merged or issues closed during this period. This indicates a quiet phase for the repository, with no new features, bug fixes, or other code changes integrated.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-11-24

This was a quiet period for the project, with no pull requests merged or issues closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-11-24

This cycle brought significant improvements to stability and the developer toolchain. A major highlight was the resolution of a long-standing and highly-impactful memory leak on desktop platforms related to the `toImageSync` method, as tracked in issue [#138627](https://github.com/flutter/flutter/issues/138627). For developers targeting macOS, an important and much-discussed fix ([PR #176948](https://github.com/flutter/flutter/pull/176948)) now correctly forwards the `EXCLUDED_ARCHS` setting, resolving build failures when using native dependencies. The testing framework also received a key fix for a memory leak where the `TestRestorationManager` was not being properly disposed of during test teardown ([PR #176519](https://github.com/flutter/flutter/pull/176519)). Additionally, the core Dart SDK dependency was updated ([PR #179034](https://github.com/flutter/flutter/pull/179034)), and the Widget Preview tool was made more resilient by generating its scaffold project in a temporary directory to prevent crashes when running `flutter clean` ([PR #179039](https://github.com/flutter/flutter/pull/179039)).

## Merged Pull Requests

### [PR #179039](https://github.com/flutter/flutter/pull/179039): [ Widget Preview ] Always generate scaffold under `$TMP`
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-11-24 01:19 PM
* **Comments:** 2
* This change moves the generation of the `widget_preview_scaffold` project to the system's temporary directory to prevent `flutter clean` from deleting it and crashing an active preview session.

### 🔥 [PR #179034](https://github.com/flutter/flutter/pull/179034): update dart hash to 3.11.0-93.2.beta
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2025-11-24 12:00 PM
* **Comments:** 6
* Bumps the Dart SDK dependency to version 3.11.0-93.2.beta.

### [PR #179030](https://github.com/flutter/flutter/pull/179030): Roll pub manually, pick up flutter_lints in examples/api
* **Author:** [Piinks](https://github.com/Piinks)
* **Merged At:** 2025-11-24 11:10 AM
* **Comments:** 1
* This PR adds `flutter_lints` as a dev dependency to the `examples/api` package and updates various other Dart and native dependencies as part of a manual pub roll.

### [PR #178935](https://github.com/flutter/flutter/pull/178935): Update CHANGELOG.md for Flutter 3.38.3
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2025-11-24 12:16 PM
* **Comments:** 3
* This PR adds the changelog entry for the Flutter 3.38.3 hotfix release, which includes a Dart SDK update and a fix for an engine/framework version mismatch, and also improves the instructions for updating Dart dependencies.

### [PR #178909](https://github.com/flutter/flutter/pull/178909): Refactor `_isLabel` method in `stepper.dart` to use `any` for better readablity
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-24 02:22 PM
* **Comments:** 0
* This PR refactors the `_isLabel` method in `stepper.dart`, replacing a `for` loop with the more concise and readable `.any()` method to check if any step has a label.

### [PR #178874](https://github.com/flutter/flutter/pull/178874): updated licenses_cpp readme
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2025-11-24 03:03 PM
* **Comments:** 1
* This PR updates the README for the `licenses_cpp` tool, clarifying its purpose as a CI license verifier and adding instructions on how to build and run it locally.

### [PR #178590](https://github.com/flutter/flutter/pull/178590): Remove unnecessary `String.valueOf` in `SettingsChannel.java‎`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-24 12:03 PM
* **Comments:** 1
* Removes redundant `String.valueOf` calls from log messages in `SettingsChannel.java`, simplifying the code by relying on Java's automatic string conversion for primitive types.

### [PR #178499](https://github.com/flutter/flutter/pull/178499): Potentially fixing the flakiness in win32 windowing tests, but it needs some running
* **Author:** [mattkae](https://github.com/mattkae)
* **Merged At:** 2025-11-24 06:21 AM
* **Comments:** 0
* This PR adds retries, timeouts, and improved error handling to the win32 windowing integration tests in an effort to reduce their flakiness.

### 🔥🔥🔥 [PR #176948](https://github.com/flutter/flutter/pull/176948): Pass EXCLUDED_ARCHS from Xcode project to xcodebuild for macOS builds
* **Author:** [abdelaziz-mahdy](https://github.com/abdelaziz-mahdy)
* **Merged At:** 2025-11-24 08:28 AM
* **Comments:** 11
* This PR updates the macOS build process to pass the `EXCLUDED_ARCHS` build setting from the Xcode project directly to the `xcodebuild` command, fixing build failures when native dependencies do not support all target architectures.

### 🔥 [PR #176519](https://github.com/flutter/flutter/pull/176519): Disposes test restoration manager when accessed by bindings
* **Author:** [hgraceb](https://github.com/hgraceb)
* **Merged At:** 2025-11-24 01:57 PM
* **Comments:** 10
* Fixes a memory leak in widget tests by ensuring the `TestRestorationManager` is disposed of during test teardown, which previously did not happen if the manager was accessed via `ServicesBinding`.


## Closed Issues

### [Issue #179045](https://github.com/flutter/flutter/issues/179045): linux-25 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The Linux machine `linux-25` has lost its external connection from a connected phone device.

### [Issue #179026](https://github.com/flutter/flutter/issues/179026): win-1 in quarantined state because the local Temp directory exceeded 1024 files.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The win-1 machine has been quarantined because its local temporary directory exceeded the 1024 file limit.

### [Issue #178988](https://github.com/flutter/flutter/issues/178988): [tool_crash] FileSystemException: Cannot create link, OS Error: File exists, errno = 17
* **Author:** [Haibara-Ainstein](https://github.com/Haibara-Ainstein)
* The `flutter pub get` command crashes with a `FileSystemException` (OS Error: File exists, errno = 17) when the tool's plugin management logic attempts to create a symlink that already exists.

### [Issue #178967](https://github.com/flutter/flutter/issues/178967): Single FFI Plugin With Additional Libraries
* **Author:** [RohitSaily](https://github.com/RohitSaily)
* This issue requests documentation and examples for creating a single Flutter FFI plugin that bundles multiple, independently loadable dynamic libraries, covering both libraries built from source within the package and pre-compiled binaries.

### [Issue #178903](https://github.com/flutter/flutter/issues/178903): [Android] Build failed: Plugin 'com.android.application' version '8.9.1' not found after upgrading to Flutter 3.38.1
* **Author:** [alireza-hnzpv](https://github.com/alireza-hnzpv)
* **Reactions:** **2** -- 👀 2
* After upgrading to Flutter 3.38.1, Android builds fail because the project template generates a `settings.gradle.kts` file that references a non-existent Android Gradle Plugin version `8.9.1`.

### [Issue #177898](https://github.com/flutter/flutter/issues/177898): flutter  3.27.4  Anr crash
* **Author:** [chunhejingming123](https://github.com/chunhejingming123)
* A user is reporting an "Application Not Responding" (ANR) crash on various Android devices using Flutter versions from 3.7 up to 3.27.4, providing a native backtrace that points to an abort within Android's ART.

### [Issue #177857](https://github.com/flutter/flutter/issues/177857): Black bar appears instead of fully hidden status bar in immersiveSticky mode on specific Android devices (IIIF150, Redmi 11)
* **Author:** [IILLUMINATION](https://github.com/IILLUMINATION)
* On specific Android devices like the IIIF150 and Redmi 11, using `SystemUiMode.immersiveSticky` results in a persistent black bar where the status bar should be hidden, preventing the app from displaying in true full-screen mode.

### [Issue #177763](https://github.com/flutter/flutter/issues/177763): [Android] Recursive JNI CheckException crash in platform_view_android_jni_impl.cc:1600
* **Author:** [dhc-songbincheng](https://github.com/dhc-songbincheng)
* A fatal `JNI CheckException` is causing crashes on Android in `platform_view_android_jni_impl.cc`, with stack traces showing a repetitive pattern that suggests a recursive loop or improper exception propagation.

### [Issue #177494](https://github.com/flutter/flutter/issues/177494): Some interactable elements are reported twice to screen readers
* **Author:** [paul-geoghegan](https://github.com/paul-geoghegan)
* An accessibility issue causes interactable elements, such as a selected `RadioListTile`, to be announced twice by screen readers when a user tabs through them.

### [Issue #177406](https://github.com/flutter/flutter/issues/177406): `TextStyle.letterSpacing` does not work well with arabic script
* **Author:** [Renzo-Olivares](https://github.com/Renzo-Olivares)
* The `TextStyle.letterSpacing` property incorrectly breaks the visual connection between characters in Arabic script, whereas other platforms typically handle this by either ignoring the property or applying spacing while preserving the character connections.

### [Issue #175058](https://github.com/flutter/flutter/issues/175058): Flutter widget preview server crashes when running "flutter clean"
* **Author:** [DanTup](https://github.com/DanTup)
* The Flutter widget preview server crashes with a `PathNotFoundException` when `flutter clean` is run because the command deletes files in the `.dart_tool` directory that the server is still trying to access.

### [Issue #170523](https://github.com/flutter/flutter/issues/170523): Author documentation for how to tell if an android app uses flutter.
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Reactions:** **3** -- 👍 3
* This issue requests documentation on how to identify if an Android app is built with Flutter to help mobile analytics vendors avoid false positives.

### [Issue #169119](https://github.com/flutter/flutter/issues/169119): Leak memory in tests when dragging a `SingleChildScrollView`
* **Author:** [ValentinVignal](https://github.com/ValentinVignal)
* Dragging a `SingleChildScrollView` in a widget test causes a memory leak where `TestRestorationManager` and `RestorationBucket` are not disposed.

### [Issue #138627](https://github.com/flutter/flutter/issues/138627): [desktop] toImageSync retains display list which can lead to surprising memory retention
* **Author:** [alnitak](https://github.com/alnitak)
* **Reactions:** **191** -- 👍 189 🚀 2
* The `toImageSync` method on desktop platforms appears to retain its display list, causing a severe memory leak visible in the OS memory monitor but not in DevTools, which can lead to a system crash.


# GitHub PR Report for flutter/genui
## From 2025-11-24

This was a quiet period for the repository, with no pull requests merged and no issues closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2025-11-24

This period saw a significant, repository-wide modernization of the Dart code style. A key change, introduced in a pull request with substantial discussion ([PR #10511](https://github.com/flutter/packages/pull/10511)), was the adoption of linter rules that favor omitting obvious local variable types. This aligns the entire codebase with modern Dart practices by removing the `always_specify_types` rule and applying the new formatting across all packages. Additionally, routine maintenance included updating the Robolectric test dependency to version 4.16 ([PR #10492](https://github.com/flutter/packages/pull/10492)).

## Merged Pull Requests

### 🔥 [PR #10511](https://github.com/flutter/packages/pull/10511): [all] Omit obvious local types
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-24 03:26 PM
* **Comments:** 8
* This PR updates repository-wide analysis options to favor omitting obvious local variable types, enabling new linter rules like `omit_obvious_local_variable_types` and removing the `always_specify_types` rule to align with modern Dart style. The new formatting has been applied across all packages, and the minimum Dart SDK has been updated for several packages to support the analyzer changes.

### [PR #10492](https://github.com/flutter/packages/pull/10492): [Android 16] Bump Packages to Robolectric 4.16
* **Author:** [jesswrd](https://github.com/jesswrd)
* **Merged At:** 2025-11-24 10:52 AM
* **Comments:** 1
* This PR bumps the Robolectric test dependency to version 4.16 in the example apps for the `video_player` and `video_player_android` packages.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-11-24

This was a quiet period for the project, with no new pull requests merged or issues closed. Consequently, there were no changes to the codebase or public API during this time.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-11-24

This period's updates included a significant documentation change for the Material 3 design system. A high-comment pull request, [PR #12125](https://github.com/flutter/website/pull/12125), was merged to document a breaking change in the `material_color_utilities` package that alters the color generation algorithm for `ColorScheme` properties. To improve the readability of documentation, a new stepper UI component was introduced in [PR #12675](https://github.com/flutter/website/pull/12675), which renders headings as a series of accessible, expandable steps. Additionally, internal cleanup continued with the removal of several Liquid templating language usages to simplify the markdown source ([PR #12741](https://github.com/flutter/website/pull/12741)).

## Merged Pull Requests

### [PR #12741](https://github.com/flutter/website/pull/12741): Remove a few more Liquid usages
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-11-24 11:32 AM
* **Comments:** 2
* This PR removes several uses of the Liquid templating language from the site's documentation by replacing local variable assignments with direct references to global site variables, which simplifies the markdown source.

### [PR #12675](https://github.com/flutter/website/pull/12675): Add stepper component for FWE
* **Author:** [schultek](https://github.com/schultek)
* **Merged At:** 2025-11-24 04:31 AM
* **Comments:** 2
* This PR introduces a new stepper UI component that renders markdown headings as a series of expandable steps, using the HTML `<details>` element for each step to ensure accessibility and keyboard navigation.

### 🔥 [PR #12125](https://github.com/flutter/website/pull/12125): Update the material 3 design token docs
* **Author:** [kevmoo](https://github.com/kevmoo)
* **Merged At:** 2025-11-24 11:51 AM
* **Comments:** 7
* Documents a breaking change from an update to the `material_color_utilities` package, which changes the color generation algorithm for several `ColorScheme` properties to align with the latest Material 3 design tokens.


## Closed Issues

No issues were closed during this time.



## Top Hacker News Stories

### 127 🔥 [Apt Rust requirement raises questions](https://lwn.net/SubscriberLink/1046841/5bbf1fc049a18947/)
* **Author:** [todsacerdoti](https://news.ycombinator.com/user?id=todsacerdoti) | **Comments:** [192](https://news.ycombinator.com/item?id=46045972)

### 61  [Launch HN: Onyx (YC W24) – The open-source chat UI]()
* **Author:** [Weves](https://news.ycombinator.com/user?id=Weves) | **Comments:** [36](https://news.ycombinator.com/item?id=46045987)
* Onyx is an open-source, self-hostable chat UI that works with any LLM and integrates enterprise-grade tools like RAG, web search, and memory. It aims to provide a secure, high-quality, and model-agnostic alternative to services like ChatGPT Enterprise.

### 16  [Orion 1.0 – Browse Beyond](https://blog.kagi.com/orion)
* **Author:** [STRiDEX](https://news.ycombinator.com/user?id=STRiDEX) | **Comments:** [4](https://news.ycombinator.com/item?id=46047350)

### 287 🔥🔥 [Human brains are preconfigured with instructions for understanding the world](https://news.ucsc.edu/2025/11/sharf-preconfigured-brain/)
* **Author:** [XzetaU8](https://news.ycombinator.com/user?id=XzetaU8) | **Comments:** [193](https://news.ycombinator.com/item?id=46042928)

### 22  [FLUX.2: Frontier Visual Intelligence](https://bfl.ai/blog/flux-2)
* **Author:** [meetpateltech](https://news.ycombinator.com/user?id=meetpateltech) | **Comments:** [4](https://news.ycombinator.com/item?id=46046916)

### 129 🔥 [Meta Segment Anything Model 3](https://ai.meta.com/blog/segment-anything-model-3/?_fb_noscript=1)
* **Author:** [alcinos](https://news.ycombinator.com/user?id=alcinos) | **Comments:** [26](https://news.ycombinator.com/item?id=45981514)

### 1160 🔥🔥🔥 [Pebble Watch software is now open source](https://ericmigi.com/blog/pebble-watch-software-is-now-100percent-open-source)
* **Author:** [Larrikin](https://news.ycombinator.com/user?id=Larrikin) | **Comments:** [211](https://news.ycombinator.com/item?id=46037626)

### 228 🔥 [Most Stable Raspberry Pi? Better NTP with Thermal Management](https://austinsnerdythings.com/2025/11/24/worlds-most-stable-raspberry-pi-81-better-ntp-with-thermal-management/)
* **Author:** [todsacerdoti](https://news.ycombinator.com/user?id=todsacerdoti) | **Comments:** [73](https://news.ycombinator.com/item?id=46042946)

### 104 🔥 [Making Crash Bandicoot (2011)](https://all-things-andy-gavin.com/video-games/making-crash/)
* **Author:** [davikr](https://news.ycombinator.com/user?id=davikr) | **Comments:** [7](https://news.ycombinator.com/item?id=46045039)

### 625 🔥🔥🔥 [Unpowered SSDs slowly lose data](https://www.xda-developers.com/your-unpowered-ssd-is-slowly-losing-your-data/)
* **Author:** [amichail](https://news.ycombinator.com/user?id=amichail) | **Comments:** [255](https://news.ycombinator.com/item?id=46038099)

### 24  [Roblox is a problem – but it's a symptom of something worse](https://www.platformer.news/roblox-ceo-interview-backlash-analysis/)
* **Author:** [FiddlerClamp](https://news.ycombinator.com/user?id=FiddlerClamp) | **Comments:** [16](https://news.ycombinator.com/item?id=46047229)

### 37  [Nearby peer discovery without GPS using environmental fingerprints](https://www.svendewaerhert.com/blog/nearby-peer-discovery/)
* **Author:** [waerhert](https://news.ycombinator.com/user?id=waerhert) | **Comments:** [14](https://news.ycombinator.com/item?id=46003606)

### 121 🔥 [Brain has five 'eras' with adult mode not starting until early 30s](https://www.theguardian.com/science/2025/nov/25/brain-human-cognitive-development-life-stages-cambridge-study)
* **Author:** [hackernj](https://news.ycombinator.com/user?id=hackernj) | **Comments:** [112](https://news.ycombinator.com/item?id=46045661)

### 87  [Broccoli Man, Remastered](https://mbleigh.dev/posts/broccoli-man-remastered/)
* **Author:** [mbleigh](https://news.ycombinator.com/user?id=mbleigh) | **Comments:** [38](https://news.ycombinator.com/item?id=45982875)

### 21  [Explaining, at some length, Techmeme's 20 years of consistency](https://news.techmeme.com/250912/20-years)
* **Author:** [nhf](https://news.ycombinator.com/user?id=nhf) | **Comments:** [8](https://news.ycombinator.com/item?id=46010552)

### 580 🔥🔥 [Claude Advanced Tool Use](https://www.anthropic.com/engineering/advanced-tool-use)
* **Author:** [lebovic](https://news.ycombinator.com/user?id=lebovic) | **Comments:** [242](https://news.ycombinator.com/item?id=46038047)

### 54  [Using an Array of Needles to Create Solid Knitted Shapes](https://dl.acm.org/doi/10.1145/3746059.3747759)
* **Author:** [PaulHoule](https://news.ycombinator.com/user?id=PaulHoule) | **Comments:** [11](https://news.ycombinator.com/item?id=46009851)

### 26  [Trillions Spent and Big Software Projects Are Still Failing](https://spectrum.ieee.org/it-management-software-failures)
* **Author:** [pseudolus](https://news.ycombinator.com/user?id=pseudolus) | **Comments:** [7](https://news.ycombinator.com/item?id=46045085)

### 432 🔥🔥 [Show HN: I built an interactive HN Simulator](https://news.ysimulator.run/news)
* **Author:** [johnsillings](https://news.ycombinator.com/user?id=johnsillings) | **Comments:** [196](https://news.ycombinator.com/item?id=46036908)
* The author has created an interactive [Hacker News Simulator](https://news.ysimulator.run/) that allows users to submit posts and links. The simulator then uses LLMs and a library of commenter archetypes to instantly generate a realistic comment thread.

### 325 🔥🔥 [Three Years from GPT-3 to Gemini 3](https://www.oneusefulthing.org/p/three-years-from-gpt-3-to-gemini)
* **Author:** [JumpCrisscross](https://news.ycombinator.com/user?id=JumpCrisscross) | **Comments:** [247](https://news.ycombinator.com/item?id=46019898)

### 110 🔥 [A million ways to die from a data race in Go](https://gaultier.github.io/blog/a_million_ways_to_data_race_in_go.html)
* **Author:** [ingve](https://news.ycombinator.com/user?id=ingve) | **Comments:** [97](https://news.ycombinator.com/item?id=46015095)

### 82  [How the Atomic Tests Looked Like from Los Angeles](https://www.amusingplanet.com/2016/09/how-atomic-tests-looked-like-from-los.html)
* **Author:** [ohjeez](https://news.ycombinator.com/user?id=ohjeez) | **Comments:** [60](https://news.ycombinator.com/item?id=46009935)

### 299 🔥🔥 [Implications of AI to schools](https://twitter.com/karpathy/status/1993010584175141038)
* **Author:** [bilsbie](https://news.ycombinator.com/user?id=bilsbie) | **Comments:** [334](https://news.ycombinator.com/item?id=46036878)
* Andrej Karpathy has released a new 2+ hour video that provides a deep dive into tokenization for Large Language Models. In the video, he builds the tokenizer for GPT-2 from scratch to explain how this core LLM component works.

### 272 🔥🔥 [Cool-retro-term: terminal emulator which mimics look and feel of CRTs](https://github.com/Swordfish90/cool-retro-term)
* **Author:** [michalpleban](https://news.ycombinator.com/user?id=michalpleban) | **Comments:** [103](https://news.ycombinator.com/item?id=46036895)

### 50  [Rethinking C++: Architecture, Concepts, and Responsibility](https://blogs.embarcadero.com/rethinking-c-architecture-concepts-and-responsibility/)
* **Author:** [timeoperator](https://news.ycombinator.com/user?id=timeoperator) | **Comments:** [50](https://news.ycombinator.com/item?id=45985081)



