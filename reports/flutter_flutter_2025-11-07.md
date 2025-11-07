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

