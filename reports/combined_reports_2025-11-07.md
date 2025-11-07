# GitHub PR Report for dart-lang/ai
## From 2025-11-06

No pull requests were merged during this time.



# GitHub PR Report for dart-lang/language
## From 2025-11-06

No pull requests were merged during this time.



# GitHub PR Report for dart-lang/native
## From 2025-11-06

### [PR #2755](https://github.com/dart-lang/native/pull/2755): [jni] minor lint fixes
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2025-11-06
* **Comments:** 2

### [PR #2753](https://github.com/dart-lang/native/pull/2753): [hooks] clean up unnecessary ignores
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2025-11-06
* **Comments:** 2
*   **Summary:** This PR removes unnecessary `ignore_for_file` directives for the `prefer_expression_function_bodies` and `undefined_hidden_name` lints from files in the `hooks` and `hooks_runner` packages.

### [PR #2750](https://github.com/dart-lang/native/pull/2750): [ffigen] auto-ignore unused imports in bindings
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2025-11-06
* **Comments:** 3
*   **Summary:** This change updates `ffigen` to automatically add an `ignore_for_file: unused_import` comment to all generated files, working around a known issue where unused imports are sometimes generated, causing lint warnings.

### [PR #2749](https://github.com/dart-lang/native/pull/2749): [ffigen] Prepare to publish ffigen 20 and objective_c 9
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-06
* **Comments:** 2

### [PR #2747](https://github.com/dart-lang/native/pull/2747): [ffigen] Remove unnecessary `ignore_for_file`s 
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2025-11-06
* **Comments:** 3
*   **Summary:** Removes redundant `ignore_for_file` comments from `ffigen` examples and generated code, as these are made unnecessary by the automatically-generated `// ignore_for_file: type=lint` directive.

### [PR #2740](https://github.com/dart-lang/native/pull/2740): [doc] Document how to avoid symbol clashes with embedder
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-11-06
* **Comments:** 2
*   **Summary:** Adds new documentation to the `code_assets` package explaining common linking issues with native assets, such as symbol conflicts with embedder dependencies on Linux, and provides several workarounds.

### [PR #2723](https://github.com/dart-lang/native/pull/2723): [ffigen] Migrate to extension types
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-06
* **Comments:** 2
*   **Summary:** This PR updates `ffigen`'s Objective-C generator and the `objective_c` package to use extension types instead of classes for bindings, resulting in performance improvements. This is a breaking change that also renames several APIs for consistency (e.g., `castFrom` to `as`, `isInstance` to `isA`) and updates collection classes like `NSArray` to no longer directly implement Dart collections, instead providing adapters via a new `.asDart()` method.

