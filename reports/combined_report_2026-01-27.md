# Overall Summary
**🔥🔥🔥 [Issue #177992](https://github.com/flutter/flutter/issues/177992) (flutter/flutter): Overlays close immediately after opening on iPadOS 26.1**
  * **Reactions:** **78** -- 👍 51 😕 17 🚀 3 👀 7
  * On iPadOS 26.1, Flutter end drawers occasionally close immediately after opening instead of remaining open until dismissed.

**🔥🔥🔥 [PR #10533](https://github.com/flutter/packages/pull/10533) (flutter/packages): [image_picker] Transparent pressing on iOS 26 (#173453)**
  * **Comments:** 11
  * This PR fixes a regression in `image_picker` on iOS 26 and some 18.x devices where taps on the native camera confirmation bar would leak through `UIImagePickerController` and dismiss underlying Flutter UI.

**🔥🔥🔥 [PR #3005](https://github.com/dart-lang/native/pull/3005) (dart-lang/native): [native_toolchain_c] fix unportable link arg**
  * **Comments:** 11
  * This PR fixes an issue in `native_toolchain_c` where an unportable `-Wl,-rpath=` linker argument prevented cross-compilation from macOS to Linux by correcting the flag format.

**🔥 [Issue #175606](https://github.com/flutter/flutter/issues/175606) (flutter/flutter): [iPadOS 26] Clicking the top edge of the screen is recognized twice**
  * **Reactions:** **24** -- 👍 12 ❤️ 5 🚀 1 👀 6
  * On iPadOS 26, a Flutter app running in `immersive` UI mode registers a single tap on the top edge of the screen as two distinct taps, contrary to the expected single recognition.

**[Issue #4579](https://github.com/dart-lang/language/issues/4579) (dart-lang/language): Which kinds of parameters can an external function/method have?**
  * This issue discusses how `external` functions and methods should handle optional and named parameters, leading to a clearer understanding of how these critical language features are specified and implemented across different interop mechanisms.

**[PR #340](https://github.com/dart-lang/ai/pull/340) (dart-lang/ai): add reason to launch_app failures, refactor tests**
  * **Comments:** 1
  * This PR adds a configurable `timeout` parameter to the `launch_app` method, directly impacting its public API surface, and enhances `launch_app` failure diagnosis by logging specific reasons.

**[Issue #62237](https://github.com/dart-lang/sdk/issues/62237) (dart-lang/sdk): Use of Isolate.current.debugName causes deadlock**
  * Calling `Isolate.current.debugName` in concurrently spawned isolates can cause a deadlock within the Dart runtime, specifically due to contention over internal locks required for isolate management and shutdown operations.

**🔥 [PR #177220](https://github.com/flutter/flutter/pull/177220) (flutter/flutter): feat: add RoundedSuperellipseInputBorder**
  * **Comments:** 6
  * This PR adds a `ShapedInputBorder` that allows `InputDecorator` widgets to use any custom `ShapeBorder`, such as `RoundedSuperellipseBorder` for iOS-style inputs, for their borders.

**[PR #181152](https://github.com/flutter/flutter/pull/181152) (flutter/flutter): [ Tool / Engine ] Cleanup x86 references**
  * **Comments:** 5
  * This change removes all build configurations, CI jobs, native asset definitions, and tool references for Android x86 (32-bit) from the Flutter engine and tools, effectively deprecating and removing its support.

**[PR #179643](https://github.com/flutter/flutter/pull/179643) (flutter/flutter): Send statusBarTouch events via dedicated messages**
  * **Comments:** 3
  * This PR replaces the use of fake touch events for signaling iOS status bar taps with a new dedicated `flutter/status_bar` system channel, resolving ambiguity issues and allowing `Scaffold` and `CupertinoPageScaffold` to more reliably implement scroll-to-top behavior.


# GitHub PR Report for dart-lang/ai
## From 2026-01-28

The primary change to the repository focuses on enhancing the `launch_app` method, improving its robustness and diagnostic capabilities. Specifically, [PR #340](https://github.com/dart-lang/ai/pull/340) now provides more detailed failure reasons for `launch_app`, such as timeouts and process exceptions, making it easier to diagnose issues. This pull request also introduces a new, configurable `timeout` parameter to the `launch_app` method, directly impacting its public API surface. Furthermore, the testing infrastructure for `launch_app` has been refactored to reduce duplication and improve maintainability.

## Merged Pull Requests

### [PR #340](https://github.com/dart-lang/ai/pull/340): add reason to launch_app failures, refactor tests
* **Author:** [jakemac53](https://github.com/jakemac53)
* **Merged At:** 2026-01-28 01:33 PM
* **Comments:** 1
* This PR enhances `launch_app` failure diagnosis by logging specific reasons like timeouts and process exceptions, adds a configurable `timeout` parameter to the method, and refactors tests to use a shared harness, reducing duplication and removing `fake_async` usages.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2026-01-28

The recent repository changes focus on critical stability fixes, `dart2wasm` compilation target enhancements, and improvements to the Dart analyzer and linter. A key update involved addressing the `dart2wasm` compiler's use of legacy WebAssembly exceptions, paving the way for better compatibility with modern WASM runtimes such as `wasmtime` ([Issue #62525](https://github.com/dart-lang/sdk/issues/62525)). A significant runtime stability improvement was also made by resolving a deadlock that could occur when `Isolate.current.debugName` was called concurrently across multiple isolates ([Issue #62237](https://github.com/dart-lang/sdk/issues/62237)). Work is also progressing on supporting the "Private Named Parameters" language feature within IntelliJ, enhancing developer tooling integration ([Issue #61655](https://github.com/dart-lang/sdk/issues/61655)). Furthermore, the Dart analyzer received attention, with a fix for a "Bad state: Too many elements" crash ([Issue #62526](https://github.com/dart-lang/sdk/issues/62526)) and a proposed performance optimization to reduce unnecessary disk I/O when reading file content ([Issue #62524](https://github.com/dart-lang/sdk/issues/62524)). The `unnecessary_parenthesis` linter rule was also refined to detect more instances of redundant parentheses ([Issue #62515](https://github.com/dart-lang/sdk/issues/62515)), contributing to cleaner codebases.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62526](https://github.com/dart-lang/sdk/issues/62526): Analyzer crash --- "Bad state: Too many elements"
* **Author:** [jensjoha](https://github.com/jensjoha)
* The analyzer crashed with a "Bad state: Too many elements" error because `Iterable.single` found multiple files matching a URI within `AnalysisDriver._produceErrors`, possibly triggered by manipulating file parts, though the issue is not reproducible.

### [Issue #62525](https://github.com/dart-lang/sdk/issues/62525): [dart2wasm] don't use legacy wasm exceptions
* **Author:** [shyim](https://github.com/shyim)
* The user compiled Dart Sass to WASM, but it fails to run with wasmtime because it uses legacy WASM exceptions, despite running fine in the browser; the user points to a new exception-handling standard as a potential solution.

### [Issue #62524](https://github.com/dart-lang/sdk/issues/62524): [perf] Allow reading string file content from `Source` without fetching the timestamp from disk
* **Author:** [DanTup](https://github.com/DanTup)
* This performance issue proposes optimizing file content reading from `Source` by adding a method that retrieves only the string data, avoiding unnecessary disk access for modification timestamps that are currently fetched and discarded, particularly in hot paths like `AnalysisOptionsProvider.getOptionsFromSource`.

### [Issue #62515](https://github.com/dart-lang/sdk/issues/62515): [unnecessary_parenthesis][linter] undetected unnecessary parenthesis
* **Author:** [stephane-archer](https://github.com/stephane-archer)
* The linter fails to detect unnecessary parentheses in a complex Dart ternary expression, specifically around an `await` call in a conditional assignment.

### [Issue #62512](https://github.com/dart-lang/sdk/issues/62512): large_constant_index_test is timing out on simarm
* **Author:** [brianquinlan](https://github.com/brianquinlan)
* The `large_constant_index_test` is timing out on `simarm` during the `vm` execution phase when running the AOT snapshot, with stack traces suggesting the issue occurs within the Dart simulator while other compilation steps complete successfully.

### [Issue #62411](https://github.com/dart-lang/sdk/issues/62411): flaky co19/LibTest/core/List/List_all_t04 turned timeout on vm-aot-mac-release-arm64
* **Author:** [aam](https://github.com/aam)
* A flaky `co19/LibTest/core/List/List_all_t04` test is timing out during the `gen_snapshot` precompiler step on the `vm-aot-mac-release-arm64` builder.

### [Issue #62237](https://github.com/dart-lang/sdk/issues/62237): Use of Isolate.current.debugName causes deadlock
* **Author:** [aam](https://github.com/aam)
* Calling `Isolate.current.debugName` in concurrently spawned isolates can cause a deadlock within the Dart runtime, specifically due to contention over internal locks required for isolate management and shutdown operations.

### [Issue #61655](https://github.com/dart-lang/sdk/issues/61655): [private-named-parameters] IntelliJ support
* **Author:** [munificent](https://github.com/munificent)
* This issue tracks the work required to add IntelliJ support for the "Private Named Parameters" feature.


# GitHub PR Report for dart-lang/language
## From 2026-01-28

During this period, the repository saw a significant clarification regarding the behavior of `external` functions and methods within the language. Specifically, [Issue #4579](https://github.com/dart-lang/language/issues/4579) was closed, addressing long-standing questions about the types of parameters supported by `external` declarations, including optional and named parameters. This discussion also considered the semantic implications and potential syntax errors across different interop mechanisms like `js_interop` and FFI, leading to a clearer understanding of how these critical language features are specified and implemented.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #4579](https://github.com/dart-lang/language/issues/4579): Which kinds of parameters can an external function/method have?
* **Author:** [eernstg](https://github.com/eernstg)
* This issue discusses how `external` functions and methods should handle optional and named parameters, questioning if they are supported or if syntax like `external int foo([int i = 42]);` should be an error, and considers whether their semantics should be implementation-specific across different interop mechanisms like `js_interop` and FFI.


# GitHub PR Report for dart-lang/native
## From 2026-01-28

This period's changes significantly enhance the `objective_c` interop experience, focusing on improved deployment, compatibility, and binding generation. Critical fixes address App Store rejection issues for `package:objective_c` due to missing `Resources` symlinks in macOS frameworks ([#3021](https://github.com/dart-lang/native/issues/3021)) and incorrect platform detection for iOS device builds ([#2989](https://github.com/dart-lang/native/issues/2989)). To prevent application crashes on older OS versions, the `objective_c` build script now supports configurable minimum deployment targets ([PR #3016](https://github.com/dart-lang/native/pull/3016)), resolving instances where frameworks were inadvertently compiled for only the latest macOS versions ([#3011](https://github.com/dart-lang/native/issues/3011)). For `ffigen`, robustness improvements fix transitive inclusion edge cases in Objective-C API generation ([PR #2998](https://github.com/dart-lang/native/pull/2998)), specifically tackling issues like ungenerated block helper interfaces, and progress is being made on handling complex Objective-C headers that include `ExtVector` types ([#2935](https://github.com/dart-lang/native/issues/2935)) and ensuring proper resolution of native callback functions ([#2904](https://github.com/dart-lang/native/issues/2904)). Furthermore, the `native_toolchain_c` received an important update, fixing an unportable linker argument to enable seamless cross-compilation from macOS to Linux ([PR #3005](https://github.com/dart-lang/native/pull/3005)). Rounding out the updates, work is underway to achieve feature parity for the `dart2wasm` backend by implementing the `record_use` feature ([#2822](https://github.com/dart-lang/native/issues/2822)).

## Merged Pull Requests

### [PR #3016](https://github.com/dart-lang/native/pull/3016): [objective_c] feat: Add minimum OS version flags to build script
* **Author:** [zhponng](https://github.com/zhponng)
* **Merged At:** 2026-01-27 07:36 PM
* **Comments:** 5
* This PR adds `-mios-version-min` and `-mmacos-version-min` compiler flags to the `objective_c` build script to ensure compiled dylibs respect the project's minimum deployment target, preventing compatibility issues when deployed to older OS versions.

### [PR #3015](https://github.com/dart-lang/native/pull/3015): [infra] Add needs-triage label to all new bugs
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2026-01-28 02:25 PM
* **Comments:** 0
* Updates GitHub issue templates to automatically apply a `needs-triage` label to all new bugs, adds language-specific labels (e.g., `lang-java`, `lang-swift`) to relevant templates, and assigns issues to specific GitHub projects for better organization.

### 🔥🔥🔥 [PR #3005](https://github.com/dart-lang/native/pull/3005): [native_toolchain_c] fix unportable link arg
* **Author:** [ardera](https://github.com/ardera)
* **Merged At:** 2026-01-28 03:25 AM
* **Comments:** 11
* This PR fixes an issue in `native_toolchain_c` where an unportable `-Wl,-rpath=` linker argument prevented cross-compilation from macOS to Linux by correcting the flag format. The change also adds `lld` to the macOS CI setup and includes new test cases for macOS-to-Linux cross-compilation.

### [PR #2998](https://github.com/dart-lang/native/pull/2998): [ffigen] Fix transitive inclusion edge cases
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2026-01-28 03:05 PM
* **Comments:** 2
* This PR fixes two transitive inclusion bugs in `ffigen`'s Objective-C API generation, which previously caused Dart build errors due to ungenerated block helper interfaces and NPEs for stub protocols, and also removes unused `msgSend` functions to reduce code bloat.


## Closed Issues

### [Issue #3021](https://github.com/dart-lang/native/issues/3021): [objective_c] ITMS-90291: Malformed Framework - missing 'Resources' symlink for macOS App Store submission
* **Author:** [dbebawy](https://github.com/dbebawy)
* Flutter macOS apps using `package:objective_c` are rejected by the App Store (ITMS-90291) because the `objective_c.framework` bundle created by the native assets build system lacks the required `Resources` symlink, preventing App Store submission.

### [Issue #3011](https://github.com/dart-lang/native/issues/3011): objective_c native build sets macOS minos=26.0 on macOS 26, causing crashes on macOS 12
* **Author:** [zhponng](https://github.com/zhponng)
* When built on macOS 26, `objective_c.framework` is compiled with a minimum macOS version of 26.0, causing apps to crash on older macOS versions like 12; the fix is to make the macOS deployment target configurable in the build script.

### [Issue #2989](https://github.com/dart-lang/native/issues/2989): `objective_c` iOS framework built with wrong platform (`IOSSIMULATOR` instead of IOS) - App Store rejection
* **Author:** [xonaman](https://github.com/xonaman)
* The `objective_c` package (v9.2.2) incorrectly builds its iOS framework with the `IOSSIMULATOR` platform instead of `IOS` for device builds, leading to App Store rejections because the bundle reports an unsupported minimum OS version, which is caused by missing iOS version information in the `appleClangIosTargetFlags` in `build.dart`.

### [Issue #2935](https://github.com/dart-lang/native/issues/2935): [Interop EAP] ffigen fails with error `Unimplemented: ExtVector not implemented`
* **Author:** [josxha](https://github.com/josxha)
* Ffigen fails with an `Unimplemented: ExtVector not implemented` error when generating Objective-C bindings for the MapLibre SDK, specifically due to a transitive import of `MetalKit.h`, and the user seeks a way to run ffigen on their central header without error despite not planning to use MetalKit types.

### [Issue #2904](https://github.com/dart-lang/native/issues/2904): [Interop EAP] ObjectiveC function with callback throws exception `Invalid argument(s): Couldn't resolve native function No asset with id ... found`
* **Author:** [josxha](https://github.com/josxha)
* When calling an Objective-C function with a completion handler callback from Dart using `ffigen` and `objective_c` interop, the `clearAmbientCacheWithCompletionHandler` method throws an `Invalid argument(s): Couldn't resolve native function` exception, specifically for `_NativeLibrary_wrapListenerBlock_xtuoz7`, indicating a failure to find the generated callback wrapper.

### [Issue #2822](https://github.com/dart-lang/native/issues/2822): [record_use] Completeness: dart2wasm: Implement for dart2wasm backend
* **Author:** [dcharkes](https://github.com/dcharkes)
* This issue is to fully implement the `record_use` feature for the `dart2wasm` backend, ensuring feature parity and using the same golden tests as the `vm` and `dart2js` backends.


# GitHub PR Report for flutter/ai
## From 2026-01-28

There were no pull requests merged and no issues closed during this period, indicating no changes were made to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2026-01-28

There were no pull requests merged or issues closed in the repository during this period, indicating no recent changes to the codebase.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2026-01-28

Recent updates to the Flutter repository bring a blend of new API capabilities, critical platform-specific fixes, and foundational rendering improvements. Developers gain finer control over animations with the addition of an `onEnd` callback to `AnimatedCrossFade` ([PR #181455]), addressing a long-standing request for custom animation completion logic ([Issue #180682]). UI customization is further enhanced with the introduction of `RoundedSuperellipseInputBorder` ([PR #177220]), enabling `InputDecorator` widgets to adopt iOS-style squircle corners for their borders, as requested in [Issue #176987]. Significant progress was made on iOS and iPadOS stability, including a new dedicated `flutter/status_bar` system channel to more reliably send status bar tap events ([PR #179643]), which helps address gesture ambiguity issues such as double-taps on iPadOS 26 ([Issue #175606]). While not directly closed by a PR in this batch, the high reaction count on [Issue #177992] concerning overlays closing immediately on iPadOS 26.1 highlights continued attention to platform-specific UI behavior. Impeller, Flutter's rendering engine, received key updates, including improved handling of `vec3` and `mat3x3` uniform padding in the Metal backend ([PR #181563]), and a fix for Vulkan context initialization on Pixel 10 devices that includes a safety check for older PowerVR drivers ([PR #181432]). On the tooling front, Android x86 (32-bit) support has been deprecated and removed from the engine and tools ([PR #181152], [Issue #170142]), streamlining the build process. Furthermore, a fix ensures that `flutter create --template=plugin` now correctly generates only Kotlin-based `settings.gradle.kts` files, eliminating redundant Groovy files ([PR #181592], related to [Issue #181565] and [Issue #142685]), and an empty `FlutterFramework` Swift package is now generated to support Swift Package Manager dependencies for plugins ([PR #181578]). Lastly, a bug in `CalendarDatePicker` that caused `todayBorder` color to be incorrectly overridden was resolved ([PR #178792], [Issue #177911]), improving theme consistency.

## Merged Pull Requests

### [PR #181618](https://github.com/flutter/flutter/pull/181618): Bump engine.version for 3.38.9.
* **Author:** [eyebrowsoffire](https://github.com/eyebrowsoffire)
* **Merged At:** 2026-01-28 01:43 PM
* **Comments:** 2
* Updates the engine version to prepare for the 3.38.9 release.

### [PR #181615](https://github.com/flutter/flutter/pull/181615): Bump engine.version for 3.41.0-0.2.pre
* **Author:** [eyebrowsoffire](https://github.com/eyebrowsoffire)
* **Merged At:** 2026-01-28 11:28 AM
* **Comments:** 2
* Bumps the `engine.version` file to `15d137647e372c59e8dcb78f670ab7686a0d1031` for the `3.41.0-0.2.pre` release.

### [PR #181592](https://github.com/flutter/flutter/pull/181592): Fix generating both `settings.gradle` and `settings.gradle.kts` for plugins
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-28 08:40 AM
* **Comments:** 5
* This PR fixes an issue where Flutter plugin projects were incorrectly generating both `settings.gradle` and `settings.gradle.kts` by removing the redundant `settings.gradle` template, ensuring that new Android plugins only generate `settings.gradle.kts` to streamline their build configuration.

### [PR #181578](https://github.com/flutter/flutter/pull/181578): Generate Flutter framework swift package
* **Author:** [vashworth](https://github.com/vashworth)
* **Merged At:** 2026-01-28 09:40 AM
* **Comments:** 3
* This PR generates an empty `FlutterFramework` Swift package, enabling Flutter plugins to declare a dependency on it via Swift Package Manager when the feature flag is enabled, serving as a placeholder until the full framework package is stable.

### [PR #181572](https://github.com/flutter/flutter/pull/181572): Add changelog for 3.38.9.
* **Author:** [eyebrowsoffire](https://github.com/eyebrowsoffire)
* **Merged At:** 2026-01-28 07:39 AM
* **Comments:** 1
* Adds a changelog entry for Flutter 3.38.9, documenting the update of Dart to version 3.10.8.

### [PR #181563](https://github.com/flutter/flutter/pull/181563): Account for vec3 padding in Metal
* **Author:** [walley892](https://github.com/walley892)
* **Merged At:** 2026-01-28 01:31 PM
* **Comments:** 1
* Updates Impeller's shader compiler to account for `vec3` and `mat3x3` uniform padding on the Metal backend, ensuring these uniforms are correctly `vec4`-aligned (16 bytes) for proper GPU data transfer and introduces distinct size calculations for Dart and GPU uniform data.

### [PR #181503](https://github.com/flutter/flutter/pull/181503): Adds impeller backend to skia gold client
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2026-01-28 09:55 AM
* **Comments:** 2
* This PR adds the Impeller backend as a dimension to the Skia Gold client, enabling proper distinction of golden test results when running tests with different Impeller backends like Metal and Vulkan. It also introduces an `impellerBackend` getter for Dart tests and updates the test runner to utilize this dimension, preventing previous issues where results were clobbered.

### [PR #181455](https://github.com/flutter/flutter/pull/181455): feat: add onEnd to AnimatedCrossFade
* **Author:** [rkishan516](https://github.com/rkishan516)
* **Merged At:** 2026-01-27 06:58 PM
* **Comments:** 0
* Adds an `onEnd` callback to `AnimatedCrossFade` that is invoked when the cross-fade animation completes, allowing developers to trigger follow-up actions or animations. This change addresses issue #180682.

### [PR #181432](https://github.com/flutter/flutter/pull/181432): fix: swap app and engine version in vk::ApplicationInfo
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* **Merged At:** 2026-01-28 11:28 AM
* **Comments:** 4
* This PR fixes Vulkan context initialization for Impeller on Pixel 10 devices by correctly setting the `vk::ApplicationInfo` engine version to 2.0.0 (instead of the application version) as required by the device's drivers. Additionally, it introduces a safety check to disable Vulkan if the Pixel 10's PowerVR driver is below version 25.1, preventing issues with older drivers.

### [PR #181393](https://github.com/flutter/flutter/pull/181393): Remove unused code paths  in `PlatformViewsController.java`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-27 07:59 PM
* **Comments:** 0
* Removes the `enforceMinimumAndroidApiVersion` method and its associated API level checks from `PlatformViewsController.java`, as these checks for API levels 19, 20, and 23 are now redundant since Flutter's minimum supported Android API level is 24.

### [PR #181369](https://github.com/flutter/flutter/pull/181369): test: Improve DropdownMenuFormField tests
* **Author:** [Gustl22](https://github.com/Gustl22)
* **Merged At:** 2026-01-28 01:49 PM
* **Comments:** 0
* This PR improves `DropdownMenuFormField` tests by refactoring common finding utilities for consistency, correcting minor typos in test descriptions, and updating an interaction test to directly tap the `DropdownMenuFormField` widget instead of its underlying `DropdownMenu`.

### [PR #181353](https://github.com/flutter/flutter/pull/181353): Don't pass bounds to saveLayer call when painting ImageFilter
* **Author:** [harryterkelsen](https://github.com/harryterkelsen)
* **Merged At:** 2026-01-27 05:58 PM
* **Comments:** 3
* This change modifies `ImageFilter` painting to no longer pass explicit bounds to `saveLayer`, which fixes incorrect filter application when using certain `TileMode`s in Skwasm.

### [PR #181308](https://github.com/flutter/flutter/pull/181308): Marks firebase_release_smoke_test to be unflaky
* **Author:** [jmagman](https://github.com/jmagman)
* **Merged At:** 2026-01-27 04:35 PM
* **Comments:** 0
* Removes the `bringup: true` flag from the `Linux firebase_release_smoke_test` in the CI configuration, indicating that the test is now considered stable and unflaky after 50 consecutive successful runs.

### [PR #181253](https://github.com/flutter/flutter/pull/181253): Fix remove material import box decoration test
* **Author:** [kazbeksultanov](https://github.com/kazbeksultanov)
* **Merged At:** 2026-01-27 04:28 PM
* **Comments:** 4
* This PR refactors `box_decoration_test.dart` by removing the `material.dart` import. It replaces `Colors` constants with explicit `const Color` values, making the test more self-contained and reducing its dependency on the material library.

### [PR #181235](https://github.com/flutter/flutter/pull/181235): Make sure that an AnimatedPadding doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2026-01-27 05:05 PM
* **Comments:** 0
* Adds a new test case to `AnimatedPadding` to ensure it handles zero-area environments without crashing, specifically addressing issue #6537.

### [PR #181152](https://github.com/flutter/flutter/pull/181152): [ Tool / Engine ] Cleanup x86 references
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2026-01-28 01:07 PM
* **Comments:** 5
* This change removes all build configurations, CI jobs, native asset definitions, and tool references for Android x86 (32-bit) from the Flutter engine and tools, effectively deprecating and removing its support.

### [PR #181109](https://github.com/flutter/flutter/pull/181109): test: Clarify failure messages on gestures/debug_test.dart
* **Author:** [luanpotter](https://github.com/luanpotter)
* **Merged At:** 2026-01-27 05:44 PM
* **Comments:** 0
* Clarifies failure messages in `gestures/debug_test.dart` by adding a custom `reason` to `expect` assertions, which helps developers quickly identify which gesture event caused a test failure during development.

### [PR #181067](https://github.com/flutter/flutter/pull/181067): Make sure that an ImageFiltered doesn't crash at 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2026-01-27 04:50 PM
* **Comments:** 0
* Adds a new test to confirm that the `ImageFiltered` widget does not crash when rendered with a zero-size area, addressing a known issue where it might previously have crashed in such scenarios.

### [PR #180985](https://github.com/flutter/flutter/pull/180985): chore: Windows_mokey basic_material_app_win__compile !bringup
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* **Merged At:** 2026-01-28 09:13 AM
* **Comments:** 2
* Removes the `bringup: true` flag from the `Windows_mokey basic_material_app_win__compile` test in the CI configuration, indicating that the test is now considered stable after consistently passing in staging.

### [PR #180287](https://github.com/flutter/flutter/pull/180287): Fix the issue on macOS where, after a hot restart with multiple windows, unresponsive windows are left behind.
* **Author:** [yiiim](https://github.com/yiiim)
* **Merged At:** 2026-01-28 01:02 PM
* **Comments:** 2
* This PR fixes an issue on macOS where, after a hot restart with multiple windows, unresponsive windows were left behind by ensuring all existing windows are closed during the engine's pre-restart callback.

### [PR #179643](https://github.com/flutter/flutter/pull/179643): Send statusBarTouch events via dedicated messages
* **Author:** [LongCatIsLooong](https://github.com/LongCatIsLooong)
* **Merged At:** 2026-01-28 02:10 PM
* **Comments:** 3
* This PR replaces the use of fake touch events for signaling iOS status bar taps with a new dedicated `flutter/status_bar` system channel. This change resolves ambiguity issues by dispatching status bar tap events via `WidgetsBindingObserver.handleStatusBarTap` callbacks, which allows `Scaffold` and `CupertinoPageScaffold` to more reliably implement their scroll-to-top behavior without interfering with other gesture detectors.

### [PR #178792](https://github.com/flutter/flutter/pull/178792): Fix `todayBorder` todayBorder color is incorrectly overridden by `todayForegroundColor` in CalendarDatePicker
* **Author:** [huycozy](https://github.com/huycozy)
* **Merged At:** 2026-01-28 12:58 AM
* **Comments:** 5
* This PR fixes an issue in `CalendarDatePicker` where the `todayBorder` color was incorrectly overridden by `todayForegroundColor`, ensuring that explicitly set `todayBorder` colors are respected unless they are transparent (opacity 0.0), in which case it falls back to `todayForegroundColor`, and updates documentation to clarify this behavior.

### [PR #178174](https://github.com/flutter/flutter/pull/178174): Remove chrome_and_driver dependency where it's not needed
* **Author:** [mdebbar](https://github.com/mdebbar)
* **Merged At:** 2026-01-28 09:30 AM
* **Comments:** 2
* Removes the `chrome_and_driver` dependency from numerous CI targets in the `.ci.yaml` configuration, streamlining builds by only including necessary components.

### 🔥 [PR #177220](https://github.com/flutter/flutter/pull/177220): feat: add RoundedSuperellipseInputBorder
* **Author:** [rkishan516](https://github.com/rkishan516)
* **Merged At:** 2026-01-27 11:31 PM
* **Comments:** 6
* Adds a `ShapedInputBorder` that allows `InputDecorator` widgets (like `TextField`) to use any custom `ShapeBorder`, such as `RoundedSuperellipseBorder` for iOS-style inputs, for their borders, while correctly managing floating label gaps.


## Closed Issues

### [Issue #181594](https://github.com/flutter/flutter/issues/181594): Design Doc: video_player background playback with media notifications
* **Author:** [Deni-al](https://github.com/Deni-al)
* This design document proposes adding system media notification support to the `video_player` plugin, allowing Flutter apps to display media controls and metadata on the lock screen and notification shade during background video/audio playback, integrating with platform-specific APIs like Media3 on Android and `MPNowPlayingInfoCenter` on iOS/macOS.

### [Issue #181565](https://github.com/flutter/flutter/issues/181565): flutter create --template=plugin  should not create groovy and kotlin source files.
* **Author:** [reidbaker](https://github.com/reidbaker)
* The `flutter create --template=plugin` command for Android currently generates both Groovy and Kotlin source files, but it should only create Kotlin files by default, possibly due to a regression from PR 173993. This issue aims to remove the default Groovy file generation, add a regression test, and confirm compatibility with the `--android-language` flag.

### [Issue #181441](https://github.com/flutter/flutter/issues/181441): Please don't remove Impeller opt-out option because it is necessary for some old graphics cards!
* **Author:** [alex-georgiou](https://github.com/alex-georgiou)
* A user with an old Nvidia GeForce GT 710 card experiences mangled hardware-accelerated graphics in AVDs when Impeller is enabled and requests that the `--no-enable-impeller` opt-out option not be removed, as it's currently necessary for their setup.

### [Issue #180987](https://github.com/flutter/flutter/issues/180987): Bug][3.38.7]: flutter reports incorrect version number after flutter upgrade on Windows, but framework revision is updated
* **Author:** [adrianorios](https://github.com/adrianorios)
* **Reactions:** **5** -- 👍 5
* On Windows, after a `flutter upgrade`, the `flutter` command reports an incorrect version number despite the framework revision updating, which is a known issue reported in #178772.

### [Issue #180682](https://github.com/flutter/flutter/issues/180682): AnimatedCrossFade onEnd callback parameter
* **Author:** [itulau](https://github.com/itulau)
* This issue proposes adding an `onEnd` callback parameter to the `AnimatedCrossFade` widget, allowing users to trigger logic when the animation finishes, similar to the functionality already present in `AnimatedContainer`.

### [Issue #180559](https://github.com/flutter/flutter/issues/180559): Take picture returns  CameraException(system_error, Failed to get capture path for picture)
* **Author:** [tsafundzic](https://github.com/tsafundzic)
* On Windows, the `camera` package fails to take pictures, throwing a `CameraException` with the message "Failed to get capture path for picture," and the user notes that `[Windows.Storage.KnownFolders]::PicturesLibrary` is not found in PowerShell.

### [Issue #180466](https://github.com/flutter/flutter/issues/180466): [tool_crash] UnsupportedError: Unsupported operation: Cannot extract a file path from a URI with a fragment component
* **Author:** [JithendraKrish](https://github.com/JithendraKrish)
* The Flutter `assemble` command crashes with an `UnsupportedError` because it attempts to extract a file path from a URI that includes a fragment component, which is an unsupported operation, occurring during asset bundle validation on Flutter `3.38.5` stable on Windows.

### [Issue #180412](https://github.com/flutter/flutter/issues/180412): Windows build_tests_8_9 is 2.00% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* The `Windows build_tests_8_9` post-submit test builder is 2.00% flaky, which exceeds the acceptable threshold, and requires investigation and a fix.

### [Issue #180143](https://github.com/flutter/flutter/issues/180143): Linux Desktop embedder has extremely slow launch when no desktop portal is present
* **Author:** [ethanrushh](https://github.com/ethanrushh)
* A Flutter Linux app launches extremely slowly (around 60 seconds) on minimal Wayland compositors like Weston if `xdg-desktop-portal` is not present, with workarounds including setting `GTK_USE_PORTAL=0` or masking `xdg-desktop-portal` systemd services.

### [Issue #179834](https://github.com/flutter/flutter/issues/179834): flutter windows image memory leackage
* **Author:** [descosmos](https://github.com/descosmos)
* A Flutter Windows application exhibits significant memory usage increases when repeatedly cycling through images, with memory not being released even after returning to the initial image, suggesting a memory leak.

### [Issue #179307](https://github.com/flutter/flutter/issues/179307): Web/WASM: UI renders incorrectly in second browser tab in release mode
* **Author:** [marcelomoresco](https://github.com/marcelomoresco)
* **Reactions:** **1** -- 👍 1
* A Flutter web app built with `--release --wasm` exhibits UI rendering issues like overlapping text and disappearing widgets when opened in multiple browser tabs simultaneously, but works correctly in a single tab and does not show this problem with the CanvasKit web build.

### [Issue #178028](https://github.com/flutter/flutter/issues/178028): [BUG] SKWasm Blur doesn't work
* **Author:** [AlexDochioiu](https://github.com/AlexDochioiu)
* **Reactions:** **1** -- 👍 1
* SKWasm blur effects do not render in a Flutter web application when compiled with WASM, while they work as expected on Android and web without WASM, with blurred items failing to render entirely.

### [Issue #177992](https://github.com/flutter/flutter/issues/177992): Overlays close immediately after opening on iPadOS 26.1
* **Author:** [hakonber](https://github.com/hakonber)
* **Reactions:** **78** -- 👍 51 😕 17 🚀 3 👀 7
* On iPadOS 26.1, Flutter end drawers occasionally close immediately after opening instead of remaining open until dismissed, which differs from behavior on older iPadOS versions.

### [Issue #177911](https://github.com/flutter/flutter/issues/177911): CalendarDatePicker: `todayBorder` color is incorrectly overridden by `todayForegroundColor`
* **Author:** [abikko](https://github.com/abikko)
* The `CalendarDatePicker` incorrectly overrides the `todayBorder` color with `todayForegroundColor` when both are defined in `DatePickerThemeData`, preventing developers from independently specifying the border's color for today's date.

### [Issue #176987](https://github.com/flutter/flutter/issues/176987): Implement RoundedSuperellipseInputBorder
* **Author:** [martin-braun](https://github.com/martin-braun)
* **Reactions:** **2** -- 👍 2
* The user requests a `RoundedSuperellipseInputBorder` class to bring iOS-style squircle corners to `TextField` widgets, noting that the existing `RoundedSuperellipseBorder` cannot be directly used as an `InputBorder`.

### [Issue #176936](https://github.com/flutter/flutter/issues/176936): Upgrade remaining chromium bots in each pool to macOS 15.7.1
* **Author:** [vashworth](https://github.com/vashworth)
* This infrastructure task aims to upgrade the remaining macOS chromium bots in the Devicelab's Try, Staging, and Prod pools (for both arm64 and x86 architectures) to macOS 15.7.1, which will be followed by filing specific bot upgrade issues and installing the Flutter Devicelab certs.

### [Issue #176042](https://github.com/flutter/flutter/issues/176042): `gcloud firebase` step timing out in Linux firebase_release_smoke_test
* **Author:** [Piinks](https://github.com/Piinks)
* The `gcloud firebase` step is repeatedly timing out after 60 minutes during the `firebase_release_smoke_test` on Linux, and a PR is being sent to move it to bringup.

### [Issue #175606](https://github.com/flutter/flutter/issues/175606): [iPadOS 26] Clicking the top edge of the screen is recognized twice
* **Author:** [MinSeungHyun](https://github.com/MinSeungHyun)
* **Reactions:** **24** -- 👍 12 ❤️ 5 🚀 1 👀 6
* On iPadOS 26, a Flutter app running in `immersive` UI mode registers a single tap on the top edge of the screen as two distinct taps, contrary to the expected single recognition.

### [Issue #175048](https://github.com/flutter/flutter/issues/175048): BackdropFilter with ClipRRect leaks blur outside rounded corners when UiKitView is present (iOS)
* **Author:** [SeeyouYsen](https://github.com/SeeyouYsen)
* **Reactions:** **4** -- 👍 4
* On iOS, a `BackdropFilter` with `ClipRRect` leaks its blur effect outside the rounded corners specifically when a `UiKitView` is present in the widget tree, which does not happen if no `UiKitView` is used.

### [Issue #173701](https://github.com/flutter/flutter/issues/173701): Windows_mokey basic_material_app_win__compile is 2.06% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* The `Windows_mokey basic_material_app_win__compile` post-submit test builder is exhibiting 2.06% flakiness, exceeding the 2.00% threshold, and requires investigation and a fix.

### [Issue #173453](https://github.com/flutter/flutter/issues/173453): [image_picker][iOS] [iOS 26 Beta] The camera screen implicitly triggers a Navigator.pop call
* **Author:** [eldarkk](https://github.com/eldarkk)
* **Reactions:** **14** -- 👍 14
* On iOS 26 Beta, calling `ImagePicker().pickImage(source: ImageSource.camera)` results in an implicit `Navigator.pop()` after tapping "Use Photo," which unexpectedly closes any open bottom sheets, whereas it functions correctly on iOS 18.

### [Issue #170142](https://github.com/flutter/flutter/issues/170142): Remove android x86 codepaths that are unused.
* **Author:** [reidbaker](https://github.com/reidbaker)
* This issue requests the removal of unused Android x86 codepaths from the project, aligning with Dart's deprecation of x86 support, and provides numerous code pointers across the Flutter tool, engine, and CI configurations that need to be audited and cleaned up.

### [Issue #153091](https://github.com/flutter/flutter/issues/153091): [camera_android_camerax] add error info to onCameraError when camera fails to take a picture 
* **Author:** [MiroslavBlagoev](https://github.com/MiroslavBlagoev)
* The `camera_android_camerax` plugin does not report camera hardware errors (specifically `ERROR_CAMERA_DEVICE` when a picture fails to be taken or the camera fails to open) to the `onCameraError` callback, preventing developers from handling these conditions.

### [Issue #142685](https://github.com/flutter/flutter/issues/142685): Change build language of Android plugin template from Groovy to Kotlin
* **Author:** [albertmoravec](https://github.com/albertmoravec)
* The issue requests that the Android plugin template generated by `flutter create` be updated to use the new Plugin DSL and Kotlin for Gradle setup, aligning with new Flutter apps, or for an explanation as to why it currently still uses Groovy.

### [Issue #126270](https://github.com/flutter/flutter/issues/126270): [camera_android_camerax] Improve documentation on `cameraId` parameter
* **Author:** [camsim99](https://github.com/camsim99)
* The `cameraId` parameter in the Flutter camera platform interface is often unused in the Android implementation because it references the Flutter surface texture rather than the physical camera; documentation should be updated to clarify its purpose and usage for each method.

### [Issue #57495](https://github.com/flutter/flutter/issues/57495): WillPopScope in url_launcher
* **Author:** [jomarlubrido](https://github.com/jomarlubrido)
* The user requests `WillPopScope` functionality in `url_launcher` to allow prompting users before exiting an app, specifically for web content where `url_launcher` is preferred over `webview_flutter` due to better animation performance.


# GitHub PR Report for flutter/genui
## From 2026-01-28

During this period, there were no pull requests merged and no issues closed in the repository. Consequently, no changes were introduced to the codebase or its public API surface through these channels.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2026-01-28

Recent updates to the repository primarily focused on enhancing the robustness and developer experience across several key packages. A critical regression affecting the `image_picker` package on iOS 26 and some 18.x devices was resolved, addressing an issue where taps on the native camera confirmation bar would inadvertently dismiss underlying Flutter UI by presenting the camera picker within a temporary, transparent `UIWindow` ([PR #10533](https://github.com/flutter/packages/pull/10533)). For the `camera_android_camerax` plugin, error reporting was significantly improved to provide more descriptive messages for image capture failures, mapping Android's `ImageCaptureException` codes to human-readable strings via the `onCameraError` callback stream, thereby enhancing developer understanding and debugging capabilities ([PR #10846](https://github.com/flutter/packages/pull/10846)). Additionally, documentation for the `cameraId` parameter was clarified to improve API usage understanding within `camera_android_camerax` ([PR #10844](https://github.com/flutter/packages/pull/10844)). On the internal development front, the `quick_actions_ios` plugin underwent a modernization effort, migrating its example tests from XCTest to the new Swift Testing framework and updating its Swift version to 6.0 ([PR #10767](https://github.com/flutter/packages/pull/10767)).

## Merged Pull Requests

### [PR #10846](https://github.com/flutter/packages/pull/10846): [camera_android_camerax] Improve error messages when image capture fails
* **Author:** [camsim99](https://github.com/camsim99)
* **Merged At:** 2026-01-28 12:39 PM
* **Comments:** 0
* This PR enhances error reporting for image capture failures by sending more descriptive error messages via the `onCameraError` callback stream, which maps Android's `ImageCaptureException` error codes to human-readable strings, allowing developers to better understand and handle issues encountered while taking pictures.

### [PR #10844](https://github.com/flutter/packages/pull/10844): [camera_android_camerax] Improve documentation on `cameraId` parameter
* **Author:** [camsim99](https://github.com/camsim99)
* **Merged At:** 2026-01-28 02:39 PM
* **Comments:** 1
* This PR improves the documentation for the `camera_android_camerax` plugin by clarifying the purpose and usage of the `cameraId` parameter in various methods, resolving an issue where its use was previously unclear.

### [PR #10767](https://github.com/flutter/packages/pull/10767): [quick_actions_ios] Migrate XCTest to Swift Testing
* **Author:** [jmagman](https://github.com/jmagman)
* **Merged At:** 2026-01-28 03:19 PM
* **Comments:** 1
* Migrates the `quick_actions_ios` plugin's example tests from XCTest to the new Swift Testing framework, including updating the test target's Swift version to 6.0 and refactoring test methods and assertions to use the new Swift Testing syntax like `@Test` and `#expect`.

### 🔥🔥🔥 [PR #10533](https://github.com/flutter/packages/pull/10533): [image_picker] Transparent pressing on iOS 26 (#173453)
* **Author:** [celvinren](https://github.com/celvinren)
* **Merged At:** 2026-01-28 10:09 AM
* **Comments:** 11
* This PR fixes a regression in `image_picker` on iOS 26 and some 18.x devices where taps on the native camera confirmation bar would leak through `UIImagePickerController` and dismiss underlying Flutter UI. This is resolved by presenting the camera picker within a temporary, transparent `UIWindow` that absorbs touches until the picker is fully dismissed.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2026-01-28

There were no pull requests merged or issues closed during this period, indicating no changes to the repository's codebase or outstanding issues were resolved.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2026-01-28

The repository has undergone significant improvements focused on enhancing developer learning paths and clarifying FFI best practices. A major restructuring of the `/learn` section has been implemented, providing a dedicated top-level and distinct side navigation, and reorganizing tutorials and learning pathways under `/learn/pathway/` ([PR #12974](https://github.com/flutter/website/pull/12974)). This update also integrates quick installation guides and a "How Flutter Works" video series into the learning flow. To ensure content accessibility after these changes, permanent redirects were added from old `/learn/tutorial` paths to the new `/learn/pathway/tutorial` structure ([PR #13007](https://github.com/flutter/website/pull/13007)), resolving 404 errors encountered by users, such as for the implicit animations tutorial ([Issue #13003](https://github.com/flutter/website/issues/13003)). Concurrently, documentation was updated to remove references to the legacy `plugin_ffi` template, now promoting `package_ffi` as the standard for FFI packages, and providing clearer guidance on using the `plugin` template for Flutter Plugin API or Android Play components ([PR #13004](https://github.com/flutter/website/pull/13004)).

## Merged Pull Requests

### [PR #13007](https://github.com/flutter/website/pull/13007): adds redirect for /learn restructure
* **Author:** [ericwindmill](https://github.com/ericwindmill)
* **Merged At:** 2026-01-28 08:42 AM
* **Comments:** 2
* Adds permanent redirects from `/learn/tutorial` to `/learn/pathway/tutorial` to support the recent restructuring of the learning content.

### [PR #13004](https://github.com/flutter/website/pull/13004): Remove references to `plugin_ffi`
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2026-01-28 08:44 AM
* **Comments:** 2
* Updates documentation to remove all references to the legacy `plugin_ffi` template, promoting `package_ffi` as the standard for FFI packages, and clarifies using the `plugin` template for Flutter Plugin API or Android Play components.

### [PR #12974](https://github.com/flutter/website/pull/12974): Separate /learn into its own nav
* **Author:** [ericwindmill](https://github.com/ericwindmill)
* **Merged At:** 2026-01-27 04:26 PM
* **Comments:** 2
* This PR overhauls the website's `/learn` section by giving it a dedicated top-level navigation entry and a distinct side navigation, restructuring the learning pathway and tutorials under `/learn/pathway/`, and integrating quick install instructions and a "How Flutter Works" video series into the continuous learning flow.


## Closed Issues

### [Issue #13003](https://github.com/flutter/website/issues/13003): Found 404 error on FLUTTER Tutorials:
* **Author:** [Syedali-786](https://github.com/Syedali-786)
* A user found a 404 error on the Flutter documentation page for "Implicit Animations" at `https://docs.flutter.dev/learn/tutorial/implicit-animations`, which is preventing them from following a tutorial.



## Top Hacker News Stories

### 212 🔥 [Project Genie: Experimenting with infinite, interactive worlds](https://blog.google/innovation-and-ai/models-and-research/google-deepmind/project-genie/)
* **Author:** [meetpateltech](https://news.ycombinator.com/user?id=meetpateltech) | **Comments:** [117](https://news.ycombinator.com/item?id=46812933)

### 64  [My Mom and Dr. DeepSeek (2025)](https://restofworld.org/2025/ai-chatbot-china-sick/)
* **Author:** [kieto](https://news.ycombinator.com/user?id=kieto) | **Comments:** [21](https://news.ycombinator.com/item?id=46814569)

### 393 🔥🔥 [Claude Code Daily Benchmarks for Degradation Tracking](https://marginlab.ai/trackers/claude-code/)
* **Author:** [qwesr123](https://news.ycombinator.com/user?id=qwesr123) | **Comments:** [213](https://news.ycombinator.com/item?id=46810282)

### 107 🔥 [Drug trio found to block tumour resistance in pancreatic cancer](https://www.drugtargetreview.com/news/192714/drug-trio-found-to-block-tumour-resistance-in-pancreatic-cancer/)
* **Author:** [axiomdata316](https://news.ycombinator.com/user?id=axiomdata316) | **Comments:** [46](https://news.ycombinator.com/item?id=46812159)

### 72  [Launch HN: AgentMail (YC S25) – An API that gives agents their own email inboxes]()
* **Author:** [Haakam21](https://news.ycombinator.com/user?id=Haakam21) | **Comments:** [80](https://news.ycombinator.com/item?id=46812608)
* AgentMail is an email inbox API built for AI agents, allowing them to autonomously manage email-based workflows and overcome the limitations of traditional email APIs like Gmail. It provides developers with features like programmatic inbox creation, advanced parsing, semantic search, real-time webhooks, and usage-based pricing optimized for agent deployments.

### 115 🔥 [OTelBench: AI struggles with simple SRE tasks (Opus 4.5 scores only 29%)](https://quesma.com/blog/introducing-otel-bench/)
* **Author:** [stared](https://news.ycombinator.com/user?id=stared) | **Comments:** [64](https://news.ycombinator.com/item?id=46811588)

### 45  [C++ Modules Are Here to Stay](https://faresbakhit.github.io/e/cpp-modules/)
* **Author:** [faresahmed](https://news.ycombinator.com/user?id=faresahmed) | **Comments:** [30](https://news.ycombinator.com/item?id=46741602)

### 599 🔥🔥 [Europe’s next-generation weather satellite sends back first images](https://www.esa.int/Applications/Observing_the_Earth/Meteorological_missions/meteosat_third_generation/Europe_s_next-generation_weather_satellite_sends_back_first_images)
* **Author:** [saubeidl](https://news.ycombinator.com/user?id=saubeidl) | **Comments:** [82](https://news.ycombinator.com/item?id=46806773)

### 31  [OpenAI's In-House Data Agent](https://openai.com/index/inside-our-in-house-data-agent)
* **Author:** [meetpateltech](https://news.ycombinator.com/user?id=meetpateltech) | **Comments:** [11](https://news.ycombinator.com/item?id=46814115)

### 309 🔥🔥 [US cybersecurity chief leaked sensitive government files to ChatGPT: Report](https://www.dexerto.com/entertainment/us-cybersecurity-chief-leaked-sensitive-government-files-to-chatgpt-report-3311462/)
* **Author:** [randycupertino](https://news.ycombinator.com/user?id=randycupertino) | **Comments:** [163](https://news.ycombinator.com/item?id=46812173)

### 58  [EmulatorJS](https://github.com/EmulatorJS/EmulatorJS)
* **Author:** [avaer](https://news.ycombinator.com/user?id=avaer) | **Comments:** [9](https://news.ycombinator.com/item?id=46729139)

### 76  [County pays $600k to pentesters it arrested for assessing courthouse security](https://arstechnica.com/security/2026/01/county-pays-600000-to-pentesters-it-arrested-for-assessing-courthouse-security/)
* **Author:** [MBCook](https://news.ycombinator.com/user?id=MBCook) | **Comments:** [20](https://news.ycombinator.com/item?id=46814614)

### 1  [Reflex (YC W23) Senior Software Engineer Infra](https://www.ycombinator.com/companies/reflex/jobs/Jcwrz7A-lead-software-engineer-infra)
* **Author:** [apetuskey](https://news.ycombinator.com/user?id=apetuskey) | **Comments:** [null](https://news.ycombinator.com/item?id=46812892)

### 958 🔥🔥🔥 [Apple to soon take up to 30% cut from all Patreon creators in iOS app](https://www.macrumors.com/2026/01/28/patreon-apple-tax/)
* **Author:** [pier25](https://news.ycombinator.com/user?id=pier25) | **Comments:** [780](https://news.ycombinator.com/item?id=46801419)

### 22  [MakuluLinux (6.4M Downloads) Ships Persistent Backdoor from Developer's Own C2](https://werai.ca/security-disclosure.html)
* **Author:** [werai](https://news.ycombinator.com/user?id=werai) | **Comments:** [6](https://news.ycombinator.com/item?id=46814129)

### 26  [Usenet personality](https://en.wikipedia.org/wiki/Usenet_personality)
* **Author:** [mellosouls](https://news.ycombinator.com/user?id=mellosouls) | **Comments:** [10](https://news.ycombinator.com/item?id=46760546)

### 8  [Box64 Expands into RISC-V and LoongArch territory](https://boilingsteam.com/box64-expands-into-risc-v-and-loong-arch-territory/)
* **Author:** [ekianjo](https://news.ycombinator.com/user?id=ekianjo) | **Comments:** [1](https://news.ycombinator.com/item?id=46751460)

### 4  [Flameshot](https://github.com/flameshot-org/flameshot)
* **Author:** [OsrsNeedsf2P](https://news.ycombinator.com/user?id=OsrsNeedsf2P) | **Comments:** [1](https://news.ycombinator.com/item?id=46815297)

### 83  [Run Clawdbot/Moltbot on Cloudflare with Moltworker](https://blog.cloudflare.com/moltworker-self-hosted-ai-agent/)
* **Author:** [ghostwriternr](https://news.ycombinator.com/user?id=ghostwriternr) | **Comments:** [36](https://news.ycombinator.com/item?id=46810828)

### 63  [Making niche solutions is the point](https://ntietz.com/blog/making-niche-solutions-is-the-point/)
* **Author:** [evakhoury](https://news.ycombinator.com/user?id=evakhoury) | **Comments:** [24](https://news.ycombinator.com/item?id=46772132)

### 119 🔥 [How to Choose Colors for Your CLI Applications (2023)](https://blog.xoria.org/terminal-colors/)
* **Author:** [kruuuder](https://news.ycombinator.com/user?id=kruuuder) | **Comments:** [74](https://news.ycombinator.com/item?id=46810904)

### 43  [Heating homes with the largest particle accelerator](https://home.cern/news/news/cern/heating-homes-worlds-largest-particle-accelerator)
* **Author:** [elashri](https://news.ycombinator.com/user?id=elashri) | **Comments:** [15](https://news.ycombinator.com/item?id=46811762)

### 19  [Computing Sharding with Einsum](https://blog.ezyang.com/2026/01/computing-sharding-with-einsum/)
* **Author:** [matt_d](https://news.ycombinator.com/user?id=matt_d) | **Comments:** [0](https://news.ycombinator.com/item?id=46754097)

### 30  [Playing Board Games with Deep Convolutional Neural Network on 8bit Motorola 6809](https://ipsj.ixsq.nii.ac.jp/records/229345)
* **Author:** [mci](https://news.ycombinator.com/user?id=mci) | **Comments:** [8](https://news.ycombinator.com/item?id=46810337)

### 81  [The Sovereign Tech Fund Invests in Scala](https://www.scala-lang.org/blog/2026/01/27/sta-invests-in-scala.html)
* **Author:** [bishabosha](https://news.ycombinator.com/user?id=bishabosha) | **Comments:** [57](https://news.ycombinator.com/item?id=46809420)



