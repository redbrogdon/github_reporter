# Overall Summary
Here's a highlights section of the most impactful pull requests and closed issues:

**🔥🔥🔥 [PR #175805](https://github.com/flutter/flutter/pull/175805) (flutter/flutter): Add --web-define flag for template variable injection in Flutter web builds**
  * **Comments:** 20
  * This PR introduces a `--web-define` flag for `flutter run` and `flutter build web` commands, allowing developers to inject environment-specific variables into `index.html` and `flutter_bootstrap.js` using `{{VARIABLE_NAME}}` placeholders, simplifying configuration and adding validation for missing values.

**🔥 [Issue #178602](https://github.com/flutter/flutter/issues/178602) (flutter/flutter): Flutter 3.38.1: Failed to Verify when Submitting to App Store Connect**
  * **Reactions:** **19** -- 👍 17 👀 2
  * Users are encountering a "Failed to Verify" error with an "LC_ENCRYPTION_INFO missing or invalid" message when submitting Flutter apps to App Store Connect on macOS after upgrading to Flutter 3.38.1.

**🔥 [Issue #165787](https://github.com/flutter/flutter/issues/165787) (flutter/flutter): [iOS] - Ad Click Listener Breaks After Scroll Initiated on Ad (GAM Rich Media in Flutter ListView)**
  * **Reactions:** **19** -- 👍 14 👀 5
  * In Flutter iOS apps, rich media ads served via Google Ad Manager in a ListView lose their click listener functionality if the ListView is scrolled starting from the ad widget, which appears to be related to `touchend` events not triggering correctly in the Flutter environment, unlike native iOS.

**🔥 [PR #2767](https://github.com/dart-lang/native/pull/2767) (dart-lang/native): [ffi] named `Arena` parameter in `using()` function**
  * **Comments:** 8
  * This PR adds default named parameters to callbacks used with `ffi.using` and `Arena.using` functions, making the `Arena` parameter explicitly `arena` and the resource parameter explicitly `resource`. This change improves the clarity and ergonomics of FFI code.

**🔥 [PR #178217](https://github.com/flutter/flutter/pull/178217) (flutter/flutter): Fix division by zero in RenderTable intrinsic size methods**
  * **Comments:** 6
  * This PR fixes a division by zero crash in `RenderTable`'s intrinsic size methods (`computeMinIntrinsicWidth`, `computeMaxIntrinsicWidth`, `computeMinIntrinsicHeight`, `computeMaxIntrinsicHeight`) when they are called on empty tables (0 rows x 0 columns).

**🔥 [PR #180538](https://github.com/flutter/flutter/pull/180538) (flutter/flutter): New isSemantics and deprecate containsSemantics**
  * **Comments:** 6
  * This PR deprecates the `containsSemantics` matcher in `flutter_test` and introduces `isSemantics` as its replacement, providing identical functionality. An automatic data-driven fix is included to assist with migrating existing test code to the new matcher.

**[Issue #62320](https://github.com/dart-lang/sdk/issues/62320) (dart-lang/sdk): the dart compile command needs to say what package is using a build hook**
  * The `dart compile` command fails when a dependency uses build hooks, but the error message doesn't specify which package is using the hook, making it difficult for developers to identify and resolve the issue.

**[Issue #62037](https://github.com/dart-lang/sdk/issues/62037) (dart-lang/sdk): Idle SecureSocket consumes >100% CPU if the listener is paused**
  * A server-side `SecureSocket` consumes over 100% CPU when its listener is paused after receiving a substantial amount of data, possibly caused by mishandling backpressure with full TLS and OS buffers.

**[PR #180586](https://github.com/flutter/flutter/pull/180586) (flutter/flutter): [ Widget Preview ] Add support for `dart:ffi` imports**
  * **Comments:** 2
  * Adds support for `dart:ffi` imports within the `flutter widget-preview` command by passing the `--include-unsupported-platform-library-stubs` flag to the CFE for DDC builds, allowing unsupported core libraries to be imported without compile-time errors.

**[PR #10595](https://github.com/flutter/packages/pull/10595) (flutter/packages): [camera_web] Fixed crashing bug on camera_web 0.3.5 for Safari**
  * **Comments:** 1
  * Fixes a camera initialization failure in `camera_web` on Safari by addressing a null check operator error that occurred when accessing the `facingMode` capability, ensuring reliable camera functionality.


# GitHub PR Report for dart-lang/ai
## From 2026-01-07

There were no pull requests merged or issues closed in the repository during this period, indicating no recent changes to the codebase.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2026-01-07

This period focused on enhancing the stability and developer experience of the Dart SDK through several key issue closures. A critical performance regression was addressed, where an idle `SecureSocket` could consume over 100% CPU when its listener was paused after receiving substantial data ([Issue #62037](https://github.com/dart-lang/sdk/issues/62037)), ensuring more efficient resource utilization for network-intensive applications. The `dart compile` command received a tooling enhancement to provide more specific error messages, now indicating which package is using a problematic build hook when compilation fails ([Issue #62320](https://github.com/dart-lang/sdk/issues/62320)), thereby streamlining the debugging process for developers. Internal stability also saw improvements with fixes for a `vm/cc/Profiler_EnterExitIsolate` test failure on `vm-tsan-mac-release-arm64` configurations ([Issue #62332](https://github.com/dart-lang/sdk/issues/62332)) and resolution of a broken UBSAN build on Windows/x64 due to missing runtime libraries ([Issue #62267](https://github.com/dart-lang/sdk/issues/62267)). Lastly, the repository updated its bug reporting template to ensure more effective issue tracking and resolution ([Issue #62367](https://github.com/dart-lang/sdk/issues/62367)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62367](https://github.com/dart-lang/sdk/issues/62367): Dart
* **Author:** [yourarslan295-source](https://github.com/yourarslan295-source)
* This issue provides a template for Dart bug reports, requesting a clear problem description, expected/actual behavior with reproduction code, and the Dart SDK version to help address future issues effectively.

### [Issue #62332](https://github.com/dart-lang/sdk/issues/62332): vm/cc/Profiler_EnterExitIsolate failed on vm-tsan-mac-release-arm64
* **Author:** [aam](https://github.com/aam)
* The `Profiler_EnterExitIsolate` test is failing on the `vm-tsan-mac-release-arm64` builder with an exit code of 1, indicating a potential deadlock or hang during `Thread::ExitIsolate` involving mutex locking, which ThreadSanitizer is detecting.

### [Issue #62320](https://github.com/dart-lang/sdk/issues/62320): the dart compile command needs to say what package is using a build hook
* **Author:** [bsutton](https://github.com/bsutton)
* The `dart compile` command fails when a dependency uses build hooks, but the error message doesn't specify which package is using the hook, making it difficult for developers to identify and resolve the issue, especially when `dart build` is not an alternative due to lack of cross-compilation support.

### [Issue #62267](https://github.com/dart-lang/sdk/issues/62267): UBSAN build is broken on Windows/x64
* **Author:** [alexmarkov](https://github.com/alexmarkov)
* The UBSAN build is failing on Windows/x64 because `lld-link` cannot find the necessary UBSAN runtime libraries, `clang_rt.ubsan_standalone.lib` and `clang_rt.ubsan_standalone_cxx.lib`, during the linking of `gen_snapshot.exe`.

### [Issue #62037](https://github.com/dart-lang/sdk/issues/62037): Idle SecureSocket consumes >100% CPU if the listener is paused
* **Author:** [maluke](https://github.com/maluke)
* A server-side `SecureSocket` consumes over 100% CPU when its listener is paused after receiving a substantial amount of data, possibly caused by mishandling backpressure with full TLS and OS buffers.


# GitHub PR Report for dart-lang/language
## From 2026-01-07

During this period, no pull requests were merged and no issues were closed, indicating that there were no changes to the repository via these mechanisms.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2026-01-07

Recent updates to the repository primarily focus on enhancing the developer experience through API improvements, increased testing robustness, and build system efficiencies. A key enhancement to the public API surface is introduced by [PR #2767], which refines the `ffi.using` and `Arena.using` functions by adding explicit named parameters (`arena`, `resource`) to their callbacks, thereby improving the clarity and ergonomics of native interop code. Significant efforts have also been directed towards the `record_use` package, notably with [PR #2927] implementing semantic equality for `record_use` files, a feature originally proposed in [Issue #2897]. This allows for robust cross-compiler testing by intelligently accounting for differences between Dart VM and `dart2js` outputs, further supported by [PR #2932] to ensure comprehensive CI coverage for the package. Furthermore, the test suite gains increased robustness through [PR #2933], which adds a crucial test case for recursive Dart processes, leveraging recent Dart SDK changes to address complex interactions with native code. Finally, the closure of [Issue #879] indicates progress on optimizing `ffigen` generation by introducing an early exit mechanism that prevents regeneration when input modification times are older than existing outputs, contributing to faster build times.

## Merged Pull Requests

### [PR #2933](https://github.com/dart-lang/native/pull/2933): [hooks_runner] Test case for recursive Dart processes
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2026-01-07 09:19 AM
* **Comments:** 5
* This PR adds a new test case to the `hooks_runner` package that reproduces an issue with recursive Dart process invocations involving native code, which is resolved by a recent Dart SDK change.

### [PR #2932](https://github.com/dart-lang/native/pull/2932): [infra] Run the ci for `record_use`
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2026-01-07 08:53 AM
* **Comments:** 1
* This PR updates the CI workflow to correctly run tests for the `pkgs/record_use` package, addressing an issue where changes to this package did not trigger CI runs.

### [PR #2927](https://github.com/dart-lang/native/pull/2927): [record_use] Semantic equality
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2026-01-07 06:39 AM
* **Comments:** 1
* This PR introduces semantic equality for `record_use` files, enabling robust comparison of outputs from different Dart compilers like the VM and `dart2js`. It provides configurable `semanticEquals` methods that account for compiler-specific differences such as dead code elimination, tear-off promotion, URI mapping, and variations in argument handling, and includes new tests validating these comparisons against existing compiler outputs.

### 🔥 [PR #2767](https://github.com/dart-lang/native/pull/2767): [ffi] named `Arena` parameter in `using()` function
* **Author:** [josxha](https://github.com/josxha)
* **Merged At:** 2026-01-07 12:29 AM
* **Comments:** 8
* This PR adds default named parameters to callbacks used with `ffi.using` and `Arena.using` functions, making the `Arena` parameter explicitly `arena` and the resource parameter explicitly `resource`. This change improves the clarity and ergonomics of FFI code.


## Closed Issues

### [Issue #2897](https://github.com/dart-lang/native/issues/2897): [record_use] Implementation: Semantic equality for `RecordedUses` for testing
* **Author:** [dcharkes](https://github.com/dcharkes)
* This issue proposes implementing a semantic equality method for `RecordedUses` to allow testing equality between different backends, which should tolerate variations like loading-unit names and potentially treat one record as a subset of another.

### [Issue #879](https://github.com/dart-lang/native/issues/879): ffigen should not generate if input mtimes are older than output mtimes
* **Author:** [johnmccutchan](https://github.com/johnmccutchan)
* `ffigen` should implement an early exit mechanism, skipping code generation if input header or configuration file modification times are older than the existing generated code.


# GitHub PR Report for flutter/ai
## From 2026-01-07

During this period, there were no pull requests merged and no issues closed, indicating no changes were made to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2026-01-07

During this period, there were no pull requests merged and no issues closed in the repository, indicating a stable period with no changes introduced or resolved.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2026-01-07

This recent set of changes to the repository focuses on enhancing developer experience, particularly for web and platform-specific builds, while also refining the testing framework and addressing several critical bugs. A significant new feature is the introduction of the `--web-define` flag ([PR #175805](https://github.com/flutter/flutter/pull/175805)), which allows injecting environment-specific variables into Flutter web builds, a long-requested capability as seen in [Issue #127853](https://github.com/flutter/flutter/issues/127853). Developers will also find expanded `dart:ffi` support within the `flutter widget-preview` command ([PR #180586](https://github.com/flutter/flutter/pull/180586)), addressing limitations for native plugin previews outlined in [Issue #166431](https://github.com/flutter/flutter/issues/166431). For testing, the `containsSemantics` matcher has been deprecated in favor of a new `isSemantics` matcher ([PR #180538](https://github.com/flutter/flutter/pull/180538)), aligning with proposed naming conventions for matchers outlined in [Issue #180534](https://github.com/flutter/flutter/issues/180534). Core UI components see improvements with the new `RawTooltip` widget ([PR #177678](https://github.com/flutter/flutter/pull/177678)), offering a leaner API for custom tooltip content and addressing [Issue #45034](https://github.com/flutter/flutter/issues/45034), alongside fixes for `DropdownMenuEntry.style` resolution when highlighted ([PR #178873](https://github.com/flutter/flutter/pull/178873)) and ensuring `TabBar` indicator images render correctly at `initialIndex` ([PR #179616](https://github.com/flutter/flutter/pull/179616)), which closes [Issue #59143](https://github.com/flutter/flutter/issues/59143). Crucial bug fixes include resolving a "resonant explosion of scroll disconnect" when interacting with Platform Views in scrollable lists ([PR #180246](https://github.com/flutter/flutter/pull/180246)), which improves a common pain point related to issues like [Issue #165787](https://github.com/flutter/flutter/issues/165787), and a critical fix for division-by-zero crashes in `RenderTable`'s intrinsic size methods when dealing with empty tables ([PR #178217](https://github.com/flutter/flutter/pull/178217)). Further platform stability comes from reverting a change to `gen_snapshot` for Mach-O dynamic library generation ([PR #180639](https://github.com/flutter/flutter/pull/180639)), updating the target Windows version to 10 ([PR #180624](https://github.com/flutter/flutter/pull/180624)), rolling the Dart SDK to 3.11.0-296.1.beta ([PR #180633](https://github.com/flutter/flutter/pull/180633)), and removing redundant `@RequiresApi24` annotations from Android embedding classes ([PR #180116](https://github.com/flutter/flutter/pull/180116)), alongside updates preventing `setStatusBarColor` calls on Android API 35+ due to deprecation ([PR #180062](https://github.com/flutter/flutter/pull/180062)). Finally, CI test stability is improved by ignoring non-fatal Gradle daemon termination messages ([PR #180645](https://github.com/flutter/flutter/pull/180645)), addressing flakiness concerns like [Issue #177371](https://github.com/flutter/flutter/issues/177371), and enabling `hook_user_defines` and `link_hook` integration tests on CI ([PR #180622](https://github.com/flutter/flutter/pull/180622)) to resolve [Issue #180575](https://github.com/flutter/flutter/issues/180575).

## Merged Pull Requests

### [PR #180645](https://github.com/flutter/flutter/pull/180645): [ Infra ] Ignore non-fatal Gradle daemon "termination" message
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2026-01-07 01:38 PM
* **Comments:** 0
* Modifies `AndroidRunOutputTest` to ignore non-fatal Gradle daemon "termination" messages in `stderr`, thereby stabilizing CI tests like `Mac_arm64_mokey run_release_test` that were previously failing due to these messages.

### [PR #180644](https://github.com/flutter/flutter/pull/180644): [web][triage] Exclude PRs that have been approved/triaged
* **Author:** [mdebbar](https://github.com/mdebbar)
* **Merged At:** 2026-01-07 02:49 PM
* **Comments:** 0
* Updates the Flutter Web Triage documentation to modify the GitHub query for `flutter/flutter` pull requests, excluding those already labeled `triaged-web` to streamline the triage process.

### [PR #180642](https://github.com/flutter/flutter/pull/180642): Replace Hybrid Composition wiki page with dev-facing content
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2026-01-07 10:10 AM
* **Comments:** 0
* Replaces the client-facing content of the `Hybrid Composition` wiki page with a concise, team-focused overview of its background, approach, and limitations. This change removes duplicated and outdated instructional material, directing developers to the official `docs.flutter.dev` for detailed platform view implementation guides.

### [PR #180639](https://github.com/flutter/flutter/pull/180639): Revert "Directly generate a Mach-O dynamic library using gen_snapshot [reland] (#174870)
* **Author:** [vashworth](https://github.com/vashworth)
* **Merged At:** 2026-01-07 02:26 PM
* **Comments:** 0
* This PR reverts a previous change that allowed `gen_snapshot` to directly generate Mach-O dynamic libraries for Apple platforms; instead, `gen_snapshot` now outputs assembly code which `flutter_tools` compiles and links into the final dynamic library using `xcrun cc` and `clang` to fix an issue introduced by the direct generation approach.

### [PR #180633](https://github.com/flutter/flutter/pull/180633): Roll Dart SDK to 3.11.0-296.1.beta
* **Author:** [iinozemtsev](https://github.com/iinozemtsev)
* **Merged At:** 2026-01-07 09:45 AM
* **Comments:** 3
* This PR rolls the Dart SDK to version 3.11.0-296.1.beta and updates the Windows build configuration to target Windows 10 (RS5, version 1809), which is necessary to ensure CI stability.

### [PR #180625](https://github.com/flutter/flutter/pull/180625): Improve code quality in `KeyboardManagerTest.java`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-07 01:38 PM
* **Comments:** 2
* This PR improves the code quality in `KeyboardManagerTest.java` by fixing lint issues like incorrect `assert` argument order, unnecessary `static` modifiers, and lowercase `l` suffix for long literals, along with correcting minor typos.

### [PR #180624](https://github.com/flutter/flutter/pull/180624): Bump target Windows version to 10
* **Author:** [mraleph](https://github.com/mraleph)
* **Merged At:** 2026-01-07 09:34 AM
* **Comments:** 0
* Updates Flutter's Windows build configuration to explicitly target Windows 10, aligning with the platform's official support and Dart's configuration.

### [PR #180622](https://github.com/flutter/flutter/pull/180622): Run hook_user_defines and link_hook integration tests on CI
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2026-01-07 09:34 AM
* **Comments:** 0
* This PR enables the `hook_user_defines` and `link_hook` integration tests to run on CI, fixing a previously undetected bug in the `hook_user_defines` test by explicitly removing it from the workspace to ensure its local `user-defines` are correctly applied.

### [PR #180606](https://github.com/flutter/flutter/pull/180606): Update `CHANGELOG` for 3.38.6 release
* **Author:** [camsim99](https://github.com/camsim99)
* **Merged At:** 2026-01-07 10:50 AM
* **Comments:** 1
* Updates the `CHANGELOG.md` file for the 3.38.6 release, adding entries for bug fixes related to WebView unclickability on iOS, blank areas after virtual keyboard closure on Android web, and app crashes on Android when using accessibility with platform views.

### [PR #180605](https://github.com/flutter/flutter/pull/180605): Update `engine.version` & `DEPS` for 3.38.6 release
* **Author:** [camsim99](https://github.com/camsim99)
* **Merged At:** 2026-01-07 10:42 AM
* **Comments:** 1
* This PR updates the Flutter engine version and the Dart SDK revision within the `DEPS` file, preparing for the 3.38.6 release.

### [PR #180599](https://github.com/flutter/flutter/pull/180599): docs(engine): update rbe notes
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* **Merged At:** 2026-01-06 04:37 PM
* **Comments:** 0
* Adds instructions to the RBE documentation detailing how to switch to the `flutter-rbe-prod` Google Cloud project and refresh application default credentials.

### [PR #180597](https://github.com/flutter/flutter/pull/180597): Added type annotations and removed lints for run_tests.py
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2026-01-07 02:06 PM
* **Comments:** 1
* Adds type annotations to the `run_tests.py` script for `mypy` compliance and adjusts the code to pass `pylint` checks, thereby improving its overall quality and maintainability.

### [PR #180586](https://github.com/flutter/flutter/pull/180586): [ Widget Preview ] Add support for `dart:ffi` imports
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2026-01-06 06:17 PM
* **Comments:** 2
* Adds support for `dart:ffi` imports within the `flutter widget-preview` command by passing the `--include-unsupported-platform-library-stubs` flag to the CFE for DDC builds, allowing unsupported core libraries to be imported without compile-time errors, and prevents users from manually enabling this flag via `extraFrontEndOptions`.

### [PR #180585](https://github.com/flutter/flutter/pull/180585): Improve code quality in `FlutterActivityTest.java`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-07 10:05 AM
* **Comments:** 0
* This PR improves code quality in `FlutterActivityTest.java` by removing an unused import and fixing several typos in method names.

### [PR #180571](https://github.com/flutter/flutter/pull/180571): Unpin DDS
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2026-01-07 02:05 AM
* **Comments:** 0
* Unpins the `dds` package from version 5.0.3 and updates it to 5.1.0, as the bug in `dds` 5.0.4 that caused the pin has been reverted in later versions.

### 🔥 [PR #180538](https://github.com/flutter/flutter/pull/180538): New isSemantics and deprecate containsSemantics
* **Author:** [zemanux](https://github.com/zemanux)
* **Merged At:** 2026-01-07 03:16 PM
* **Comments:** 6
* This PR deprecates the `containsSemantics` matcher in `flutter_test` and introduces `isSemantics` as its replacement, providing identical functionality. An automatic data-driven fix is included to assist with migrating existing test code to the new matcher.

### [PR #180326](https://github.com/flutter/flutter/pull/180326): Fix Drawer.child docstring to say ListView instead of SliverList
* **Author:** [nathannewyen](https://github.com/nathannewyen)
* **Merged At:** 2026-01-07 03:42 PM
* **Comments:** 1
* Corrects the docstring for `Drawer.child` to recommend `ListView` instead of `SliverList`, providing more accurate guidance since `ListView` is typically used as a direct child while `SliverList` is used within `CustomScrollView`.

### [PR #180246](https://github.com/flutter/flutter/pull/180246): Fix resonant explosion of scroll disconnect when scrolling a pv in a list
* **Author:** [gmackall](https://github.com/gmackall)
* **Merged At:** 2026-01-07 01:38 PM
* **Comments:** 4
* Fixes a "resonant explosion of scroll disconnect" when scrolling Platform Views in a list by updating `FlutterMutatorView` to use the Android view's current `getLeft()` and `getTop()` layout positions for touch event translation, rather than potentially stale or imprecise values from `onDisplayPlatformView`.

### [PR #180117](https://github.com/flutter/flutter/pull/180117): Remove unnecessary `@RequiresApi24` annotations from FlutterFragment methods
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-07 01:00 AM
* **Comments:** 1
* This change removes unnecessary `@RequiresApi24` annotations from several `FlutterFragment` methods, simplifying the codebase by eliminating redundant API level constraints.

### [PR #180116](https://github.com/flutter/flutter/pull/180116): Remove more  `requires 24` anotations
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-07 07:17 AM
* **Comments:** 3
* Removes `@RequiresApi(API_LEVELS.API_24)` annotations from several Android platform embedding classes and methods, including `FlutterActivity` and `MouseCursorPlugin`, indicating that these components no longer strictly require Android API level 24.

### [PR #180062](https://github.com/flutter/flutter/pull/180062): Prevent calling `setStatusBarColor` on `API_35` and update related documentation
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-07 02:58 PM
* **Comments:** 4
* This PR prevents `setStatusBarColor` from being called on Android API level 35 (Android 15) and above, as it is deprecated and has no effect on these versions, and updates the related documentation to recommend using the `WindowInsetsController` for system UI styling.

### [PR #179616](https://github.com/flutter/flutter/pull/179616): Fix TabBar.image does not render at initialIndex for the first time
* **Author:** [huycozy](https://github.com/huycozy)
* **Merged At:** 2026-01-07 04:15 AM
* **Comments:** 1
* This PR fixes an issue where `TabBar` indicator images, particularly those loaded asynchronously, did not render correctly at the `initialIndex` on first display by making the `_IndicatorPainter` listen to a new notifier that triggers a repaint once the indicator image finishes fetching.

### [PR #178873](https://github.com/flutter/flutter/pull/178873): Fix DropdownMenuEntry.style not resolved when entry is highlighted
* **Author:** [bleroux](https://github.com/bleroux)
* **Merged At:** 2026-01-07 01:39 AM
* **Comments:** 0
* This PR fixes an issue where `DropdownMenuEntry.style` properties, particularly those responsive to `WidgetState.focused`, were not correctly applied when a `DropdownMenuEntry` was highlighted. The solution involves explicitly setting the `WidgetState.focused` on the `MenuItemButton`'s `statesController` for the highlighted entry, ensuring proper style resolution even if the `TextField` retains input focus.

### 🔥 [PR #178217](https://github.com/flutter/flutter/pull/178217): Fix division by zero in RenderTable intrinsic size methods
* **Author:** [777genius](https://github.com/777genius)
* **Merged At:** 2026-01-07 07:37 AM
* **Comments:** 6
* This PR fixes a division by zero crash in `RenderTable`'s intrinsic size methods (`computeMinIntrinsicWidth`, `computeMaxIntrinsicWidth`, `computeMinIntrinsicHeight`, `computeMaxIntrinsicHeight`) when they are called on empty tables (0 rows x 0 columns). The fix adds early return checks to these methods, ensuring they return 0.0 without crashing, and new tests confirm this behavior.

### [PR #177678](https://github.com/flutter/flutter/pull/177678): Raw tooltip with smaller API surface that exposes tooltip widget
* **Author:** [victorsanni](https://github.com/victorsanni)
* **Merged At:** 2026-01-07 03:52 PM
* **Comments:** 1
* This PR introduces `RawTooltip`, a new core widget that extracts and consolidates tooltip management logic, including animation, gesture handling, and positioning, into a minimal API. The `material/Tooltip` widget is refactored to use `RawTooltip` as its base, simplifying its implementation and enabling custom tooltip content through `tooltipBuilder`, which resolves issue #45034.

### 🔥🔥🔥 [PR #175805](https://github.com/flutter/flutter/pull/175805): Add --web-define flag for template variable injection in Flutter web builds
* **Author:** [ulisseshen](https://github.com/ulisseshen)
* **Merged At:** 2026-01-06 04:59 PM
* **Comments:** 20
* This PR introduces a `--web-define` flag for `flutter run` and `flutter build web` commands, allowing developers to inject environment-specific variables into `index.html` and `flutter_bootstrap.js` using `{{VARIABLE_NAME}}` placeholders, simplifying configuration and adding validation for missing values.


## Closed Issues

### [Issue #180646](https://github.com/flutter/flutter/issues/180646): mac-34 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The `mac-34` device has lost its external connection to a phone device, as indicated by the title and the provided screenshot.

### [Issue #180630](https://github.com/flutter/flutter/issues/180630): An error occurred when adding Swift Package Manager integration
* **Author:** [Leo-Chan01](https://github.com/Leo-Chan01)
* The user is encountering a "fileNotFound" error for `pubspec.yaml` when trying to run their project after enabling experimental Swift Package Manager integration, leading to a failure in resolving package dependencies.

### [Issue #180575](https://github.com/flutter/flutter/issues/180575): Tests for `‎dev/integration_tests/hook_user_defines` don't run on CI (and currently fail)
* **Author:** [goderbauer](https://github.com/goderbauer)
* The tests for `dev/integration_tests/hook_user_defines` are not running on CI, fail locally with an "Invalid argument(s): User-define `magic_value` must be an integer, found: null" error, likely due to `resolution: workspace` not defining `magic_value`, and need to be fixed and added to CI.

### [Issue #180534](https://github.com/flutter/flutter/issues/180534): [Proposal] Create naming conventions for partial & exact matchers
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* This proposal suggests establishing naming conventions for two types of matchers: `is*` for partial matches (only provided properties, cannot assert nulls) and `matches*` for exact matches (all properties, including nulls), with a plan to update the style guide and deprecate `containsSemantics` for `isSemantics`.

### [Issue #180481](https://github.com/flutter/flutter/issues/180481): [Bug] Flutter Windows build fails when Visual Studio 2026 is installed — toolchain defaults to VS2026 even when VS2022 is present
* **Author:** [Alec269](https://github.com/Alec269)
* Flutter Windows builds fail because the toolchain automatically defaults to the unsupported Visual Studio 2026, even when a supported Visual Studio 2022 is present, and there is no current mechanism to force Flutter to prefer the supported VS2022 version.

### [Issue #179985](https://github.com/flutter/flutter/issues/179985): Windows build_android_host_app_with_module_aar is 2.02% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* The `Windows build_android_host_app_with_module_aar` post-submit test builder has a flakiness ratio of 2.02%, exceeding the 2.00% threshold, and requires investigation and a fix.

### [Issue #179980](https://github.com/flutter/flutter/issues/179980): Mac build_android_host_app_with_module_aar is 2.02% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* The `Mac build_android_host_app_with_module_aar` post-submit test builder has exceeded its flakiness threshold at 2.02%, and developers are requested to investigate and fix the flakiness according to the documented process.

### [Issue #179966](https://github.com/flutter/flutter/issues/179966): validate `FragmentShader.getUniformFloat` works on impeller/opengles backend
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* Investigate why `FragmentShader.getUniformFloat` fails in a test with the OpenGL ES backend, returning an unexpected uniform name instead of "uSize", then verify its functionality and ensure proper test coverage across Impeller backends like OpenGL ES, Vulkan, and Metal.

### [Issue #178602](https://github.com/flutter/flutter/issues/178602): Flutter 3.38.1: Failed to Verify when Submitting to App Store Connect
* **Author:** [KiddoV](https://github.com/KiddoV)
* **Reactions:** **19** -- 👍 17 👀 2
* Users are encountering a "Failed to Verify" error with an "LC_ENCRYPTION_INFO missing or invalid" message when submitting Flutter apps to App Store Connect on macOS after upgrading to Flutter 3.38.1.

### [Issue #177371](https://github.com/flutter/flutter/issues/177371): Mac_arm64_mokey run_release_test is 6.12% flaky: "The daemon has terminated unexpectedly on startup attempt #1 with error code: 0"
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* The `Mac_arm64_mokey run_release_test` is experiencing a 6.12% flakiness, exceeding the 2.00% threshold, with the primary error being "The daemon has terminated unexpectedly on startup attempt #1 with error code: 0".

### [Issue #177363](https://github.com/flutter/flutter/issues/177363): `DropdownMenuEntry` style's text style is not resolving with states
* **Author:** [rmahmadkhan](https://github.com/rmahmadkhan)
* The `textStyle` property within a `DropdownMenuEntry`'s `ButtonStyle` is not correctly resolving with widget states (e.g., `focused`), preventing dynamic changes to font weight or size as expected.

### [Issue #176979](https://github.com/flutter/flutter/issues/176979): Implement Firestore Data Layer
* **Author:** [ievdokdm](https://github.com/ievdokdm)
* This issue is about defining the Firestore DB schema for LUCI Tests execution information and creating a data access layer for those collections.

### [Issue #174938](https://github.com/flutter/flutter/issues/174938): [mustache_template] Improve error throwing
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* This issue proposes improving the error handling in the `mustache_template` package by ensuring `_error` calls correctly throw exceptions and by using `StateError` instead of `Exception` for unreachable code.

### [Issue #166431](https://github.com/flutter/flutter/issues/166431): Support for previews that include calls to unsupported web APIs (e.g., native plugins, dart:io, etc.)
* **Author:** [bkonyi](https://github.com/bkonyi)
* The widget previewer, being a Flutter web application, currently crashes when previewing widgets that call unsupported web APIs like native plugins or `dart:io`; the goal is to catch these exceptions and display an informative error widget with documentation links for developers to refactor their code.

### [Issue #165787](https://github.com/flutter/flutter/issues/165787): [iOS] - Ad Click Listener Breaks After Scroll Initiated on Ad (GAM Rich Media in Flutter ListView)
* **Author:** [PaananenReko](https://github.com/PaananenReko)
* **Reactions:** **19** -- 👍 14 👀 5
* In Flutter iOS apps, rich media ads served via Google Ad Manager in a ListView lose their click listener functionality if the ListView is scrolled starting from the ad widget, which appears to be related to `touchend` events not triggering correctly in the Flutter environment, unlike native iOS.

### [Issue #155210](https://github.com/flutter/flutter/issues/155210): Camera Web example doesn't work on Safari
* **Author:** [victorcatn](https://github.com/victorcatn)
* The camera web example, built with Flutter, shows a blank screen on Safari (Version 17.6) despite camera permissions being granted, while working as expected on Chrome.

### [Issue #127853](https://github.com/flutter/flutter/issues/127853): Support dart defines in index.html
* **Author:** [kodal](https://github.com/kodal)
* **Reactions:** **19** -- 👍 19
* This issue requests support for `--dart-defined` variables in Flutter Web's `index.html` file, proposing a mechanism to replace placeholders like `${DART_DEFINED_VAR}` during the build process, similar to existing support on Android and iOS.

### [Issue #124801](https://github.com/flutter/flutter/issues/124801): Hybrid composition wiki does not have a correct example
* **Author:** [TheCarpetMerchant](https://github.com/TheCarpetMerchant)
* The Hybrid Composition wiki needs a corrected example that includes controller and view type details, ideally by providing a fully-fledged example app and referring to it via code snippets.

### [Issue #108974](https://github.com/flutter/flutter/issues/108974): Document ffiPlugin pubspec.yaml key, and its implications on existing plugins that use FFI
* **Author:** [Piero512](https://github.com/Piero512)
* The user requests documentation for the new `ffiPlugin` key in `pubspec.yaml`, seeking clarification on its purpose, impact on existing FFI plugins, introduction date, and implications for backward compatibility.

### [Issue #100268](https://github.com/flutter/flutter/issues/100268): [Documentation] Drawer.child has inconsistencies in docstring and api.flutter.dev
* **Author:** [bradyt](https://github.com/bradyt)
* The `Drawer.child` docstring in the code suggests using `SliverList`, while the online documentation at api.flutter.dev recommends standard widgets like `Row` or `Column`, creating an inconsistency that confuses developers about the correct implementation.

### [Issue #69797](https://github.com/flutter/flutter/issues/69797): Adding "-v" flag to drive-examples command hangs
* **Author:** [cyanglaz](https://github.com/cyanglaz)
* **Reactions:** **2** -- 👍 1 😕 1
* Adding the `-v` flag to the `drive-examples` command within `plugin_tools` causes the process to hang during `flutter pub get --verbose` execution for the first plugin, with an identified fix involving replacing a method call in `drive_examples_command.dart`.

### [Issue #66272](https://github.com/flutter/flutter/issues/66272): Instructions on how to debug errors thrown by native code in plugins
* **Author:** [jhsware](https://github.com/jhsware)
* **Reactions:** **2** -- 👍 2
* The user requests documentation on how to debug errors thrown by native code within plugins, citing difficulty debugging non-specific errors from the `in_app_purchase` plugin on iOS and suggesting methods like breakpoints or detailed logging.

### [Issue #59143](https://github.com/flutter/flutter/issues/59143): Tabbar.image does not render at initialIndex for the first time
* **Author:** [mzl1988](https://github.com/mzl1988)
* **Reactions:** **6** -- 👍 6
* The `TabBar`'s `indicator` image, defined using `DecorationImage` with `AssetImage`, fails to render correctly at the `initialIndex` when the tab bar is displayed for the first time.

### [Issue #45034](https://github.com/flutter/flutter/issues/45034): Custom Overlay for Tooltip Widget
* **Author:** [BharathMG](https://github.com/BharathMG)
* **Reactions:** **2** -- 👍 2
* The user wants to customize the Tooltip widget's overlay (e.g., add a bubble or a close icon) and control its visibility programmatically, proposing an `overlay` parameter and exposed show/hide methods to avoid copying the entire class.

### [Issue #42442](https://github.com/flutter/flutter/issues/42442): [webview_flutter] Allow programmatic scroll control 
* **Author:** [amirh](https://github.com/amirh)
* **Reactions:** **13** -- 👍 13
* Users are requesting programmatic scroll control and the ability to listen to current scroll positions for webviews in `webview_flutter`.


# GitHub PR Report for flutter/genui
## From 2026-01-07

There were no pull requests merged or issues closed during this period, indicating no changes were made to the repository's codebase or public API surface.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2026-01-07

This period saw a focused effort on enhancing the repository's continuous integration processes and several targeted package improvements. A significant portion of the changes addressed CI/CD workflows, including refactoring the Flutter installation into a reusable GitHub Actions sub-action ([#10747]), ensuring proper repository checkout before using local actions ([#10744]), and pinning the Flutter version in the batch release workflow to improve stability ([#10735]). Beyond CI, several packages received updates: a critical bug was resolved in `camera_web` that caused crashes on Safari when accessing the `facingMode` capability ([#10595]), and the `mustache_template` package saw improvements to its error throwing mechanisms, notably by consistently using `throw` and updating `Exception` types to `StateError` for unreachable code ([#10700]). Additionally, a minor documentation rendering issue affecting the `webview_flutter` package's pub.dev score was rectified by fixing HTML escaping in a doc comment ([#10634]).

## Merged Pull Requests

### [PR #10747](https://github.com/flutter/packages/pull/10747): [ci] release action uses sub action for installing flutter
* **Author:** [chunhtai](https://github.com/chunhtai)
* **Merged At:** 2026-01-07 12:15 PM
* **Comments:** 1
* Refactors the "Install Flutter" step in the CI release workflow by replacing an inline script with a reusable GitHub Actions sub-action, which helps to deduplicate the workflow.

### [PR #10744](https://github.com/flutter/packages/pull/10744): [ci] adjust github action, need to checkout repo before using local action
* **Author:** [chunhtai](https://github.com/chunhtai)
* **Merged At:** 2026-01-07 11:14 AM
* **Comments:** 1
* Fixes a CI error in `batch_release_pr.yml` by ensuring the repository is checked out before attempting to use local GitHub Actions, such as the `install_flutter` action.

### [PR #10735](https://github.com/flutter/packages/pull/10735): [ci] setup flutter in batch release workflow
* **Author:** [chunhtai](https://github.com/chunhtai)
* **Merged At:** 2026-01-07 09:45 AM
* **Comments:** 1
* This PR sets up an experimental sub-workflow to install a pinned version of Flutter in the `batch_release_pr.yml` CI workflow, which aims to improve stability by preventing failures from out-of-band `stable` channel updates.

### [PR #10700](https://github.com/flutter/packages/pull/10700): [mustache_template] Improve error throwing
* **Author:** [augustocesarperin](https://github.com/augustocesarperin)
* **Merged At:** 2026-01-07 06:55 AM
* **Comments:** 1
* Improves error throwing in the `mustache_template` package by adding missing `throw` statements to `_error()` calls in `lambda_context.dart` and changing `Exception` to `StateError` for unreachable code in `parser.dart`, with new tests added to validate the updated error handling.

### [PR #10634](https://github.com/flutter/packages/pull/10634): Fix html in webview_flutter doc comment
* **Author:** [athomas](https://github.com/athomas)
* **Merged At:** 2026-01-07 11:49 AM
* **Comments:** 2
* Fixes HTML escaping in a legacy `webview_flutter` documentation comment, specifically in `webview.dart`, to improve documentation rendering and the package's pub.dev score.

### [PR #10595](https://github.com/flutter/packages/pull/10595): [camera_web] Fixed crashing bug on camera_web 0.3.5 for Safari
* **Author:** [jalen-videotape](https://github.com/jalen-videotape)
* **Merged At:** 2026-01-07 11:29 AM
* **Comments:** 1
* Fixes a camera initialization failure in `camera_web` on Safari by addressing a null check operator error that occurred when accessing the `facingMode` capability, which is not supported by the browser. This is resolved by using a nullable getter and null-safe practices, ensuring reliable camera functionality.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2026-01-07

During this period, there were no pull requests merged and no issues closed in the repository, indicating that no changes were introduced to the codebase.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2026-01-07

Recent updates to the repository primarily focused on refining documentation clarity, navigation, and accuracy, alongside significant API-related adjustments. Key changes include the deprecation of the `containsSemantics` matcher in favor of `isSemantics` and `matchesSemantics` for improved semantic matching ([PR #12891](https://github.com/flutter/website/pull/12891)), and the removal of an outdated breaking change guide for `TextField.canRequestFocus` as the associated change was reverted ([PR #12893](https://github.com/flutter/website/pull/12893)). Documentation structure saw considerable reorganization, with all AI-related content now consolidated under a new top-level `/ai` directory for simplified navigation ([PR #12895](https://github.com/flutter/website/pull/12895)). To enhance discoverability, a new "Resources" index was added, and the "Glossary" is now directly accessible in the sidenav ([PR #12894](https://github.com/flutter/website/pull/12894)). Clarity improvements addressed long-standing user confusion, specifically by defining "Frame" earlier and more thoroughly in the documentation and glossary ([PR #12860](https://github.com/flutter/website/pull/12860), [PR #12892](https://github.com/flutter/website/pull/12892), resolving [Issue #12856](https://github.com/flutter/website/issues/12856)), and adding a glossary entry for "Viewport" ([PR #12887](https://github.com/flutter/website/pull/12887), addressing [Issue #12642](https://github.com/flutter/website/issues/12642)). Furthermore, a critical fix corrected malformed diff syntax in the AGP 9 migration guide, resolving rendering issues for code examples ([PR #12885](https://github.com/flutter/website/pull/12885), addressing [Issue #12878](https://github.com/flutter/website/issues/12878)), and a convenient redirect was added for framework devtool accessibility support documentation ([PR #12897](https://github.com/flutter/website/pull/12897)).

## Merged Pull Requests

### [PR #12897](https://github.com/flutter/website/pull/12897): Add redirect for framework devtool accessibility support
* **Author:** [chunhtai](https://github.com/chunhtai)
* **Merged At:** 2026-01-07 03:19 PM
* **Comments:** 2
* Adds a 301 redirect from `/go/framework-devtool-a11y-support` to a Google Docs document, providing a convenient short URL for framework devtool accessibility support documentation.

### [PR #12895](https://github.com/flutter/website/pull/12895): Collect AI-related content together and standardize titles
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2026-01-07 01:03 PM
* **Comments:** 2
* This PR reorganizes AI-related documentation by consolidating all content under a new `/ai` top-level directory, simplifying navigation and standardizing content paths. It also adds an auto-generated index page, renames some titles and paths for accuracy, introduces short titles and breadcrumbs, and removes an unlinked overview page.

### [PR #12894](https://github.com/flutter/website/pull/12894): Add resources index and add glossary to sidenav
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2026-01-07 01:04 PM
* **Comments:** 2
* This PR creates a new "Resources" index page and adds a "Glossary" link to the documentation's sidenav under the "Resources" section.

### [PR #12893](https://github.com/flutter/website/pull/12893): Remove the TextField.canRequestFocus breaking change guide
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* **Merged At:** 2026-01-07 12:40 PM
* **Comments:** 5
* Removes the breaking change guide for `TextField.canRequestFocus` because the associated breaking change was reverted and never re-landed, making the guide obsolete.

### [PR #12892](https://github.com/flutter/website/pull/12892): Apply a clarification to "Frame" glossary entry
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-07 01:05 PM
* **Comments:** 2
* This PR applies a clarification to the "Frame" glossary entry in `src/data/glossary.yml`, explicitly detailing the approximate rendering time (16ms for 60fps and 8ms for 120fps) in its long description.

### [PR #12891](https://github.com/flutter/website/pull/12891): Deprecate containsSemantics
* **Author:** [zemanux](https://github.com/zemanux)
* **Merged At:** 2026-01-07 01:09 PM
* **Comments:** 5
* Deprecates the `containsSemantics` matcher in favor of `isSemantics` for partial matching and `matchesSemantics` for exact matching, standardizing naming conventions and clarifying the intent of semantic matchers.

### [PR #12887](https://github.com/flutter/website/pull/12887): docs: add Viewport to glossary
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-07 05:25 AM
* **Comments:** 3
* Adds a new glossary entry for "Viewport" to `src/data/glossary.yml`, defining it as a widget that displays a subset of its children based on a scroll offset.

### [PR #12886](https://github.com/flutter/website/pull/12886): Clean up the main docs page
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-07 05:25 AM
* **Comments:** 2
* Simplifies the "New to Flutter?" section on the main documentation page by replacing a verbose introductory paragraph with a concise instruction to set up Flutter and visit the dedicated "learn Flutter" page.

### [PR #12885](https://github.com/flutter/website/pull/12885): fix: correct malformed diff syntax in migrate-to-agp-9.md
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-07 05:26 AM
* **Comments:** 2
* This PR fixes malformed diff syntax in the `migrate-to-agp-9.md` documentation file by ensuring spaces after diff markers (`-`, `+`), which resolves rendering issues and improves the display of code examples.

### [PR #12860](https://github.com/flutter/website/pull/12860): Clarify frame reference and add glossary entry
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-07 10:17 AM
* **Comments:** 2
* This PR clarifies the meaning of "frame" in the Dart and Widgets fundamentals documentation by adding timing and frequency context, and includes a new "Frame" definition in the project glossary.


## Closed Issues

### [Issue #12878](https://github.com/flutter/website/issues/12878): Some letters and "}" are missing.
* **Author:** [kjxbyz](https://github.com/kjxbyz)
* On the Flutter documentation page for migrating to AGP 9, some letters and the "}" character are missing from the rendered content.

### [Issue #12856](https://github.com/flutter/website/issues/12856): Concept of frame is referenced before being defined
* **Author:** [sabuncu](https://github.com/sabuncu)
* The Flutter documentation page "Where does initialization code go?" references the concept of a "frame" before defining it, causing confusion for readers; the suggested fix is to either remove the reference or provide a brief explanation.

### [Issue #12642](https://github.com/flutter/website/issues/12642): Add glossary entry for "Viewport"
* **Author:** [parlough](https://github.com/parlough)
* This issue requests adding a glossary entry for "Viewport" within the context of Flutter to the `glossary.yml` file on the Flutter website.



## Top Hacker News Stories

### 63  [The Jeff Dean Facts](https://github.com/LRitzdorf/TheJeffDeanFacts)
* **Author:** [ravenical](https://news.ycombinator.com/user?id=ravenical) | **Comments:** [22](https://news.ycombinator.com/item?id=46540498)

### 144 🔥 [Lights and Shadows (2020)](https://ciechanow.ski/lights-and-shadows/)
* **Author:** [kg](https://news.ycombinator.com/user?id=kg) | **Comments:** [18](https://news.ycombinator.com/item?id=46468338)

### 321 🔥🔥 [Project Patchouli: Open-source electromagnetic drawing tablet hardware](https://patchouli.readthedocs.io/en/latest/)
* **Author:** [ffin](https://news.ycombinator.com/user?id=ffin) | **Comments:** [32](https://news.ycombinator.com/item?id=46537489)

### 250 🔥🔥 [A closer look at a BGP anomaly in Venezuela](https://blog.cloudflare.com/bgp-route-leak-venezuela/)
* **Author:** [ChrisArchitect](https://news.ycombinator.com/user?id=ChrisArchitect) | **Comments:** [121](https://news.ycombinator.com/item?id=46538001)

### 14  [Show HN: DeepDream for Video with Temporal Consistency](https://github.com/jeremicna/deepdream-video-pytorch)
* **Author:** [fruitbarrel](https://news.ycombinator.com/user?id=fruitbarrel) | **Comments:** [5](https://news.ycombinator.com/item?id=46540660)
* This is a PyTorch DeepDream implementation extended with video support, producing smooth, flick-free DeepDream videos with temporal consistency. It uses optical flow and occlusion masking to prevent flickering and ghosting, offering high flexibility, many parameters, and support for multiple pretrained image classifiers.

### 270 🔥🔥 [Open Infrastructure Map](https://openinframap.org)
* **Author:** [efskap](https://news.ycombinator.com/user?id=efskap) | **Comments:** [62](https://news.ycombinator.com/item?id=46536866)

### 160 🔥 [The Napoleon Technique: Postponing things to increase productivity](https://effectiviology.com/napoleon/)
* **Author:** [Khaine](https://news.ycombinator.com/user?id=Khaine) | **Comments:** [78](https://news.ycombinator.com/item?id=46493785)

### 216 🔥 [Kernel bugs hide for 2 years on average. Some hide for 20](https://pebblebed.com/blog/kernel-bugs)
* **Author:** [kmavm](https://news.ycombinator.com/user?id=kmavm) | **Comments:** [99](https://news.ycombinator.com/item?id=46536340)

### 967 🔥🔥🔥 [Eat Real Food](https://realfood.gov)
* **Author:** [atestu](https://news.ycombinator.com/user?id=atestu) | **Comments:** [1308](https://news.ycombinator.com/item?id=46529237)

### 12  [The price of fame? Mortality risk among famous singers](https://jech.bmj.com/content/early/2025/11/30/jech-2025-224589)
* **Author:** [ingve](https://news.ycombinator.com/user?id=ingve) | **Comments:** [5](https://news.ycombinator.com/item?id=46487224)

### 690 🔥🔥🔥 [Shipmap.org](https://www.shipmap.org/)
* **Author:** [surprisetalk](https://news.ycombinator.com/user?id=surprisetalk) | **Comments:** [109](https://news.ycombinator.com/item?id=46527161)

### 1  [Mothers (YC X26) Is Hiring](https://jobs.ashbyhq.com/9-mothers)
* **Author:** [ukd1](https://news.ycombinator.com/user?id=ukd1) | **Comments:** [null](https://news.ycombinator.com/item?id=46540078)

### 40  [Anyone have experiences with Audio Induction Loops?](https://en.wikipedia.org/wiki/Audio_induction_loop)
* **Author:** [evolve2k](https://news.ycombinator.com/user?id=evolve2k) | **Comments:** [23](https://news.ycombinator.com/item?id=46492401)

### 49  [Lessons from Hash Table Merging](https://gist.github.com/attractivechaos/d2efc77cc1db56bbd5fc597987e73338)
* **Author:** [attractivechaos](https://news.ycombinator.com/user?id=attractivechaos) | **Comments:** [13](https://news.ycombinator.com/item?id=46464270)

### 113 🔥 [Go.sum is not a lockfile](https://words.filippo.io/gosum/)
* **Author:** [pabs3](https://news.ycombinator.com/user?id=pabs3) | **Comments:** [47](https://news.ycombinator.com/item?id=46537095)

### 317 🔥🔥 [Tailscale state file encryption no longer enabled by default](https://tailscale.com/changelog)
* **Author:** [traceroute66](https://news.ycombinator.com/user?id=traceroute66) | **Comments:** [123](https://news.ycombinator.com/item?id=46531925)

### 351 🔥🔥 [ChatGPT Health](https://openai.com/index/introducing-chatgpt-health/)
* **Author:** [saikatsg](https://news.ycombinator.com/user?id=saikatsg) | **Comments:** [466](https://news.ycombinator.com/item?id=46531280)

### 5  [Maine company in the spotlight after Maduro apparently wore one of their hoodies](https://www.boston.com/news/business/2026/01/06/maine-company-maduro-venezuela-hoodie/)
* **Author:** [mhb](https://news.ycombinator.com/user?id=mhb) | **Comments:** [0](https://news.ycombinator.com/item?id=46541586)

### 159 🔥 [The Q, K, V Matrices](https://arpitbhayani.me/blogs/qkv-matrices/)
* **Author:** [yashsngh](https://news.ycombinator.com/user?id=yashsngh) | **Comments:** [64](https://news.ycombinator.com/item?id=46523887)

### 361 🔥🔥 [LaTeX Coffee Stains (2021) [pdf]](https://ctan.math.illinois.edu/graphics/pgf/contrib/coffeestains/coffeestains-en.pdf)
* **Author:** [zahrevsky](https://news.ycombinator.com/user?id=zahrevsky) | **Comments:** [86](https://news.ycombinator.com/item?id=46526933)

### 176 🔥 [How Google got its groove back and edged ahead of OpenAI](https://www.wsj.com/tech/ai/google-ai-openai-gemini-chatgpt-b766e160)
* **Author:** [jbredeche](https://news.ycombinator.com/user?id=jbredeche) | **Comments:** [218](https://news.ycombinator.com/item?id=46528389)

### 92  [The virtual AmigaOS runtime (a.k.a. Wine for Amiga:)](https://github.com/cnvogelg/amitools/blob/main/docs/vamos.md)
* **Author:** [doener](https://news.ycombinator.com/user?id=doener) | **Comments:** [23](https://news.ycombinator.com/item?id=46535515)

### 154 🔥 [Play Aardwolf MUD](https://www.aardwolf.com/)
* **Author:** [caminanteblanco](https://news.ycombinator.com/user?id=caminanteblanco) | **Comments:** [74](https://news.ycombinator.com/item?id=46534777)

### 86  [GLSL Web CRT Shader](https://blog.gingerbeardman.com/2026/01/04/glsl-web-crt-shader/)
* **Author:** [msephton](https://news.ycombinator.com/user?id=msephton) | **Comments:** [32](https://news.ycombinator.com/item?id=46491219)

### 99  [Musashi: Motorola 680x0 emulator written in C](https://github.com/kstenerud/Musashi)
* **Author:** [doener](https://news.ycombinator.com/user?id=doener) | **Comments:** [10](https://news.ycombinator.com/item?id=46535540)



