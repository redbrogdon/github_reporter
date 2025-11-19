# Overall Summary
Here are the highlights from the provided reports:

* **🔥🔥🔥 [PR #176832](https://github.com/flutter/flutter/pull/176832) (flutter/flutter): Fix #160622: change containsWatchConpanion function to detect companion watch apps defined by only the project info file.**
  * **Comments:** 22
  * Updates `containsWatchCompanion` to remove the device ID when checking for the `WKCompanionAppBundleIdentifier`, fixing detection issues for WatchOS companion apps in projects with scheme-specific bundle configurations.
* **[Issue #90218](https://github.com/flutter/flutter/issues/90218) (flutter/flutter): Remote Flutter Widgets (rfw) package feedback thread**
  * **Reactions:** **80** -- 👍 28 🎉 32 ❤️ 20
  * This issue serves as a centralized thread for collecting community feedback, use cases, and experiences regarding the Remote Flutter Widgets (rfw) package to evaluate its utility and future direction.
* **[Issue #61986](https://github.com/dart-lang/sdk/issues/61986) (dart-lang/sdk): ☂️ [Primary Constructors] Analyzer and Linter preparation**
  * Development activity focused significantly on preparing the analyzer and linter for the upcoming Primary Constructors language feature. Work included ensuring compatibility with existing rules such as `camel_case_types` ([#61986](https://github.com/dart-lang/sdk/issues/61986)) and `camel_case_extensions` ([#61990](https://github.com/dart-lang/sdk/issues/61990)), and evaluating how `prefer_final_parameters` interacts with the new syntax ([#61675](https://github.com/dart-lang/sdk/issues/61675)).
* **[PR #178700](https://github.com/flutter/flutter/pull/178700) (flutter/flutter): Enable UIScene Migration and update create templates**
  * Enables the `uiSceneMigration` feature by default and updates the iOS application and module templates to support `UIScene`, including adding `SceneDelegate` files and configuring the `Info.plist` manifest for the scene-based lifecycle.
* **🔥 [PR #10465](https://github.com/flutter/packages/pull/10465) (flutter/packages): [in_app_purchase] Rename Swift Pigeon output file**
  * **Comments:** 8
  * Renames the Pigeon-generated Swift output file in `in_app_purchase_storekit` from `sk2_pigeon.g.swift` to `StoreKit2Messages.g.swift` to adopt a more idiomatic naming convention that avoids underscores.
* **[PR #178635](https://github.com/flutter/flutter/pull/178635) (flutter/flutter): Fix deprecation warning in some API examples using RadioListTile**
  * Updates API examples to use the `RadioGroup` widget for managing `RadioListTile` selection state, resolving deprecation warnings associated with manually handling `groupValue` and `onChanged` on individual tiles.
* **[PR #12696](https://github.com/flutter/website/pull/12696) (flutter/website): GenUI for SDK docs**
  * Adds a new documentation section for the GenUI SDK for Flutter, featuring an overview, a guide to core components and architecture, and a detailed getting started tutorial.


# GitHub PR Report for dart-lang/ai
## From 2025-11-18

There were no changes to the repository during this reporting period, as no pull requests were merged and no issues were closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2025-11-18

Development activity focused significantly on preparing the analyzer and linter for the upcoming Primary Constructors language feature, ensuring compatibility with existing rules such as `camel_case_types` ([#61986](https://github.com/dart-lang/sdk/issues/61986)), `camel_case_extensions` ([#61990](https://github.com/dart-lang/sdk/issues/61990)), and `non_constant_identifier_names` ([#62016](https://github.com/dart-lang/sdk/issues/62016)). Work also proceeded on evaluating how the `prefer_final_parameters` lint interacts with primary constructor syntax ([#61675](https://github.com/dart-lang/sdk/issues/61675)). In terms of tooling correctness, the analyzer was updated to properly report compile-time errors for repeated field initializations ([#61940](https://github.com/dart-lang/sdk/issues/61940)), and a bug causing `RegExp` members to incorrectly appear as deprecated during code completion was resolved ([#62013](https://github.com/dart-lang/sdk/issues/62013)). Additionally, the long-standing proposal for a `by` helper function to simplify list sorting was closed ([#37304](https://github.com/dart-lang/sdk/issues/37304)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62016](https://github.com/dart-lang/sdk/issues/62016): [Primary Constructors] support for `non_constant_identifier_names` [core]
* **Author:** [pq](https://github.com/pq)

### [Issue #62013](https://github.com/dart-lang/sdk/issues/62013): Completion for `RegExp` class name and specific members (not inherited) shows as deprecated
* **Author:** [FMorschel](https://github.com/FMorschel)
* The `RegExp` class and its specific members are incorrectly appearing as deprecated in code completion results due to the presence of the `@Deprecated.implement` annotation intended only to discourage interface implementation.

### [Issue #61990](https://github.com/dart-lang/sdk/issues/61990): [Primary Constructors] support for `camel_case_extensions` [core]
* **Author:** [pq](https://github.com/pq)

### [Issue #61986](https://github.com/dart-lang/sdk/issues/61986): [Primary Constructors] support for `camel_case_types` [core]
* **Author:** [pq](https://github.com/pq)

### [Issue #61940](https://github.com/dart-lang/sdk/issues/61940): Analyzer does not report repeated field initialization
* **Author:** [lrhn](https://github.com/lrhn)
* **Reactions:** **1** -- 👍 1
* The analyzer fails to report compile-time errors when a field is initialized multiple times in a constructor, such as combining an initializing formal with an assignment in the initializer list or including multiple assignments in the initializer list.

### [Issue #61675](https://github.com/dart-lang/sdk/issues/61675): [Primary Constructors] Evaluate support for prefer_final_parameters
* **Author:** [bwilkerson](https://github.com/bwilkerson)
* This issue aims to evaluate whether the `prefer_final_parameters` lint should be updated to ignore primary constructors or deprecated entirely, given that the `final` modifier on primary constructor parameters explicitly denotes a final field.

### [Issue #37304](https://github.com/dart-lang/sdk/issues/37304): Add `by` function to extract values for sorting
* **Author:** [bencalabrese](https://github.com/bencalabrese)
* **Reactions:** **1** -- 👍 1
* This issue proposes the addition of a `by` helper function or `List.sortBy` method to simplify comparator creation by deriving sorting logic from extracted values, thereby reducing verbosity and code duplication.


# GitHub PR Report for dart-lang/language
## From 2025-11-18

With no pull requests merged during this period, the repository saw minimal activity focused solely on refining the specification details for upcoming language features. Work concluded on [Issue #4550](https://github.com/dart-lang/language/issues/4550), which addressed terminology within the language grammar, specifically seeking to establish a precise name for the EBNF non-terminal representing the syntactic structure in a class header that includes the declaration name, type parameters, and the optional primary constructor.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #4550](https://github.com/dart-lang/language/issues/4550): What's a good term describing the syntax where a primary constructor can occur?
* **Author:** [eernstg](https://github.com/eernstg)
* The author is soliciting naming suggestions for the EBNF non-terminal currently defined as `<classNameMaybePrimary>`, which represents the syntactic structure in a class header containing the declaration name, type parameters, and an optional primary constructor.


# GitHub PR Report for dart-lang/native
## From 2025-11-18

Recent updates to `ffigen` focus on improving code generation accuracy regarding naming collisions and enhancing developer documentation. Addressing a validity issue reported in [#2795](https://github.com/dart-lang/native/issues/2795), [#2797](https://github.com/dart-lang/native/pull/2797) ensures that parameters in struct member function pointers are correctly sanitized when they match Dart keywords. Naming stability was further refined in [#2791](https://github.com/dart-lang/native/pull/2791), which prevents the collision resolver from unnecessarily renaming imported types, a fix essential for maintaining correct bindings with `package:objective_c` and addressing generation errors like those seen in [#2762](https://github.com/dart-lang/native/issues/2762). Additionally, in response to requests for better guidance in [#2769](https://github.com/dart-lang/native/issues/2769), [#2774](https://github.com/dart-lang/native/pull/2774) significantly expands the configuration API documentation, adding concrete examples for properties such as `include`, `rename`, and `style`.

## Merged Pull Requests

### [PR #2797](https://github.com/dart-lang/native/pull/2797): [ffigen] Fix function type param name bug
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-18 02:23 PM
* **Comments:** 1
* Fixes an issue in `ffigen` where function pointer parameter names matching Dart keywords were not correctly sanitized, ensuring the generated `name` is used instead of the `originalName` while preventing unnamed parameters from being unnecessarily labeled.

### [PR #2791](https://github.com/dart-lang/native/pull/2791): [ffigen] Prevent imported types from being renamed.
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-18 02:23 PM
* **Comments:** 2
* Modifies the symbol naming logic to prevent imported types, particularly from `package:objective_c`, from being renamed by the collision resolver, ensuring they retain their original names in generated bindings.

### [PR #2774](https://github.com/dart-lang/native/pull/2774): [ffigen] Improve docs of config API
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-18 02:22 PM
* **Comments:** 2
* Improves the documentation of the configuration API by adding code examples for properties like `include`, `rename`, and `style`, while also clarifying concepts such as USRs, variadic functions, and the `isLeaf` property.


## Closed Issues

### [Issue #2795](https://github.com/dart-lang/native/issues/2795): 🐛 `ffigen`: Struct member function pointer does **not** rename reserved keyword parameters (top-level functions correctly do)
* **Author:** [dzylikecode](https://github.com/dzylikecode)
* `ffigen` fails to sanitize Dart reserved keywords in parameters for struct member function pointers, causing invalid code generation despite the logic working correctly for top-level functions.

### [Issue #2769](https://github.com/dart-lang/native/issues/2769): `FfiGenerator` needs more docs
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* The user requests improved documentation and comprehensive examples for the `FfiGenerator` code configuration to aid in migrating from YAML, noting that current API docs are too terse and lack clarity on specific parameters and filtering logic.

### [Issue #2762](https://github.com/dart-lang/native/issues/2762): [ffigen] [objc] Incorrect code generation for NSPreviewSupport
* **Author:** [brianquinlan](https://github.com/brianquinlan)
* Ffigen is incorrectly generating the `NSPreviewSupport` extension on the undefined class `NSItemProvider$2` instead of the correct `NSItemProvider`.


# GitHub PR Report for flutter/ai
## From 2025-11-18

There were no merged pull requests or closed issues during this period, resulting in no changes to the repository or its public API surface.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-11-18

There were no changes to the repository during this period, as no pull requests were merged and no issues were closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-11-18

Significant attention was given to the Apple ecosystem in this batch of changes, highlighted by [PR #178700] which enables the `uiSceneMigration` feature by default to support `UIScene` lifecycles, and [PR #176832] which resolves complex detection issues for WatchOS companion apps. iOS device stability was further improved by [PR #178675], which mitigates debugging hangs by monitoring log files for `devicectl` launch confirmation. On the graphics front, [PR #178697] ensures rendering consistency for Skia by explicitly restoring OpenGL state parameters modified during layer presentation. Framework documentation was updated to reflect API shifts, specifically replacing deprecated `RadioListTile` patterns with the `RadioGroup` widget in [PR #178635] and [PR #178618]. Finally, the tooling saw extensive hardening of the `widget-preview` command against analysis context disposal (e.g., [PR #178645]), while the closure of [Issue #90218] wraps up a long-running community feedback thread regarding the Remote Flutter Widgets (rfw) package.

## Merged Pull Requests

### [PR #178745](https://github.com/flutter/flutter/pull/178745): Refactor PreviewDetector initialization parameters
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2025-11-18 10:44 AM
* **Comments:** 1
* Updates the `PreviewDetector` instantiation in a regression test to use the `project` parameter instead of `projectRoot`, resolving build failures caused by a recent API refactor.

### [PR #178744](https://github.com/flutter/flutter/pull/178744): Reverts "Add framework-side hitTestBehavior support for Semantics widget and apply to ModalRoute (#177570)"
* **Author:** [auto-submit[bot]](https://github.com/apps/auto-submit)
* **Merged At:** 2025-11-18 10:30 AM
* **Comments:** 0
* Reverts the addition of framework-side `hitTestBehavior` support for the `Semantics` widget and its application to `ModalRoute` due to internal test failures.

### [PR #178700](https://github.com/flutter/flutter/pull/178700): Enable UIScene Migration and update create templates
* **Author:** [vashworth](https://github.com/vashworth)
* **Merged At:** 2025-11-18 09:39 AM
* **Comments:** 0
* Enables the `uiSceneMigration` feature by default and updates the iOS application and module templates to support `UIScene`, including adding `SceneDelegate` files and configuring the `Info.plist` manifest for the scene-based lifecycle.

### [PR #178697](https://github.com/flutter/flutter/pull/178697): Restore OpenGL state modified by fl_compositor_opengl_present_layers
* **Author:** [jason-simmons](https://github.com/jason-simmons)
* **Merged At:** 2025-11-18 12:56 PM
* **Comments:** 0
* Updates `fl_compositor_opengl_present_layers` to explicitly save and restore OpenGL state parameters, including blend settings, scissor tests, and bound framebuffers, ensuring the shared OpenGL context remains consistent for Skia.

### [PR #178683](https://github.com/flutter/flutter/pull/178683): [tool] Further cleanup of proxy logic
* **Author:** [kevmoo](https://github.com/kevmoo)
* **Merged At:** 2025-11-18 01:01 PM
* **Comments:** 0
* Refactors proxy middleware logic by moving target URI resolution into the `ProxyRule` class and optimizes `RegexProxyRule` to parse the target URI immediately upon construction.

### [PR #178676](https://github.com/flutter/flutter/pull/178676): [CP-beta]Check for devicectl launch logs from std and file
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-11-18 07:14 AM
* **Comments:** 2
* This PR mitigates a hang when debugging on physical iOS devices by inspecting a temporary log file for `devicectl` launch confirmation, ensuring the tool detects successful launches even when standard output is silent.

### [PR #178675](https://github.com/flutter/flutter/pull/178675): [CP-stable]Check for devicectl launch logs from std and file
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-11-18 06:05 AM
* **Comments:** 4
* Updates the iOS `devicectl` integration to monitor a log file for launch completion messages in addition to standard output, fixing a hang during debugging on physical iOS devices where launch logs failed to stream correctly.

### [PR #178674](https://github.com/flutter/flutter/pull/178674): Update changelog with 3.38.2 cherrypicks
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2025-11-18 06:27 AM
* **Comments:** 1
* Updates the `CHANGELOG.md` file to include the release notes and list of cherry-picked fixes for Flutter 3.38.2.

### [PR #178672](https://github.com/flutter/flutter/pull/178672): Revert "[ Tool ] Don't delete `.dart_tool/widget_preview_scaffold` during `flutter clean` (#175664)"
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-11-18 03:01 AM
* **Comments:** 0
* Reverts a recent change that preserved the `.dart_tool/widget_preview_scaffold` directory during cleanup, restoring the behavior where `flutter clean` removes the entire `.dart_tool` directory.

### [PR #178645](https://github.com/flutter/flutter/pull/178645): [CP-beta][ Widget Preview ] Gracefully handle unexpected analysis context disposal
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-11-18 07:14 AM
* **Comments:** 2
* Updates the `widget-preview` tool to gracefully handle unexpected analysis context disposal by checking for valid analysis results and catching `DisposedAnalysisContextResult` exceptions, thereby preventing crashes when the tool exits during active analysis.

### [PR #178635](https://github.com/flutter/flutter/pull/178635): Fix deprecation warning in some API examples using RadioListTile
* **Author:** [huycozy](https://github.com/huycozy)
* **Merged At:** 2025-11-17 07:21 PM
* **Comments:** 0
* Updates API examples to use the `RadioGroup` widget for managing `RadioListTile` selection state, resolving deprecation warnings associated with manually handling `groupValue` and `onChanged` on individual tiles.

### [PR #178626](https://github.com/flutter/flutter/pull/178626): [fuchsia] Add wrapper for zx_iob_writev
* **Author:** [sutes-work](https://github.com/sutes-work)
* **Merged At:** 2025-11-17 06:23 PM
* **Comments:** 1
* Adds a `System.iobWrite` wrapper for the `zx_iob_writev` syscall to the Zircon Dart package on Fuchsia, enabling support for writing to IOBuffers which is required for updated logging mechanisms.

### [PR #178618](https://github.com/flutter/flutter/pull/178618): Refactor SnackBar behavior selection example to use `RadioGroup`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-17 11:20 PM
* **Comments:** 0
* Refactors the `SnackBar` API example to use the `RadioGroup` widget, which simplifies the code by sharing `groupValue` and `onChanged` properties across the contained `RadioListTile` widgets.

### [PR #178596](https://github.com/flutter/flutter/pull/178596): Replace `equals("")` with `isEmpty` in `SpellCheckPlugin.java‎`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-18 12:38 PM
* **Comments:** 5
* Replaces `equals("")` with `isEmpty()` in `SpellCheckPlugin.java` to improve code readability and adhere to Java best practices.

### [PR #178532](https://github.com/flutter/flutter/pull/178532): [CP-beta][ Widget Preview ] Throw `ToolExit` if Flutter Web is not enabled
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-11-18 07:19 AM
* **Comments:** 2
* Updates the `flutter widget-preview start` command to explicitly verify that Flutter Web is enabled, ensuring a clear error message with remediation steps is displayed instead of a generic crash when web support is missing.

### [PR #178496](https://github.com/flutter/flutter/pull/178496): [CP-beta][ Widget Preview ] Ignore modifications to files in ephemeral directories
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-11-18 07:12 AM
* **Comments:** 2
* Updates the widget previewer to ignore file modifications in ephemeral directories and gracefully handle missing analysis contexts, preventing crashes that previously occurred when running `flutter pub get` to add or update plugins.

### [PR #178471](https://github.com/flutter/flutter/pull/178471): [CP-beta][ Widget Preview ] Don't require 'flutter pub get' to be run in the root project
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-11-18 07:12 AM
* **Comments:** 1
* Updates the widget preview command to validate projects based on the presence of `pubspec.yaml` rather than the `.dart_tool` directory, resolving an issue where the previewer failed to launch if `flutter pub get` had not been run.

### [PR #178470](https://github.com/flutter/flutter/pull/178470): [CP-beta][ Tool ] Only process a single unhandled tool exception
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-11-18 07:12 AM
* **Comments:** 2
* Updates the tool runner to guard against processing multiple unhandled exceptions during a crash, ensuring that only a single crash report is submitted per process failure to prevent skewed analytics data.

### [PR #178105](https://github.com/flutter/flutter/pull/178105): Add missing flutter_lints dev dependencies
* **Author:** [guidezpl](https://github.com/guidezpl)
* **Merged At:** 2025-11-18 02:39 AM
* **Comments:** 0
* Adds `flutter_lints` to the `dev_dependencies` of the `windowing_test` and `multiple_windows` packages to resolve analyzer warnings.

### [PR #177570](https://github.com/flutter/flutter/pull/177570): Add framework-side hitTestBehavior support for Semantics widget and apply to ModalRoute
* **Author:** [flutter-zl](https://github.com/flutter-zl)
* **Merged At:** 2025-11-17 10:08 PM
* **Comments:** 3
* Adds support for `hitTestBehavior` to the `Semantics` widget and applies `SemanticsHitTestBehavior.opaque` to `ModalRoute`, fixing an issue on Flutter Web where clicks within a dialog would incorrectly propagate to the barrier and dismiss the dialog when semantics were enabled.

### 🔥🔥🔥 [PR #176832](https://github.com/flutter/flutter/pull/176832): Fix #160622: change containsWatchConpanion function to detect companion watch apps defined by only the project info file.
* **Author:** [garrettjavalia](https://github.com/garrettjavalia)
* **Merged At:** 2025-11-18 08:46 AM
* **Comments:** 22
* Updates `containsWatchCompanion` to remove the device ID when checking for the `WKCompanionAppBundleIdentifier`, fixing detection issues for WatchOS companion apps in projects with scheme-specific bundle configurations.


## Closed Issues

### [Issue #178764](https://github.com/flutter/flutter/issues/178764): win-5 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The win-5 machine has lost its external connection from the attached phone device.

### [Issue #178760](https://github.com/flutter/flutter/issues/178760): mac-34 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The machine mac-34 has lost its external connection to the connected phone device.

### [Issue #178758](https://github.com/flutter/flutter/issues/178758): linux-8 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The issue reports that the linux-8 host has lost its external connection to the phone device.

### [Issue #178755](https://github.com/flutter/flutter/issues/178755): linux-38 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The linux-38 machine has lost its external connection to the attached phone device.

### [Issue #178742](https://github.com/flutter/flutter/issues/178742): win-5 and win-1 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* Windows build machines win-5 and win-1 have lost external connectivity to their attached phone devices.

### [Issue #178741](https://github.com/flutter/flutter/issues/178741): linux-17 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The linux-17 machine has lost its external connection to the attached phone device.

### [Issue #178714](https://github.com/flutter/flutter/issues/178714): PopupMenuButton menu closes immediately after opening (iPadOS)
* **Author:** [moodstubos](https://github.com/moodstubos)
* This issue reports a bug where the `PopupMenuButton` widget closes immediately after opening when deployed on iPadOS, as illustrated by a minimal code example involving an `AppBar` action.

### [Issue #178709](https://github.com/flutter/flutter/issues/178709): Impeller causes fill and stroke mismatch during StepArea chart rendering on Android
* **Author:** [PreethikaSelvam](https://github.com/PreethikaSelvam)
* Enabling Impeller on Android causes a visual divergence between filled and stroked paths constructed from identical vertices, specifically resulting in misalignment and improper closing artifacts in large step area charts.

### [Issue #178702](https://github.com/flutter/flutter/issues/178702): Visual studio community 2026 is not supported for flutter desktop windows
* **Author:** [rockstarvibu](https://github.com/rockstarvibu)
* The user requests support for Visual Studio Community 2026 to resolve build errors encountered when developing Flutter applications for Windows.

### [Issue #178677](https://github.com/flutter/flutter/issues/178677): preview_detector_regression_178472_test.dart
* **Author:** [reidbaker](https://github.com/reidbaker)
* The `preview_detector_regression_178472_test.dart` file is failing static analysis on the 3.38 branch due to a missing required 'project' argument and an undefined 'projectRoot' parameter.

### [Issue #178633](https://github.com/flutter/flutter/issues/178633): Some examples using RadioListTile have not migrated yet
* **Author:** [huycozy](https://github.com/huycozy)
* Update API documentation examples for `BottomAppBar`, `AppLifecycleListener`, and `ServicesBinding` to use the new `RadioGroup` ancestor pattern instead of deprecated `RadioListTile` properties.

### [Issue #178591](https://github.com/flutter/flutter/issues/178591): Flutter web proxy serve static files
* **Author:** [Wdestroier](https://github.com/Wdestroier)
* This proposal requests the ability to configure the Flutter web proxy to serve static files from specified directories, with options for SPA fallback, to enable hosting multiple applications on the same port for cookie compatibility.

### [Issue #178547](https://github.com/flutter/flutter/issues/178547): Flutter 3.38 has issues rendering paths in canvas
* **Author:** [CodeDoctorDE](https://github.com/CodeDoctorDE)
* **Reactions:** **1** -- 👍 1
* This issue reports a regression in Flutter 3.38.1 on Linux where calling `toImage` on a `RepaintBoundary` or `PictureRecorder` fails to correctly render the background layer behind drawn paths.

### [Issue #178129](https://github.com/flutter/flutter/issues/178129): [packages] `drawImageScaled` is deprecated
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* Update the `camera_web` and `image_picker_for_web` packages to replace usages of the deprecated `drawImageScaled` method with `CanvasRenderingContext2D.drawImage`.

### [Issue #178123](https://github.com/flutter/flutter/issues/178123): [pointer_interceptor] `dart:html` is deprecated
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* The example application for the `pointer_interceptor` package should be updated to replace the usage of the deprecated `dart:html` library with `package:web` and `dart:js_interop`.

### [Issue #177633](https://github.com/flutter/flutter/issues/177633): ImagePicker.pickImage source: camera does not work in specific devices, redmi note 7 pro, android 10,
* **Author:** [sadi-cracktech](https://github.com/sadi-cracktech)
* The user reports that `ImagePicker.pickImage` causes a crash when using the camera source on specific Android 10 devices like the Redmi Note 7 Pro, resulting in a `ClassNotFoundException` regarding `RemoteWorkManagerClient` that persists despite adding `androidx.work` dependencies.

### [Issue #177430](https://github.com/flutter/flutter/issues/177430): [Flutter 3.32.7-io.flutter.embedding.engine.FlutterJNI.nativeSurfaceWindowChanged ANR triggered by slow operations in main thread]
* **Author:** [dhc-jiangsongwen](https://github.com/dhc-jiangsongwen)
* This issue reports an Application Not Responding (ANR) error occurring in `io.flutter.embedding.engine.FlutterJNI.nativeSurfaceWindowChanged` on Android devices using Flutter 3.32.7, observed through Firebase logs without a specific reproduction case.

### [Issue #177254](https://github.com/flutter/flutter/issues/177254): When the Flutter web app loads for the first time, it modifies the URL by adding a trailing slash.
* **Author:** [JC-Ama](https://github.com/JC-Ama)
* The user reports that a Flutter web application utilizing `go_router` automatically appends an unwanted trailing slash to the URL upon initial load, causing conflicts with the hosting Apache server configuration despite attempts to mitigate the issue via redirects.

### [Issue #158596](https://github.com/flutter/flutter/issues/158596): [flutter_svg] 'fitWidth' does not set the widget height properly
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Reactions:** **1** -- 👍 1
* This issue reports that using `BoxFit.fitWidth` with `SvgPicture` incorrectly calculates the widget dimensions, resulting in cropped content rather than scaling the height proportionally to the container's width.

### [Issue #130976](https://github.com/flutter/flutter/issues/130976): AccessibilityFeatures.disableAnimations flag is not set on app startup and animations are not disabled in app running on Android 12+ device.
* **Author:** [sanderpensa](https://github.com/sanderpensa)
* **Reactions:** **7** -- 👍 7
* This issue reports that the `AccessibilityFeatures.disableAnimations` flag fails to initialize correctly on app startup for Android 12+ devices, causing animations to remain active despite the system-wide "Remove animations" accessibility setting being enabled.

### [Issue #90218](https://github.com/flutter/flutter/issues/90218): Remote Flutter Widgets (rfw) package feedback thread
* **Author:** [Hixie](https://github.com/Hixie)
* **Reactions:** **80** -- 👍 28 🎉 32 ❤️ 20
* This issue serves as a centralized thread for collecting community feedback, use cases, and experiences regarding the Remote Flutter Widgets (rfw) package to evaluate its utility and future direction.


# GitHub PR Report for flutter/genui
## From 2025-11-18

Recent updates center on refining the A2UI schema and hardening platform compatibility for the repository. The A2UI schema underwent a significant refactor in [PR #544](https://github.com/flutter/genui/pull/544), which replaced the `Heading` component with `Text` usage hints and established iOS 15.0 as the minimum deployment target—a requirement reinforced by configuration updates in [PR #547](https://github.com/flutter/genui/pull/547). Substantial improvements were made to the component catalog, where [PR #553](https://github.com/flutter/genui/pull/553) fixed rendering issues for `Tabs`, `List`, and `Image` widgets, directly addressing functional gaps noted in [Issue #448](https://github.com/flutter/genui/issues/448). Additionally, the team improved the development infrastructure by adding necessary network entitlements for macOS and Android emulators ([PR #553](https://github.com/flutter/genui/pull/553), [PR #544](https://github.com/flutter/genui/pull/544)) and updating the `fix_copyright` utility to correctly ignore generated files via [PR #550](https://github.com/flutter/genui/pull/550).

## Merged Pull Requests

### [PR #553](https://github.com/flutter/genui/pull/553): Make the Catalog Gallery render all core widgets correctly
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* **Merged At:** 2025-11-18 03:50 PM
* **Comments:** 1
* Updates the `Tabs` widget implementation to manually switch views for better compatibility with unconstrained parents, adds macOS network entitlements to fix `Image` widget crashes, and re-enables the `Tabs`, `List`, and `Image` widgets in the Catalog Gallery with improved examples.

### [PR #550](https://github.com/flutter/genui/pull/550): Make fix_copyright ignore generated files.
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-11-18 12:23 PM
* **Comments:** 0
* Updates the `fix_copyright` script to automatically detect and ignore generated files, preventing the addition of copyright headers to code not intended for manual editing, and removes existing copyright headers from generated files throughout the repository to align with this new behavior.

### [PR #548](https://github.com/flutter/genui/pull/548): Update references to USAGE file
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-11-18 08:36 AM
* **Comments:** 0
* Updates documentation and code comments to reference the package `README.md` instead of the removed `USAGE.md` file, ensuring that links to Firebase configuration and logging instructions are correct.

### [PR #547](https://github.com/flutter/genui/pull/547): Fix issues related to gitignored files
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-11-18 03:57 PM
* **Comments:** 0
* Updates the `.gitignore` file to track standard Flutter platform configuration files and commits the missing `Podfile`, `Podfile.lock`, and generated plugin registrants to the example projects; additionally, this change raises the iOS deployment target to 15.0 and applies minor formatting fixes to the copyright utility.

### [PR #545](https://github.com/flutter/genui/pull/545): docs: rename usage section to "Getting Started" and update documentation
* **Author:** [abdallahshaban557](https://github.com/abdallahshaban557)
* **Merged At:** 2025-11-17 09:50 PM
* **Comments:** 0
* Renames the "Usage" section in the main README to "Getting Started" and updates the referenced link to point to the `genui` package's getting started guide.

### [PR #544](https://github.com/flutter/genui/pull/544): Update iOS and macOS runners to have the correct entitlements and pods
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-11-18 03:06 PM
* **Comments:** 0
* Updates iOS and macOS runners with correct entitlements, CocoaPods integration, and a minimum OS version of 15.0, while adding Android emulator support via network security configuration and dynamic server URL resolution; additionally, this change refactors the A2UI schema to replace the `Heading` component with `Text` using usage hints.


## Closed Issues

### [Issue #552](https://github.com/flutter/genui/issues/552): Images broken on readme.md on Github web interface
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* This issue reports that images hosted via raw GitHub content URLs are failing to render in the `README.md`, potentially due to a platform-wide issue, and suggests migrating to alternative hosting or user content uploads as a solution.

### [Issue #483](https://github.com/flutter/genui/issues/483): Clean up Landscape agent demo and branch to Gen UI repo with agent 
* **Author:** [sethladd](https://github.com/sethladd)
* Clean up the Landscape agent demo and branch it to the Gen UI repository to create a user-friendly, visually appealing, and ideally local client/server implementation that allows users to easily clone and test the project.

### [Issue #459](https://github.com/flutter/genui/issues/459): [Blocked] Implement Flutter version of shared demo for event
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)

### [Issue #448](https://github.com/flutter/genui/issues/448): Bugs and test-coverage gaps: catalog items do not work as expected.
* **Author:** [polina-c](https://github.com/polina-c)
* Fix broken examples for 'checkBox' and 'modal' catalog items, correct 'MultipleChoice' to render radio buttons when restricted to a single selection, and add descriptions to improve generated UI quality.


# GitHub PR Report for flutter/packages
## From 2025-11-18

Recent updates to the repository focused on web platform modernization, idiomatic code generation, and tooling dependency upgrades. Significant discussion accompanied [#10465](https://github.com/flutter/packages/pull/10465), which renamed the Pigeon-generated Swift file in `in_app_purchase_storekit` to `StoreKit2Messages.g.swift` to better align with Swift naming conventions. In an effort to prepare for WebAssembly support and remove deprecated APIs, [#10411](https://github.com/flutter/packages/pull/10411) migrated the `pointer_interceptor` example to `package:web` and replaced `drawImageScaled` usages in `camera_web` and `image_picker_for_web`. Additionally, tooling compatibility was extended in [#10466](https://github.com/flutter/packages/pull/10466), which updated `pigeon` to support `analyzer` versions 8.x and 9.x by migrating internal logic to use `Diagnostic` instead of `AnalysisError`.

## Merged Pull Requests

### [PR #10466](https://github.com/flutter/packages/pull/10466): [pigeon] Update analyzer range to 8-9
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-18 12:06 PM
* **Comments:** 1
* Updates the `analyzer` dependency range to support versions 8.x and 9.x, migrating internal code to use `Diagnostic` instead of `AnalysisError` and updating AST accessors to ensure compatibility with the latest analyzer releases.

### 🔥 [PR #10465](https://github.com/flutter/packages/pull/10465): [in_app_purchase] Rename Swift Pigeon output file
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-18 10:55 AM
* **Comments:** 8
* Renames the Pigeon-generated Swift output file in `in_app_purchase_storekit` from `sk2_pigeon.g.swift` to `StoreKit2Messages.g.swift` to adopt a more idiomatic naming convention that avoids underscores.

### [PR #10411](https://github.com/flutter/packages/pull/10411): Remove `dart:html` and `drawImageScaled` usages
* **Author:** [mdebbar](https://github.com/mdebbar)
* **Merged At:** 2025-11-18 08:18 AM
* **Comments:** 5
* Migrates the `pointer_interceptor` example from `dart:html` to `package:web` and replaces usages of the deprecated `drawImageScaled` API with `drawImage` in `camera_web` and `image_picker_for_web`.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-11-18

There were no merged pull requests or closed issues during this period, resulting in no notable changes to the repository's codebase, public API, or feature set.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-11-18

This update cycle focuses heavily on expanding resources for AI-driven development, highlighted by the introduction of the GenUI SDK documentation. A comprehensive new section was added in [PR #12696](https://github.com/flutter/website/pull/12696), covering core components and architecture, with subsequent refinements in [PR #12720](https://github.com/flutter/website/pull/12720) instructing users to rely on `dart pub add` for setup. Complementing this, the main index page was refactored to showcase a new "Create with AI" card in [PR #12710](https://github.com/flutter/website/pull/12710), and the AI rules documentation was updated to support environments like Claude Code in [PR #12718](https://github.com/flutter/website/pull/12718). Enhancing the documentation user experience, [PR #12680](https://github.com/flutter/website/pull/12680) introduced support for folding code blocks to improve readability, while [PR #12716](https://github.com/flutter/website/pull/12716) addressed a cross-platform build failure affecting Windows environments.

## Merged Pull Requests

### [PR #12721](https://github.com/flutter/website/pull/12721): Adjust and format GenUI SDK docs
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-11-18 12:23 PM
* **Comments:** 2
* Refines the GenUI SDK documentation by updating titles and navigation metadata, reformatting lists into definition and step sequences, and adjusting SASS styles to support these layout changes.

### [PR #12720](https://github.com/flutter/website/pull/12720): Rely on `dart pub add` in GenUI getting started
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-11-18 11:15 AM
* **Comments:** 2
* Updates the GenUI getting started documentation to instruct developers to use `dart pub add` for installing dependencies instead of manually editing `pubspec.yaml`, simplifying the setup process and avoiding the need to maintain version placeholders in the text.

### [PR #12718](https://github.com/flutter/website/pull/12718): Update AI rules by environment table
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-11-18 11:20 AM
* **Comments:** 3
* Updates the AI rules documentation table to include new environments like Claude Code and Google Antigravity, clarifies specific file paths and directory structures for configuration, and adds a note regarding the evolving nature of rule support.

### [PR #12716](https://github.com/flutter/website/pull/12716): fix: generate '/f/devtools-releases.json' on the Windows platform
* **Author:** [AmosHuKe](https://github.com/AmosHuKe)
* **Merged At:** 2025-11-18 10:02 AM
* **Comments:** 4
* Updates the `DevToolsReleaseNotesIndex` component to use platform-agnostic path construction for the release notes prefix, resolving a build failure on Windows caused by hardcoded forward slashes.

### [PR #12711](https://github.com/flutter/website/pull/12711): Simplify design systems section on widget catalog index page
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-11-18 12:35 PM
* **Comments:** 2
* Refactors the design systems section of the widget catalog to replace complex Liquid templating with inline `Card` components, and updates the `Card` implementation to allow linked cards to be rendered without a filled background.

### [PR #12710](https://github.com/flutter/website/pull/12710): Adjust cards on index page
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-11-18 12:30 PM
* **Comments:** 2
* Refactors the index page to manually build the card list instead of using Liquid templating and a data file, and adds a new "Create with AI" card.

### [PR #12696](https://github.com/flutter/website/pull/12696): GenUI for SDK docs
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2025-11-18 08:39 AM
* **Comments:** 3
* Adds a new documentation section for the GenUI SDK for Flutter, featuring an overview, a guide to core components and architecture, and a detailed getting started tutorial, while updating the side navigation to incorporate these resources.

### [PR #12680](https://github.com/flutter/website/pull/12680): Add folding support to code blocks
* **Author:** [schultek](https://github.com/schultek)
* **Merged At:** 2025-11-17 11:56 PM
* **Comments:** 2
* Adds support for defining folding ranges in code blocks using inline markers (`[*` and `*]`), allowing sections of code to be collapsed and expanded via nested `<details>` elements.


## Closed Issues

### [Issue #12628](https://github.com/flutter/website/issues/12628): Update links on FWE index page
* **Author:** [parlough](https://github.com/parlough)
* This issue reports broken links on the Flutter tutorial index page, likely caused by changes in the directory structure, and requests that they be updated to function correctly.



## Top Hacker News Stories

### 39  [Emoji Evidence Errors Don't Undo a Murder Conviction–People vs. Harmon](https://blog.ericgoldman.org/archives/2025/11/emoji-evidence-errors-dont-undo-a-murder-conviction-people-v-harmon.htm)
* **Author:** [hn_acker](https://news.ycombinator.com/user?id=hn_acker) | **Comments:** [21](https://news.ycombinator.com/item?id=45981009)

### 23  [Launch HN: Mosaic (YC W25) – Agentic Video Editing](https://mosaic.so)
* **Author:** [adishj](https://news.ycombinator.com/user?id=adishj) | **Comments:** [12](https://news.ycombinator.com/item?id=45980760)
* Mosaic is a node-based video editing platform that utilizes multimodal AI agents to automate complex workflows, such as creating rough cuts or repurposing content from raw footage. By replacing manual editing with a configurable canvas, it handles the bulk of the processing through visual intelligence while allowing users to refine the results in an inline timeline editor before exporting.

### 255 🔥🔥 [Your Smartphone, Their Rules: App Stores Enable Corporate-Government Censorship](https://www.aclu.org/news/free-speech/app-store-oligopoly)
* **Author:** [pabs3](https://news.ycombinator.com/user?id=pabs3) | **Comments:** [127](https://news.ycombinator.com/item?id=45979297)

### 47  [Programming the Commodore 64 with .NET](https://retroc64.github.io/)
* **Author:** [mariuz](https://news.ycombinator.com/user?id=mariuz) | **Comments:** [4](https://news.ycombinator.com/item?id=45920490)

### 163 🔥 [The $1k AWS Mistake](https://www.geocod.io/code-and-coordinates/2025-11-18-the-1000-aws-mistake/)
* **Author:** [thecodemonkey](https://news.ycombinator.com/user?id=thecodemonkey) | **Comments:** [158](https://news.ycombinator.com/item?id=45977744)

### 127 🔥 [The Peaceful Transfer of Power in Open Source Projects](https://shkspr.mobi/blog/2025/11/the-peaceful-transfer-of-power-in-open-source-projects/)
* **Author:** [edent](https://news.ycombinator.com/user?id=edent) | **Comments:** [72](https://news.ycombinator.com/item?id=45979232)

### 1581 🔥🔥🔥 [Gemini 3](https://blog.google/products/gemini/gemini-3/)
* **Author:** [preek](https://news.ycombinator.com/user?id=preek) | **Comments:** [985](https://news.ycombinator.com/item?id=45967211)
* This submission provides the official blog post announcing **Gemini 3** for developers, alongside a direct link to test the **Gemini 3 Pro Preview** model within Google AI Studio.

### 94  [Multimodal Diffusion Language Models for Thinking-Aware Editing and Generation](https://github.com/tyfeld/MMaDA-Parallel)
* **Author:** [lnyan](https://news.ycombinator.com/user?id=lnyan) | **Comments:** [8](https://news.ycombinator.com/item?id=45977542)

### 403 🔥🔥 [I made a down detector for down detector](https://downdetectorsdowndetector.com)
* **Author:** [gusowen](https://news.ycombinator.com/user?id=gusowen) | **Comments:** [126](https://news.ycombinator.com/item?id=45974012)

### 92  [The Future of Programming (2013) [video]](https://www.youtube.com/watch?v=8pTEmbeENF4)
* **Author:** [jackdoe](https://news.ycombinator.com/user?id=jackdoe) | **Comments:** [54](https://news.ycombinator.com/item?id=45912457)

### 88  [How to Stay Sane in a World That Rewards Insanity](https://www.joanwestenberg.com/p/how-to-stay-sane-in-a-world-that-rewards-insanity)
* **Author:** [enbywithunix](https://news.ycombinator.com/user?id=enbywithunix) | **Comments:** [56](https://news.ycombinator.com/item?id=45980106)

### 992 🔥🔥🔥 [Google Antigravity](https://antigravity.google/)
* **Author:** [Fysi](https://news.ycombinator.com/user?id=Fysi) | **Comments:** [971](https://news.ycombinator.com/item?id=45967814)
* This submission links to a Google blog post introducing **Google Antigravity** and an accompanying YouTube video.

### 212 🔥 [I just want working RCS messaging](https://wt.gd/i-just-want-my-rcs-messaging-to-work)
* **Author:** [joecool1029](https://news.ycombinator.com/user?id=joecool1029) | **Comments:** [201](https://news.ycombinator.com/item?id=45974869)

### 26  [Learning to Boot from PXE](https://blog.imraniqbal.org/learning-to-boot-from-pxe/)
* **Author:** [speckx](https://news.ycombinator.com/user?id=speckx) | **Comments:** [12](https://news.ycombinator.com/item?id=45978245)

### 176 🔥 [Ultima VII Revisited](https://github.com/ViridianGames/U7Revisited)
* **Author:** [erickhill](https://news.ycombinator.com/user?id=erickhill) | **Comments:** [55](https://news.ycombinator.com/item?id=45893007)

### 439 🔥🔥 [Pebble, Rebble, and a path forward](https://ericmigi.com/blog/pebble-rebble-and-a-path-forward/)
* **Author:** [phoronixrly](https://news.ycombinator.com/user?id=phoronixrly) | **Comments:** [228](https://news.ycombinator.com/item?id=45969250)

### 194 🔥 [Show HN: Browser-based interactive 3D Three-Body problem simulator](https://trisolarchaos.com/?pr=O_8(0.6)&n=3&s=5.0&so=0.00&im=rk4&dt=1.00e-4&rt=1.0e-6&at=1.0e-8&bs=0.15&sf=0&sv=0&cm=free&kt=1&st=1&tl=1500&cp=2.5208,1.5125,2.5208&ct=0.0000,0.0000,0.1670)
* **Author:** [jgchaos](https://news.ycombinator.com/user?id=jgchaos) | **Comments:** [79](https://news.ycombinator.com/item?id=45967079)
* This **Three.js** implementation visualizes the 3-body problem in full 3D, distinguishing itself from common 2D simulators by offering camera controls, force vectors, and timeline scrubbing. It features a collection of periodic orbits, including complex non-planar solutions derived from Li and Liao's recent database of over 10,000 configurations.

### 74  [Pimped Amiga 500](https://www.pimyretro.org/pimped-amiga-500/)
* **Author:** [onename](https://news.ycombinator.com/user?id=onename) | **Comments:** [34](https://news.ycombinator.com/item?id=45978545)

### 24  [Itiner-e: A high-resolution dataset of roads of the Roman Empire](https://www.nature.com/articles/s41597-025-06140-z)
* **Author:** [benbreen](https://news.ycombinator.com/user?id=benbreen) | **Comments:** [4](https://news.ycombinator.com/item?id=45891346)

### 925 🔥🔥🔥 [Blender 5.0](https://www.blender.org/download/releases/5-0/)
* **Author:** [FrostKiwi](https://news.ycombinator.com/user?id=FrostKiwi) | **Comments:** [299](https://news.ycombinator.com/item?id=45972519)

### 79  [I wrote a Pong game in a 512-byte boot sector](https://akshatjoshi.com/i-wrote-a-pong-game-in-a-512-byte-boot-sector/)
* **Author:** [akshat666](https://news.ycombinator.com/user?id=akshat666) | **Comments:** [13](https://news.ycombinator.com/item?id=45933932)

### 1350 🔥🔥🔥 [Cloudflare outage on November 18, 2025 post mortem](https://blog.cloudflare.com/18-november-2025-outage/)
* **Author:** [eastdakota](https://news.ycombinator.com/user?id=eastdakota) | **Comments:** [791](https://news.ycombinator.com/item?id=45973709)
* The provided text references a related Hacker News discussion from November 2025 regarding operational issues with the **Cloudflare Global Network**.

### 258 🔥🔥 [Gemini 3 Pro Model Card [pdf]](https://storage.googleapis.com/deepmind-media/Model-Cards/Gemini-3-Pro-Model-Card.pdf)
* **Author:** [virgildotcodes](https://news.ycombinator.com/user?id=virgildotcodes) | **Comments:** [326](https://news.ycombinator.com/item?id=45963670)

### 184 🔥 [The code and open-source tools I used to produce a science fiction anthology](https://compellingsciencefiction.com/posts/the-code-and-open-source-tools-i-used-to-produce-a-science-fiction-anthology.html)
* **Author:** [mojoe](https://news.ycombinator.com/user?id=mojoe) | **Comments:** [33](https://news.ycombinator.com/item?id=45968121)
* The provided text references a related Hacker News discussion titled *Think Weirder: The Year's Best SciFi Ideas*, which originally took place in November 2025.

### 2402 🔥🔥🔥 [Cloudflare Global Network experiencing issues](https://www.cloudflarestatus.com/incidents/8gmgl950y3h7)
* **Author:** [imdsm](https://news.ycombinator.com/user?id=imdsm) | **Comments:** [1622](https://news.ycombinator.com/item?id=45963780)



