# GitHub PR Report for flutter/flutter
## From 2025-11-05 23:02:05.028367 to 2025-11-05 23:02:05.028855

### [PR #178079](https://github.com/flutter/flutter/pull/178079): Update more missing ninja deps
*   **Author:** [jtmcdole](https://github.com/jtmcdole)
*   **Merged At:** 1:35 PM
*   **Comments:** 1
*   **Summary:** Adds missing `clang`, `cmake`, and `ninja` build dependencies to the `Linux build_android_host_app_with_module_source` CI test.

### [PR #178054](https://github.com/flutter/flutter/pull/178054): Add ninja / cmake deps to failing tests
*   **Author:** [jtmcdole](https://github.com/jtmcdole)
*   **Merged At:** 11:40 AM
*   **Comments:** 6
*   **Summary:** Adds `clang`, `cmake`, and `ninja` dependencies to several CI configurations to resolve test failures that appeared after the recent rollout to Ubuntu 22.

### [PR #178018](https://github.com/flutter/flutter/pull/178018): Fix verified input test failure in CI (attempt 4)
*   **Author:** [gmackall](https://github.com/gmackall)
*   **Merged At:** 3:52 PM
*   **Comments:** 1
*   **Summary:** Fixes a flaky Android integration test by passing the path to the `adb` executable from the devicelab harness into the test's environment, preventing an `adb` client/server version mismatch.

### [PR #178005](https://github.com/flutter/flutter/pull/178005): Print reason for adb command failure in verified input test (attempt 3)
*   **Author:** [gmackall](https://github.com/gmackall)
*   **Merged At:** 5:44 PM
*   **Comments:** 4
*   **Summary:** This PR updates the `android_verified_input` integration test to print stdout and stderr logs upon failure, which will aid in debugging a CI issue.

### [PR #177987](https://github.com/flutter/flutter/pull/177987): Fixing broken link in engine readme
*   **Author:** [srivats22](https://github.com/srivats22)
*   **Merged At:** 6:15 PM
*   **Comments:** 1
*   **Summary:** Fixes a broken link in the Android engine test's README file that pointed to the "Compiling the engine" documentation.

### [PR #177813](https://github.com/flutter/flutter/pull/177813): Replace deprecated `withOpacity` in `overflow_bar.0.dart‎` example
*   **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
*   **Merged At:** 5:16 PM
*   **Comments:** 0
*   **Summary:** Updates an API example to use `Color.withValues` instead of the deprecated `Color.withOpacity`.

### [PR #177812](https://github.com/flutter/flutter/pull/177812): Replace deprecated `withOpacity` in `data_table.1.dart‎` example
*   **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
*   **Merged At:** 5:02 PM
*   **Comments:** 0
*   **Summary:** Updates the `DataTable` example to use `Color.withValues(alpha: ...)` instead of `Color.withOpacity(...)` for modifying color opacity, as part of a larger API migration.

### [PR #177811](https://github.com/flutter/flutter/pull/177811): Replace deprecated `withOpacity` in `switch.1.dart` example
*   **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
*   **Merged At:** 5:02 PM
*   **Comments:** 0
*   **Summary:** Updates a `Switch` widget API example to use the `Color.withValues` method instead of `Color.withOpacity` for setting the alpha channel of the overlay color.

### [PR #177681](https://github.com/flutter/flutter/pull/177681): [web] Don't add webparagraph suite to CI
*   **Author:** [mdebbar](https://github.com/mdebbar)
*   **Merged At:** 6:15 PM
*   **Comments:** 1
*   **Summary:** Fixes the `generate-builder-json` CI script to only include test bundles for test suites that are enabled (`enable-ci: true`), preventing the unnecessary building of assets for disabled tests.

### [PR #177138](https://github.com/flutter/flutter/pull/177138): [web] Unify Surface code between Skwasm and CanvasKit
*   **Author:** [harryterkelsen](https://github.com/harryterkelsen)
*   **Merged At:** 2:47 PM
*   **Comments:** 6
*   **Summary:** Refactors the web engine's rendering layer by unifying the `Surface` and `Rasterizer` implementations into a renderer-agnostic architecture. This change makes the rendering components more modular and enables the Skwasm backend to correctly handle and recover from WebGL context loss events.

### [PR #177065](https://github.com/flutter/flutter/pull/177065): Fix(ios): Remove arm64 exclusion to support Xcode 26 simulators
*   **Author:** [okorohelijah](https://github.com/okorohelijah)
*   **Merged At:** 3:52 PM
*   **Comments:** 0
*   **Summary:** To accommodate the removal of Rosetta support for the iOS simulator in Xcode 26, this change introduces an early build check that warns developers if any plugin dependencies exclude the required `arm64` simulator architecture, preventing difficult-to-diagnose build failures on Apple Silicon Macs.

### [PR #173706](https://github.com/flutter/flutter/pull/173706): fix: inconsistent horizontal spacing between hours and mins in time picker for non-english language
*   **Author:** [Jaineel-Mamtora](https://github.com/Jaineel-Mamtora)
*   **Merged At:** 3:52 PM
*   **Comments:** 21
*   **Summary:** Fixes a layout issue in the `TimePickerDialog`'s input mode by centering the hour and minute labels above their text fields, improving visual alignment across different locales.

### [PR #173241](https://github.com/flutter/flutter/pull/173241): Fix `ReorderableList` items jumping when drag direction reverses mid-animation
*   **Author:** [lukemmtt](https://github.com/lukemmtt)
*   **Merged At:** 5:39 PM
*   **Comments:** 11
*   **Summary:** This change fixes an animation bug in `ReorderableList` where interrupting a reorder animation by starting a new drag would cause the item to visually jump. The new animation now starts from the item's current rendered position, ensuring a smooth transition.