### [PR #2494](https://github.com/dart-lang/native/pull/2494): [jni] Fix the context when using multiple flutter engines
* **Author:** [HosseinYousefi](https://github.com/HosseinYousefi)
* **Merged At:** 2025-11-06
* **Comments:** 2
*   **Summary:** This PR adds multi-engine support to the `jni` plugin by replacing global Android context and activity accessors with new `Jni.androidActivity(engineId)` and `Jni.androidApplicationContext(engineId)` methods. A map on the Java side now stores plugin instances per `engineId`, allowing Dart code to retrieve the correct context and activity when multiple Flutter engines are active.




# GitHub PR Report for dart-lang/sdk
## From 2025-11-06

No pull requests were merged during this time.



# GitHub PR Report for flutter/ai
## From 2025-11-06

No pull requests were merged during this time.



# GitHub PR Report for flutter/codelabs
## From 2025-11-06

No pull requests were merged during this time.



# GitHub PR Report for flutter/flutter
## From 2025-11-06

### [PR #178125](https://github.com/flutter/flutter/pull/178125): Reverts "Update all uses of mutable SkPath methods to use SkPathBuilder (#177738)"
* **Author:** [auto-submit[bot]](https://github.com/apps/auto-submit)
* **Merged At:** 2025-11-06
* **Comments:** 0
*   **Summary:** This PR reverts a recent migration from mutable `SkPath` APIs to `SkPathBuilder`; the original change was made to prepare for the removal of those APIs in Skia but is being reverted because it caused rendering failures in internal tests.

### [PR #178093](https://github.com/flutter/flutter/pull/178093): Fix verified input integration test without breaking the rest of the devicelab tests (attempt 5)
* **Author:** [gmackall](https://github.com/gmackall)
* **Merged At:** 2025-11-06
* **Comments:** 0
*   **Summary:** This PR updates the devicelab test harness to pass the device ID and `adb` path to Android integration tests via environment variables. This makes the `android_verified_input` test more robust by ensuring it can reliably simulate user input, and this logic is now conditionally applied only on Android to avoid breaking other platforms.

### [PR #178089](https://github.com/flutter/flutter/pull/178089): Reverts "Fix verified input test failure in CI (attempt 4) (#178018)"
* **Author:** [auto-submit[bot]](https://github.com/apps/auto-submit)
* **Merged At:** 2025-11-06
* **Comments:** 0
*   **Summary:** Reverts a previous change that passed the path to the `adb` executable to an Android integration test, as this caused the `flutter` tool to fail on machines without the Android SDK installed.

### [PR #178085](https://github.com/flutter/flutter/pull/178085): Reverts "[web] Unify Surface code between Skwasm and CanvasKit (#177138)"
* **Author:** [auto-submit[bot]](https://github.com/apps/auto-submit)
* **Merged At:** 2025-11-06
* **Comments:** 0
*   **Summary:** Reverts a recent refactoring of the web engine's rendering layer that unified the `Surface` and `Rasterizer` implementations to improve modularity and WebGL context loss handling, because the original change broke Skwasm benchmarks.

### [PR #178083](https://github.com/flutter/flutter/pull/178083): [tool] Fix IP parsing by using Uri constructor
* **Author:** [kevmoo](https://github.com/kevmoo)
* **Merged At:** 2025-11-06
* **Comments:** 3
*   **Summary:** Refactors the web asset server's URI construction to correctly handle various host formats like IPv6 addresses, while also introducing a constant for the `any` host value to improve code clarity.

### [PR #178073](https://github.com/flutter/flutter/pull/178073): Hide SwiftPM warnings on non-mac platforms
* **Author:** [vashworth](https://github.com/vashworth)
* **Merged At:** 2025-11-06
* **Comments:** 0
*   **Summary:** Fixes a bug that caused iOS builds to fail on non-macOS hosts if the project included a plugin with a Swift Package manifest. The tool now correctly performs Swift Package Manager-related validations only when running on macOS, resolving the incorrect build failure.

### [PR #178033](https://github.com/flutter/flutter/pull/178033): Remove WindowingOwner.hasTopLevelWindows
* **Author:** [robert-ancell](https://github.com/robert-ancell)
* **Merged At:** 2025-11-06
* **Comments:** 1
*   **Summary:** Removes the unused `hasTopLevelWindows` function from the multi-window API, as this check can be performed at the framework level rather than the platform level.

### [PR #178007](https://github.com/flutter/flutter/pull/178007): Revert "Refactor OverlayPortal semantics (#173005)"
* **Author:** [chingjun](https://github.com/chingjun)
* **Merged At:** 2025-11-06
* **Comments:** 1
*   **Summary:** This PR reverts a recent change that added `traversalParent` and `hitTestTransform` to the semantics engine API, as it was causing a bug. The original functionality for semantics tree grafting in `OverlayPortal` is now achieved with a simpler, framework-only implementation using the new `RenderObject.semanticsParent` property.

### [PR #178002](https://github.com/flutter/flutter/pull/178002): Fix DropdownMenu escape key does not close the menu
* **Author:** [bleroux](https://github.com/bleroux)
* **Merged At:** 2025-11-06
* **Comments:** 1
*   **Summary:** Fixes a bug in `DropdownMenu` that prevented the Escape key from closing the menu when the `requestFocusOnTap` property was set to `false`.

### [PR #177988](https://github.com/flutter/flutter/pull/177988): Roll Dart SDK to 3.11.0-93.1.beta
* **Author:** [iinozemtsev](https://github.com/iinozemtsev)
* **Merged At:** 2025-11-06
* **Comments:** 7
*   **Summary:** This PR rolls the Dart 3.11 beta 1 candidate revision into the Flutter engine.

### [PR #177969](https://github.com/flutter/flutter/pull/177969): Use aria-hidden attribute for platform view accessibility on web
* **Author:** [flutter-zl](https://github.com/flutter-zl)
* **Merged At:** 2025-11-06
* **Comments:** 5
*   **Summary:** Improves web accessibility by using the `aria-hidden` attribute to control platform view visibility for screen readers. Platform views are now hidden by default and are made accessible by the semantics layer when appropriate.

### [PR #177939](https://github.com/flutter/flutter/pull/177939): Update .ci.yaml in flutter/flutter to use 15.5
* **Author:** [okorohelijah](https://github.com/okorohelijah)
* **Merged At:** 2025-11-06
* **Comments:** 3
*   **Summary:** Updates CI configuration files to standardize the macOS version for various builders, replacing the broader `Mac-14|Mac-15` target with more specific versions, primarily `Mac-15.5`.

### [PR #177782](https://github.com/flutter/flutter/pull/177782): Update documentation tool reference in image.dart
* **Author:** [piedcipher](https://github.com/piedcipher)
* **Merged At:** 2025-11-06
* **Comments:** 5
*   **Summary:** Updates the documentation for `ImageProvider` by replacing the `@tool dartpad` directive with `@tool sample` for a code example.

### [PR #177738](https://github.com/flutter/flutter/pull/177738): Update all uses of mutable SkPath methods to use SkPathBuilder
* **Author:** [kjlubick](https://github.com/kjlubick)
* **Merged At:** 2025-11-06
* **Comments:** 4
*   **Summary:** Updates path creation and manipulation logic across the engine to use `SkPathBuilder`, aligning with the upstream removal of mutable `SkPath` APIs in Skia.




# GitHub PR Report for flutter/packages
## From 2025-11-06

### [PR #10374](https://github.com/flutter/packages/pull/10374): [tool] Ensure that all packages format with correct language version
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-06
* **Comments:** 1
*   **Summary:** Updates the `format` and `fetch-deps` developer tooling commands to ensure correct Dart language version resolution for formatting. The tools now run `pub get` in sub-packages, and the `format` command also detects stale language versions by comparing `pubspec.yaml` with the resolved version, re-running `pub get` as needed to ensure consistent formatting locally and in CI.

### [PR #10366](https://github.com/flutter/packages/pull/10366): [ci] Add missing deps
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-06
* **Comments:** 3
*   **Summary:** Adds an explicit dependency on the `ninja` build tool to Android CI configurations to fix out-of-band build failures caused by a recent Ubuntu bot downgrade.

### [PR #10336](https://github.com/flutter/packages/pull/10336): Run tests on macOS 15.5 or 15.7
* **Author:** [okorohelijah](https://github.com/okorohelijah)
* **Merged At:** 2025-11-06
* **Comments:** 1
*   **Summary:** Updates the CI configuration to allow tests to run on either macOS 15.5 or 15.7, in preparation for an upcoming operating system upgrade for the test fleet.

### [PR #10276](https://github.com/flutter/packages/pull/10276): [go_router] Migrates test for leak testing
* **Author:** [hgraceb](https://github.com/hgraceb)
* **Merged At:** 2025-11-06
* **Comments:** 4
*   **Summary:** Updates a `go_router` test to temporarily ignore memory leaks from `TestRestorationManager` and `RestorationBucket`, working around a recently-fixed issue in the Flutter framework.

### [PR #10235](https://github.com/flutter/packages/pull/10235): Add Linux CODEOWNERS
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-06
* **Comments:** 2
*   **Summary:** Updates the `CODEOWNERS` file to add a representative from Canonical as an owner for several first-party Linux plugins.

### [PR #10085](https://github.com/flutter/packages/pull/10085): [pigeon] Encode custom enum as long in Kotlin generator
* **Author:** [devgianlu](https://github.com/devgianlu)
* **Merged At:** 2025-11-06
* **Comments:** 2
*   **Summary:** Fixes a `ClassCastException` in the Pigeon Kotlin generator by ensuring that custom enums are serialized as `Long` instead of `Int`, which allows for correct encoding and decoding.




# GitHub PR Report for flutter/samples
## From 2025-11-06

No pull requests were merged during this time.



# GitHub PR Report for flutter/website
## From 2025-11-06

No pull requests were merged during this time.



