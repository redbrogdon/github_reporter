# Overall Summary
Here is your highlights section, focusing on impactful pull requests and closed issues:

**🔥🔥🔥 [PR #2950](https://github.com/dart-lang/native/pull/2950) (dart-lang/native): [record_use] Fix positional argument semantic equality**
  * **Comments:** 6
  * Fixes an issue in the `record_use` package where `CallWithArguments` objects were not correctly compared for semantic equality if they had a different number of positional arguments. The change adds a length check to ensure that `CallWithArguments` with differing positional argument counts are correctly identified as unequal.

**🔥🔥 [Issue #12067](https://github.com/flutter/website/issues/12067) (flutter/website): ☂️ (FWE) "Getting started" landing page + learning pathway**
  * **Reactions:** **3** -- 👍 3
  * This issue outlines the need to create a new "Getting started" landing page at `docs.flutter.dev/learn` and a structured learning pathway for new developers, specifically for FWE (Flutter Web Embedding).

**🔥🔥 [PR #180041](https://github.com/flutter/flutter/pull/180041) (flutter/flutter): Add support for reduced motion/disable animations on the web**
  * **Comments:** 2
  * Adds support for the `prefers-reduced-motion` media query on the web, automatically updating `AccessibilityFeatures` to reduce motion and disable animations. This is implemented via a new `MediaQueryManager` which centralizes handling of all browser media queries, including dark mode and high contrast.

**🔥 [Issue #178600](https://github.com/flutter/flutter/issues/178600) (flutter/flutter): Breaking change on 3.38.1: Overlay.of(context) throws 'No Overlay widget found'**
  * **Reactions:** **3** -- 👍 3
  * Upgrading Flutter from 3.35.7 to 3.38.1 causes `Overlay.of(Get.overlayContext!)` to throw a "No Overlay widget found" error when trying to display a custom `Bubble` overlay, indicating a breaking change in how `Overlay` contexts are accessed or provided, possibly related to the `get` package.

**🔥 [PR #12937](https://github.com/flutter/website/pull/12937) (flutter/website): update overlay breaking change**
  * **Comments:** 2
  * Updates the Flutter breaking change documentation to detail the deprecation of `OverlayPortal.targetsRootOverlay` and the new behavior of `Overlay.of` and `Overlay.maybeOf`, which now respect `LookupBoundary` and will not look up past it, requiring developers to use `findAncestorStateOfType` for wider searches.

**🔥 [PR #12931](https://github.com/flutter/website/pull/12931) (flutter/website): Explain tree shaking of platform checks**
  * **Comments:** 2
  * Adds a new section to the `app-size.md` documentation explaining how the Dart compiler performs tree shaking of platform-specific code when `Platform.is*` checks are used, thus reducing the size of release builds by removing code irrelevant to the target platform.

**🔥 [Issue #62396](https://github.com/dart-lang/sdk/issues/62396) (dart-lang/sdk): "Bad state:: No type:: num" exception with primary constructors**
  * A `Bad state:: No type:: num` exception is thrown in the Dart analyzer when processing a class with a primary constructor that includes a type parameter bounded by `num`, causing the analysis server to crash.

**[PR #180941](https://github.com/flutter/flutter/pull/180941) (flutter/flutter): Skip flaky test on Firefox**
  * **Comments:** 5
  * This PR adds a `skip` condition to a flaky `StyleManager` test, disabling it on Firefox until a specific issue (flutter/flutter#180940) that causes intermittent failures is resolved.

**[PR #12913](https://github.com/flutter/website/pull/12913) (flutter/website): Update developer-experience.md**
  * **Comments:** 7
  * Corrects a grammatical error in `developer-experience.md` by changing "questions to these questions" to "answers to these questions", which improves the clarity of the text.

**[PR #10676](https://github.com/flutter/packages/pull/10676) (flutter/packages): [video_player] Update for UIScene compatibility**
  * **Comments:** 1
  * Updates the `video_player_avfoundation` plugin for iOS to use the registrar's `viewController` instead of the deprecated `keyWindow.rootViewController`, improving `UIScene` compatibility and resolving issue #174416. This change also updates the minimum supported Flutter and Dart SDK versions.


# GitHub PR Report for dart-lang/ai
## From 2026-01-14

No changes were made to the repository's codebase or issue tracker during this period, as no pull requests were merged and no issues were closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2026-01-14

While no pull requests were merged during this period, several critical issues were closed, primarily focusing on enhancing the stability and correctness of the Dart Analysis Server and improving language tooling. A significant number of closures address various crashes and unexpected behaviors within the Analysis Server, particularly those triggered by the use of primary constructors, as seen in issues like "Bad state: No type: num exception" ([#62396](https://github.com/dart-lang/sdk/issues/62396)), "Unhandled parameter type" ([#62390](https://github.com/dart-lang/sdk/issues/62390)), RangeError exceptions ([#62328](https://github.com/dart-lang/sdk/issues/62328)), and general repeated crashes ([#62308](https://github.com/dart-lang/sdk/issues/62308), [#62269](https://github.com/dart-lang/sdk/issues/62269), [#62250](https://github.com/dart-lang/sdk/issues/62250)). Improvements to developer experience include fixing issues with autocompletion, such as "No dot shorthands autocomplete suggestions after OR/AND operators" ([#62406](https://github.com/dart-lang/sdk/issues/62406)) and "No completion between `..`" ([#62397](https://github.com/dart-lang/sdk/issues/62397)), alongside resolving issues related to inlining `async` methods ([#62316](https://github.com/dart-lang/sdk/issues/62316), [#62314](https://github.com/dart-lang/sdk/issues/62314)). Core language runtime stability also saw attention with fixes for FFI test failures on `vm-linux-release-ia32` ([#62410](https://github.com/dart-lang/sdk/issues/62410)) and `gen_snapshot` crashes on Windows ARM64 ([#62370](https://github.com/dart-lang/sdk/issues/62370)), alongside a correction to closure parameter context types ([#62402](https://github.com/dart-lang/sdk/issues/62402)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62410](https://github.com/dart-lang/sdk/issues/62410): ffi/run_isolate_group_run_test fails on vm-linux-release-ia32
* **Author:** [aam](https://github.com/aam)
* The `ffi/run_isolate_group_run_test` is consistently failing with a segmentation fault on `vm-linux-release-ia32` builders, possibly due to commit `eb75c53d95f485fb8307779a5aafe9019ab5b5cd` and crashing within `FooWithFunc` during `testCapturesClassWithDeeplyImmutableClosure`.

### [Issue #62406](https://github.com/dart-lang/sdk/issues/62406): No dot shorthands autocomplete suggestions after OR/AND operators in switch expressions/statements
* **Author:** [Reprevise](https://github.com/Reprevise)
* The dot shorthands autocomplete feature fails to provide suggestions when used after OR (||) or AND (&&) operators within switch expressions and statements, as demonstrated in the provided Dart code example.

### [Issue #62402](https://github.com/dart-lang/sdk/issues/62402): Closure parameters have `Object?` context type when it should be `Null`
* **Author:** [FMorschel](https://github.com/FMorschel)
* In Dart, closure parameters within generic function calls specialized with `Null` are incorrectly given an `Object?` context type instead of `Null`.

### [Issue #62397](https://github.com/dart-lang/sdk/issues/62397): No completion between `..`
* **Author:** [scheglov](https://github.com/scheglov)
* Autocompletion fails when the cursor is positioned directly between an optional chaining operator (`?.`) and a subsequent member access operator (`.`), but works if a space is introduced between them.

### [Issue #62396](https://github.com/dart-lang/sdk/issues/62396): "Bad state:: No type:: num" exception with primary constructors
* **Author:** [DanTup](https://github.com/DanTup)
* A `Bad state:: No type:: num` exception is thrown in the Dart analyzer when processing a class with a primary constructor that includes a type parameter bounded by `num`, causing the analysis server to crash.

### [Issue #62395](https://github.com/dart-lang/sdk/issues/62395): Decide on the target location for a primary constructor in symbol lists
* **Author:** [DanTup](https://github.com/DanTup)
* The issue seeks a decision on whether symbol lists for Dart primary constructors should navigate to the constructor's declaration, its body, or offer two separate entries, as the current behavior of linking to the declaration feels incorrect.

### [Issue #62390](https://github.com/dart-lang/sdk/issues/62390): "Unhandled parameter type: DefaultFormalParameterImpl" in DartUnitOutlineComputer
* **Author:** [DanTup](https://github.com/DanTup)
* Pasting Dart code for primary constructors from the spec, specifically one with a required final String parameter, causes a server crash with a "Bad state: Unhandled parameter type: DefaultFormalParameterImpl" exception in DartUnitOutlineComputer.

### [Issue #62370](https://github.com/dart-lang/sdk/issues/62370): vm/dart/generated/many_fiields_{flat|staggered}_test are crashing on windows arm64
* **Author:** [aam](https://github.com/aam)
* The `many_fields_flat_test` and `many_fields_staggered_test` are crashing on Windows ARM64 during the `gen_snapshot` precompiler step with exit code -1073741571.

### [Issue #62328](https://github.com/dart-lang/sdk/issues/62328): Dart Analysis Server crashes due to RangeError exception
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* The Dart Analysis Server crashes with a `RangeError` exception when processing Dart code that uses primary constructors, a crash that is resolved by refactoring to use a traditional constructor.

### [Issue #62316](https://github.com/dart-lang/sdk/issues/62316): simple inline fail
* **Author:** [stephane-archer](https://github.com/stephane-archer)
* Attempting to inline the `async` method `pickFCPLibrariesPaths`, which returns a `Future`, fails because the target `getSelectedPath` function does not return a `Future`, resulting in a "Can't inline an 'async' method into a function that doesn't return a 'Future'." error.

### [Issue #62314](https://github.com/dart-lang/sdk/issues/62314): `Can't inline an 'async' method into a function that doesn't return a 'Future'.` but it should
* **Author:** [stephane-archer](https://github.com/stephane-archer)
* An `async` method returning `Future<void>` initially failed to inline with an error claiming the target function doesn't return a `Future`, but successfully inlined after being converted to an expression body, suggesting the error message might be incorrect or there's an unexpected behavior based on method syntax.

### [Issue #62308](https://github.com/dart-lang/sdk/issues/62308): The Dart Analysis Server crashed 3 times in the last 3 minutes and will not restart. Please file an issue on GitHub with any error from the end of the log.
* **Author:** [minhhieuks1801](https://github.com/minhhieuks1801)
* The Dart Analysis Server repeatedly crashed three times in three minutes and will not restart, prompting a request to file a GitHub issue with errors from the end of the log.

### [Issue #62297](https://github.com/dart-lang/sdk/issues/62297): Remove built_value dependency from ErrorResponse
* **Author:** [jyameo](https://github.com/jyameo)

### [Issue #62269](https://github.com/dart-lang/sdk/issues/62269): The Dart Analyzer has terminated
* **Author:** [RamyMontasser](https://github.com/RamyMontasser)
* The Dart Analyzer has terminated, and the issue creator needs to provide further details, including a problem description, expected behavior, reproduction steps, and their Dart SDK version.

### [Issue #62250](https://github.com/dart-lang/sdk/issues/62250): Something Happened
* **Author:** [Savior5130](https://github.com/Savior5130)
* After running `dart fix --apply` with Flutter 3.35.6 and Dart SDK 3.9, the user encountered an internal error from the Analysis Server, reporting a "Bad state: Missing a visit method for a node of type NullAwareElementImpl" during AST traversal, potentially related to the `use_build_context_synchronously` linter rule.


# GitHub PR Report for dart-lang/language
## From 2026-01-14

During this period, there were no pull requests merged and no issues closed in the repository. Consequently, there are no changes to the repository's codebase, public API surface, or language features to report for this timeframe.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2026-01-14

This period's updates primarily focused on enhancing the correctness and completeness of the `record_use` package, especially concerning its interaction with the `dart2js` compiler. A significant fix addressed semantic equality issues for `CallWithArguments` objects with differing positional argument counts in `record_use` ([PR #2950](https://github.com/dart-lang/native/pull/2950)), a change that garnered multiple comments. Relatedly, several issues were closed that highlight ongoing efforts to improve `record_use`'s accuracy and coverage for core Dart language features within `dart2js`. These include correcting the recording of extension methods ([Issue #2926](https://github.com/dart-lang/native/issues/2926)), ensuring proper handling and testing for tear-offs despite `dart2js`'s optimizations ([Issue #2895](https://github.com/dart-lang/native/issues/2895)), and extending completeness tests to cover enum constant values once necessary "instances" features are implemented ([Issue #2894](https://github.com/dart-lang/native/issues/2894)). Separately, integration tests were added to `swiftgen` to improve coverage for Swift callbacks and protocols, specifically those utilizing `@objc` annotations ([PR #2949](https://github.com/dart-lang/native/pull/2949)).

## Merged Pull Requests

### 🔥 [PR #2950](https://github.com/dart-lang/native/pull/2950): [record_use] Fix positional argument semantic equality
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2026-01-14 02:58 AM
* **Comments:** 6
* Fixes an issue in the `record_use` package where `CallWithArguments` objects were not correctly compared for semantic equality if they had a different number of positional arguments. The change adds a length check to ensure that `CallWithArguments` with differing positional argument counts are correctly identified as unequal.

### [PR #2949](https://github.com/dart-lang/native/pull/2949): [swiftgen] Integration tests for callbacks and protocols
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2026-01-14 02:42 PM
* **Comments:** 3
* Adds integration tests for Swift callbacks and protocols in `swiftgen`, specifically targeting `@objc` annotated APIs, as these features are not yet fully supported by the `swift2objc` toolchain without explicit annotations.


## Closed Issues

### [Issue #2926](https://github.com/dart-lang/native/issues/2926): [record_use] Correctness: dart2js: extension methods
* **Author:** [dcharkes](https://github.com/dcharkes)
* dart2js incorrectly includes a non-existent zero-th positional argument when recording usage for extension methods, which differs from the VM's correct representation.

### [Issue #2895](https://github.com/dart-lang/native/issues/2895): [record_use] Completeness: dart2js: tearoffs
* **Author:** [dcharkes](https://github.com/dcharkes)
* The `dart2js` compiler is currently too aggressive in optimizing tear-offs, making existing completeness tests ineffective, so a new test is needed to force `dart2js` to produce actual tear-offs for proper verification.

### [Issue #2894](https://github.com/dart-lang/native/issues/2894): [record_use] Completeness: dart2js: enum values
* **Author:** [dcharkes](https://github.com/dcharkes)
* The dart2js backend currently lacks complete `record_use` testing for enum constant values because the necessary "instances" feature is not yet implemented; once implemented, enum values will need to be checked in `pkg/compiler/test/record_use/golden/record_enum.json.expect`.


# GitHub PR Report for flutter/ai
## From 2026-01-14

There were no pull requests merged and no issues closed during this period, indicating no functional changes or updates were made to the repository's codebase.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2026-01-14

There were no pull requests merged or issues closed during this period, indicating no significant changes or updates were made to the repository's codebase or outstanding tasks.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2026-01-14

This release cycle brought a series of targeted enhancements and fixes across rendering, web platform compatibility, and developer tooling. Significant improvements were made to **rendering capabilities**, particularly for Impeller and web environments, including robust validation for `ImageFilter.shader` by adding a missing `throw StateError` for invalid uniform layouts ([PR #180923](https://github.com/flutter/flutter/pull/180923), resolving [Issue #180763](https://github.com/flutter/flutter/issues/180763)) and fixing related canvas operation tests ([PR #180929](https://github.com/flutter/flutter/pull/180929), addressing [Issue #180927](https://github.com/flutter/flutter/issues/180927)). Web rendering also benefited from a crucial fix allowing `FragmentProgram.fromAsset` to correctly load shaders with spaces in their asset names ([PR #180919](https://github.com/flutter/flutter/pull/180919), closing [Issue #180862](https://github.com/flutter/flutter/issues/180862)), and image decoding was corrected in CanvasKit's CPU-only mode ([PR #180706](https://github.com/flutter/flutter/pull/180706), addressing [Issue #175423](https://github.com/flutter/flutter/issues/175423)). **Accessibility on the web** was significantly bolstered with the addition of `prefers-reduced-motion` media query support, which automatically disables animations based on user preferences ([PR #180041](https://github.com/flutter/flutter/pull/180041), resolving [Issue #167566](https://github.com/flutter/flutter/issues/167566)). **UI component reliability** saw a notable fix for `RangeSlider`'s dragged cursor handling, which now correctly reflects its state and leverages the `WidgetState` API ([PR #179988](https://github.com/flutter/flutter/pull/179988), closing [Issue #179987](https://github.com/flutter/flutter/issues/179987)). Furthermore, **developer experience and tooling stability** were improved, with `flutter test` now providing more detailed exception messages by printing "bad lines" when unexpected output occurs ([PR #180909](https://github.com/flutter/flutter/pull/180909)), and the `flutter upgrade` command reliably regenerating `flutter.version.json` ([PR #180857](https://github.com/flutter/flutter/pull/180857)). Stability for web applications during launch was also enhanced by handling `DartDevelopmentServiceException` to prevent crashes ([PR #180924](https://github.com/flutter/flutter/pull/180924)). Routine package rolls ([PR #181006](https://github.com/flutter/flutter/pull/181006), [PR #180977](https://github.com/flutter/flutter/pull/180977)) and documentation updates for iOS/macOS testing ([PR #180898](https://github.com/flutter/flutter/pull/180898)) were also included, while developers should be aware of a previously reported breaking change related to `Overlay.of(context)` usage ([Issue #178600](https://github.com/flutter/flutter/issues/178600)).

## Merged Pull Requests

### [PR #181006](https://github.com/flutter/flutter/pull/181006): Roll pub packages
* **Author:** [flutter-pub-roller-bot](https://github.com/flutter-pub-roller-bot)
* **Merged At:** 2026-01-14 03:34 PM
* **Comments:** 1
* This PR updates the `video_player_avfoundation` package to version 2.8.10 and bumps the minimum required Dart SDK to 3.10.0 and Flutter SDK to 3.38.0, as generated by `flutter update-packages --force-upgrade`.

### [PR #180986](https://github.com/flutter/flutter/pull/180986): Update CHANGELOG at head for 3.38.7 stable hotfix
* **Author:** [walley892](https://github.com/walley892)
* **Merged At:** 2026-01-14 12:47 PM
* **Comments:** 0
* Updates the `CHANGELOG.md` to include release notes for the 3.38.7 stable hotfix, specifically documenting a fix for a crash when using `flutter run -d all` with multiple devices.

### [PR #180977](https://github.com/flutter/flutter/pull/180977): Roll pub packages
* **Author:** [flutter-pub-roller-bot](https://github.com/flutter-pub-roller-bot)
* **Merged At:** 2026-01-14 11:52 AM
* **Comments:** 0
* Updates the `built_value` dependency in `flutter_tools` to version 8.12.3 as part of a routine pub package roll, automatically generated by `flutter update-packages --force-upgrade`.

### [PR #180941](https://github.com/flutter/flutter/pull/180941): Skip flaky test on Firefox
* **Author:** [harryterkelsen](https://github.com/harryterkelsen)
* **Merged At:** 2026-01-14 02:45 PM
* **Comments:** 5
* This PR adds a `skip` condition to a flaky `StyleManager` test, disabling it on Firefox until a specific issue (flutter/flutter#180940) that causes intermittent failures is resolved.

### [PR #180929](https://github.com/flutter/flutter/pull/180929): Fix 'ImageFilter.shader can be applied to canvas operations' test
* **Author:** [b-luk](https://github.com/b-luk)
* **Merged At:** 2026-01-14 11:53 AM
* **Comments:** 1
* Fixes the `ImageFilter.shader can be applied to canvas operations` test by correcting the parsing of RGBA byte data to an ARGB `Color` and updating the expected shader output color from green to blue.

### [PR #180924](https://github.com/flutter/flutter/pull/180924): [CP-stable][ Tool ] Handle `DartDevelopmentServiceException` when launching web applications
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2026-01-14 02:36 PM
* **Comments:** 2
* Handles `DartDevelopmentServiceException` when launching Flutter web applications, preventing crashes that occur if the application shuts down during the startup sequence.

### [PR #180923](https://github.com/flutter/flutter/pull/180923): Add missing 'throw' to ImageFilter.shader's validation check
* **Author:** [b-luk](https://github.com/b-luk)
* **Merged At:** 2026-01-14 12:03 PM
* **Comments:** 2
* Adds a `throw StateError` to the `ImageFilter.shader` validation check, ensuring that an error is correctly raised when a shader has an invalid uniform layout. This change fixes and re-enables a previously disabled Impeller-only test in `fragment_shader_test.dart` that verifies this error handling.

### [PR #180919](https://github.com/flutter/flutter/pull/180919): [web] Fix loading of fragment shader with space in name.
* **Author:** [ksokolovskyi](https://github.com/ksokolovskyi)
* **Merged At:** 2026-01-14 07:37 AM
* **Comments:** 1
* Fixes an issue where fragment shaders on the web could not be loaded if their asset names contained spaces by consistently URI-encoding the `assetKey` in `FragmentProgram.fromAsset` within `web_ui`, aligning with how the Flutter tool and core `ui` implementation handle asset keys.

### [PR #180909](https://github.com/flutter/flutter/pull/180909): Made the bad lines exception print out the bad lines
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2026-01-13 05:51 PM
* **Comments:** 3
* This PR modifies `flutter_test_performance.dart` to include the specific content of "bad lines" in the exception message when unexpected output is encountered during `flutter test` runs, improving debugging for such failures.

### [PR #180898](https://github.com/flutter/flutter/pull/180898): Update discussion of iOS/macOS testing
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2026-01-14 02:45 PM
* **Comments:** 0
* Updates the documentation for iOS/macOS native testing in Flutter plugins by adding references to Swift Testing, updating test setup guidance to favor Swift, removing outdated instructions for manually adding XCTest targets, and removing discussion of the OCMock framework.

### [PR #180857](https://github.com/flutter/flutter/pull/180857): [ Tool ] Ensure `flutter.version.json` is regenerated on upgrade
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2026-01-14 01:04 PM
* **Comments:** 0
* Updates the `flutter upgrade` command to explicitly delete and regenerate `flutter.version.json`. This ensures the reported framework version always matches the actual version after an upgrade, fixing an issue where the version file was not consistently updated.

### [PR #180706](https://github.com/flutter/flutter/pull/180706): [canvaskit] Fix image decoding in CPU-only mode
* **Author:** [harryterkelsen](https://github.com/harryterkelsen)
* **Merged At:** 2026-01-13 05:39 PM
* **Comments:** 2
* This PR fixes image decoding in CanvasKit's CPU-only rendering mode by replacing WebGL-dependent image creation calls with `MakeImageFromCanvasImageSource`, which leverages a 2D canvas for software rendering, and includes new tests to verify image rendering in this mode.

### [PR #180041](https://github.com/flutter/flutter/pull/180041): Add support for reduced motion/disable animations on the web
* **Author:** [ditman](https://github.com/ditman)
* **Merged At:** 2026-01-14 01:16 PM
* **Comments:** 2
* Adds support for the `prefers-reduced-motion` media query on the web, automatically updating `AccessibilityFeatures` to reduce motion and disable animations. This is implemented via a new `MediaQueryManager` which centralizes handling of all browser media queries, including dark mode and high contrast.

### [PR #179988](https://github.com/flutter/flutter/pull/179988): Fix RangeSlider dragged cursor handling.
* **Author:** [ksokolovskyi](https://github.com/ksokolovskyi)
* **Merged At:** 2026-01-14 07:48 AM
* **Comments:** 2
* This PR fixes an issue with `RangeSlider`'s dragged cursor handling by updating its internal state management to correctly reflect dragging status and replacing `MaterialState` usage with the more general `WidgetState` API. The change also includes expanded tests to verify accurate mouse cursor behavior across different interaction states.


## Closed Issues

### [Issue #180935](https://github.com/flutter/flutter/issues/180935): win-5 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The win-5 device has lost its external connection to a phone device, indicating a potential network or device connectivity issue.

### [Issue #180927](https://github.com/flutter/flutter/issues/180927): Re-enable fragment_shader_tests.dart 'ImageFilter.shader can be applied to canvas operations' test
* **Author:** [b-luk](https://github.com/b-luk)

### [Issue #180892](https://github.com/flutter/flutter/issues/180892): [camera]Fatal Exception: java.lang.UnsupportedOperationException
* **Author:** [rhymelph](https://github.com/rhymelph)
* A fatal `java.lang.UnsupportedOperationException` occurs within the `camerax` plugin on Android 15 devices, specifically when `DeviceOrientationManager` attempts to obtain a display from a non-visual Android `Context`.

### [Issue #180862](https://github.com/flutter/flutter/issues/180862): Flutter Web fails to load shader assets containing spaces in file names
* **Author:** [Laurie-Lin](https://github.com/Laurie-Lin)
* Flutter Web fails to load shader assets with spaces in their filenames when using `ui.FragmentProgram.fromAsset()`, resulting in a 404 error for the URL-encoded path, though these assets load correctly on all other platforms.

### [Issue #180827](https://github.com/flutter/flutter/issues/180827): [Google3 Bug]: [Crash Report] `anonymous namespace'::PolygonInfo::AppendVertex-dead1d17
* **Author:** [calebmah](https://github.com/calebmah)
* An iOS Impeller crash occurs in `PolygonInfo::AppendVertex` within `shadow_path_geometry.cc` when rendering `DrawRoundRect` with a blurred shadow, likely due to accessing the `.back()` element of an empty vector, causing severe production issues and blocking the next binary release.

### [Issue #180763](https://github.com/flutter/flutter/issues/180763): reenable 'ImageFilter.shader errors if shader does not have correct uniform layout' test
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* This issue tracks the re-enablement of a `ImageFilter.shader` test that checks for errors with incorrect uniform layout, which is currently failing after being inadvertently disabled and subsequently atrophied.

### [Issue #180690](https://github.com/flutter/flutter/issues/180690): [google_sign_in_web] signing in with google looks incompatible with WASM
* **Author:** [lucavenir](https://github.com/lucavenir)
* Google Sign-In for web appears incompatible with WASM, as the sign-in popup remains blank and logs a `TypeError: Cannot read properties of null (reading 'postMessage')` when the application is compiled with the `--wasm` flag.

### [Issue #180382](https://github.com/flutter/flutter/issues/180382): Running Gradle task 'assembleDebug' keeps re-downloading huge amounts of files
* **Author:** [nav9](https://github.com/nav9)
* The user reports that the Gradle task 'assembleDebug' in Flutter repeatedly re-downloads large amounts of Android SDK build files (up to 1GB for initial builds and 200-300MB for subsequent builds or new projects), even when files should already be cached, leading to inefficient resource usage and slow build times.

### [Issue #179987](https://github.com/flutter/flutter/issues/179987): RangeSlider dragged cursor is not visible if onChangeStart and onChangeEnd are not set.
* **Author:** [ksokolovskyi](https://github.com/ksokolovskyi)
* The `RangeSlider` widget does not display the dragged cursor unless both `onChangeStart` and `onChangeEnd` callbacks are explicitly set, leading to inconsistent behavior compared to the `Slider` widget.

### [Issue #178926](https://github.com/flutter/flutter/issues/178926): Framework and engine flutter doctor mismatch possible
* **Author:** [reidbaker](https://github.com/reidbaker)
* The `flutter doctor` tool fails to display the correct new version number when multiple stable releases share the same engine hash; proposed solutions include updating the tool to show the latest version or adding a pre-publish integration test.

### [Issue #178600](https://github.com/flutter/flutter/issues/178600): Breaking change on 3.38.1: Overlay.of(context) throws 'No Overlay widget found'
* **Author:** [pamafe1976](https://github.com/pamafe1976)
* **Reactions:** **3** -- 👍 3
* Upgrading Flutter from 3.35.7 to 3.38.1 causes `Overlay.of(Get.overlayContext!)` to throw a "No Overlay widget found" error when trying to display a custom `Bubble` overlay, indicating a breaking change in how `Overlay` contexts are accessed or provided, possibly related to the `get` package.

### [Issue #176982](https://github.com/flutter/flutter/issues/176982): Implement Consolidated Check-Run flow for specific users only
* **Author:** [ievdokdm](https://github.com/ievdokdm)
* Implement a single `Merge Queue Guard` GitHub check-run for specific users that reflects the consolidated status of their LUCI builds, marked as pending, success, or action_required based on all associated build statuses.

### [Issue #176981](https://github.com/flutter/flutter/issues/176981): Store LUCI Tests execution details updates in Firestore
* **Author:** [ievdokdm](https://github.com/ievdokdm)
* The issue proposes adding logic to each presubmit to store and update LUCI Test execution statuses in Firestore.

### [Issue #175423](https://github.com/flutter/flutter/issues/175423): [Web][CanvasKit] Flutter not rendering images when `canvasKitForceCpuOnly` option is on
* **Author:** [dutsky](https://github.com/dutsky)
* Flutter web applications fail to render images when the `canvasKitForceCpuOnly: true` option is enabled in `flutter_bootstrap.js`.

### [Issue #174416](https://github.com/flutter/flutter/issues/174416): [video_player_avfoundation][UIScene] Migrate to scene APIs
* **Author:** [vashworth](https://github.com/vashworth)
* The `video_player_avfoundation` plugin needs to migrate from the deprecated `UIApplication.sharedApplication.keyWindow` API to its `UIScene` equivalent.

### [Issue #167566](https://github.com/flutter/flutter/issues/167566): Reduced Motion Mode - disableAnimations not toggled for Web builds
* **Author:** [AlexGarneau](https://github.com/AlexGarneau)
* The `disableAnimations` setting, which should be toggled by system-level reduced motion preferences, is not activated in web builds, although it functions correctly in mobile builds.

### [Issue #161163](https://github.com/flutter/flutter/issues/161163): [flutter_svg] Some SVG Images aren't rendered properly
* **Author:** [AsCress](https://github.com/AsCress)
* **Reactions:** **3** -- 👍 3
* The `flutter_svg` package is failing to render specific SVG images correctly, causing them to display with unexpected black backgrounds or strokes instead of the intended white strokes on a transparent background, as demonstrated with `SvgPicture.asset()` in a Flutter app.


# GitHub PR Report for flutter/genui
## From 2026-01-14

There were no pull requests merged or issues closed during this period, indicating no changes were made to the repository's codebase or outstanding items.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2026-01-14

The repository received several key updates primarily focused on modernizing its iOS integration and underlying testing infrastructure. A notable change was the widespread migration of example tests from XCTest to the new Swift Testing framework, accompanied by updates to Swift 6.0 across multiple packages. This migration, seen in `url_launcher_macos` ([#10763](https://github.com/flutter/packages/pull/10763)), `pointer_interceptor_ios` ([#10762](https://github.com/flutter/packages/pull/10762)), and `path_provider_foundation` ([#10761](https://github.com/flutter/packages/pull/10761)), streamlines testing with features like test parameterization. Additionally, the `video_player_avfoundation` plugin was updated to improve `UIScene` compatibility ([#10676](https://github.com/flutter/packages/pull/10676)) by transitioning from the deprecated `keyWindow.rootViewController` to the registrar's `viewController`, a change that also necessitated updates to the minimum supported Flutter and Dart SDK versions. These collective efforts enhance the repository's adherence to modern iOS development practices and improve its testing suite.

## Merged Pull Requests

### [PR #10763](https://github.com/flutter/packages/pull/10763): [url_launcher_macos] Migrate XCTest to Swift Testing
* **Author:** [jmagman](https://github.com/jmagman)
* **Merged At:** 2026-01-13 10:02 PM
* **Comments:** 1
* Migrates the `url_launcher_macos` example tests from XCTest to Swift Testing, introducing test parameterization and ensuring all URL handling tests utilize a `StubWorkspace` for isolation, while also updating the test target to Swift 6.0.

### [PR #10762](https://github.com/flutter/packages/pull/10762): [pointer_interceptor_ios] Migrate XCTest to Swift Testing
* **Author:** [jmagman](https://github.com/jmagman)
* **Merged At:** 2026-01-14 10:42 AM
* **Comments:** 0
* This PR migrates the `pointer_interceptor_ios` package's example tests from XCTest to the new Swift Testing framework, updates the Swift version to 6.0, and refactors existing debug mode tests into a single parameterized test for improved organization and display.

### [PR #10761](https://github.com/flutter/packages/pull/10761): [path_provider_foundation] Migrate XCTest to Swift Testing
* **Author:** [jmagman](https://github.com/jmagman)
* **Merged At:** 2026-01-13 09:08 PM
* **Comments:** 0
* Migrates the `path_provider_foundation` XCTest suite to the new Swift Testing framework, consolidating multiple directory-related tests into a single parameterized test and updating project configurations to Swift 6.0.

### [PR #10676](https://github.com/flutter/packages/pull/10676): [video_player] Update for UIScene compatibility
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2026-01-14 10:58 AM
* **Comments:** 1
* Updates the `video_player_avfoundation` plugin for iOS to use the registrar's `viewController` instead of the deprecated `keyWindow.rootViewController`, improving `UIScene` compatibility and resolving issue #174416. This change also updates the minimum supported Flutter and Dart SDK versions.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2026-01-14

No pull requests were merged and no issues were closed during this time, indicating that no changes were made to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2026-01-14

The recent updates to the repository primarily focused on significantly enhancing the user's learning journey, refining core documentation for Android development, and clarifying public API behavior. A major overhaul of the website's structure and learning resources was implemented, driven by discussions in [Issue #12067](https://github.com/flutter/website/issues/12067), leading to the introduction of new `/learn` and `/learn/pathway` landing pages and a reorganization of the site structure to replace "Fundamentals" with "FWE" ([PR #12935](https://github.com/flutter/website/pull/12935), [PR #12932](https://github.com/flutter/website/pull/12932)). Key documentation improvements include clarifying a breaking change in `Overlay.of` and `Overlay.maybeOf` behavior with `LookupBoundary` and the deprecation of `OverlayPortal.targetsRootOverlay` ([PR #12937](https://github.com/flutter/website/pull/12937)). Furthermore, documentation was added to explain how the Dart compiler performs tree shaking of platform-specific code using `Platform.is*` checks to optimize release builds, addressing the request in [Issue #11666](https://github.com/flutter/website/issues/11666) ([PR #12931](https://github.com/flutter/website/pull/12931)). For Android development, the guide now accurately reflects updated APK build output paths ([PR #12930](https://github.com/flutter/website/pull/12930), resolving [Issue #12537](https://github.com/flutter/website/issues/12537)) and explicitly lists NDK and CMake as required installations ([PR #12926](https://github.com/flutter/website/pull/12926), per [Issue #12516](https://github.com/flutter/website/issues/12516)). Other notable changes include a guide for comparing Flutter beta releases ([PR #12929](https://github.com/flutter/website/pull/12929)) and a minor grammatical correction in `developer-experience.md` which generated several comments ([PR #12913](https://github.com/flutter/website/pull/12913)).

## Merged Pull Requests

### [PR #12937](https://github.com/flutter/website/pull/12937): update overlay breaking change
* **Author:** [chunhtai](https://github.com/chunhtai)
* **Merged At:** 2026-01-14 01:18 PM
* **Comments:** 2
* Updates the Flutter breaking change documentation to detail the deprecation of `OverlayPortal.targetsRootOverlay` and the new behavior of `Overlay.of` and `Overlay.maybeOf`, which now respect `LookupBoundary` and will not look up past it, requiring developers to use `findAncestorStateOfType` for wider searches.

### [PR #12935](https://github.com/flutter/website/pull/12935): [FWE] Update site structure and sidenav
* **Author:** [ericwindmill](https://github.com/ericwindmill)
* **Merged At:** 2026-01-14 02:24 PM
* **Comments:** 2
* This PR reorganizes the website's structure and sidenav by replacing the "Fundamentals" section with "FWE", streamlining the "Get Started" section, deleting the `/get-started` folder, and moving content to a new `/learn` path, all accompanied by extensive 301 redirects.

### [PR #12934](https://github.com/flutter/website/pull/12934): Removing link to VeggieSeasons example, which has been removed from d…
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-14 10:07 AM
* **Comments:** 2
* Removes the link to the VeggieSeasons code sample from the iOS state restoration documentation, as the example itself has been removed.

### [PR #12932](https://github.com/flutter/website/pull/12932): FWE and /learn landing pages
* **Author:** [ericwindmill](https://github.com/ericwindmill)
* **Merged At:** 2026-01-14 10:32 AM
* **Comments:** 2
* This PR introduces new `/learn` and `/learn/pathway` landing pages to provide a general learning entry point and a structured learning pathway for the Flutter Welcome Experience, replacing existing learn pages. It also updates the `Stepper` component to support an "always expanded" (non-collapsible) mode and adds a `display-card` style to the `Card` component for better content presentation.

### [PR #12931](https://github.com/flutter/website/pull/12931): Explain tree shaking of platform checks
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-14 10:13 AM
* **Comments:** 2
* Adds a new section to the `app-size.md` documentation explaining how the Dart compiler performs tree shaking of platform-specific code when `Platform.is*` checks are used, thus reducing the size of release builds by removing code irrelevant to the target platform.

### [PR #12930](https://github.com/flutter/website/pull/12930): Update android apk build output paths
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-14 12:30 PM
* **Comments:** 3
* This PR updates the Flutter Android deployment documentation to reflect the new output paths for generated APK files, changing them from `outputs/apk/release` to `outputs/flutter-apk`.

### [PR #12929](https://github.com/flutter/website/pull/12929): Add guide for comparing beta releases
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-14 01:18 PM
* **Comments:** 3
* Adds a guide to the Flutter website detailing how to compare Flutter beta releases using GitHub version tags, making it easier for users to understand changes between beta versions.

### [PR #12926](https://github.com/flutter/website/pull/12926): Add NDK and CMake to android setup requirements
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-14 01:07 PM
* **Comments:** 2
* Adds NDK (Side by side) and CMake to the documented Android SDK components required for platform integration setup, addressing a documentation omission.

### [PR #12916](https://github.com/flutter/website/pull/12916): Add Dart entry to glossary
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-14 10:58 AM
* **Comments:** 2
* Adds a new entry for "Dart" to the project glossary, defining it as a versatile programming language for fast apps on any platform, explicitly separating its definition from Flutter while noting Flutter's use of it.

### 🔥 [PR #12913](https://github.com/flutter/website/pull/12913): Update developer-experience.md
* **Author:** [epanareda](https://github.com/epanareda)
* **Merged At:** 2026-01-14 09:54 AM
* **Comments:** 7
* Corrects a grammatical error in `developer-experience.md` by changing "questions to these questions" to "answers to these questions", which improves the clarity of the text.


## Closed Issues

### [Issue #12933](https://github.com/flutter/website/issues/12933): Asking for supports and solutions to get the easy ways access to Google's products
* **Author:** [nyiemmanuelthway-coder](https://github.com/nyiemmanuelthway-coder)
* The user is seeking solutions to easily generate QR codes for Google Drive and Google Meet links, similar to Viber, to improve patient access and overcome obstacles in using these Google products.

### [Issue #12822](https://github.com/flutter/website/issues/12822): Add missing images referenced from FWE lessons
* **Author:** [parlough](https://github.com/parlough)
* FWE lessons reference images that are missing from the assets directory, requiring a review to add, update, or remove them as appropriate.

### [Issue #12703](https://github.com/flutter/website/issues/12703): Implicit import of `intl` package?
* **Author:** [autorejecttop](https://github.com/autorejecttop)
* The `DatePickerDialog` code example on `docs.flutter.dev` implicitly uses `DateFormat` from the `intl` package without any mention, and the issue suggests either adding installation instructions or exploring a Flutter/Dart-native alternative if feasible.

### [Issue #12629](https://github.com/flutter/website/issues/12629): Add missing diagram to FWE implicit animations page
* **Author:** [parlough](https://github.com/parlough)
* The Flutter implicit animations documentation page is missing a diagram, which is noted by a TODO in the source.

### [Issue #12620](https://github.com/flutter/website/issues/12620): Wish for docs to see what's changed in a beta release
* **Author:** [sethladd](https://github.com/sethladd)
* The user wants documentation for how to compare Flutter beta releases using GitHub's compare feature between specific beta tags to easily see what's changed.

### [Issue #12537](https://github.com/flutter/website/issues/12537): [Android build file location error]
* **Author:** [321paranoiawhy](https://github.com/321paranoiawhy)
* The documentation for building Android APKs in Flutter is outdated, showing an incorrect output path (`/build/app/outputs/apk/release/`) for newer Flutter versions; the correct path should be `/build/app/outputs/flutter-apk/`, and it should also mention the non-ABI-split `app-release.apk` output.

### [Issue #12516](https://github.com/flutter/website/issues/12516): Shouldn't Android NDK and CMake be required installations?
* **Author:** [Jehong-Ahn](https://github.com/Jehong-Ahn)
* The user suggests updating the Flutter Android setup guide to explicitly mention the required installation of Android NDK and CMake, as the current omission caused confusion and unexpected background downloads during their initial project setup.

### [Issue #12068](https://github.com/flutter/website/issues/12068): (FWE) Deprecate redundant resources
* **Author:** [ericwindmill](https://github.com/ericwindmill)
* This issue proposes deprecating and removing old, redundant FWE (fundamentals) resources.

### [Issue #12067](https://github.com/flutter/website/issues/12067): (FWE) "Getting started" landing page + learning pathway
* **Author:** [ericwindmill](https://github.com/ericwindmill)
* **Reactions:** **3** -- 👍 3
* This issue outlines the need to create a new "Getting started" landing page at `docs.flutter.dev/learn` and a structured learning pathway for new developers, specifically for FWE (Flutter Web Embedding), including introductory content, links to initial Dart and Flutter lessons, a defined sequence of steps from installation to architecture case studies, and plans for navigation and content migration.

### [Issue #11666](https://github.com/flutter/website/issues/11666): Add information about how platform-specific Dart code can be guarded so that it is appropriately tree-shaken in release applications
* **Author:** [sstrickl](https://github.com/sstrickl)
* This issue requests adding documentation to explain that platform-specific Dart code guarded by `defaultTargetPlatform` checks (e.g., `if (defaultTargetPlatform == TargetPlatform.windows)`) is correctly tree-shaken in Flutter release builds, including any associated dependencies.



## Top Hacker News Stories

### 72  [Apple Is Fighting for TSMC Capacity as Nvidia Takes Center Stage](https://www.culpium.com/p/exclusiveapple-is-fighting-for-tsmc)
* **Author:** [speckx](https://news.ycombinator.com/user?id=speckx) | **Comments:** [39](https://news.ycombinator.com/item?id=46633488)

### 57  [25 Years of Wikipedia](https://wikipedia25.org)
* **Author:** [easton](https://news.ycombinator.com/user?id=easton) | **Comments:** [17](https://news.ycombinator.com/item?id=46632023)

### 27  [Show HN: TinyCity – A tiny city SIM for MicroPython (Thumby micro console)](https://github.com/chrisdiana/TinyCity)
* **Author:** [inflam52](https://news.ycombinator.com/user?id=inflam52) | **Comments:** [2](https://news.ycombinator.com/item?id=46632768)

### 119 🔥 [The Palantir app helping ICE raids in Minneapolis](https://www.404media.co/elite-the-palantir-app-ice-uses-to-find-neighborhoods-to-raid/)
* **Author:** [fajmccain](https://news.ycombinator.com/user?id=fajmccain) | **Comments:** [65](https://news.ycombinator.com/item?id=46633378)

### 595 🔥🔥 [The URL shortener that makes your links look as suspicious as possible](https://creepylink.com/)
* **Author:** [dreadsword](https://news.ycombinator.com/user?id=dreadsword) | **Comments:** [118](https://news.ycombinator.com/item?id=46627652)

### 768 🔥🔥🔥 [Claude Cowork exfiltrates files](https://www.promptarmor.com/resources/claude-cowork-exfiltrates-files)
* **Author:** [takira](https://news.ycombinator.com/user?id=takira) | **Comments:** [339](https://news.ycombinator.com/item?id=46622328)

### 21  [OBS Studio 32.1.0 Beta 1 available](https://github.com/obsproject/obs-studio/releases/tag/32.1.0-beta1)
* **Author:** [Sean-Der](https://news.ycombinator.com/user?id=Sean-Der) | **Comments:** [4](https://news.ycombinator.com/item?id=46633429)

### 51  [Impeccable Style](https://impeccable.style)
* **Author:** [noemit](https://news.ycombinator.com/user?id=noemit) | **Comments:** [24](https://news.ycombinator.com/item?id=46587284)

### 15  [Programming, Evolved: Lessons and Observations](https://github.com/kulesh/dotfiles/blob/main/dev/dev/docs/programming-evolved.md)
* **Author:** [dnw](https://news.ycombinator.com/user?id=dnw) | **Comments:** [5](https://news.ycombinator.com/item?id=46632039)

### 49  [The 3D Software Rendering Technology of 1998's Thief: The Dark Project (2019)](https://nothings.org/gamedev/thief_rendering.html)
* **Author:** [suioir](https://news.ycombinator.com/user?id=suioir) | **Comments:** [19](https://news.ycombinator.com/item?id=46630798)

### 64  [Z80 Mem­ber­ship Card](https://sunrise-ev.com/z80.htm)
* **Author:** [exvi](https://news.ycombinator.com/user?id=exvi) | **Comments:** [19](https://news.ycombinator.com/item?id=46584523)

### 1  [Jiga (YC W21) Is Hiring Full Stack Engineers](https://jiga.io/about-us)
* **Author:** [grmmph](https://news.ycombinator.com/user?id=grmmph) | **Comments:** [null](https://news.ycombinator.com/item?id=46631276)

### 725 🔥🔥🔥 [Ask HN: Share your personal website]()
* **Author:** [susam](https://news.ycombinator.com/user?id=susam) | **Comments:** [1981](https://news.ycombinator.com/item?id=46618714)
* The author is building a community-maintained directory of personal websites and invites Hacker News users to submit their sites, especially those well-received in past discussions. They are also seeking volunteers to help maintain the GitHub project and process submissions, encouraging direct pull requests.

### 58  [French Court Orders Popular VPNs to Block More Pirate Sites, Despite Opposition](https://torrentfreak.com/french-court-orders-popular-vpns-to-block-more-pirate-sites-despite-opposition/)
* **Author:** [iamnothere](https://news.ycombinator.com/user?id=iamnothere) | **Comments:** [36](https://news.ycombinator.com/item?id=46632004)

### 62  [The 500k-ton typo: Why data center copper math doesn't add up](https://investinglive.com/news/the-500000-ton-typo-why-data-center-copper-math-doesnt-add-up-20260113/)
* **Author:** [thebeardisred](https://news.ycombinator.com/user?id=thebeardisred) | **Comments:** [85](https://news.ycombinator.com/item?id=46631728)

### 189 🔥 [Raspberry Pi's New AI Hat Adds 8GB of RAM for Local LLMs](https://www.jeffgeerling.com/blog/2026/raspberry-pi-ai-hat-2/)
* **Author:** [ingve](https://news.ycombinator.com/user?id=ingve) | **Comments:** [145](https://news.ycombinator.com/item?id=46629682)

### 260 🔥🔥 [Ask HN: How are you doing RAG locally?]()
* **Author:** [tmaly](https://news.ycombinator.com/user?id=tmaly) | **Comments:** [112](https://news.ycombinator.com/item?id=46616529)
* This user is seeking common approaches and technologies for implementing local Retrieval Augmented Generation (RAG) on internal code or complex documents, emphasizing solutions with minimal dependencies. They specifically ask whether others are using vector databases, semantic search, knowledge graphs, or hypergraphs for this purpose.

### 5  [Investing with GIFs: A Visual Guide](https://www.ft.com/content/9b1ff0b8-a1e8-4869-8d61-620c5ed32d35)
* **Author:** [7777777phil](https://news.ycombinator.com/user?id=7777777phil) | **Comments:** [2](https://news.ycombinator.com/item?id=46566065)

### 25  [Show HN: MailPilot – Freedom to go anywhere while your agents work]()
* **Author:** [keepamovin](https://news.ycombinator.com/user?id=keepamovin) | **Comments:** [33](https://news.ycombinator.com/item?id=46629191)
* Mailpilot.chat is a local terminal user interface (TUI) that enables users to interact with AI agents via email, allowing for asynchronous task management and freeing them from their desks. Its unique feature also allows teams to collaborate with these agents by CCing them in email threads, transforming local sessions into multiplayer interactions.

### 35  [San Remo Pasta Measurer](https://www.toxel.com/tech/2025/09/17/san-remo-pasta-measurer/)
* **Author:** [surprisetalk](https://news.ycombinator.com/user?id=surprisetalk) | **Comments:** [25](https://news.ycombinator.com/item?id=46558224)

### 240 🔥 [Scaling long-running autonomous coding](https://cursor.com/blog/scaling-agents)
* **Author:** [samwillis](https://news.ycombinator.com/user?id=samwillis) | **Comments:** [147](https://news.ycombinator.com/item?id=46624541)

### 153 🔥 [Ask HN: What did you find out or explore today?]()
* **Author:** [blahaj](https://news.ycombinator.com/user?id=blahaj) | **Comments:** [255](https://news.ycombinator.com/item?id=46619464)
* The text states that the specific domain and scale, whether large or small, are deemed irrelevant.

### 139 🔥 [Bubblewrap: A nimble way to prevent agents from accessing your .env files](https://patrickmccanna.net/a-better-way-to-limit-claude-code-and-other-coding-agents-access-to-secrets/)
* **Author:** [0o_MrPatrick_o0](https://news.ycombinator.com/user?id=0o_MrPatrick_o0) | **Comments:** [107](https://news.ycombinator.com/item?id=46626836)

### 169 🔥 [Crafting Interpreters](https://craftinginterpreters.com/)
* **Author:** [tosh](https://news.ycombinator.com/user?id=tosh) | **Comments:** [41](https://news.ycombinator.com/item?id=46624658)

### 173 🔥 [The State of OpenSSL for pyca/cryptography](https://cryptography.io/en/latest/statements/state-of-openssl/)
* **Author:** [SGran](https://news.ycombinator.com/user?id=SGran) | **Comments:** [43](https://news.ycombinator.com/item?id=46624352)



