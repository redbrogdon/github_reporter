# Overall Summary
**🔥🔥🔥 [PR #1916](https://github.com/dart-lang/native/pull/1916) (dart-lang/native): [jnigen] doc improvements**
  * **Comments:** 18
  * Enhances developer experience for the `jnigen` package by improving error messages related to dynamic library loading, simplifying `Jni.spawn` with a default `dylibDir` to reduce manual setup, and adding clear documentation for generating bindings for built-in Java types and `jvm.dll` configuration on Windows.

**🔥🔥🔥 [PR #154941](https://github.com/flutter/flutter/pull/154941) (flutter/flutter): Don't crash flutter tool if Chrome is not available**
  * **Comments:** 13
  * This PR prevents the Flutter tool from crashing when attempting to launch DevTools in a browser if Chrome is unavailable or fails to start. It achieves this by catching the browser launch error and logging it, allowing the tool to continue running.

**🔥🔥🔥 [PR #11600](https://github.com/flutter/website/pull/11600) (flutter/website): Issue-11599: update dart:js_interop hyperlink**
  * **Comments:** 11
  * This PR fixes a broken hyperlink to the `dart:js_interop` documentation in the `wasm.md` file, ensuring it points to the correct library HTML page.

**[Issue #55961](https://github.com/dart-lang/sdk/issues/55961) (dart-lang/sdk): ☂️ Add `Iterable.fromIterator` (or similar, name less important)**
  * This issue proposes adding a factory method, `Iterable.fromIterator`, to the `Iterable` class to reduce boilerplate when creating custom `Iterable` instances that simply wrap an `Iterator`, allowing developers to directly provide a function that returns an `Iterator` instead of an intermediate `Iterable` subclass.

**🔥 [PR #161789](https://github.com/flutter/flutter/pull/161789) (flutter/flutter): Make `PipelineOwner` a `base` class**
  * **Comments:** 1
  * Makes `PipelineOwner` a `base` class to prevent external implementations from causing runtime crashes due to missing private APIs expected by `RenderObject`, thereby ensuring internal consistency.

**[Issue #59927](https://github.com/dart-lang/sdk/issues/59927) (dart-lang/sdk): The Dart Analyzer hangs when destructuring a sealed type variant with a large number of fields inside a `switch` statement**
  * **Reactions:** **2** -- 👍 2
  * The Dart Analyzer hangs for an extended period when attempting to destructure a sealed type variant with a large number of fields (e.g., 30) within a `switch` statement, instead of completing analysis promptly or providing a complexity warning.

**[Issue #154940](https://github.com/flutter/flutter/issues/154940) (flutter/flutter): [tool_crash] Opening devtools without Chrome installed crashes flutter tool**
  * The Flutter tool crashes with a "No such file or directory" error when attempting to open DevTools via `flutter run -d macos` followed by hitting 'v', if Google Chrome is not installed, because `flutter_tools` tries to launch Chrome and fails to find the executable.

**[Issue #11599](https://github.com/flutter/website/issues/11599) (flutter/website): **js_interop library** hyperlink issue in Support for WebAssembly (Wasm) page**
  * The `js_interop library` hyperlink on the Flutter WebAssembly documentation page is broken and needs to be updated with the correct `dart-js_interop-library.html` suffix for the URL.

**[PR #161841](https://github.com/flutter/flutter/pull/161841) (flutter/flutter): [impeller] prevent PowerVR from using Vulkan backend.**
  * **Comments:** 5
  * This change prevents PowerVR GPUs from using Impeller's Vulkan backend by marking them as 'known bad drivers' to work around persistent blackscreen and rendering issues observed on this hardware.

**[PR #159301](https://github.com/flutter/flutter/pull/159301) (flutter/flutter): fix failing lint : findByPath requires a specific ordering of project evaluation in `aar_init_script.gradle`**
  * **Comments:** 5
  * This PR fixes a failing Android Studio lint warning in `aar_init_script.gradle` by replacing the `findByPath` method with `tasks.named(...).get()` for task dependency configuration. This change addresses the issue where `findByPath` required a specific project evaluation order, making the task retrieval more robust.


# GitHub PR Report for dart-lang/ai
## From 2025-01-21

During this period, there were no pull requests merged and no issues closed in the repository. Consequently, no changes were introduced to the codebase, public API surface, or language features based on these activities.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2025-01-21

This period saw several key improvements and discussions in the repository, primarily focusing on analyzer stability, developer experience with strict type checks, and potential API enhancements. A notable analyzer performance fix addresses a critical issue where the Dart Analyzer would hang indefinitely when processing `switch` statements attempting to destructure sealed type variants with a large number of fields ([Issue #59927](https://github.com/dart-lang/sdk/issues/59927)), a fix that garnered user reactions. Furthermore, discussions advanced regarding better configuration for strict type checks, specifically allowing `strict-inference` and `strict-raw-types` to be reported as `error` instead of `warning` during `flutter analyze` for more rigorous code enforcement ([Issue #59928](https://github.com/dart-lang/sdk/issues/59928)). The repository also considered extending the public API with a proposed `Iterable.fromIterator` factory method, aiming to reduce boilerplate when creating custom `Iterable` instances by directly wrapping an `Iterator` ([Issue #55961](https://github.com/dart-lang/sdk/issues/55961)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #59928](https://github.com/dart-lang/sdk/issues/59928): Make `strict-inference` and `strict-raw-types` report as `error` instead of `warning`
* **Author:** [flamychann](https://github.com/flamychann)
* The user wants to configure `strict-inference` and `strict-raw-types` to report as errors instead of warnings during `flutter analyze`, noting that `strict-casts` already behaves as an error while the others currently show as warnings despite strict type checks being enabled.

### [Issue #59927](https://github.com/dart-lang/sdk/issues/59927): The Dart Analyzer hangs when destructuring a sealed type variant with a large number of fields inside a `switch` statement
* **Author:** [bubnov](https://github.com/bubnov)
* **Reactions:** **2** -- 👍 2
* The Dart Analyzer hangs for an extended period when attempting to destructure a sealed type variant with a large number of fields (e.g., 30) within a `switch` statement, instead of completing analysis promptly or providing a complexity warning.

### [Issue #55961](https://github.com/dart-lang/sdk/issues/55961): Add `Iterable.fromIterator` (or similar, name less important)
* **Author:** [matanlurey](https://github.com/matanlurey)
* This issue proposes adding a factory method, `Iterable.fromIterator`, to the `Iterable` class to reduce boilerplate when creating custom `Iterable` instances that simply wrap an `Iterator`, allowing developers to directly provide a function that returns an `Iterator` instead of an intermediate `Iterable` subclass.


# GitHub PR Report for dart-lang/language
## From 2025-01-21

There were no pull requests merged or issues closed in the repository during this period, indicating no changes were made to the codebase or its public API surface.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2025-01-21

Recent updates to the repository primarily enhance developer experience and refine internal architecture across `jnigen`, `native_assets_builder`, and `native_assets_cli`. A significant focus was on the `jnigen` package, where [PR #1916](https://github.com/dart-lang/native/pull/1916) brought extensive documentation improvements, clearer error messages for dynamic library loading, and simplified `Jni.spawn` by adding a default `dylibDir`, directly addressing issues like [Issue #1912](https://github.com/dart-lang/native/issues/1912) regarding the generation of bindings for built-in Java types. In `native_assets_builder`, several pull requests ([PR #1919](https://github.com/dart-lang/native/pull/1919), [PR #1918](https://github.com/dart-lang/native/pull/1918)) refactored method signatures by moving `packageLayout` and `runPackageName` for internal streamlining and future caching. The `native_assets_cli` package saw a significant overhaul to its `CCompilerConfig`, with [PR #1913](https://github.com/dart-lang/native/pull/1913) introducing a nested `windows` property to better organize Windows-specific environment settings, aligning with the spirit of [Issue #1606](https://github.com/dart-lang/native/issues/1606) to remove OS-specific details from the top-level API. Furthermore, the standardization of working directories for hook invocations, proposed in [Issue #1915](https://github.com/dart-lang/native/issues/1915), was implemented by [PR #1917](https://github.com/dart-lang/native/pull/1917), which stopped taking an explicit `workingDirectory` to simplify the API and ensure consistency.

## Merged Pull Requests

### [PR #1919](https://github.com/dart-lang/native/pull/1919): [native_assets_builder] Move `packageLayout` to builder constructor
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-01-21 06:57 AM
* **Comments:** 2
* Moves the `packageLayout` argument from the `build` and `link` methods to the `NativeAssetsBuildRunner` constructor. This refactoring streamlines method signatures and lays groundwork for caching build planner logic and improving how `packagesWithAssets` takes `runPackageName` into account.

### [PR #1918](https://github.com/dart-lang/native/pull/1918): [native_assets_builder] Move `runPackageName` into `PackageLayout`
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-01-21 06:45 AM
* **Comments:** 2
* Moves the `runPackageName` property from parameters of `NativeAssetsBuildRunner`'s `build` and `link` methods into the `PackageLayout` object, simplifying the method signatures and facilitating future caching improvements.

### [PR #1917](https://github.com/dart-lang/native/pull/1917): [native_assets_builder] Stop taking a `workingDirectory`
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-01-21 06:31 AM
* **Comments:** 2
* This PR stops the `NativeAssetsBuildRunner` and `NativeAssetsBuildPlanner` from taking an explicit `workingDirectory` argument, instead invoking build hooks with the `packageRoot` as the working directory to simplify the API.

### 🔥🔥🔥 [PR #1916](https://github.com/dart-lang/native/pull/1916): [jnigen] doc improvements 
* **Author:** [dickermoshe](https://github.com/dickermoshe)
* **Merged At:** 2025-01-21 11:46 AM
* **Comments:** 18
* Enhances developer experience for the `jnigen` package by improving error messages related to dynamic library loading, simplifying `Jni.spawn` with a default `dylibDir` to reduce manual setup, and adding clear documentation for generating bindings for built-in Java types and `jvm.dll` configuration on Windows.

### [PR #1913](https://github.com/dart-lang/native/pull/1913): [native_assets_cli] Introduce `CCompilerConfig.windows`
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-01-21 06:13 AM
* **Comments:** 2
* This PR refactors `CCompilerConfig` by introducing a nested `windows` property, moving Windows-specific environment script settings into `windows.developerCommandPrompt`. This change better organizes C toolchain configuration and avoids naming conflicts by also renaming OS-specific `CodeConfig` classes to `<OS>CodeConfig`. The update maintains backward compatibility for older JSON formats and bumps the protocol version to 1.9.0.


## Closed Issues

### [Issue #1915](https://github.com/dart-lang/native/issues/1915): [native_assets_cli] Specify the working directory for hook invocations
* **Author:** [dcharkes](https://github.com/dcharkes)
* This issue proposes to standardize the working directory for `native_assets_cli` hook invocations, suggesting `HookInput.packageRoot` as the ideal solution to enable relative path access within packages, aligning with Rust's `build.rs` behavior, while also considering other options and their trade-offs regarding predictability and consistency with absolute path mandates.

### [Issue #1912](https://github.com/dart-lang/native/issues/1912): Cant generate built in java types/ Can't parse Java sources
* **Author:** [dickermoshe](https://github.com/dickermoshe)
* The `jnigen` tool fails to generate Dart bindings for the built-in Java class `java.util.TimeZone`, reporting it as "Not found" when included in the `jnigen.yaml` configuration.

### [Issue #1606](https://github.com/dart-lang/native/issues/1606): Remove `CCompiler.{envScript,envScriptArgs}` and replace by other means
* **Author:** [mkustermann](https://github.com/mkustermann)
* This issue proposes removing the `envScript` and `envScriptArgs` fields from `CCompilerConfig` as they expose Windows-specific implementation details, suggesting either replacing them with a map of environment variables or having the caller manage environment setup.


# GitHub PR Report for flutter/ai
## From 2025-01-21

During this period, there were no pull requests merged and no issues closed, indicating a static phase for the repository with no significant changes to its codebase, public API surface, or language features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-01-21

The repository has received a targeted update focused on its educational content's continuous integration. Specifically, the `intro_flutter_gpu` codelab has been [re-enabled on the `master` channel's CI (#2270)](https://github.com/flutter/codelabs/pull/2270), removing a prior asset building block and updating its CI configuration to run consistently on macOS and Linux. This change ensures the accessibility and automated testing of this important codelab.

## Merged Pull Requests

### [PR #2270](https://github.com/flutter/codelabs/pull/2270): Re-enable Intro to FlutterGPU on `master`
* **Author:** [domesticmouse](https://github.com/domesticmouse)
* **Merged At:** 2025-01-20 06:11 PM
* **Comments:** 0
* Re-enables the `intro_flutter_gpu` codelab on the `master` channel's CI, removing a previous asset building block, and updates its CI configuration to run on macOS and Linux.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-01-21

The recent updates to the repository deliver key enhancements across developer tooling, UI component stability, and rendering engine robustness. A major improvement for developer workflow is the fix that prevents the Flutter tool from crashing when [DevTools is launched without Chrome installed](https://github.com/flutter/flutter/pull/154941), addressing a long-standing `tool_crash` reported in [Issue #154940]. Further tooling stability was achieved by fixing a failing Android Studio lint warning related to project evaluation in `aar_init_script.gradle` ([PR #159301]). The Impeller rendering engine received critical attention, with a change to [prevent PowerVR GPUs from using its Vulkan backend](https://github.com/flutter/flutter/pull/161841) to avoid persistent blackscreen and rendering issues, alongside the addition of unit tests for `TextContents` ([PR #161625]). UI consistency and reliability were improved, notably with a [fix for horizontal misalignment](https://github.com/flutter/flutter/pull/161717) between `DropdownMenu`'s leading icon and its menu item icons, resolving [Issue #161668] and related layout issues like [Issue #161893]. Core framework stability was strengthened by making `PipelineOwner` a `base` class to prevent external implementations from causing runtime crashes ([PR #161789]), and by addressing a race condition where Dart isolate messages could be handled during shutdown ([PR #161824]). Other notable changes include an update to the `CHANGELOG.md` for the 3.27.3 release ([PR #161963]), dependency rolls ([PR #161924]), and various CI stability adjustments.

## Merged Pull Requests

### [PR #161963](https://github.com/flutter/flutter/pull/161963): Update changelog for 3.27.3 release
* **Author:** [eyebrowsoffire](https://github.com/eyebrowsoffire)
* **Merged At:** 2025-01-21 10:32 AM
* **Comments:** 1
* Updates the `CHANGELOG.md` file to include the release notes for Flutter 3.27.3, detailing fixes for Material 3 Tab Bar animations and fullscreen route transitions, and tracking for Dart AOT Android 'Deferred Components' usage.

### [PR #161924](https://github.com/flutter/flutter/pull/161924): Roll pub packages
* **Author:** [flutter-pub-roller-bot](https://github.com/flutter-pub-roller-bot)
* **Merged At:** 2025-01-20 09:13 PM
* **Comments:** 0
* Updates the `http` package dependency from version 1.2.2 to 1.3.0 across various internal Flutter projects, performed as an automated dependency roll.

### [PR #161916](https://github.com/flutter/flutter/pull/161916): [native assets] Cleanup dead code 2
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-01-21 01:50 AM
* **Comments:** 1
* Removes the redundant `hasPackageConfig` method from `FlutterNativeAssetsBuildRunner` and its related logic and tests, because the package configuration is always present when native asset builds are initiated. This also removes the `includeParentEnvironment` parameter from native asset build and link functions.

### [PR #161863](https://github.com/flutter/flutter/pull/161863): Fix documentation of Flow.clipBehavior
* **Author:** [mernen](https://github.com/mernen)
* **Merged At:** 2025-01-21 03:50 PM
* **Comments:** 0
* Fixes documentation for `Flow.clipBehavior` to correctly state its default value is `Clip.hardEdge` instead of `Clip.none`, ensuring accurate information for developers.

### [PR #161841](https://github.com/flutter/flutter/pull/161841): [impeller] prevent PowerVR from using Vulkan backend.
* **Author:** [jonahwilliams](https://github.com/jonahwilliams)
* **Merged At:** 2025-01-21 01:23 PM
* **Comments:** 5
* This change prevents PowerVR GPUs from using Impeller's Vulkan backend by marking them as 'known bad drivers' to work around persistent blackscreen and rendering issues observed on this hardware.

### [PR #161825](https://github.com/flutter/flutter/pull/161825): Get `et` working for local web engine builds.
* **Author:** [eyebrowsoffire](https://github.com/eyebrowsoffire)
* **Merged At:** 2025-01-21 10:53 AM
* **Comments:** 1
* This PR streamlines local web engine builds using `et` by enabling `wasm_release` and `wasm_debug_unopt` builds for Linux and Mac, removing the auto-generation of `linux_web_engine_build.json`, and fixing a `skwasm` debug build issue caused by a wrong output file.

### [PR #161824](https://github.com/flutter/flutter/pull/161824): Do not handle Dart isolate messages if the isolate is being shut down
* **Author:** [jason-simmons](https://github.com/jason-simmons)
* **Merged At:** 2025-01-21 12:07 PM
* **Comments:** 2
* This PR fixes a race condition where Dart isolate messages could be handled after the isolate began shutting down, causing failures. It prevents `Tonic` from processing messages if the `DartIsolate` is in the process of shutting down.

### [PR #161811](https://github.com/flutter/flutter/pull/161811): Update `ListTile` test to prevent log dump and test error message.
* **Author:** [TahaTesser](https://github.com/TahaTesser)
* **Merged At:** 2025-01-21 01:28 AM
* **Comments:** 2
* Updates a `ListTile` widget test to prevent excessive error log dumps in CI by temporarily overriding `FlutterError.onError` to capture and precisely assert the specific diagnostic messages of the expected `FlutterError` exceptions thrown when leading/trailing widgets exceed the tile width.

### [PR #161789](https://github.com/flutter/flutter/pull/161789): Make `PipelineOwner` a `base` class
* **Author:** [LongCatIsLooong](https://github.com/LongCatIsLooong)
* **Merged At:** 2025-01-20 06:19 PM
* **Comments:** 1
* Makes `PipelineOwner` a `base` class to prevent external implementations from causing runtime crashes due to missing private APIs expected by `RenderObject`, thereby ensuring internal consistency.

### [PR #161717](https://github.com/flutter/flutter/pull/161717): Fix DropdownMenu icon and item icon misalignment
* **Author:** [bleroux](https://github.com/bleroux)
* **Merged At:** 2025-01-21 03:37 AM
* **Comments:** 1
* This PR fixes a horizontal misalignment issue between the `DropdownMenu`'s leading icon and the leading icons within its menu items by adjusting internal padding. This ensures consistent visual alignment across both LTR and RTL layouts and includes new tests to verify the fix.

### [PR #161656](https://github.com/flutter/flutter/pull/161656): Marks Mac_mokey run_debug_test_android to be flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* **Merged At:** 2025-01-21 06:13 AM
* **Comments:** 0
* Marks the `Mac_mokey run_debug_test_android` CI test as flaky by setting its `bringup` property to `true`, referencing issue #161655.

### [PR #161625](https://github.com/flutter/flutter/pull/161625): [Impeller] backfilling TextContents unit tests
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2025-01-21 01:07 PM
* **Comments:** 2
* Adds unit tests for Impeller's `TextContents` by extracting the glyph vertex data computation logic into a new static `ComputeVertexData` method, allowing verification of glyph positioning and UV mapping under various scales and transformations.

### [PR #160994](https://github.com/flutter/flutter/pull/160994): Mark Linux_pixel_7pro flavors_test unflaky
* **Author:** [jmagman](https://github.com/jmagman)
* **Merged At:** 2025-01-21 06:24 AM
* **Comments:** 1
* Removes the `bringup: true` flag from the `Linux_pixel_7pro flavors_test` in the CI configuration, indicating that the test is now stable after its previously associated flakiness issue was closed.

### [PR #159301](https://github.com/flutter/flutter/pull/159301): fix failing lint : findByPath requires a specific ordering of project evaluation in `aar_init_script.gradle`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-01-21 11:53 AM
* **Comments:** 5
* This PR fixes a failing Android Studio lint warning in `aar_init_script.gradle` by replacing the `findByPath` method with `tasks.named(...).get()` for task dependency configuration. This change addresses the issue where `findByPath` required a specific project evaluation order, making the task retrieval more robust.

### 🔥🔥🔥 [PR #154941](https://github.com/flutter/flutter/pull/154941): Don't crash flutter tool if Chrome is not available
* **Author:** [saltedpotatos](https://github.com/saltedpotatos)
* **Merged At:** 2025-01-21 03:37 AM
* **Comments:** 13
* This PR prevents the Flutter tool from crashing when attempting to launch DevTools in a browser if Chrome is unavailable or fails to start. It achieves this by catching the browser launch error and logging it, allowing the tool to continue running.


## Closed Issues

### [Issue #161978](https://github.com/flutter/flutter/issues/161978): Cannot debug in vscode, No Device. flutter run works, flutter devices works
* **Author:** [LucosidE](https://github.com/LucosidE)
* VSCode fails to detect any Flutter devices for debugging, displaying "No Device" in the status bar and an empty device selection prompt, despite `flutter run` and `flutter devices` successfully identifying the Windows desktop and web devices, and the user has already reinstalled both VSCode and the Flutter SDK.

### [Issue #161975](https://github.com/flutter/flutter/issues/161975): mac-17 and mac-19 are dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* Mac-17 and mac-19 are dead, indicating a bug in the LUCI, Github, Cocoon scheduler, or Autosubmit infrastructure environment, and are not producing expected results.

### [Issue #161968](https://github.com/flutter/flutter/issues/161968): mac-38 is dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* A bug has been reported where `mac-38` is non-functional within the LUCI/Github/Cocoon/Autosubmit infrastructure environment, indicated by an attached image.

### [Issue #161962](https://github.com/flutter/flutter/issues/161962): mac-14 lost external connection from phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* Bug: The mac-14 device, operating in a LUCI/Github/Cocoon environment, lost its external connection to a phone device.

### [Issue #161960](https://github.com/flutter/flutter/issues/161960): linux-46 lost external connection from phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* A user reported a bug where the linux-46 system lost its external connection from a phone device, occurring within a LUCI/Github/Cocoon infrastructure environment.

### [Issue #161959](https://github.com/flutter/flutter/issues/161959): win-18 low on disk space for local Temp directory.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The win-18 machine is experiencing low disk space in its local Temp directory, as observed within the infrastructure environment including LUCI and Cocoon.

### [Issue #161958](https://github.com/flutter/flutter/issues/161958): mac-34 is dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The LUCI infrastructure environment is experiencing a bug where the 'mac-34' machine is dead, indicated by an attached image.

### [Issue #161921](https://github.com/flutter/flutter/issues/161921): [CP] Fullscreen route transition broken on 3.27.2(stable)
* **Author:** [rhydiant](https://github.com/rhydiant)
* This issue reports that fullscreen route transitions are broken on iOS in Flutter version 3.27.2 (stable) and is being raised to backport a fix (PR #159312) to the stable channel.

### [Issue #161915](https://github.com/flutter/flutter/issues/161915): Examples of rfwtxt files
* **Author:** [isakovsv](https://github.com/isakovsv)
* The user is requesting examples of `rfwtxt` file syntax as they and their colleagues are having difficulty understanding it and cannot find any existing examples.

### [Issue #161900](https://github.com/flutter/flutter/issues/161900): Android predictive back animation bug
* **Author:** [NikosTsesmelis](https://github.com/NikosTsesmelis)
* When using predictive back on Android with Flutter, the animation starts correctly but the current screen prematurely disappears during a swipe, revealing the previous screen while the animation continues.

### [Issue #161898](https://github.com/flutter/flutter/issues/161898): Crash on Android 10
* **Author:** [chungdan-coupang](https://github.com/chungdan-coupang)
* The app crashes on Android 10 for some users when launching and running the Flutter engine, evidenced by a native crash log showing an abort in `libc.so` related to `libhwui.so` and `SkiaOpenGLPipeline`.

### [Issue #161893](https://github.com/flutter/flutter/issues/161893): [go_router] DropdownMenu's menu positions elsewhere when used within ShellRoute.
* **Author:** [Ayushrestha05](https://github.com/Ayushrestha05)
* **Reactions:** **1** -- 👀 1
* When a `DropdownMenu` is used within a `go_router` `ShellRoute` that includes a fixed-width sidenav, its menu incorrectly shifts to the left by the width of the sidenav on Web and Windows platforms, instead of aligning properly.

### [Issue #161857](https://github.com/flutter/flutter/issues/161857): ClampingScrollPhysics not working
* **Author:** [HungryBytesApps](https://github.com/HungryBytesApps)
* The user reports that `ClampingScrollPhysics` applied to a `ListView.separated` does not prevent the scroll stretch effect when reaching the top or bottom of the list, contrary to their expectation that it should clamp scrolling and avoid this visual effect.

### [Issue #161815](https://github.com/flutter/flutter/issues/161815): Seed value `20250117` causing test failures
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* Tests are failing when using the `--test-randomize-ordering-seed=20250117` value, suggesting order-dependent tests need to be fixed, as this issue is causing the project's dashboard to be red.

### [Issue #161812](https://github.com/flutter/flutter/issues/161812): [path_provider] getApplicationDocumentsDirectory() on iOS returns path without trailing slash, while other platforms do.
* **Author:** [SEGVeenstra](https://github.com/SEGVeenstra)
* The `path_provider` plugin's `getApplicationDocumentsDirectory()` method returns a path without a trailing slash specifically on iOS physical devices, leading to incorrect file paths when directly appending filenames, while other platforms and the iOS simulator behave as expected.

### [Issue #161810](https://github.com/flutter/flutter/issues/161810): `ListTile` widget tests dump logs in  Flutter CI
* **Author:** [TahaTesser](https://github.com/TahaTesser)
* `ListTile` widget tests are dumping logs in Flutter CI, as evidenced by a Chromium log link, and the proposed solution is to prevent these logs from being dumped.

### [Issue #161668](https://github.com/flutter/flutter/issues/161668): DropdownMenu item icon and DropdownMenu.leadingIcon are not aligned horizontally
* **Author:** [bleroux](https://github.com/bleroux)
* The `leadingIcon` of a `DropdownMenuEntry` is not horizontally aligned with the `leadingIcon` of the parent `DropdownMenu`, as demonstrated by the provided code sample and screenshots.

### [Issue #161512](https://github.com/flutter/flutter/issues/161512): Android, physical mouse, pointer down/up event, no response in some parts of the left/right sides
* **Author:** [fufesou](https://github.com/fufesou)
* On Android, using a physical mouse with a Flutter `Listener` widget, `onPointerDown` and `onPointerUp` events fail to register in specific regions on the left and right sides of the widget, although hover and finger touch events work as expected.

### [Issue #161421](https://github.com/flutter/flutter/issues/161421): [two_dimensional_scrollables]Rendering table with 20k rows lags during scrolling after 15k rows
* **Author:** [wangfeihang](https://github.com/wangfeihang)
* The `TableView` component in `two_dimensional_scrollables` experiences significant lag during horizontal scrolling when rendering a large table (20,000 rows, 200 columns), especially after vertically scrolling past 15,000 rows and with the first row and column pinned.

### [Issue #160853](https://github.com/flutter/flutter/issues/160853): flutter project creation issue
* **Author:** [Alvins-mukabane](https://github.com/Alvins-mukabane)
* The user is unable to create a Flutter project using `flutter create my_project` because `flutter_tools` depends on an unmatchable version of `vm_service_interface 1.1.0`, resulting in a package update failure due to version solving issues.

### [Issue #160842](https://github.com/flutter/flutter/issues/160842): [tool_crash] StateError: Bad state: StreamSink is closed
* **Author:** [mybelatar](https://github.com/mybelatar)
* A `StateError: Bad state: StreamSink is closed` causes a tool crash when running a Flutter web application in Chrome via `flutter run -d chrome`, with the stack trace pointing to a closed `StreamSink` within the Dart VM service's WebSocket communication on Flutter stable 3.27.1 (Dart 3.6.0).

### [Issue #160252](https://github.com/flutter/flutter/issues/160252): [CAMERA] Video recording using the camera returns a corrupted file.
* **Author:** [Pedroagvs](https://github.com/Pedroagvs)
* On multiple Android devices, using the `camera` package to record a video for 5 seconds or more results in a corrupted output file that cannot be played, evidenced by FFmpeg logs showing "moov atom not found" and `video_player` reporting a `Source error`.

### [Issue #160025](https://github.com/flutter/flutter/issues/160025): [Impeller] Android SurfaceControl errors on Xiaomi 14 /  Xiaomi 15 Pro.
* **Author:** [LennoxGong](https://github.com/LennoxGong)
* Scrolling a complex Flutter UI with `BackdropFilter` and `Opacity` frequently causes unexpected rendering anomalies and suspected Android SurfaceControl errors on Xiaomi 14 and Xiaomi 15 Pro devices running HyperOS 2.0 (Android V), even though no Vulkan validation errors were observed.

### [Issue #160003](https://github.com/flutter/flutter/issues/160003): `ui_benchmarks` sometimes is crashing
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* The `ui_benchmarks` process crashes intermittently (around 10% of the time) with an error indicating an isolate is already scheduled on the mutator thread when attempting to schedule it from another OS thread.

### [Issue #158181](https://github.com/flutter/flutter/issues/158181): [Impeller] No surface available on Pixel 4 XL.
* **Author:** [adamdama](https://github.com/adamdama)
* An app running on a Google Pixel 4 XL (Android 10) with Flutter 3.24.3 and Impeller enabled hangs after navigating to a second screen, showing "No surface available" and "Fence wait failed: Timeout" errors.

### [Issue #154940](https://github.com/flutter/flutter/issues/154940): [tool_crash] Opening devtools without Chrome installed crashes flutter tool 
* **Author:** [saltedpotatos](https://github.com/saltedpotatos)
* The Flutter tool crashes with a "No such file or directory" error when attempting to open DevTools via `flutter run -d macos` followed by hitting 'v', if Google Chrome is not installed, because `flutter_tools` tries to launch Chrome and fails to find the executable.

### [Issue #149685](https://github.com/flutter/flutter/issues/149685): [Web] TextField loses focus when tapping outside despite using TextFieldTapRegion
* **Author:** [Renzo-Olivares](https://github.com/Renzo-Olivares)
* **Reactions:** **2** -- 👍 2
* On iOS web, a TextField unexpectedly loses focus and the keyboard closes when tapping a FloatingActionButton wrapped in a TextFieldTapRegion.

### [Issue #114557](https://github.com/flutter/flutter/issues/114557): Make the repository merge method configurable in each repository
* **Author:** [ricardoamador](https://github.com/ricardoamador)
* The issue requests making the merge method used by auto-submit and revert configurable per repository, likely via a `.github` directory config, to allow different merge strategies beyond the current squash default for various repositories.

### [Issue #74791](https://github.com/flutter/flutter/issues/74791): Do not select text on secondary tap on desktop
* **Author:** [dvd-bnc](https://github.com/dvd-bnc)
* Right-clicking a text field on desktop now unexpectedly selects the word under the cursor in addition to opening the context menu, which is considered poor desktop user experience.


# GitHub PR Report for flutter/genui
## From 2025-01-21

There were no pull requests merged or issues closed during this period, indicating no recent changes to the repository's codebase or public API surface.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2025-01-21

The repository saw a focused update to its internal development tooling. A key change, introduced in [PR #8468](https://github.com/flutter/packages/pull/8468), updated the `federation_safety_check_command` tool to allow blank lines and comment-only modifications within federated package changes. This improvement supports more flexible development practices, such as the temporary inclusion of file-level `ignore` directives. No issues were closed during this period.

## Merged Pull Requests

### [PR #8468](https://github.com/flutter/packages/pull/8468): [tool] Allow blank lines in federated package changes
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-01-21 12:25 PM
* **Comments:** 0
* Updates the `federation_safety_check_command` tool to allow blank lines in federated package changes, alongside comment-only modifications, to support use cases like temporary file-level `ignore` directives.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-01-21

There were no pull requests merged or issues closed during this period, indicating no changes were made to the repository's codebase or public API surface.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-01-21

The recent updates to the repository primarily focus on improving documentation accuracy, developer experience, and clarity around key language and engine features. A significant correction was made to a broken hyperlink for the `dart:js_interop` library within the WebAssembly documentation, resolving [Issue #11599](https://github.com/flutter/website/issues/11599) via [PR #11600](https://github.com/flutter/website/pull/11600), a change that saw considerable discussion. Similarly, an outstanding need to update the Impeller documentation to reflect its default status for Android in the Q4 release was highlighted by [Issue #11256](https://github.com/flutter/website/issues/11256). Enhancements to the developer environment include a fix in [PR #11603](https://github.com/flutter/website/pull/11603) that updates shell profile configurations to use `$HOME` instead of `~`, addressing issues with programs failing to locate Dart/Flutter executables. Further refinements include a syntax correction in the `buttons.md` documentation for the `backgroundColor` property within an `ElevatedButton.styleFrom` example ([PR #11605](https://github.com/flutter/website/pull/11605)), along with general copy and formatting cleanups on the Android deployment page ([PR #11609](https://github.com/flutter/website/pull/11609)), and fixes for various broken internal links, such as those in `context-menus.md` ([PR #11602](https://github.com/flutter/website/pull/11602)).

## Merged Pull Requests

### [PR #11609](https://github.com/flutter/website/pull/11609): Clean up copy and formatting on Android deployment page
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-01-21 11:17 AM
* **Comments:** 1
* This PR updates the Android deployment documentation page by cleaning up copy and formatting, including rephrasing sentences for clarity, standardizing capitalization for terms like "Gradle," updating markdown syntax for code blocks and links, removing redundant link definitions, adjusting image styling, and removing a specific recommendation regarding multidex and API 21+.

### [PR #11605](https://github.com/flutter/website/pull/11605): Typo in Update buttons.md
* **Author:** [ragupari](https://github.com/ragupari)
* **Merged At:** 2025-01-21 11:40 AM
* **Comments:** 2
* Corrects a syntax error in the `buttons.md` documentation, specifically adding a missing colon to the `backgroundColor` property within an `ElevatedButton.styleFrom` code example to ensure its correctness.

### [PR #11603](https://github.com/flutter/website/pull/11603): Update ~ to $HOME to fix issues with programs using dart/flutter executables
* **Author:** [TravisKraemer](https://github.com/TravisKraemer)
* **Merged At:** 2025-01-21 11:40 AM
* **Comments:** 3
* Updates shell profile configurations in `shells.yml` to use `$HOME` instead of `~` when setting the PATH for various shells (bash, csh, tcsh, ksh, sh). This resolves issues where programs failed to locate Dart/Flutter executables due to incorrect path resolution of `~`, leading to "No such file or directory" errors.

### [PR #11602](https://github.com/flutter/website/pull/11602): Update  context-menus.md link references
* **Author:** [jonathanmach](https://github.com/jonathanmach)
* **Merged At:** 2025-01-21 11:41 AM
* **Comments:** 2
* This PR fixes broken links in the `context-menus.md` documentation by updating sample repository references, removing the `experimental` subdirectory path from several examples.

### 🔥🔥🔥 [PR #11600](https://github.com/flutter/website/pull/11600): Issue-11599: update dart:js_interop hyperlink
* **Author:** [CellCS](https://github.com/CellCS)
* **Merged At:** 2025-01-21 11:20 AM
* **Comments:** 11
* This PR fixes a broken hyperlink to the `dart:js_interop` documentation in the `wasm.md` file, ensuring it points to the correct library HTML page.

### [PR #11594](https://github.com/flutter/website/pull/11594): Update Flutter engine license location
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* **Merged At:** 2025-01-21 11:18 AM
* **Comments:** 1
* This PR updates the Flutter engine license file links in the `faq.md` documentation to reflect their new locations following the monorepo merge.


## Closed Issues

### [Issue #11599](https://github.com/flutter/website/issues/11599): **js_interop library** hyperlink issue in Support for WebAssembly (Wasm) page
* **Author:** [CellCS](https://github.com/CellCS)
* The `js_interop library` hyperlink on the Flutter WebAssembly documentation page is broken and needs to be updated with the correct `dart-js_interop-library.html` suffix for the URL.

### [Issue #11256](https://github.com/flutter/website/issues/11256): Update Impeller docs for Q4 release
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* The Impeller documentation at `https://docs.flutter.dev/perf/impeller` needs to be updated to reflect that Impeller is the default for Android as of the Q4 stable release.



## Top Hacker News Stories

### 97  [Radicle: The Sovereign Forge](https://radicle.xyz)
* **Author:** [ibobev](https://news.ycombinator.com/user?id=ibobev) | **Comments:** [52](https://news.ycombinator.com/item?id=46732213)

### 15  [DOGE improperly accessed and shared Social Security data](https://blog.quintarelli.it/2026/01/how-doge-improperly-accessed-and-shared-social-security-data-npr/)
* **Author:** [simonebrunozzi](https://news.ycombinator.com/user?id=simonebrunozzi) | **Comments:** [0](https://news.ycombinator.com/item?id=46733803)

### 140 🔥 [Booting from a vinyl record (2020)](https://boginjr.com/it/sw/dev/vinyl-boot/)
* **Author:** [yesturi](https://news.ycombinator.com/user?id=yesturi) | **Comments:** [31](https://news.ycombinator.com/item?id=46730885)

### 235 🔥 [AI is a horse (2024)](https://kconner.com/2024/08/02/ai-is-a-horse.html)
* **Author:** [zdw](https://news.ycombinator.com/user?id=zdw) | **Comments:** [126](https://news.ycombinator.com/item?id=46686402)

### 71  [Show HN: Whosthere: A LAN discovery tool with a modern TUI, written in Go](https://github.com/ramonvermeulen/whosthere)
* **Author:** [rvermeulen98](https://news.ycombinator.com/user?id=rvermeulen98) | **Comments:** [26](https://news.ycombinator.com/item?id=46731432)

### 316 🔥🔥 [Proton Spam and the AI Consent Problem](https://dbushell.com/2026/01/22/proton-spam/)
* **Author:** [dbushell](https://news.ycombinator.com/user?id=dbushell) | **Comments:** [205](https://news.ycombinator.com/item?id=46729368)

### 322 🔥🔥 [I built a light that reacts to radio waves [video]](https://www.youtube.com/watch?v=moBCOEiqiPs)
* **Author:** [codetheweb](https://news.ycombinator.com/user?id=codetheweb) | **Comments:** [75](https://news.ycombinator.com/item?id=46728808)
* The provided text is solely a URL and does not contain content to summarize. To create a summary, please provide text that describes a project or topic.

### 150 🔥 [Updates to our web search products and  Programmable Search Engine capabilities](https://programmablesearchengine.googleblog.com/2026/01/updates-to-our-web-search-products.html)
* **Author:** [01jonny01](https://news.ycombinator.com/user?id=01jonny01) | **Comments:** [133](https://news.ycombinator.com/item?id=46730436)

### 8  [Flying with Photons: Rendering Novel Views of Propagating Light](https://anaghmalik.com/FlyingWithPhotons/)
* **Author:** [pillars](https://news.ycombinator.com/user?id=pillars) | **Comments:** [2](https://news.ycombinator.com/item?id=46687603)

### 34  [The cleaner: One woman’s mission to help Britain’s hoarders](https://www.aljazeera.com/features/2026/1/18/the-cleaner-one-womans-mission-to-help-britains-hoarders)
* **Author:** [Qem](https://news.ycombinator.com/user?id=Qem) | **Comments:** [38](https://news.ycombinator.com/item?id=46668247)

### 130 🔥 [What has Docker become?](https://tuananh.net/2026/01/20/what-has-docker-become/)
* **Author:** [tuananh](https://news.ycombinator.com/user?id=tuananh) | **Comments:** [141](https://news.ycombinator.com/item?id=46731748)

### 1115 🔥🔥🔥 [Show HN: isometric.nyc – giant isometric pixel art map of NYC](https://cannoneyed.com/isometric-nyc/)
* **Author:** [cannoneyed](https://news.ycombinator.com/user?id=cannoneyed) | **Comments:** [207](https://news.ycombinator.com/item?id=46721802)
* The author presents isometric.nyc, a massive isometric pixel art map of NYC created entirely without writing code, utilizing tools like nano banana and coding agents. This no-code project still demanded considerable manual engineering effort, with a deep dive into its workflow and implications for AI coding and creativity available.

### 41  [Show HN: S2-lite, an open source Stream Store](https://github.com/s2-streamstore/s2)
* **Author:** [shikhar](https://news.ycombinator.com/user?id=shikhar) | **Comments:** [10](https://news.ycombinator.com/item?id=46708055)
* `s2-lite` is a newly open-sourced, MIT-licensed stream storage system written in Rust, designed to provide durable streams over object storage like AWS S3 or in-memory for simpler operation and development. It differentiates itself from existing solutions like Kafka or Redis Streams by focusing on supporting numerous durable streams with robust persistence.

### 113 🔥 [Replacing Protobuf with Rust to go 5 times faster](https://pgdog.dev/blog/replace-protobuf-with-rust)
* **Author:** [whiteros_e](https://news.ycombinator.com/user?id=whiteros_e) | **Comments:** [74](https://news.ycombinator.com/item?id=46730214)

### 56  [The state of modern AI text to speech systems for screen reader users](https://stuff.interfree.ca/2026/01/05/ai-tts-for-screenreaders.html)
* **Author:** [tuukkao](https://news.ycombinator.com/user?id=tuukkao) | **Comments:** [20](https://news.ycombinator.com/item?id=46730346)

### 895 🔥🔥🔥 [GPTZero finds 100 new hallucinations in NeurIPS 2025 accepted papers](https://gptzero.me/news/neurips/)
* **Author:** [segmenta](https://news.ycombinator.com/user?id=segmenta) | **Comments:** [474](https://news.ycombinator.com/item?id=46720395)

### 361 🔥🔥 [AI Usage Policy](https://github.com/ghostty-org/ghostty/blob/main/AI_POLICY.md)
* **Author:** [mefengl](https://news.ycombinator.com/user?id=mefengl) | **Comments:** [173](https://news.ycombinator.com/item?id=46730504)

### 140 🔥 [Microsoft mishandling example.com](https://tinyapps.org/blog/microsoft-mishandling-example-com.html)
* **Author:** [mrled](https://news.ycombinator.com/user?id=mrled) | **Comments:** [52](https://news.ycombinator.com/item?id=46731996)

### 93  [European Alternatives](https://european-alternatives.eu)
* **Author:** [s_dev](https://news.ycombinator.com/user?id=s_dev) | **Comments:** [22](https://news.ycombinator.com/item?id=46731976)

### 340 🔥🔥 [Capital One to acquire Brex for $5.15B](https://www.reuters.com/legal/transactional/capital-one-buy-fintech-firm-brex-515-billion-deal-2026-01-22/)
* **Author:** [personjerry](https://news.ycombinator.com/user?id=personjerry) | **Comments:** [285](https://news.ycombinator.com/item?id=46725288)
* Capital One is acquiring Brex, with both companies issuing official statements to confirm the acquisition.

### 37  [Presence in Death](https://rubinmuseum.org/presence-in-death/)
* **Author:** [tock](https://news.ycombinator.com/user?id=tock) | **Comments:** [7](https://news.ycombinator.com/item?id=46731612)

### 633 🔥🔥🔥 [I was banned from Claude for scaffolding a Claude.md file?](https://hugodaniel.com/posts/claude-code-banned-me/)
* **Author:** [hugodan](https://news.ycombinator.com/user?id=hugodan) | **Comments:** [557](https://news.ycombinator.com/item?id=46723384)

### 573 🔥🔥 [Why does SSH send 100 packets per keystroke?](https://eieio.games/blog/ssh-sends-100-packets-per-keystroke/)
* **Author:** [eieio](https://news.ycombinator.com/user?id=eieio) | **Comments:** [302](https://news.ycombinator.com/item?id=46723990)

### 662 🔥🔥🔥 [Qwen3-TTS family is now open sourced: Voice design, clone, and generation](https://qwen.ai/blog?id=qwen3tts-0115)
* **Author:** [Palmik](https://news.ycombinator.com/user?id=Palmik) | **Comments:** [206](https://news.ycombinator.com/item?id=46719229)

### 3  [KORG phase8 – Acoustic Synthesizer](https://www.korg.com/us/products/dj/phase8/)
* **Author:** [bpierre](https://news.ycombinator.com/user?id=bpierre) | **Comments:** [0](https://news.ycombinator.com/item?id=46732967)



