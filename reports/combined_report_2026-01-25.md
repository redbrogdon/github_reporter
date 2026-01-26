# Overall Summary
**🔥🔥🔥 [PR #177337](https://github.com/flutter/flutter/pull/177337) (flutter/flutter): CupertinoSheetRoute with scrolling and dragging**
  * **Comments:** 12
  * Refactors `CupertinoSheetRoute` and `showCupertinoSheet` by replacing the `builder` parameter with a `scrollableBuilder` that provides a `ScrollController`, enabling scrollable content within a sheet to work cooperatively with its drag-to-dismiss gesture, triggering dismissal only when the content is at the top of its scroll extent.

**🔥🔥🔥 [Issue #161687](https://github.com/flutter/flutter/issues/161687) (flutter/flutter): Cupertino Sheet should have drag to dismiss and nested scrolling work together**
  * **Reactions:** **32** -- 👍 30 👀 2
  * Flutter's Cupertino Sheet currently cannot seamlessly combine nested scrolling with drag-to-dismiss behavior like native iOS sheets; it prioritizes one gesture over the other and cannot switch between them during a single drag event.

**🔥 [PR #181093](https://github.com/flutter/flutter/pull/181093) (flutter/flutter): Broaden the applicability of `Color` fix_data rules from flutter/painting.dart**
  * **Comments:** 5
  * Broadens the applicability of `Color` data-driven fixes (like renaming `withOpacity` to `withValues`) by making them active for users who import `dart:ui` or any Flutter package that re-exports `Color`, rather than requiring a specific import of `flutter/painting.dart`.

**🔥 [PR #181074](https://github.com/flutter/flutter/pull/181074) (flutter/flutter): Revert DropdownMenu non-nullable breaking change**
  * **Comments:** 4
  * Reverts a previous breaking change by allowing `DropdownMenu` and `DropdownMenuFormField` to have nullable generic type parameters, enabling developers to use `null` as a valid selection for menu entries and clear selections.

**🔥 [PR #181398](https://github.com/flutter/flutter/pull/181398) (flutter/flutter): [Material] modernize Typography._withPlatform with Dart 3 switch expression**
  * **Comments:** 2
  * Modernizes the `Typography._withPlatform` method by refactoring its platform-specific theme assignments to use Dart 3's switch expression and record patterns, grouping platforms like Android and Fuchsia for cleaner code without changing the underlying logic.

**[PR #180577](https://github.com/flutter/flutter/pull/180577) (flutter/flutter): Add bottom navigation bar item semantics label**
  * **Comments:** 3
  * Adds a `semanticsLabel` property to `BottomNavigationBarItem` which allows developers to provide a custom accessibility label that overrides the visual `label` for screen readers, improving accessibility for bottom navigation bar items in both Material and Cupertino designs.

**[Issue #30876](https://github.com/dart-lang/sdk/issues/30876) (dart-lang/sdk): const canonicalization depends on which constructor is used**
  * Constant canonicalization in JavaScript is inconsistent because it depends on constructor usage and varying property order, leading to failures in `compile_time_constant_d_test` and `compile_time_constant_e_test`, and can be fixed by enforcing consistent field ordering or using a structural equality hashing approach.

**[Issue #173104](https://github.com/flutter/flutter/issues/173104) (flutter/flutter): ListView under a Transform breaks for some perspective values**
  * **Reactions:** **5** -- 👍 5
  * A `ListView` wrapped in a `Transform` with certain perspective values causes its content to disappear.

**[PR #10785](https://github.com/flutter/packages/pull/10785) (flutter/packages): [google_fonts] Update to v8.0.0 with new and removed fonts**
  * **Comments:** 2
  * Updates the `google_fonts` package to version 8.0.0, adding support for numerous new fonts and removing several deprecated or replaced ones, and refines the font deduplication logic to correctly handle multiple width variants.

**[PR #685](https://github.com/flutter/genui/pull/685) (flutter/genui): Upgrade primitives.**
  * **Comments:** 0
  * Upgrades the `genai_primitives` package from version 0.1.0 to 0.2.0, which includes renaming `BasePart` to `Part` in `ImagePart`, `UiPart`, and `UiInteractionPart` classes to align with the updated primitive types.


# GitHub PR Report for dart-lang/ai
## From 2026-01-23 to 2026-01-25

This update primarily addresses an issue related to the `mcp_server`'s operation within a sandboxed environment. Specifically, [Issue #339](https://github.com/dart-lang/ai/issues/339) documented a failure where the Dart `mcp_server` was unable to initialize when running inside the `codex` sandbox, due to its attempts to write to files outside the permitted workspace, violating `codex`'s write restrictions. No pull requests were merged during this period.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #339](https://github.com/dart-lang/ai/issues/339): mcp_server fails under codes when it tries to write engine.stamp
* **Author:** [bsutton](https://github.com/bsutton)
* The Dart mcp_server fails to start within the `codex` sandbox because it attempts to write to files like `/home/bsutton/apps/flutter/bin/cache/engine.stamp` and telemetry logs outside the sandboxed workspace, which violates `codex`'s write restrictions, preventing the server from initializing.


# GitHub PR Report for dart-lang/sdk
## From 2026-01-23 to 2026-01-25

The repository saw several key improvements focused on addressing language feature correctness and tooling reliability. A significant bug impacting `const` canonicalization in JavaScript output, which led to inconsistencies based on constructor usage and property order, has been resolved ([Issue #30876]), ensuring more predictable behavior for constant expressions. Additionally, two issues within the refactoring tooling were addressed: one enabling the `convert_to_initializing_formal.dart` refactoring to correctly handle private named parameters ([Issue #62480]), and another fixing the "Convert all formal to named parameters" refactoring, which previously generated incorrect code for private fields ([Issue #62284]). Finally, a Dart Development Compiler (DDC) testing issue related to newline handling in raw strings on Windows Chrome was resolved ([Issue #30336]), enhancing cross-platform test stability.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62480](https://github.com/dart-lang/sdk/issues/62480): Update convert_to_initializing_formal.dart to handle private named parameters
* **Author:** [munificent](https://github.com/munificent)

### [Issue #62284](https://github.com/dart-lang/sdk/issues/62284): Convert all formal to named parameters produces bad code
* **Author:** [stephane-archer](https://github.com/stephane-archer)
* The "Convert all formal to named parameters" refactoring incorrectly generates code using `required this._fieldName` for parameters, rather than creating proper named parameters and initializing the private fields in the constructor's initializer list.

### [Issue #30876](https://github.com/dart-lang/sdk/issues/30876): const canonicalization depends on which constructor is used
* **Author:** [jmesserly](https://github.com/jmesserly)
* Constant canonicalization in JavaScript is inconsistent because it depends on constructor usage and varying property order, leading to failures in `compile_time_constant_d_test` and `compile_time_constant_e_test`, and can be fixed by enforcing consistent field ordering or using a structural equality hashing approach.

### [Issue #30336](https://github.com/dart-lang/sdk/issues/30336): DDC fails on Windows Chrome test for raw strings/newlines
* **Author:** [whesse](https://github.com/whesse)
* Dart Development Compiler (DDC) tests for multiline and raw strings are failing on Windows Chrome because the tests expect Unix-style newlines (LF) while Windows produces CRLF newlines.


# GitHub PR Report for dart-lang/language
## From 2026-01-23 to 2026-01-25

There were no pull requests merged and no issues closed during this period, indicating no changes were made to the repository's codebase or outstanding issues.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2026-01-23 to 2026-01-25

No pull requests were merged and no issues were closed during this reported period, indicating no recent changes to the repository's codebase or public API surface.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/ai
## From 2026-01-23 to 2026-01-25

There were no pull requests merged or issues closed during this time, indicating no changes were made to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2026-01-23 to 2026-01-25

During this period, no pull requests were merged and no issues were closed, indicating that there were no significant changes or updates to the repository's codebase or outstanding tasks.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2026-01-23 to 2026-01-25

This update introduces significant improvements across Flutter's UI components, underlying rendering engine, and developer tooling. A major enhancement addresses a long-standing community request by refactoring `CupertinoSheetRoute` ([#177337]) to allow seamless integration of nested scrolling with the drag-to-dismiss gesture, resolving the behavior outlined in [#161687]. The public API surface also saw important refinements, including the **reversion of a breaking change** to `DropdownMenu` and `DropdownMenuFormField` ([#181074]) that now permits nullable generic type parameters, enabling clearer selections as discussed in [#180121]. Accessibility is improved with the addition of a `semanticsLabel` property to `BottomNavigationBarItem` ([#180577]), providing more granular control for screen readers as proposed in [#180621]. Further API usability changes include a new `toggle` method for `ExpansibleController` ([#181320], requested in [#181319]) and making the `topGap` parameter optional for `CupertinoSheetTransition` ([#181269]). Leveraging modern **Dart 3 language features**, internal code like `Typography._withPlatform` ([#181398]) has been refactored to use switch expressions, and data-driven `Color` fix rules are now more broadly applied by activating for `dart:ui` imports ([#181093]), a fix suggested in [#180933]. The Impeller rendering engine received critical fixes, resolving issues with **perspective clips** ([#181434]) and interpolation errors in `Rect::TransformAndClipBounds` ([#181420]), alongside making dynamically created shader metadata consistent ([#181201]) and re-enabling Vulkan shader tests by correcting an endianness bug ([#181292]). Core framework stability is bolstered by fixes for memory leaks in `flutter_test` ([#180879]) and ensuring `TextFormField.reset()` reliably restores its initial value even after state changes ([#181199]), addressing issues like [#104975] and [#180056]. On the tooling and platform front, a crucial fix ensures macOS `App.framework` is correctly codesigned when Swift Package Manager is enabled ([#181348], resolving [#181056]), Flutter now supports newer Kotlin Gradle Plugin and Android Gradle Plugin versions ([#181325], fulfilling [#181228]), and feature flag manifests are correctly located when `flutter_tools` is run from a subdirectory ([#180689], closing [#176294]).

## Merged Pull Requests

### [PR #181434](https://github.com/flutter/flutter/pull/181434): [Impeller] Fix perspective clips with a large perspective bias
* **Author:** [flar](https://github.com/flar)
* **Merged At:** 2026-01-23 10:15 PM
* **Comments:** 0
* Fixes an issue in Impeller's clip vertex shader where precomputing perspective adjustments prevented the GPU from performing correct perspective clipping. This change modifies `clip.vert` to set `gl_Position.z` relative to `w`, ensuring proper clipping, and adds a new `PerspectiveRectangle` test case to verify the fix.

### [PR #181420](https://github.com/flutter/flutter/pull/181420): [Impeller] Fix interpolation error in Rect::TransformAndClipBounds
* **Author:** [flar](https://github.com/flar)
* **Merged At:** 2026-01-23 04:39 PM
* **Comments:** 1
* Fixes an interpolation error in Impeller's `Rect::TransformAndClipBounds` method. Previously, points transformed "behind the camera" (W<0) were incorrectly interpolated, leading to inaccurate bounding box calculations for perspective transforms. This change corrects the interpolation formula to ensure these points are properly handled when determining visible bounds.

### [PR #181407](https://github.com/flutter/flutter/pull/181407): Add changlog entry for 3.38.8
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2026-01-23 11:43 AM
* **Comments:** 2
* Adds a changelog entry for Flutter version 3.38.8, documenting a fix for a `flutter run -d chrome` crash that occurred when the application shut down during its startup sequence.

### [PR #181401](https://github.com/flutter/flutter/pull/181401): Adds contents of keys file when a skia gold error occurs.
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2026-01-23 01:39 PM
* **Comments:** 1
* Adds the contents of the `keys` JSON file to the error message displayed when Skia Gold image test initialization fails, which will help debug test flakes like #181399.

### [PR #181398](https://github.com/flutter/flutter/pull/181398): [Material] modernize Typography._withPlatform with Dart 3 switch expression
* **Author:** [Enderjua](https://github.com/Enderjua)
* **Merged At:** 2026-01-23 02:06 PM
* **Comments:** 2
* Modernizes the `Typography._withPlatform` method by refactoring its platform-specific theme assignments to use Dart 3's switch expression and record patterns, grouping platforms like Android and Fuchsia for cleaner code without changing the underlying logic.

### [PR #181348](https://github.com/flutter/flutter/pull/181348): Fixes macOS App.framework not being codesigned or find framework
* **Author:** [vashworth](https://github.com/vashworth)
* **Merged At:** 2026-01-22 04:52 PM
* **Comments:** 2
* This PR fixes a bug on macOS where `App.framework` was not being correctly codesigned when Swift Package Manager was enabled for Flutter, ensuring that the framework is now properly embedded and signed regardless of SwiftPM usage.

### [PR #181339](https://github.com/flutter/flutter/pull/181339): No longer exiting the application when the RegularWindow is destroyed + resolving the window created promise after runWidget
* **Author:** [mattkae](https://github.com/mattkae)
* **Merged At:** 2026-01-23 06:38 AM
* **Comments:** 0
* This change prevents the application from exiting prematurely when a `RegularWindow` is destroyed and resolves the `windowCreated` promise after `runWidget`, ensuring the window is fully initialized, which fixes issue #177715.

### [PR #181336](https://github.com/flutter/flutter/pull/181336): Reland hybrid views test
* **Author:** [gmackall](https://github.com/gmackall)
* **Merged At:** 2026-01-22 07:00 PM
* **Comments:** 1
* Relands the `hybrid_android_views_integration_test` which was previously mistakenly deleted, to cover critical functionality for Android hybrid views such as alert dialog popups and the preservation of motion event types, ensuring synthesized motion events match those originally hitting the FlutterView.

### [PR #181335](https://github.com/flutter/flutter/pull/181335): [ Tool ] Fix `update-packages` failing due to mismatched dependencies between flutter_tools and the framework
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2026-01-22 05:32 PM
* **Comments:** 0
* This fixes the `update-packages` tool in `flutter_tools` by ensuring that `flutter_tools`'s package dependencies are explicitly pinned to match the Flutter SDK's versions, preventing failures caused by dependency mismatches when updating projects that depend on both.

### [PR #181325](https://github.com/flutter/flutter/pull/181325): bump KGP and AGP max known versions
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-23 10:04 AM
* **Comments:** 0
* Bumps the maximum known and supported versions for the Kotlin Gradle Plugin (KGP) to 2.3.0 and the Android Gradle Plugin (AGP) with full Kotlin support to 8.13.0, updating Flutter's tooling to correctly validate these newer plugin versions and adjusting test cases accordingly.

### [PR #181320](https://github.com/flutter/flutter/pull/181320): Add ExpansibleController.toggle method.
* **Author:** [ksokolovskyi](https://github.com/ksokolovskyi)
* **Merged At:** 2026-01-22 04:07 PM
* **Comments:** 0
* Adds a `toggle` method to `ExpansibleController`, allowing developers to easily switch an `Expansible` widget between its expanded and collapsed states, which addresses issue #181319.

### [PR #181292](https://github.com/flutter/flutter/pull/181292): Re-enable fragment_shader_tests.dart 'Shader Compiler appropriately pads vec3 uniform arrays' test on Vulkan
* **Author:** [b-luk](https://github.com/b-luk)
* **Merged At:** 2026-01-22 05:51 PM
* **Comments:** 1
* Re-enables the `Shader Compiler appropriately pads vec3 uniform arrays` test for Vulkan, correcting the uniform array indexing and skipping it for Metal due to an unresolved platform-specific padding issue. This PR also fixes a bug in `_expectShaderRendersColor` that caused incorrect pixel color comparisons by misinterpreting byte order due to endianness, a flaw previously masked by the tests' specifics.

### [PR #181269](https://github.com/flutter/flutter/pull/181269): Make topGap not required for CupertinoSheetTransition
* **Author:** [MitchellGoodwin](https://github.com/MitchellGoodwin)
* **Merged At:** 2026-01-22 10:46 PM
* **Comments:** 1
* Removes the `required` constraint from the `topGap` parameter in `CupertinoSheetTransition`, providing a default value of 0.08 to fix an accidental breaking change introduced in a previous PR.

### [PR #181249](https://github.com/flutter/flutter/pull/181249): Remove unnecessary Material import from dialog_test.dart
* **Author:** [kazbeksultanov](https://github.com/kazbeksultanov)
* **Merged At:** 2026-01-23 04:56 AM
* **Comments:** 1
* Removes the unnecessary `material.dart` import from `cupertino/dialog_test.dart` by replacing `Colors.red` with a hex `Color` value, ensuring the test is purely Cupertino-specific and does not depend on the Material design library.

### [PR #181248](https://github.com/flutter/flutter/pull/181248): Remove unnecessary Material import from sliver_visibility_test
* **Author:** [kazbeksultanov](https://github.com/kazbeksultanov)
* **Merged At:** 2026-01-22 11:43 PM
* **Comments:** 0
* Removes the unnecessary `Material` import and `DefaultMaterialLocalizations.delegate` from `sliver_visibility_test.dart`, as the test only requires widgets-level components and localization, contributing to the decoupling of Material from the core framework.

### [PR #181201](https://github.com/flutter/flutter/pull/181201): [Impeller] Make dynamically created shader metadata for runtime effects consistent with metadata for built-in shaders
* **Author:** [jason-simmons](https://github.com/jason-simmons)
* **Merged At:** 2026-01-22 05:16 PM
* **Comments:** 1
* This PR updates Impeller's dynamic shader metadata generation for runtime effects to correctly calculate the total `byte_length` for uniform arrays and to properly interpret an unspecified `array_elements` value as a scalar, aligning its behavior with metadata for built-in shaders.

### [PR #181199](https://github.com/flutter/flutter/pull/181199): Reset TextFormField to initial value after state change
* **Author:** [Mairramer](https://github.com/Mairramer)
* **Merged At:** 2026-01-23 03:41 AM
* **Comments:** 0
* Fixes an issue where `TextFormField`'s `reset()` method would not correctly restore its initial value, particularly when a `TextEditingController` was provided or after `setState`, by ensuring the effective initial text is correctly cached and used for resetting.

### [PR #181139](https://github.com/flutter/flutter/pull/181139): Roll Fuchsia GN SDK from NAEC5tfgSl8g94nwp... to JLBh4Z9PKsjIJcqDU...
* **Author:** [sutes-work](https://github.com/sutes-work)
* **Merged At:** 2026-01-22 04:34 PM
* **Comments:** 1
* Rolls the Fuchsia GN SDK to a new version, resolving a previously blocking issue. This was achieved by migrating the Fuchsia logging implementation from custom FML components to the new `syslog_cpp` API provided by the updated SDK.

### [PR #181093](https://github.com/flutter/flutter/pull/181093): Broaden the applicability of `Color` fix_data rules from flutter/painting.dart
* **Author:** [b-luk](https://github.com/b-luk)
* **Merged At:** 2026-01-22 05:08 PM
* **Comments:** 5
* Broadens the applicability of `Color` data-driven fixes (like renaming `withOpacity` to `withValues`) by making them active for users who import `dart:ui` or any Flutter package that re-exports `Color`, rather than requiring a specific import of `flutter/painting.dart`.

### [PR #181074](https://github.com/flutter/flutter/pull/181074): Revert DropdownMenu non-nullable breaking change
* **Author:** [Gustl22](https://github.com/Gustl22)
* **Merged At:** 2026-01-22 06:45 PM
* **Comments:** 4
* Reverts a previous breaking change by allowing `DropdownMenu` and `DropdownMenuFormField` to have nullable generic type parameters, enabling developers to use `null` as a valid selection for menu entries and clear selections.

### [PR #180879](https://github.com/flutter/flutter/pull/180879): Fix leaks in `flutter_test` tests
* **Author:** [dkwingsmt](https://github.com/dkwingsmt)
* **Merged At:** 2026-01-22 06:04 PM
* **Comments:** 3
* Fixes memory leaks in `flutter_test` tests by adding a `resetLayers` method to `TestWidgetsFlutterBinding` that disposes root render layers and resets view configurations between tests. It also adds explicit `addTearDown` calls for various disposable test resources, such as controllers, recognizers, and images, to ensure proper cleanup.

### [PR #180689](https://github.com/flutter/flutter/pull/180689): Look for project root for FeatureFlags manifest
* **Author:** [Albert221](https://github.com/Albert221)
* **Merged At:** 2026-01-23 08:24 AM
* **Comments:** 0
* Updates the `FeatureFlags` service to find its `pubspec.yaml` manifest by looking for the project root, which ensures correct feature flag parsing when running `flutter_tools` from a subdirectory.

### [PR #180577](https://github.com/flutter/flutter/pull/180577): Add bottom navigation bar item semantics label
* **Author:** [Lilian-C](https://github.com/Lilian-C)
* **Merged At:** 2026-01-22 11:43 PM
* **Comments:** 3
* Adds a `semanticsLabel` property to `BottomNavigationBarItem` which allows developers to provide a custom accessibility label that overrides the visual `label` for screen readers, improving accessibility for bottom navigation bar items in both Material and Cupertino designs.

### 🔥🔥🔥 [PR #177337](https://github.com/flutter/flutter/pull/177337): CupertinoSheetRoute with scrolling and dragging
* **Author:** [MitchellGoodwin](https://github.com/MitchellGoodwin)
* **Merged At:** 2026-01-23 01:51 PM
* **Comments:** 12
* Refactors `CupertinoSheetRoute` and `showCupertinoSheet` by replacing the `builder` parameter with a `scrollableBuilder` that provides a `ScrollController`, enabling scrollable content within a sheet to work cooperatively with its drag-to-dismiss gesture, triggering dismissal only when the content is at the top of its scroll extent.


## Closed Issues

### [Issue #181456](https://github.com/flutter/flutter/issues/181456): [google_sign_in] idToken verification failed
* **Author:** [coder-shanta](https://github.com/coder-shanta)
* The `google_sign_in` plugin's `attemptLightweightAuthentication()` method provides an `idToken` that fails verification on the backend with an "invalid_token" error when sent to the `https://oauth2.googleapis.com/tokeninfo` endpoint.

### [Issue #181426](https://github.com/flutter/flutter/issues/181426): linux-73 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The `linux-73` system has lost its external connection from a phone device.

### [Issue #181418](https://github.com/flutter/flutter/issues/181418): win-3 marked dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The component "win-3" has been marked as dead.

### [Issue #181397](https://github.com/flutter/flutter/issues/181397): win-2 in quarantined state because the local Temp directory exceeded 1024 files.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The `win-2` machine is quarantined because its local Temp directory exceeded 1024 files, preventing it from functioning.

### [Issue #181396](https://github.com/flutter/flutter/issues/181396): linux-8 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* A linux-8 device lost its external connection from a phone, with an accompanying screenshot, but the severity of the issue is not yet classified.

### [Issue #181395](https://github.com/flutter/flutter/issues/181395): mac-37 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* A user reported that mac-37 lost its external connection from the phone device, providing a screenshot to illustrate the issue.

### [Issue #181394](https://github.com/flutter/flutter/issues/181394): gcp logs filled with "Requested unexpected action: created"
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* Logs are noisy due to a `log.warn` for "Requested unexpected action: created" being triggered unexpectedly, and it's suggested to downgrade this to a `log.debug` to reduce log spam.

### [Issue #181374](https://github.com/flutter/flutter/issues/181374): [tool_crash] FileSystemException: Cannot create link, OS Error: File exists, errno = 17
* **Author:** [jaanus](https://github.com/jaanus)
* The `flutter pub add` command crashed with a `FileSystemException: Cannot create link, OS Error: File exists` on macOS, occurring once during Swift Package Manager processing when adding a package, but the issue is not reproducible.

### [Issue #181355](https://github.com/flutter/flutter/issues/181355): linux-1 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The linux-1 device lost its external connection to a phone, hindering its functionality.

### [Issue #181319](https://github.com/flutter/flutter/issues/181319): Add toggle method to ExpansibleController.
* **Author:** [ksokolovskyi](https://github.com/ksokolovskyi)
* **Reactions:** **1** -- 👍 1
* The `ExpansibleController` currently lacks a `toggle` method, requiring users to write conditional logic to switch between expanded and collapsed states, so a `toggle()` method is proposed to simplify this operation to a single call.

### [Issue #181228](https://github.com/flutter/flutter/issues/181228): Bump max known KGP to 2.3.0 and AGP to match
* **Author:** [jmagman](https://github.com/jmagman)
* **Reactions:** **1** -- 👍 1
* This issue aims to update the maximum known Kotlin Gradle Plugin (KGP) version to 2.3.0 and the corresponding Android Gradle Plugin (AGP) version for full Kotlin support to 8.13.0, aligning with the latest KGP release.

### [Issue #181182](https://github.com/flutter/flutter/issues/181182): [Fatal Crash] Null check operator used on a Null Value on StatefulElement.state  in framework.dart
* **Author:** [maheshj01](https://github.com/maheshj01)
* A Flutter application crashes with a fatal `Null check operator used on a Null Value on StatefulElement.state` error in `framework.dart` after upgrading to Flutter stable release 3.38.5, with the stack trace pointing to navigation-related calls and an asynchronous operation in the user's `AppModel`.

### [Issue #181056](https://github.com/flutter/flutter/issues/181056): Flutter/Packages "Mac_arm64 macos_platform_tests master" codesign failure
* **Author:** [tarrinneal](https://github.com/tarrinneal)
* A codesign task is failing in the "Mac_arm64 macos_platform_tests master" test for Flutter packages, preventing the Flutter-to-packages roller from landing, which is categorized as a breakage with no workarounds.

### [Issue #180933](https://github.com/flutter/flutter/issues/180933): Add dart fix for withOpacity deprecation to engine
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Reactions:** **2** -- 👍 1 ❤️ 1
* The existing `dart fix` for `withOpacity()` migrations to `withValues(alpha:)` is ineffective due to import constraints and needs to be moved into the engine to function correctly for all users.

### [Issue #180801](https://github.com/flutter/flutter/issues/180801): Null check operator used on null value in Context._embedNativeAssets
* **Author:** [bniladridas](https://github.com/bniladridas)
* Building a Flutter app on macOS fails with a "Null check operator used on a null value" error in `Context._embedNativeAssets` (`xcode_backend.dart`) when the `firebase_crashlytics` package is included, likely due to native assets handling.

### [Issue #180621](https://github.com/flutter/flutter/issues/180621): Add a semanticsLabel for the BottomNavigationBarItem
* **Author:** [Lilian-C](https://github.com/Lilian-C)
* The `BottomNavigationBarItem`'s `label` property currently serves both visual display and accessibility, which limits providing additional context for screen readers; the proposal is to add a dedicated `semanticsLabel` property to address this.

### [Issue #180503](https://github.com/flutter/flutter/issues/180503): Many outdated dependencies - is the pub autoroller working correctly?
* **Author:** [goderbauer](https://github.com/goderbauer)
* Many direct dependencies in the Flutter repo are reported as outdated by `flutter pub outdated`, raising concerns about whether the `pub autoroller` is correctly identifying and updating these packages as expected.

### [Issue #180333](https://github.com/flutter/flutter/issues/180333): Missing `Momo Trust Display` font
* **Author:** [AbdSattout](https://github.com/AbdSattout)

### [Issue #180121](https://github.com/flutter/flutter/issues/180121): Non-nullable DropdownMenu is breaking change
* **Author:** [Gustl22](https://github.com/Gustl22)
* The recent change in Flutter 3.39.0-0.1.pre making `DropdownMenu` non-nullable is a breaking change that prevents using `null` for empty selections, and the user suggests reverting the change, preventing breakage, or providing a migration guide.

### [Issue #180068](https://github.com/flutter/flutter/issues/180068): [shader] uniform vec4 array in Android emulator
* **Author:** [lesaff-r](https://github.com/lesaff-r)
* **Reactions:** **1** -- 👍 1
* On Android emulators with the Impeller (OpenGLES) rendering backend, setting a `uniform vec4 array` in a fragment shader using `shader.setFloat` results in each `setFloat` call incorrectly assigning values only to the `r/x` component of successive `vec4` array elements, instead of filling the `r,g,b,a` components of a single `vec4`.

### [Issue #180056](https://github.com/flutter/flutter/issues/180056): `FormState.reset()` doesn't reset `TextFormField` if its parent rebuilds
* **Author:** [Flamingloon](https://github.com/Flamingloon)
* `FormState.reset()` fails to reset a `TextFormField` to its initial value if its parent widget rebuilds after the text field's value has been updated, such as by calling `setState` in `onChanged`.

### [Issue #177715](https://github.com/flutter/flutter/issues/177715): Windows windowing_test is 5.00% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* The `Windows windowing_test` post-submit builder has a 5.00% flaky ratio, exceeding the 2.00% threshold, and requires investigation and a fix.

### [Issue #176935](https://github.com/flutter/flutter/issues/176935): Upgrade remaining devicelab bots in each pool to macOS 15.7.1
* **Author:** [vashworth](https://github.com/vashworth)
* This infrastructure task involves upgrading all remaining Devicelab bots across the Try, Staging, and Prod pools, covering various iOS and Android architectures, to macOS 15.7.1.

### [Issue #176294](https://github.com/flutter/flutter/issues/176294): Flutter CLI ignores pubspec's Flutter features config (like SwiftPM) if current dir is not app's root
* **Author:** [Albert221](https://github.com/Albert221)
* **Reactions:** **4** -- 👍 4
* The Flutter CLI incorrectly ignores `pubspec.yaml` feature configurations, such as `enable-swift-package-manager: false`, when `flutter pub get` is executed from a subdirectory within an app's project instead of the root directory, leading to unexpected dependency fetching behavior like switching from CocoaPods to SwiftPM for FirebaseCore.

### [Issue #173104](https://github.com/flutter/flutter/issues/173104): ListView under a Transform breaks for some perspective values
* **Author:** [FufferKS](https://github.com/FufferKS)
* **Reactions:** **5** -- 👍 5
* A `ListView` wrapped in a `Transform` with certain perspective values (e.g., `Matrix4.setEntry(3,1, -0.003)`) causes its content to disappear, as shown in the provided code sample and video, with `yScale` exacerbating the issue.

### [Issue #161687](https://github.com/flutter/flutter/issues/161687): Cupertino Sheet should have drag to dismiss and nested scrolling work together
* **Author:** [MitchellGoodwin](https://github.com/MitchellGoodwin)
* **Reactions:** **32** -- 👍 30 👀 2
* Flutter's Cupertino Sheet currently cannot seamlessly combine nested scrolling with drag-to-dismiss behavior like native iOS sheets; it prioritizes one gesture over the other and cannot switch between them during a single drag event.

### [Issue #161460](https://github.com/flutter/flutter/issues/161460): Flutter Notable Commits - 2025
* **Author:** [Piinks](https://github.com/Piinks)
* **Reactions:** **2** -- ❤️ 1 🚀 1
* This issue serves as a placeholder and entry point for Flutter's "Notable Commits" for the year 2025, which are weekly curated lists of significant pull requests aimed at celebrating progress and contributions from both the Framework team and the wider developer community across Flutter repositories.

### [Issue #104975](https://github.com/flutter/flutter/issues/104975): TextFormField reset works only for the first time
* **Author:** [ghost](https://github.com/ghost)
* **Reactions:** **3** -- 👀 3
* When using `_formKey.currentState?.reset()` to clear a `TextFormField` that has a `TextEditingController`, the reset operation only succeeds the first time it's invoked, failing to clear the input on subsequent attempts.


# GitHub PR Report for flutter/genui
## From 2026-01-23 to 2026-01-25

The repository received an important update focused on its underlying primitive types. Specifically, the `genai_primitives` package was upgraded from version 0.1.0 to 0.2.0, as documented in [PR #685](https://github.com/flutter/genui/pull/685). This upgrade introduced a notable change to the public API surface by renaming `BasePart` to `Part` within the `ImagePart`, `UiPart`, and `UiInteractionPart` classes. This renaming ensures alignment with updated primitive types, standardizing the terminology across key components of the system.

## Merged Pull Requests

### [PR #685](https://github.com/flutter/genui/pull/685): Upgrade primitives.
* **Author:** [polina-c](https://github.com/polina-c)
* **Merged At:** 2026-01-23 02:28 PM
* **Comments:** 0
* Upgrades the `genai_primitives` package from version 0.1.0 to 0.2.0, which includes renaming `BasePart` to `Part` in `ImagePart`, `UiPart`, and `UiInteractionPart` classes to align with the updated primitive types.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2026-01-23 to 2026-01-25

The repository's primary update revolved around a significant overhaul of the `google_fonts` package. This change, detailed in [PR #10785](https://github.com/flutter/packages/pull/10785), brought the package to version 8.0.0, introducing a substantial number of new fonts and removing several deprecated or replaced options, directly impacting the public API surface for font selection. Additionally, the update refined the font deduplication logic, improving its ability to correctly handle multiple width variants, which enhances the reliability and flexibility of font usage within applications.

## Merged Pull Requests

### [PR #10785](https://github.com/flutter/packages/pull/10785): [google_fonts] Update to v8.0.0 with new and removed fonts
* **Author:** [guidezpl](https://github.com/guidezpl)
* **Merged At:** 2026-01-23 01:36 AM
* **Comments:** 2
* Updates the `google_fonts` package to version 8.0.0, adding support for numerous new fonts and removing several deprecated or replaced ones, and refines the font deduplication logic to correctly handle multiple width variants.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2026-01-23 to 2026-01-25

There were no pull requests merged or issues closed during this period, indicating no changes were introduced to the repository's codebase or outstanding items resolved.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2026-01-23 to 2026-01-25

The recent updates to the repository primarily focused on enhancing documentation and developer experience, particularly regarding native code integration within Flutter modules. A significant pull request ([PR #12968](https://github.com/flutter/website/pull/12968)) updated the 'add-to-app' Android documentation to clarify that the `.android` folder in Flutter modules is ephemeral and should not be used for custom native code, instead advising placement in Flutter plugins or the host application. This directly addresses challenges highlighted by users, such as in [Issue #12960](https://github.com/flutter/website/issues/12960), which detailed difficulties integrating native Kotlin Android code and the loss of custom changes, leading to requests for clearer documentation and feature enhancements like module language selection. Further efforts involved general documentation improvements, including addressing content clarity on specific pages ([Issue #12972](https://github.com/flutter/website/issues/12972)) and administrative content requests ([Issue #12973](https://github.com/flutter/website/issues/12973)). Additionally, a minor front-end improvement was made to the website itself, making stepper titles selectable ([PR #12977](https://github.com/flutter/website/pull/12977)).

## Merged Pull Requests

### [PR #12977](https://github.com/flutter/website/pull/12977): make stepper titles selectable
* **Author:** [schultek](https://github.com/schultek)
* **Merged At:** 2026-01-23 09:45 AM
* **Comments:** 2
* Fixes an issue where non-collapsible stepper titles were not selectable by explicitly setting the `user-select` CSS property to `initial`.

### [PR #12968](https://github.com/flutter/website/pull/12968): Docs: Clarify native code placement in Flutter modules
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-23 09:45 AM
* **Comments:** 2
* This PR updates the Flutter 'add-to-app' Android documentation to clarify that the `.android` folder within a Flutter module is ephemeral and auto-generated, explicitly advising developers to place custom native code in Flutter plugins or the host Android application instead.


## Closed Issues

### [Issue #12973](https://github.com/flutter/website/issues/12973): Administration
* **Author:** [loujane0103-tech](https://github.com/loujane0103-tech)
* The user wants to remove a group from the Flutter documentation page at https://docs.flutter.dev/ui/widgets.

### [Issue #12972](https://github.com/flutter/website/issues/12972): .
* **Author:** [handsomegirl4566-blip](https://github.com/handsomegirl4566-blip)
* The Flutter documentation page `ai/mcp-server` is reported to have content that is not concise and is difficult to understand, with a request for the text to be summarized and made more helpful, and the submitter indicates they will try to fix this problem.

### [Issue #12960](https://github.com/flutter/website/issues/12960): GENERATING AAR USING PROJCT TYPE MODULE.
* **Author:** [ajaypuranapanda](https://github.com/ajaypuranapanda)
* The user is encountering issues when integrating native Kotlin Android code into Flutter projects created as modules, as the modules are always Java-based and custom changes in the `.android` folder are lost after `flutter clean`; they are requesting documentation or a feature to select the module language (Kotlin/Java for Android, Swift/Obj-C for iOS) and clear steps for integrating native code into Flutter module-based projects.



## Top Hacker News Stories

### 99  [Qwen3-Max-Thinking](https://qwen.ai/blog?id=qwen3-max-thinking)
* **Author:** [vinhnx](https://news.ycombinator.com/user?id=vinhnx) | **Comments:** [22](https://news.ycombinator.com/item?id=46766741)

### 265 🔥🔥 [MapLibre Tile: a modern and efficient vector tile format](https://maplibre.org/news/2026-01-23-mlt-release/)
* **Author:** [todsacerdoti](https://news.ycombinator.com/user?id=todsacerdoti) | **Comments:** [61](https://news.ycombinator.com/item?id=46763864)

### 316 🔥🔥 [After two years of vibecoding, I'm back to writing by hand](https://atmoio.substack.com/p/after-two-years-of-vibecoding-im)
* **Author:** [mobitar](https://news.ycombinator.com/user?id=mobitar) | **Comments:** [151](https://news.ycombinator.com/item?id=46765460)

### 28  [OSS ChatGPT WebUI – 530 Models, MCP, Tools, Gemini RAG, Image/Audio Gen](https://llmspy.org/docs/v3)
* **Author:** [mythz](https://news.ycombinator.com/user?id=mythz) | **Comments:** [0](https://news.ycombinator.com/item?id=46766432)

### 18  [OracleGPT: Thought Experiment on an AI Powered Executive](https://senteguard.com/blog/#post-7fYcaQrAcfsldmSb7zVM)
* **Author:** [djwide](https://news.ycombinator.com/user?id=djwide) | **Comments:** [10](https://news.ycombinator.com/item?id=46766507)

### 34  [Exactitude in Science – Borges (1946) [pdf]](https://kwarc.info/teaching/TDM/Borges.pdf)
* **Author:** [jxmorris12](https://news.ycombinator.com/user?id=jxmorris12) | **Comments:** [10](https://news.ycombinator.com/item?id=46766229)

### 6  [What "The Best" Looks Like](https://www.kuril.in/blog/what-the-best-looks-like/)
* **Author:** [akurilin](https://news.ycombinator.com/user?id=akurilin) | **Comments:** [1](https://news.ycombinator.com/item?id=46767323)

### 105 🔥 [Google AI Overviews cite YouTube more than any medical site for health queries](https://www.theguardian.com/technology/2026/jan/24/google-ai-overviews-youtube-medical-citations-study)
* **Author:** [bookofjoe](https://news.ycombinator.com/user?id=bookofjoe) | **Comments:** [59](https://news.ycombinator.com/item?id=46766031)

### 81  [Porting 100k lines from TypeScript to Rust using Claude Code in a month](https://blog.vjeux.com/2026/analysis/porting-100k-lines-from-typescript-to-rust-using-claude-code-in-a-month.html)
* **Author:** [ibobev](https://news.ycombinator.com/user?id=ibobev) | **Comments:** [44](https://news.ycombinator.com/item?id=46765694)

### 353 🔥🔥 [Things I've learned in my 10 years as an engineering manager](https://www.jampa.dev/p/lessons-learned-after-10-years-as)
* **Author:** [jampa](https://news.ycombinator.com/user?id=jampa) | **Comments:** [91](https://news.ycombinator.com/item?id=46709270)

### 151 🔥 [The Holy Grail of Linux Binary Compatibility: Musl and Dlopen](https://github.com/quaadgras/graphics.gd/discussions/242)
* **Author:** [Splizard](https://news.ycombinator.com/user?id=Splizard) | **Comments:** [109](https://news.ycombinator.com/item?id=46762882)

### 63  [Show HN: Only 1 LLM can fly a drone](https://github.com/kxzk/snapbench)
* **Author:** [beigebrucewayne](https://news.ycombinator.com/user?id=beigebrucewayne) | **Comments:** [32](https://news.ycombinator.com/item?id=46764170)

### 259 🔥🔥 [The browser is the sandbox](https://simonwillison.net/2026/Jan/25/the-browser-is-the-sandbox/)
* **Author:** [enos_feedler](https://news.ycombinator.com/user?id=enos_feedler) | **Comments:** [148](https://news.ycombinator.com/item?id=46762150)

### 703 🔥🔥🔥 [First, make me care](https://gwern.net/blog/2026/make-me-care)
* **Author:** [andsoitis](https://news.ycombinator.com/user?id=andsoitis) | **Comments:** [209](https://news.ycombinator.com/item?id=46757067)

### 93  [Text Is King](https://www.experimental-history.com/p/text-is-king)
* **Author:** [zdw](https://news.ycombinator.com/user?id=zdw) | **Comments:** [36](https://news.ycombinator.com/item?id=46698264)

### 52  [TSMC Risk](https://stratechery.com/2026/tsmc-risk/)
* **Author:** [swolpers](https://news.ycombinator.com/user?id=swolpers) | **Comments:** [31](https://news.ycombinator.com/item?id=46764223)

### 27  [Blade Runner Costume Design (2020)](https://costumedesignarchive.blogspot.com/2020/12/blade-runner-1982.html)
* **Author:** [exvi](https://news.ycombinator.com/user?id=exvi) | **Comments:** [5](https://news.ycombinator.com/item?id=46700489)

### 34  [Transfering Files with gRPC](https://kreya.app/blog/transfering-files-with-grpc/)
* **Author:** [CommonGuy](https://news.ycombinator.com/user?id=CommonGuy) | **Comments:** [8](https://news.ycombinator.com/item?id=46765273)

### 7  [QMD - Quick Markdown Search](https://github.com/tobi/qmd)
* **Author:** [saikatsg](https://news.ycombinator.com/user?id=saikatsg) | **Comments:** [1](https://news.ycombinator.com/item?id=46689289)

### 207 🔥 [Vibe coding kills open source](https://arxiv.org/abs/2601.15494)
* **Author:** [kgwgk](https://news.ycombinator.com/user?id=kgwgk) | **Comments:** [176](https://news.ycombinator.com/item?id=46765120)

### 258 🔥🔥 [Scientists identify brain waves that define the limits of 'you'](https://www.sciencealert.com/scientists-identify-brain-waves-that-define-the-limits-of-you)
* **Author:** [mikhael](https://news.ycombinator.com/user?id=mikhael) | **Comments:** [69](https://news.ycombinator.com/item?id=46760099)
* This text provides only a link to an original paper published in Nature Communications, without further explanatory content.

### 648 🔥🔥🔥 [A macOS app that blurs your screen when you slouch](https://github.com/tldev/posturr)
* **Author:** [dnw](https://news.ycombinator.com/user?id=dnw) | **Comments:** [211](https://news.ycombinator.com/item?id=46754944)

### 28  [Wind Chime Length Calculator (2022)](https://www.snyderfamily.com/chimecalcs/)
* **Author:** [hyperific](https://news.ycombinator.com/user?id=hyperific) | **Comments:** [10](https://news.ycombinator.com/item?id=46698456)

### 17  [AI will not replace software engineers (hopefully)](https://medium.com/@sig.segv/ai-will-not-replace-software-engineers-hopefully-84c4f8fc94c0)
* **Author:** [fwef64](https://news.ycombinator.com/user?id=fwef64) | **Comments:** [18](https://news.ycombinator.com/item?id=46766493)

### 206 🔥 [The future of software engineering is SRE](https://swizec.com/blog/the-future-of-software-engineering-is-sre/)
* **Author:** [Swizec](https://news.ycombinator.com/user?id=Swizec) | **Comments:** [103](https://news.ycombinator.com/item?id=46759063)



