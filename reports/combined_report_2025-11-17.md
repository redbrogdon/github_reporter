# Overall Summary
Here is the highlights section for the period:

*   **🔥🔥🔥 [PR #174014](https://github.com/flutter/flutter/pull/174014): Add a `RepeatingAnimationBuilder` API**
    *   **Comments:** 19
    *   Introduces `RepeatingAnimationBuilder`, a new widget that simplifies the creation of continuous, looping animations without requiring manual management of an `AnimationController`.
*   **[Issue #174011](https://github.com/flutter/flutter/issues/174011): Add a `RepeatedTweenAnimationBuilder` API**
    *   **Reactions:** **12** -- 👍 9 ❤️ 3
    *   This issue proposes adding a new `RepeatedTweenAnimationBuilder` widget to simplify the creation of repeating animations and reduce the boilerplate required by explicit animations.
*   **[Issue #107482](https://github.com/flutter/flutter/issues/107482): Support for Share Extension in iOS Flutter app**
    *   **Reactions:** **20** -- 👍 20
    *   This issue requests support for running a Flutter instance within an iOS Share Extension, which is currently not possible, to allow developers to build custom sharing UIs similar to what is available on Android.
*   **Dialog windows for macOS and Linux ([PR #176893](https://github.com/flutter/flutter/pull/176893), [PR #177817](https://github.com/flutter/flutter/pull/177817))**
    *   **Comments:** 5 (macOS), 2 (Linux)
    *   Desktop platform support was expanded with the implementation of dialog windows for both macOS and Linux, enabling modal, parent-attached window behaviors.
*   **[PR #12686](https://github.com/flutter/website/pull/12686): Added example for toImageSync + setImageSampler**
    *   **Comments:** 4
    *   This PR updates the fragment shaders documentation with a code example demonstrating how to chain shaders together by using `toImageSync` to render the output of one shader to an `Image` and then passing it to a second shader with `setImageSampler`.
*   **[PR #12272](https://github.com/flutter/website/pull/12272): [3.38] Document the `--profile-startup` Dart / Flutter CLI flags**
    *   **Comments:** 4
    *   This PR documents the `--profile-startup` flag for the `dart` and `flutter` CLI tools, which helps developers better analyze app startup performance.
*   **[Issue #59273](https://github.com/dart-lang/sdk/issues/59273): proposal: `provide_const_constructors`**
    *   **Reactions:** **4** -- 👍 4
    *   This issue proposes a new lint rule, `provide_const_constructors`, to flag constructor definitions within a class that can be declared `const`, complementing the existing `prefer_const_constructors` rule which checks for const usage at the call site.
*   **[PR #178507](https://github.com/flutter/flutter/pull/178507): Fix crash when doing a SaveLayer under a non-invertible transform**
    *   **Comments:** 1
    *   Fixes a crash that occurs when `saveLayer` is called with a non-invertible transform, such as scaling by zero, by removing a failing assertion in the display list builder.
*   **[PR #2794](https://github.com/dart-lang/native/pull/2794): [jni] Do not fail flutter build on desktop if jdk is unavailable**
    *   **Comments:** 2
    *   This change prevents `flutter build` from failing on desktop platforms when a JDK is not installed by making the JNI dependency optional in the native CMake build scripts.
*   **🔥 [PR #12677](https://github.com/flutter/website/pull/12677): Fix typo in state-management.md**
    *   **Comments:** 6
    *   Fixes a minor grammatical error in the state management documentation, which generated notable discussion and highlighted the community's focus on documentation quality.


# GitHub PR Report for dart-lang/ai
## From 2025-11-14 to 2025-11-16

There were no code changes or issue resolutions in the repository during this period, as no pull requests were merged and no issues were closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2025-11-14 to 2025-11-16

This period's updates focused heavily on enhancing Dart's static analysis and developer tooling, with numerous issues closed related to the linter, analyzer, and code formatter. Several popular proposals for new lint rules were closed, including `provide_const_constructors` ([#59273](https://github.com/dart-lang/sdk/issues/59273)) to encourage const usage at the declaration site and `avoid_unused_parameters` ([#57122](https://github.com/dart-lang/sdk/issues/57122)) to help maintain cleaner code. In addition to new feature proposals, a number of important bugs in the toolchain were addressed. These fixes resolved a `dart fix` crash related to new shorthand property access syntax ([#61963](https://github.com/dart-lang/sdk/issues/61963)), corrected an extra newline being added by the formatter in enums ([#61972](https://github.com/dart-lang/sdk/issues/61972)), and fixed an incorrect `missing_override_of_must_be_overridden` lint for the unary minus operator ([#61952](https://github.com/dart-lang/sdk/issues/61952)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #61972](https://github.com/dart-lang/sdk/issues/61972): Dart formatter Enum extra line break before semicolon
* **Author:** [apinilabs-pascal](https://github.com/apinilabs-pascal)
* The Dart formatter is incorrectly adding a newline before the semicolon in enums that contain members.

### [Issue #61963](https://github.com/dart-lang/sdk/issues/61963): Bad state: Missing a visit method for a node of type DotShorthandPropertyAccessImpl
* **Author:** [jbmangold](https://github.com/jbmangold)
* Running `dart fix` with the Dart 3.10 beta SDK causes a "Bad state" error because the analyzer's `ExitDetector` is missing a visit method for `DotShorthandPropertyAccessImpl` nodes.

### [Issue #61954](https://github.com/dart-lang/sdk/issues/61954): Linter fails to detect invalid shorthand syntax on instance methods
* **Author:** [huanghui1998hhh](https://github.com/huanghui1998hhh)
* The linter fails to report an error for invalid shorthand syntax when calling an instance method without an object instance, which should be flagged during static analysis rather than at compile time.

### [Issue #61953](https://github.com/dart-lang/sdk/issues/61953): Internal error in analysis server after upgrade to Flutter 3.38.0.
* **Author:** [nielsenko](https://github.com/nielsenko)
* After upgrading to Flutter 3.38.0, the Dart analysis server is crashing with an internal "Bad state: Unexpected types supplied during diagnostic message substitution" error, which appears to be triggered by the `prefer_const_constructors` lint rule when visiting an instance creation expression.

### [Issue #61952](https://github.com/dart-lang/sdk/issues/61952): `@mustBeOverridden operator -()` (unary minus) correctly overridden in the subclass erroneously reports `missing_override_of_must_be_overridden`
* **Author:** [TekExplorer](https://github.com/TekExplorer)
* The `missing_override_of_must_be_overridden` lint incorrectly flags the unary minus operator (`-()`) as not being implemented in a subclass, even when a correct override exists, and the auto-fix feature generates invalid code for it.

### [Issue #61381](https://github.com/dart-lang/sdk/issues/61381): `Add final initializing formal required named parameters` fix adds private fields without wrapping
* **Author:** [FMorschel](https://github.com/FMorschel)
* The "Add final initializing formal required named parameters" fix incorrectly exposes private fields as public required named parameters in the constructor, resulting in invalid code.

### [Issue #60532](https://github.com/dart-lang/sdk/issues/60532): [linter] suggestion `use_static_named`
* **Author:** [FMorschel](https://github.com/FMorschel)
* This issue proposes a new lint rule, `use_static_named`, that would identify constant expressions which evaluate to the same value as an existing named static constant and suggest replacing the expression with the named constant.

### [Issue #57122](https://github.com/dart-lang/sdk/issues/57122): proposal: avoid_unused_parameters
* **Author:** [stephane-archer](https://github.com/stephane-archer)
* **Reactions:** **3** -- 👍 2 👀 1
* This issue proposes a new lint, `avoid_unused_parameters`, to notify developers about unused parameters in their codebase.

### [Issue #59361](https://github.com/dart-lang/sdk/issues/59361): proposal: `always_specify_types_for_method_signature`
* **Author:** [zdzichukowalski](https://github.com/zdzichukowalski)
* This issue proposes a new lint rule, `always_specify_types_for_method_signature`, to enforce explicit type annotations for method parameters in order to catch type-related errors at compile-time instead of at runtime.

### [Issue #59357](https://github.com/dart-lang/sdk/issues/59357): proposal: `avoid_unsafe_iterable_operations`
* **Author:** [rrousselGit](https://github.com/rrousselGit)
* **Reactions:** **1** -- 👍 1
* This issue proposes a new lint rule, `avoid_unsafe_iterable_operations`, to flag the use of potentially unsafe operations like `.first`, `.last`, and direct index access (`[]`) which can throw runtime exceptions, encouraging safer alternatives like `.firstOrNull` or explicit checks.

### [Issue #59273](https://github.com/dart-lang/sdk/issues/59273): proposal: `provide_const_constructors`
* **Author:** [dleurs](https://github.com/dleurs)
* **Reactions:** **4** -- 👍 4
* This issue proposes a new lint rule, `provide_const_constructors`, to flag constructor definitions within a class that can be declared `const`, complementing the existing `prefer_const_constructors` rule which checks for const usage at the call site.

### [Issue #58992](https://github.com/dart-lang/sdk/issues/58992): proposal: `unneccessary_cascade`
* **Author:** [jacob314](https://github.com/jacob314)
* This issue proposes a new lint rule, `unnecessary_cascade`, to flag the use of the cascade operator (`..`) for a single operation where the standard dot operator (`.`) would have the same effect, which helps avoid unnecessary code and potential refactoring errors.

### [Issue #58954](https://github.com/dart-lang/sdk/issues/58954): proposal: unneccessary_ternary_operator
* **Author:** [jacob314](https://github.com/jacob314)
* This issue proposes a new lint rule, `unneccessary_ternary_operator`, to flag redundant ternary expressions like `foo ? true : false` and `foo ? false : true` that can be simplified to `foo` and `!foo` respectively.

### [Issue #48359](https://github.com/dart-lang/sdk/issues/48359): Add fix for CompileTimeErrorCode.SUPER_FORMAL_PARAMETER_WITHOUT_ASSOCIATED_POSITIONAL
* **Author:** [srawlins](https://github.com/srawlins)
* This issue proposes adding a code fix for the `SUPER_FORMAL_PARAMETER_WITHOUT_ASSOCIATED_POSITIONAL` error by leveraging the existing `AddMissingParameter` fix with the correct list of `ExecutableParameters`.

### [Issue #42270](https://github.com/dart-lang/sdk/issues/42270): Analysis server tech debt: Quickfixes are vulnerable to cast errors
* **Author:** [MichaelRFairhurst](https://github.com/MichaelRFairhurst)
* **Reactions:** **2** -- 👍 2
* This issue identifies a technical debt where quickfixes in the analysis server are vulnerable to cast errors from implicit downcasts, proposing they be replaced with explicit type checks and early returns, and potentially refactored into a new `FixType` class to enforce this safer pattern.


# GitHub PR Report for dart-lang/language
## From 2025-11-14 to 2025-11-16

There were no pull requests merged or issues closed during this period, resulting in no changes to the repository's codebase, features, or public API.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2025-11-14 to 2025-11-16

This period saw key improvements to the build process and FFI tooling. To enhance the developer experience on non-Android platforms, the native build system was updated to no longer fail when a JDK is not installed, making the JNI dependency optional ([#2794](https://github.com/dart-lang/native/pull/2794), [#2781](https://github.com/dart-lang/native/issues/2781)). In the FFI bindings generator, `ffigen`, a bug causing duplicate definitions for unnamed enum constants has been resolved with new deduplication logic ([#2789](https://github.com/dart-lang/native/pull/2789), [#2782](https://github.com/dart-lang/native/issues/2782)). Finally, a feature request was made to support build hooks for source code preprocessing, which would enable conditional compilation of libraries ([#2793](https://github.com/dart-lang/native/issues/2793)).

## Merged Pull Requests

### [PR #2794](https://github.com/dart-lang/native/pull/2794): [jni] Do not fail flutter build on desktop if jdk is unavailable
* **Author:** [HosseinYousefi](https://github.com/HosseinYousefi)
* **Merged At:** 2025-11-14 04:34 AM
* **Comments:** 2
* This change prevents `flutter build` from failing on desktop platforms when a JDK is not installed by making the JNI dependency optional in the native CMake build scripts.

### [PR #2789](https://github.com/dart-lang/native/pull/2789): [ffigen] Fix unnamed enum multi-def bug
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-13 06:06 PM
* **Comments:** 2
* This PR fixes a bug in `ffigen` where unnamed enum constants and macros were being defined multiple times by adding deduplication logic to ensure they are only processed once.


## Closed Issues

### [Issue #2793](https://github.com/dart-lang/native/issues/2793): Source code preprocessing via hooks
* **Author:** [lesleysin](https://github.com/lesleysin)
* This user is requesting a way to use build hooks for source code preprocessing, which would allow them to conditionally compile parts of a library based on build flags by generating and linking source files at build time.

### [Issue #2782](https://github.com/dart-lang/native/issues/2782): Duplicate names for constants
* **Author:** [brianquinlan](https://github.com/brianquinlan)
* The ffigen tool is generating multiple declarations for the same constant by appending numerical suffixes to their names.

### [Issue #2781](https://github.com/dart-lang/native/issues/2781): [jni] Silently ignore build failure on other platform in absence of JDK
* **Author:** [HosseinYousefi](https://github.com/HosseinYousefi)
* This issue proposes preventing build failures on non-Android platforms by silently skipping the JNI library build when the JDK is not present.


# GitHub PR Report for flutter/ai
## From 2025-11-14 to 2025-11-16

Based on the provided information, there were no merged pull requests or closed issues during this period. Consequently, there were no changes to the repository's codebase or public API.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-11-14 to 2025-11-16

This period focused on internal maintenance to ensure codelab stability. Notably, continuous integration (CI) was updated to ignore `experimental_member_use` errors from the analyzer in [PR #2362](https://github.com/flutter/codelabs/pull/2362). This change was necessary to re-enable the `forge2d_game` and `tooling` codelabs in CI, as they rely on experimental APIs that were causing analysis failures.

## Merged Pull Requests

### [PR #2362](https://github.com/flutter/codelabs/pull/2362): Ignore experimental member use errors
* **Author:** [domesticmouse](https://github.com/domesticmouse)
* **Merged At:** 2025-11-16 11:26 AM
* **Comments:** 0
* This PR re-enables the `forge2d_game` and `tooling` codelabs in CI by adding an analyzer setting to ignore `experimental_member_use` errors, which was necessary as these codelabs rely on experimental APIs.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-11-14 to 2025-11-16

This cycle introduced several significant enhancements to the Flutter framework, led by the addition of the new `RepeatingAnimationBuilder` widget ([PR #174014](https://github.com/flutter/flutter/pull/174014)). This new API addresses a popular feature request ([Issue #174011](https://github.com/flutter/flutter/issues/174011)) by providing a declarative way to create continuous, looping animations without the boilerplate of managing an `AnimationController`. Desktop platform support was also expanded with the implementation of dialog windows for both macOS ([PR #176893](https://github.com/flutter/flutter/pull/176893)) and Linux ([PR #177817](https://github.com/flutter/flutter/pull/177817)), enabling modal, parent-attached window behaviors. Additionally, an internal API in `key.dart` was refactored to remove a legacy workaround and adopt a modern `typedef` approach for obtaining generic types ([PR #178219](https://github.com/flutter/flutter/pull/178219)). Finally, a critical crash was fixed that occurred when calling `saveLayer` with a non-invertible transform ([PR #178507](https://github.com/flutter/flutter/pull/178507)), improving rendering stability.

## Merged Pull Requests

### [PR #178554](https://github.com/flutter/flutter/pull/178554): docs: Add documentation for running devicelab tests in a PR
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* **Merged At:** 2025-11-14 02:42 PM
* **Comments:** 1
* This PR adds a new document that explains how developers can run post-submit devicelab tests against their pull requests, providing specific instructions for both engine and framework PRs.

### [PR #178553](https://github.com/flutter/flutter/pull/178553): [Reland] Generate new Gradle lockfiles and delete ignore files
* **Author:** [mboetger](https://github.com/mboetger)
* **Merged At:** 2025-11-14 02:37 PM
* **Comments:** 0
* This PR regenerates Gradle lockfiles for various Android test and example applications, removing the `.ignore-locking.md` files that were preventing them from being updated.

### [PR #178550](https://github.com/flutter/flutter/pull/178550): [ Widget Preview ] Gracefully handle unexpected analysis context disposal
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-11-14 03:24 PM
* **Comments:** 1
* This PR fixes a race condition in the Widget Previewer by guarding analyzer API calls with a mutex and adding checks for unexpected API responses. This prevents errors that could occur if the analysis context is disposed prematurely while file changes are still being processed during shutdown.

### [PR #178538](https://github.com/flutter/flutter/pull/178538): [Reland] Generate ignore lockfiles and Update Android Embedder Dependencies
* **Author:** [mboetger](https://github.com/mboetger)
* **Merged At:** 2025-11-14 12:57 PM
* **Comments:** 0
* As a preparatory step for a larger dependency update, this PR migrates the Android embedder from the platform `ExifInterface` to the AndroidX version and adds temporary files to ignore Gradle lockfile validation.

### [PR #178507](https://github.com/flutter/flutter/pull/178507): Fix crash when doing a SaveLayer under a non-invertible transform
* **Author:** [flar](https://github.com/flar)
* **Merged At:** 2025-11-14 01:34 PM
* **Comments:** 1
* Fixes a crash that occurs when `saveLayer` is called with a non-invertible transform, such as scaling by zero, by removing a failing assertion in the display list builder.

### [PR #178500](https://github.com/flutter/flutter/pull/178500): [ Widget Preview ] Throw `ToolExit` if Flutter Web is not enabled
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-11-14 08:27 AM
* **Comments:** 0
* This change prevents a crash in the widget previewer when Flutter Web is disabled by adding a check that throws a `ToolExit` with instructions to enable web support.

### [PR #178493](https://github.com/flutter/flutter/pull/178493): Add 3.38.1 release notes
* **Author:** [camsim99](https://github.com/camsim99)
* **Merged At:** 2025-11-14 09:23 AM
* **Comments:** 1
* This PR updates the changelog with release notes for version 3.38.1, which adds support for Dart 3.10 stable.

### [PR #178219](https://github.com/flutter/flutter/pull/178219): Remove the hack used to get the `runtimeType` without using an additional class in `key.dart`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-14 10:28 AM
* **Comments:** 2
* Refactors `key.dart` to remove the `_TypeLiteral` helper class, a workaround for a previous Dart language limitation, and replaces its usage with a `typedef` for obtaining generic types.

### [PR #177817](https://github.com/flutter/flutter/pull/177817): Implement dialog windows for the Linux platform
* **Author:** [robert-ancell](https://github.com/robert-ancell)
* **Merged At:** 2025-11-14 06:01 AM
* **Comments:** 2
* This PR implements dialog windows for the Linux platform by adding a `DialogWindowControllerLinux` class that uses GTK APIs to manage dialog-specific properties such as modality and parent-child relationships, and enables a previously skipped integration test for this feature.

### [PR #176893](https://github.com/flutter/flutter/pull/176893): [macOS] Implement dialog window
* **Author:** [knopp](https://github.com/knopp)
* **Merged At:** 2025-11-15 01:32 PM
* **Comments:** 5
* This PR implements support for dialog windows on macOS, which are presented as modal sheets attached to a parent window. The change adds a new `DialogWindowController` for macOS and refactors the window closing logic to use separate `onShouldClose` and `onWillClose` callbacks for more precise lifecycle management.

### 🔥🔥🔥 [PR #174014](https://github.com/flutter/flutter/pull/174014): Add a `RepeatingAnimationBuilder` API
* **Author:** [bernaferrari](https://github.com/bernaferrari)
* **Merged At:** 2025-11-14 09:45 PM
* **Comments:** 19
* Introduces `RepeatingAnimationBuilder`, a new widget that simplifies the creation of continuous, looping animations without requiring manual management of an `AnimationController`.


## Closed Issues

### [Issue #178571](https://github.com/flutter/flutter/issues/178571): Add a prefer_dot_shorthands linter rule
* **Author:** [JakesMD](https://github.com/JakesMD)
* This issue proposes a new linter rule, `prefer_dot_shorthands`, to enforce the use of Dart's dot shorthands feature for a more concise and coherent codebase.

### [Issue #178557](https://github.com/flutter/flutter/issues/178557): linux-17 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The host machine `linux-17` has lost its external connection from the attached phone device.

### [Issue #178536](https://github.com/flutter/flutter/issues/178536): win-18 in quarantined state because the local Temp directory exceeded 1024 files.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The win-18 build agent is quarantined because its local Temp directory has exceeded the 1024 file limit.

### [Issue #178535](https://github.com/flutter/flutter/issues/178535): linux-17 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The host `linux-17` has lost its external network connection, affecting tests running on a connected phone device.

### [Issue #178521](https://github.com/flutter/flutter/issues/178521): Dot shorthands breaks static analysis and hot reload in Android Studio on Flutter 3.38.1 and Dart 3.10.0
* **Author:** [VladislavGlushko](https://github.com/VladislavGlushko)
* In Flutter 3.38.1 and Dart 3.10.0, using dot shorthand syntax breaks static analysis and prevents hot reload in Android Studio, which incorrectly reports analysis issues while the analysis tab shows nothing.

### [Issue #178520](https://github.com/flutter/flutter/issues/178520): Platform Support For Dependencies and Imports
* **Author:** [bahadirarslan](https://github.com/bahadirarslan)
* This issue proposes a feature for defining platform-specific dependencies under platform keys in `pubspec.yaml` and a corresponding `platform` keyword for conditional imports in Dart code to better support multi-platform builds.

### [Issue #178510](https://github.com/flutter/flutter/issues/178510): CMAKE_INSTALL_PREFIX changed in flutter 3.38 from $<TARGET_FILE_DIR:{package_name}> to "C:/Program Files/{package_name}"
* **Author:** [sheldonrobinson](https://github.com/sheldonrobinson)
* In Flutter 3.38, a change to the `CMAKE_INSTALL_PREFIX` variable from a relative path to an absolute system path (`C:/Program Files/...`) is causing native plugin builds to fail on Windows due to requiring administrator privileges for the installation step.

### [Issue #178505](https://github.com/flutter/flutter/issues/178505): linux-17 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The `linux-17` host has lost its external connection from the attached phone device.

### [Issue #178486](https://github.com/flutter/flutter/issues/178486): [ Widget Preview ] Crashes when `flutter config --no-enable-web` is set
* **Author:** [bkonyi](https://github.com/bkonyi)
* The Flutter Widget Preview feature crashes on launch if web support has been disabled via `flutter config --no-enable-web`, resulting in either a "failed to locate browser" error or a `StateError`.

### [Issue #178472](https://github.com/flutter/flutter/issues/178472): [ Widget Preview ] TypeError: type 'DisposedAnalysisContextResult' is not a subtype of type 'ErrorsResult' in type cast
* **Author:** [bkonyi](https://github.com/bkonyi)
* A TypeError crash is occurring in the Widget Preview feature because the code incorrectly assumes it will receive an `ErrorsResult` when the analysis context has already been disposed while populating the dependency graph.

### [Issue #178440](https://github.com/flutter/flutter/issues/178440): [GoRouter] Url does not update when changing StatefulShellBranch state from another branch using GlobalKey
* **Author:** [AHAHACUK](https://github.com/AHAHACUK)
* When using a `GlobalKey` to pop a route within a `StatefulShellBranch` from a different branch, the UI correctly navigates back, but the browser URL fails to update.

### [Issue #178380](https://github.com/flutter/flutter/issues/178380): [Flutter Web] In-app WebView scrolling closes the view
* **Author:** [knottx](https://github.com/knottx)
* When a Flutter Web app is running inside a native in-app webview, a downward swipe to scroll up is intercepted by the host's "pull-to-close" gesture, causing the entire view to be dismissed instead of scrolling the content.

### [Issue #178314](https://github.com/flutter/flutter/issues/178314): [animations] OpenContainer.onClosed's dartdoc implies it's called after fully closing
* **Author:** [adil192](https://github.com/adil192)
* The `dartdoc` for `OpenContainer.onClosed` is misleading because it implies the callback is invoked after the container has fully closed, when it is actually called at the start of the closing transition, causing potential UI bugs.

### [Issue #177603](https://github.com/flutter/flutter/issues/177603): [impeller] crash in save layer when contents scaled by zero
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* An FML_DCHECK assertion fails in Impeller's `saveLayer` function when it is used on content that has been scaled by a factor of zero.

### [Issue #177447](https://github.com/flutter/flutter/issues/177447): [video_player: ^2.10.0] causes R8 null NullPointerException
* **Author:** [DearZack](https://github.com/DearZack)
* Adding the `video_player: ^2.10.0` dependency causes a `NullPointerException` from the R8 compiler when building a release APK for Android.

### [Issue #177417](https://github.com/flutter/flutter/issues/177417): Declarative Gradle Plugin Fails to Add Flutter Embedding Dependency
* **Author:** [skashok](https://github.com/skashok)
* The declarative Flutter Gradle plugin fails to add the `flutter.jar` embedding library as a dependency, causing compilation failures for all Android plugins that rely on Flutter's embedding classes.

### [Issue #177133](https://github.com/flutter/flutter/issues/177133): Add ability to mix multiple ImageFilters
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Reactions:** **1** -- 👀 1
* This feature request proposes a way to combine multiple `ImageFilter`s, allowing a filter to take both the original image and the output of another filter as separate inputs to enable advanced effects like liquid glass.

### [Issue #177071](https://github.com/flutter/flutter/issues/177071): Use androidx.exifinterface in android embedder
* **Author:** [mboetger](https://github.com/mboetger)
* This issue proposes updating the Android embedder to use the `androidx.exifinterface` library for handling EXIF metadata, but this work is blocked until issue #177066 is resolved.

### [Issue #177057](https://github.com/flutter/flutter/issues/177057): package:web_benchmarks needs to be updated for unified skwasm/canvaskit renderers
* **Author:** [elliette](https://github.com/elliette)
* The `web_benchmarks` package needs to be updated because the `skwasm` and `canvaskit` renderers now emit the same frame events, which breaks the `expectedBenchmarkMetrics` method and causes benchmark tests to fail.

### [Issue #174011](https://github.com/flutter/flutter/issues/174011): Add a `RepeatedTweenAnimationBuilder` API
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* **Reactions:** **12** -- 👍 9 ❤️ 3
* This issue proposes adding a new `RepeatedTweenAnimationBuilder` widget to simplify the creation of repeating animations and reduce the boilerplate required by explicit animations.

### [Issue #169486](https://github.com/flutter/flutter/issues/169486): [Android] button actions in webview_flutter are blocked
* **Author:** [letrungdo](https://github.com/letrungdo)
* **Reactions:** **3** -- 👍 3
* On Android, button actions inside a `WebViewWidget` become unresponsive after a user performs a multi-finger zoom gesture.

### [Issue #168997](https://github.com/flutter/flutter/issues/168997): [led] No way to test devicelab tests on PR with engine changes
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* A developer reports that it is not possible to run devicelab tests for a pull request with engine changes using the `led` tool, as it requires a prebuilt engine rather than building one from the PR's source.

### [Issue #161499](https://github.com/flutter/flutter/issues/161499): link to the monorepo setup docs in the "Setting up the Engine" doc.
* **Author:** [Hari-07](https://github.com/Hari-07)
* The "Setting up the Engine" documentation is missing a crucial step for the new monorepo configuration involving copying the `.gclient` file, causing a large and incorrect git diff on a fresh local setup.

### [Issue #149037](https://github.com/flutter/flutter/issues/149037): DropdownMenu Entries Not Positioned Correctly on Keyboard Appearance when `requestFocusOnTap` set to `true`
* **Author:** [lew-kas](https://github.com/lew-kas)
* When `requestFocusOnTap` is set to `true` on a `DropdownMenu`, the dropdown entries are not repositioned correctly after the on-screen keyboard appears, causing a visual misalignment with the menu.

### [Issue #107482](https://github.com/flutter/flutter/issues/107482): Support for Share Extension in iOS Flutter app
* **Author:** [melvinsalas](https://github.com/melvinsalas)
* **Reactions:** **20** -- 👍 20
* This issue requests support for running a Flutter instance within an iOS Share Extension, which is currently not possible, to allow developers to build custom sharing UIs similar to what is available on Android.


# GitHub PR Report for flutter/genui
## From 2025-11-14 to 2025-11-16

This period focused on bug fixes and documentation updates. A notable change fixed inference failures within the Travel App by reducing schema complexity; this was achieved by removing unused core catalog items and adding a new `imageFixedSize` widget variant to the API ([#519](https://github.com/flutter/genui/pull/519)). In addition, the project's documentation was updated to note a planned future integration with the ADK Plugin ([#525](https://github.com/flutter/genui/pull/525)).

## Merged Pull Requests

### [PR #525](https://github.com/flutter/genui/pull/525): Add ADK Plugin integration to README
* **Author:** [sethladd](https://github.com/sethladd)
* **Merged At:** 2025-11-14 12:42 PM
* **Comments:** 0
* Adds a planned integration with the ADK Plugin to the future work section of the README.

### [PR #519](https://github.com/flutter/genui/pull/519): Fix Travel App inferences by removing core catalog items, adding imageFixedSize item
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* **Merged At:** 2025-11-13 04:28 PM
* **Comments:** 2
* This PR fixes inference failures in the Travel App by reducing schema complexity, achieved by removing unused core catalog items and introducing a new `imageFixedSize` widget variant that omits the `usageHint` property.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2025-11-14 to 2025-11-16

This period saw significant progress in modernizing native plugin code, with the ongoing migration of the `camera_avfoundation` plugin to Swift continuing in [#10293](https://github.com/flutter/packages/pull/10293). For web developers, the `web_benchmarks` package was updated to correctly report metrics for Wasm builds, a change which also involved deprecating the `useWasm` parameter ([#10236](https://github.com/flutter/packages/pull/10236)). In the `animations` package, the documentation for `OpenContainer`'s `onClosed` callback was clarified to note that it is called at the beginning of the closing transition, not the end ([#10400](https://github.com/flutter/packages/pull/10400)). Lastly, a series of CI improvements landed, including an update to the Flutter version used for releases ([#10425](https://github.com/flutter/packages/pull/10425)) and other dependency cleanup ([#10427](https://github.com/flutter/packages/pull/10427)).

## Merged Pull Requests

### [PR #10427](https://github.com/flutter/packages/pull/10427): [ci] Remove mustache_template from allowed external deps
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-14 12:07 PM
* **Comments:** 0
* Removes the `mustache_template` package from the list of allowed pinned dependencies, as it has been moved into the repository and is no longer an external dependency.

### [PR #10425](https://github.com/flutter/packages/pull/10425): [ci] Update Flutter version for `release`
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-15 07:13 AM
* **Comments:** 2
* This PR updates the `release` CI workflow to use Flutter 3.38.1, which fixes a release failure for packages that depend on the newer SDK.

### [PR #10400](https://github.com/flutter/packages/pull/10400): [animations] Clarify that onClosed is called before transition
* **Author:** [adil192](https://github.com/adil192)
* **Merged At:** 2025-11-14 11:33 AM
* **Comments:** 0
* Updates the documentation for the `onClosed` callback in `OpenContainer` to clarify that it is called at the start of the closing transition, not at the end.

### [PR #10293](https://github.com/flutter/packages/pull/10293): [camera_avfoundation] Wrappers swift migration - part 3
* **Author:** [RobertOdrowaz](https://github.com/RobertOdrowaz)
* **Merged At:** 2025-11-16 02:57 AM
* **Comments:** 3
* This PR continues the migration of the `camera_avfoundation` plugin to Swift by converting the `FLTCaptureDevice`, `FLTCaptureSession`, and `FLTFormatUtils` classes, replacing the Objective-C wrapper classes with protocol conformance on the base AVFoundation classes.

### [PR #10236](https://github.com/flutter/packages/pull/10236): [web_benchmarks] Report correct expected metrics for wasm
* **Author:** [mdebbar](https://github.com/mdebbar)
* **Merged At:** 2025-11-13 04:02 PM
* **Comments:** 4
* This PR fixes an issue in the `web_benchmarks` package where `prerollFrame` and `applyFrame` were not being reported for Wasm builds, updating the logic to always include them and deprecating the `useWasm` parameter.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-11-14 to 2025-11-16

During this period, there were no merged pull requests or closed issues, resulting in no changes to the repository's codebase or public API.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-11-14 to 2025-11-16

This period saw significant updates to developer-focused documentation, particularly around tooling and advanced graphics. The `dart` and `flutter` command-line tools now have documentation for the `--profile-startup` flag, which helps developers better analyze app startup performance ([PR #12272](https://github.com/flutter/website/pull/12272)). For developers working with graphics, a new code example was added to demonstrate how to chain fragment shaders together using `toImageSync` and `setImageSampler` ([PR #12686](https://github.com/flutter/website/pull/12686)). In an effort to keep code samples current with the latest API changes, one pull request with several comments updated an example to use `activeThumbColor` instead of the deprecated `activeColor` property ([PR #12691](https://github.com/flutter/website/pull/12691)), addressing a community-reported issue ([Issue #12690](https://github.com/flutter/website/issues/12690)). Finally, a minor grammatical fix in the state management documentation generated notable discussion ([PR #12677](https://github.com/flutter/website/pull/12677)), highlighting the community's focus on documentation quality.

## Merged Pull Requests

### [PR #12691](https://github.com/flutter/website/pull/12691): Update deprecated `activeColor` to `activeThumbColor` in Learn Flutter example code
* **Author:** [miinhho](https://github.com/miinhho)
* **Merged At:** 2025-11-14 08:33 AM
* **Comments:** 5
* Updates a `Switch` widget example in the Flutter documentation to use `activeThumbColor` instead of the deprecated `activeColor` property, ensuring that new developers are taught current best practices.

### [PR #12687](https://github.com/flutter/website/pull/12687): Update site banner to link to umbrella blog post for Flutter.
* **Author:** [antfitch](https://github.com/antfitch)
* **Merged At:** 2025-11-13 05:13 PM
* **Comments:** 3
* Updates the site banner to announce the Flutter 3.38 and Dart 3.10 release, and links to the umbrella blog post with more details.

### [PR #12686](https://github.com/flutter/website/pull/12686): Added example for toImageSync + setImageSampler
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2025-11-14 04:40 PM
* **Comments:** 4
* This PR updates the fragment shaders documentation with a code example demonstrating how to chain shaders together by using `toImageSync` to render the output of one shader to an `Image` and then passing it to a second shader with `setImageSampler`.

### [PR #12685](https://github.com/flutter/website/pull/12685): Exclude secondary Markdown files from sitemap
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-11-14 06:32 AM
* **Comments:** 2
* Excludes secondary Markdown files (ending in `.html.md`) from the sitemap to prevent duplicate content from being indexed, which was causing poor search results.

### [PR #12684](https://github.com/flutter/website/pull/12684): Updates videos on docs landing page
* **Author:** [redbrogdon](https://github.com/redbrogdon)
* **Merged At:** 2025-11-14 06:40 AM
* **Comments:** 2
* This PR updates the documentation landing page by replacing the featured Google I/O videos with three new videos from the recent FlutterFlightPlans live stream.

### [PR #12678](https://github.com/flutter/website/pull/12678): Refactor comment for clarity in user-input.md
* **Author:** [autorejecttop](https://github.com/autorejecttop)
* **Merged At:** 2025-11-16 11:45 AM
* **Comments:** 3
* This PR refactors a confusing comment in a code example in `user-input.md` to improve clarity and fix a syntax error.

### 🔥 [PR #12677](https://github.com/flutter/website/pull/12677): Fix typo in state-management.md
* **Author:** [autorejecttop](https://github.com/autorejecttop)
* **Merged At:** 2025-11-14 03:49 PM
* **Comments:** 6
* Fixes a minor grammatical error in the state management documentation.

### [PR #12674](https://github.com/flutter/website/pull/12674): Add ProgressRing component for FWE
* **Author:** [schultek](https://github.com/schultek)
* **Merged At:** 2025-11-16 11:42 AM
* **Comments:** 2
* Adds a new Material 3 style `ProgressRing` component for use in First Week Experience (FWE) content, which is implemented using SVG and can be configured with different progress values and sizes.

### [PR #12272](https://github.com/flutter/website/pull/12272): [3.38] Document the `--profile-startup` Dart / Flutter CLI flags
* **Author:** [derekxu16](https://github.com/derekxu16)
* **Merged At:** 2025-11-16 09:01 AM
* **Comments:** 4
* This PR documents the `--profile-startup` flag for the `dart` and `flutter` CLI tools, which modifies the CPU profiler's sample buffer to stop recording when full instead of overwriting old samples.


## Closed Issues

### [Issue #12697](https://github.com/flutter/website/issues/12697): Quotation mark typo issue in Handling user input section
* **Author:** [miinhho](https://github.com/miinhho)
* A code snippet on the "Handling user input" documentation page has a syntax error where a string containing an apostrophe is incorrectly enclosed in single quotes; it should be updated to use double quotes.

### [Issue #12690](https://github.com/flutter/website/issues/12690): Deprecated `activeColor` in Learn Flutter Switch widget example code
* **Author:** [miinhho](https://github.com/miinhho)
* The example code for the `Switch` widget in the Flutter documentation uses the deprecated `activeColor` property, which should be updated to `activeThumbColor`.



## Top Hacker News Stories

### 404 🔥🔥 [Show HN: I built a synth for my daughter](https://bitsnpieces.dev/posts/a-synth-for-my-daughter/)
* **Author:** [random_moonwalk](https://news.ycombinator.com/user?id=random_moonwalk) | **Comments:** [90](https://news.ycombinator.com/item?id=45900425)

### 112 🔥 [FreeMDU: Open-source Miele appliance diagnostic tools](https://github.com/medusalix/FreeMDU)
* **Author:** [Medusalix](https://news.ycombinator.com/user?id=Medusalix) | **Comments:** [22](https://news.ycombinator.com/item?id=45953452)

### 39  [Google is killing the open web, part 2](https://wok.oblomov.eu/tecnologia/google-killing-open-web-2/)
* **Author:** [akagusu](https://news.ycombinator.com/user?id=akagusu) | **Comments:** [11](https://news.ycombinator.com/item?id=45954560)

### 113 🔥 [Replicate is joining Cloudflare](https://replicate.com/blog/replicate-cloudflare)
* **Author:** [bfirsh](https://news.ycombinator.com/user?id=bfirsh) | **Comments:** [33](https://news.ycombinator.com/item?id=45953702)

### 12  [Project Gemini](https://geminiprotocol.net/)
* **Author:** [andsoitis](https://news.ycombinator.com/user?id=andsoitis) | **Comments:** [14](https://news.ycombinator.com/item?id=45954640)

### 13  [WBlock: A New Ad-Blocker for Safari](https://github.com/0xCUB3/wBlock)
* **Author:** [InfiniteVortex](https://news.ycombinator.com/user?id=InfiniteVortex) | **Comments:** [4](https://news.ycombinator.com/item?id=45954626)

### 58  [Are you stuck in movie logic?](https://usefulfictions.substack.com/p/are-you-stuck-in-movie-logic)
* **Author:** [eatitraw](https://news.ycombinator.com/user?id=eatitraw) | **Comments:** [40](https://news.ycombinator.com/item?id=45952890)

### 41  [Celtic Code: Drawing Knots with Python](https://2earth.github.io/website/20250202.html)
* **Author:** [HansardExpert](https://news.ycombinator.com/user?id=HansardExpert) | **Comments:** [7](https://news.ycombinator.com/item?id=45796932)

### 57  [C++ implementation of SIP, ICE, TURN and related protocols](https://github.com/resiprocate/resiprocate)
* **Author:** [mooreds](https://news.ycombinator.com/user?id=mooreds) | **Comments:** [1](https://news.ycombinator.com/item?id=45822953)

### 42  [Ned: ImGui Text Editor with GL Shaders](https://github.com/nealmick/ned)
* **Author:** [klaussilveira](https://news.ycombinator.com/user?id=klaussilveira) | **Comments:** [12](https://news.ycombinator.com/item?id=45952824)

### 151 🔥 [Giving C a Superpower](https://hwisnu.bearblog.dev/giving-c-a-superpower-custom-header-file-safe_ch/)
* **Author:** [mithcs](https://news.ycombinator.com/user?id=mithcs) | **Comments:** [114](https://news.ycombinator.com/item?id=45952428)

### 78  [Craft Chrome Devtools Protocol (CDP) commands with the new command editor](https://developer.chrome.com/blog/cdp-command-editor)
* **Author:** [keepamovin](https://news.ycombinator.com/user?id=keepamovin) | **Comments:** [18](https://news.ycombinator.com/item?id=45845060)

### 221 🔥 [Building a Simple Search Engine That Works](https://karboosx.net/post/4eZxhBon/building-a-simple-search-engine-that-actually-works)
* **Author:** [freediver](https://news.ycombinator.com/user?id=freediver) | **Comments:** [60](https://news.ycombinator.com/item?id=45950720)

### 687 🔥🔥🔥 [Heretic: Automatic censorship removal for language models](https://github.com/p-e-w/heretic)
* **Author:** [melded](https://news.ycombinator.com/user?id=melded) | **Comments:** [315](https://news.ycombinator.com/item?id=45945587)

### 17  [Show HN: Reverse perspective camera for OpenGL (Three.js)](https://github.com/bntre/reverse-perspective-threejs)
* **Author:** [bntr](https://news.ycombinator.com/user?id=bntr) | **Comments:** [2](https://news.ycombinator.com/item?id=45874597)

### 261 🔥🔥 [A file format uncracked for 20 years](https://landaire.net/a-file-format-uncracked-for-20-years/)
* **Author:** [todsacerdoti](https://news.ycombinator.com/user?id=todsacerdoti) | **Comments:** [48](https://news.ycombinator.com/item?id=45837259)

### 44  [Fastmcpp (Fastmcp for C++)](https://github.com/0xeb/fastmcpp)
* **Author:** [0xeb](https://news.ycombinator.com/user?id=0xeb) | **Comments:** [3](https://news.ycombinator.com/item?id=45924417)

### 157 🔥 [Listen to Database Changes Through the Postgres WAL](https://peterullrich.com/listen-to-database-changes-through-the-postgres-wal)
* **Author:** [pjullrich](https://news.ycombinator.com/user?id=pjullrich) | **Comments:** [44](https://news.ycombinator.com/item?id=45885768)

### 3  [Deploying Temporal on AWS ECS with Terraform](https://papnori.github.io/posts/temporal-ecs-terraform/)
* **Author:** [norapap](https://news.ycombinator.com/user?id=norapap) | **Comments:** [2](https://news.ycombinator.com/item?id=45819731)

### 164 🔥 [PicoIDE – An open IDE/ATAPI drive emulator](https://picoide.com/)
* **Author:** [st_goliath](https://news.ycombinator.com/user?id=st_goliath) | **Comments:** [39](https://news.ycombinator.com/item?id=45949352)

### 115 🔥 [A 1961 Relay Computer Running in the Browser](https://minivac.greg.technology/)
* **Author:** [vaibhavsagar](https://news.ycombinator.com/user?id=vaibhavsagar) | **Comments:** [30](https://news.ycombinator.com/item?id=45950396)

### 72  [GCC 16 considering changing default to C++20](https://inbox.sourceware.org/gcc/aQj1tKzhftT9GUF4@redhat.com/)
* **Author:** [pjmlp](https://news.ycombinator.com/user?id=pjmlp) | **Comments:** [63](https://news.ycombinator.com/item?id=45953202)

### 262 🔥🔥 [The fate of "small" open source](https://nolanlawson.com/2025/11/16/the-fate-of-small-open-source/)
* **Author:** [todsacerdoti](https://news.ycombinator.com/user?id=todsacerdoti) | **Comments:** [202](https://news.ycombinator.com/item?id=45947639)

### 274 🔥🔥 [I finally understand Cloudflare Zero Trust tunnels](https://david.coffee/cloudflare-zero-trust-tunnels)
* **Author:** [eustoria](https://news.ycombinator.com/user?id=eustoria) | **Comments:** [87](https://news.ycombinator.com/item?id=45946865)

### 178 🔥 [The Pragmatic Programmer: 20th Anniversary Edition (2023)](https://www.ahalbert.com/technology/2023/12/19/the_pragmatic_programmer.html)
* **Author:** [ahalbert2](https://news.ycombinator.com/user?id=ahalbert2) | **Comments:** [54](https://news.ycombinator.com/item?id=45948254)



