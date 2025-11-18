# Overall Summary
Here are the highlights from the provided reports:

*   **🔥 [Issue #163845](https://github.com/flutter/flutter/issues/163845): Xcode DerivedData causes unexpected behavior in Flutter project after adding the new iPhone 16e simulator**
    *   **Reactions:** **63** -- 👍 33 🎉 11 ❤️ 9 🚀 10
    *   Adding the iPhone 16e simulator triggers Xcode build errors in Flutter projects due to default DerivedData configurations; this is currently resolved by changing the Derived Data setting to a project-relative location.
*   **[PR #178665](https://github.com/flutter/flutter/pull/178665): Reverts "Enable UIScene Migration and update create templates"**
    *   **Comments:** 1
    *   Reverts the default enablement of the `UIScene` migration tool and restores iOS templates to their previous state to address post-submit failures. This temporarily postpones the resolution for the Xcode lifecycle warnings described in **[Issue #167267](https://github.com/flutter/flutter/issues/167267)** (**7** reactions).
*   **[PR #178162](https://github.com/flutter/flutter/pull/178162): Dev proxy correctly copy query parameters from original request**
    *   **Comments:** 5
    *   Updates the development proxy middleware to preserve query parameters when rewriting the request path, resolving **[Issue #178152](https://github.com/flutter/flutter/issues/178152)** where parameters were being stripped from requests.
*   **[PR #178640](https://github.com/flutter/flutter/pull/178640): Add DropdownMenuFormField.decorationBuilder**
    *   Adds the `decorationBuilder` property to `DropdownMenuFormField` and passes it to the underlying `DropdownMenu`, allowing for custom input decorations within form fields.
*   **[PR #10450](https://github.com/flutter/packages/pull/10450): [various] Update all packages to Pigeon 26**
    *   Updates all packages to use Pigeon 26 to ensure compatibility with `analyzer` 8.x and incorporates generated equality operators for data classes.
*   **[PR #12679](https://github.com/flutter/website/pull/12679): Refactor user input radio buttons to use RadioGroup**
    *   **Comments:** 4
    *   Updates the user input documentation and code samples to use the `RadioGroup` widget, reflecting the deprecation of the `groupValue` and `onChanged` parameters in the `Radio` widget.
*   **[Issue #178421](https://github.com/flutter/flutter/issues/178421): After upgrading to Flutter 3.38.0, VSCode/Cursor cannot run debug mode on a real iPhone**
    *   **Reactions:** **3** -- 👍 3
    *   Users report that debug mode fails to launch on physical iPhones when using VSCode or Cursor after upgrading to 3.38.0, causing the application to freeze with a blank screen.


# GitHub PR Report for dart-lang/ai
## From 2025-11-17

There were no merged pull requests or closed issues during this period, resulting in no changes to the repository's code base, public API surface, or language features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2025-11-17

Recent activity focused on resolving issues related to developer tooling and compiler correctness. Enhancements to the editing experience include fixes for autocompletion failing on enum dot shorthands within `switch` expressions [[#61995](https://github.com/dart-lang/sdk/issues/61995)] and corrections to hover ranges improperly including operands [[#62000](https://github.com/dart-lang/sdk/issues/62000)]. On the compiler side, the Dart Dev Compiler was patched to ensure necessary dynamic checks are generated for getter invocations returning `dynamic` derived from type arguments [[#60643](https://github.com/dart-lang/sdk/issues/60643)], and regressions regarding constant coverage for extension type constructors were resolved [[#61947](https://github.com/dart-lang/sdk/issues/61947)]. Additionally, the team addressed a proposal for a new lint rule, `nullable_extension_type_with_nullable_representation`, aiming to reduce complexity by flagging extension types marked nullable when their representation is already nullable [[#59367](https://github.com/dart-lang/sdk/issues/59367)].

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62000](https://github.com/dart-lang/sdk/issues/62000): Hover range incorrectly includes operands when hovering over operators
* **Author:** [DanTup](https://github.com/DanTup)
* The hover range incorrectly encompasses the full expression including operands when hovering over an operator, violating the protocol expectation that the range should only include the characters sharing the same hover information.

### [Issue #61995](https://github.com/dart-lang/sdk/issues/61995): Autocompletion does not work for enum Dot Shorthands in `switch` expressions
* **Author:** [yarmel](https://github.com/yarmel)
* Code completion fails to suggest enum values when using the dot shorthand syntax within `switch` expressions, despite valid compilation and functionality in other contexts.

### [Issue #61947](https://github.com/dart-lang/sdk/issues/61947): Failures on [cfe] Record constant coverage for extension type constructors
* **Author:** [mkustermann](https://github.com/mkustermann)
* A recent commit regarding recording constant coverage for extension type constructors has triggered runtime errors in numerous `co19` tests on the `vm-aot-dyn-linux-debug-x64` configuration.

### [Issue #60643](https://github.com/dart-lang/sdk/issues/60643): [ddc] Missing dynamic checks on getter invocations when getter returns dynamic from a type argument
* **Author:** [nshahan](https://github.com/nshahan)
* The Dart Dev Compiler fails to generate necessary dynamic checks for invocations on values returned by getters when the return type is `dynamic` derived from a type argument, allowing invalid function calls to execute without throwing expected errors.

### [Issue #59367](https://github.com/dart-lang/sdk/issues/59367): proposal: `nullable_extension_type_with_nullable_representation`
* **Author:** [eernstg](https://github.com/eernstg)
* This proposal requests a new lint rule, `nullable_extension_type_with_nullable_representation`, to flag occurrences where an extension type is explicitly marked nullable (e.g., `E?`) when its instantiated representation type is already nullable, aiming to avoid unnecessary "doubly nullable" complexity.


# GitHub PR Report for dart-lang/language
## From 2025-11-17

There were no merged pull requests or closed issues during this reporting period, resulting in no modifications to the repository's codebase, public API surface, or language features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2025-11-17

There were no merged pull requests or closed issues during this period, resulting in no updates to the repository's codebase, public API surface, or language features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/ai
## From 2025-11-17

There were no merged pull requests or closed issues during this period, resulting in no updates to the repository's codebase, public API surface, or language features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-11-17

There were no changes to the repository during this period, as no pull requests were merged and no issues were closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-11-17

Development efforts in this period focused heavily on stabilizing the **Widget Preview** tool, reverting a major iOS template change, and enhancing `DropdownMenu` customization. The tooling team reverted the default enablement of the UIScene migration feature in [PR #178665] (originally introduced in [PR #178328]), postponing the resolution for the Xcode lifecycle warnings described in [Issue #167267] to address post-submit failures. Significant work went into hardening the Widget Preview tool, including fixes for crashes when project configuration files are missing ([PR #178662], [PR #178394]), better handling of analysis context disposal ([PR #178646]), and improved error messaging when Flutter Web is not enabled ([PR #178534]). On the framework side, `DropdownMenuFormField` received a new `decorationBuilder` property in [PR #178640], allowing for custom input decorations, with a subsequent fix for width calculations landing in [PR #178465]. In the build system, support was added for Visual Studio 2026 ([PR #178450]), and the web development proxy was patched to correctly forward query parameters ([PR #178162]). Additionally, a highly reacted issue concerning Xcode DerivedData conflicts with the iPhone 16e simulator was closed ([Issue #163845]).

## Merged Pull Requests

### [PR #178679](https://github.com/flutter/flutter/pull/178679): Fix analysis error due to incorrect arguments
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-11-17 02:13 PM
* **Comments:** 3
* Fixes an analysis error in `preview_detector_regression_178472_test.dart` by updating the `PreviewDetector` constructor instantiation to pass the `project` instance instead of `projectRoot`.

### [PR #178665](https://github.com/flutter/flutter/pull/178665): Reverts "Enable UIScene Migration and update create templates (#178328)"
* **Author:** [auto-submit[bot]](https://github.com/apps/auto-submit)
* **Merged At:** 2025-11-17 11:09 AM
* **Comments:** 1
* Reverts the default enablement of the UIScene migration tool and restores iOS app and module templates to their previous state by removing `SceneDelegate` configuration, addressing post-submit test failures.

### [PR #178662](https://github.com/flutter/flutter/pull/178662): [ Widget Preview ] Fix crash when `widget_preview_scaffold/.dart_tool` doesn't exist
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-11-17 02:10 PM
* **Comments:** 1
* Fixes a crash in `flutter widget-preview start` by ensuring that the package configuration is regenerated if the `widget_preview_scaffold/.dart_tool` directory is missing, preventing the tool from incorrectly resolving the parent project's `package_config.json`.

### [PR #178652](https://github.com/flutter/flutter/pull/178652): Roll customer tests
* **Author:** [Piinks](https://github.com/Piinks)
* **Merged At:** 2025-11-17 01:10 PM
* **Comments:** 0
* Rolls the customer tests version to incorporate recent changes from the flutter/tests repository, aiming to unblock the roll.

### [PR #178646](https://github.com/flutter/flutter/pull/178646): [CP-stable][ Widget Preview ] Gracefully handle unexpected analysis context disposal
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-11-17 11:21 AM
* **Comments:** 2
* Updates the `widget_preview` tool to gracefully handle unexpected analysis context disposal by validating analysis results and catching `DisposedAnalysisContextResult` exceptions, preventing crashes when the tool exits while analyzing file changes.

### [PR #178640](https://github.com/flutter/flutter/pull/178640): Add DropdownMenuFormField.decorationBuilder
* **Author:** [bleroux](https://github.com/bleroux)
* **Merged At:** 2025-11-17 03:19 PM
* **Comments:** 0
* Adds the `decorationBuilder` property to `DropdownMenuFormField` and passes it to the underlying `DropdownMenu`, allowing for custom input decorations within form fields.

### [PR #178638](https://github.com/flutter/flutter/pull/178638): [CP-stable]Roll dartdoc to 9.0.0
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-11-17 12:35 PM
* **Comments:** 3
* Updates the `dartdoc` version to 9.0.0 to ensure that classes marked with `@Deprecated.implement` are not crossed out in the generated API documentation.

### [PR #178598](https://github.com/flutter/flutter/pull/178598): Remove unnecessary `final` modifier in `StandardMessageCodec.java‎`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-17 02:41 PM
* **Comments:** 0
* Removes the unnecessary `final` modifier from multiple protected static methods in `StandardMessageCodec.java` and simplifies boolean unboxing in the `writeValue` method.

### [PR #178597](https://github.com/flutter/flutter/pull/178597): Remove unnecessary `String.valueOf` in `‎ListenableEditingState.java‎`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-17 10:03 AM
* **Comments:** 1
* Removes an unnecessary `String.valueOf` call in `ListenableEditingState.java` when logging the listener count, relying on implicit string concatenation instead.

### [PR #178594](https://github.com/flutter/flutter/pull/178594): Improve code quality `FlutterViewTest.java` 
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-17 01:29 PM
* **Comments:** 0
* Refactors `FlutterViewTest.java` to use specific JUnit assertion methods like `assertNull` and `assertSame`, corrects the argument order in `assertEquals` calls, and removes a stale TODO comment.

### [PR #178589](https://github.com/flutter/flutter/pull/178589): fix typos in `PlatformChannel.java‎` docs
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-17 12:19 PM
* **Comments:** 1
* Corrects spelling errors in the `PlatformChannel.java` documentation comments.

### [PR #178587](https://github.com/flutter/flutter/pull/178587): Update `Metadata.java‎` to use `getBytes` in a static context
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-17 09:47 AM
* **Comments:** 0
* Updates `Metadata.java` to call `ImageUtils.getBytes` statically, eliminating an unnecessary object instantiation during image metadata reading.

### [PR #178584](https://github.com/flutter/flutter/pull/178584): Small refactor in `DartMessenger.java` to use method reference
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-17 12:19 PM
* **Comments:** 4
* Refactors `DartMessenger.java` to use a method reference instead of a lambda expression when scheduling the `flush` task in the `SerialTaskQueue`.

### [PR #178574](https://github.com/flutter/flutter/pull/178574): Small cleanup in `AndroidTouchProcessor.java‎`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-17 02:57 PM
* **Comments:** 0
* Simplifies the conditional logic in `AndroidTouchProcessor.java` by inverting the check for pointer and movement events to remove an empty `if` block.

### [PR #178545](https://github.com/flutter/flutter/pull/178545): Revert "Separate copying dsym into its own target (#178261)"
* **Author:** [vashworth](https://github.com/vashworth)
* **Merged At:** 2025-11-17 08:37 AM
* **Comments:** 0
* Reverts the separation of dSYM copying into a distinct build target, restoring the logic to the iOS and macOS unpack targets as the original change was found to be unnecessary.

### [PR #178542](https://github.com/flutter/flutter/pull/178542): [CP-stable]Allow empty dart defines in `flutter assemble`
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-11-17 11:26 AM
* **Comments:** 2
* Updates the `flutter assemble` command to ignore empty strings when parsing Dart defines, which prevents "Improperly formatted define flag" errors that were causing build failures in iOS add-to-app scenarios.

### [PR #178534](https://github.com/flutter/flutter/pull/178534): [CP-stable][ Widget Preview ] Throw `ToolExit` if Flutter Web is not enabled
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-11-17 11:30 AM
* **Comments:** 2
* Modifies the `widget-preview start` command to throw a descriptive `ToolExit` error when Flutter Web is disabled, guiding the user to enable it via `flutter config` instead of failing with an obscure exception.

### [PR #178512](https://github.com/flutter/flutter/pull/178512): Reduce the data copying in CanvasPath related to the SkPathBuilder API migration
* **Author:** [jason-simmons](https://github.com/jason-simmons)
* **Merged At:** 2025-11-17 09:27 AM
* **Comments:** 2
* Reduces data copying in `CanvasPath` by updating `transform` and `shift` to modify the target builder in place, and updates path accessors to retrieve `SkPath` snapshots via `CanvasPath::path` to leverage `DlPath` caching.

### [PR #178497](https://github.com/flutter/flutter/pull/178497): [CP-stable][ Widget Preview ] Ignore modifications to files in ephemeral directories
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-11-17 11:31 AM
* **Comments:** 2
* Updates the widget previewer to ignore file system events in ephemeral directories and files lacking a valid analysis context, preventing crashes that occur when `flutter pub get` modifies plugin dependencies.

### [PR #178469](https://github.com/flutter/flutter/pull/178469): [CP-stable][ Tool ] Only process a single unhandled tool exception
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-11-17 12:17 PM
* **Comments:** 2
* Updates the `flutter_tools` runner to process only the first unhandled exception during execution, ensuring that a single process crash generates only one crash report even if additional asynchronous errors occur during shutdown.

### [PR #178465](https://github.com/flutter/flutter/pull/178465): Fix DropdownMenu width when decorationBuilder provides label
* **Author:** [bleroux](https://github.com/bleroux)
* **Merged At:** 2025-11-17 03:40 PM
* **Comments:** 0
* Fixes the `DropdownMenu` preferred width calculation to include the label provided by `DropdownMenu.decorationBuilder`, ensuring that the widget expands to accommodate labels defined within the decoration.

### [PR #178450](https://github.com/flutter/flutter/pull/178450): [CP-stable]Add support for Visual Studio 2026
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-11-17 11:35 AM
* **Comments:** 2
* Adds support for Visual Studio 2026 to the Windows build tools, ensuring the correct CMake generator string is used when compiling desktop applications.

### [PR #178408](https://github.com/flutter/flutter/pull/178408): [CP-beta] fix: infra out of resources
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* **Merged At:** 2025-11-17 11:12 AM
* **Comments:** 2
* Updates the CI configuration to include `Mac-15.7` in the list of allowed OS versions, addressing infrastructure resource constraints by utilizing upgraded Mac bots.

### [PR #178394](https://github.com/flutter/flutter/pull/178394): [CP-stable][ Widget Preview ] Don't require 'flutter pub get' to be run in the root project
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-11-17 11:56 AM
* **Comments:** 4
* Modifies the widget preview command to validate project existence by checking for a `pubspec.yaml` file instead of the `.dart_tool` directory, enabling the previewer to start even if `flutter pub get` has not been run.

### [PR #178375](https://github.com/flutter/flutter/pull/178375): Fix LateInitializationError in didChangeTextScaleFactor code example.
* **Author:** [ksokolovskyi](https://github.com/ksokolovskyi)
* **Merged At:** 2025-11-17 12:46 PM
* **Comments:** 2
* Fixes a `LateInitializationError` in the `didChangeTextScaleFactor` documentation example by initializing the `_lastTextScaleFactor` variable at declaration instead of declaring it as `late`.

### [PR #178328](https://github.com/flutter/flutter/pull/178328): Enable UIScene Migration and update create templates
* **Author:** [vashworth](https://github.com/vashworth)
* **Merged At:** 2025-11-17 08:46 AM
* **Comments:** 1
* Updates the iOS app and module templates to utilize `UIScene` by adding `SceneDelegate` and configuring the `Info.plist` manifest, and enables the automatic `UIScene` migration feature by default.

### [PR #178239](https://github.com/flutter/flutter/pull/178239): [web] Reduce Skwasm test shards to 2
* **Author:** [mdebbar](https://github.com/mdebbar)
* **Merged At:** 2025-11-17 07:59 AM
* **Comments:** 0
* Reduces the number of CI shards for Skwasm web tests from eight to two and refactors the test suite runner to support different shard counts for CanvasKit and Skwasm executions.

### [PR #178162](https://github.com/flutter/flutter/pull/178162): Dev proxy correctly copy query parameters from original request
* **Author:** [woprandi](https://github.com/woprandi)
* **Merged At:** 2025-11-17 01:52 PM
* **Comments:** 5
* Updates the development proxy middleware to preserve query parameters when rewriting the request path, ensuring they are correctly forwarded to the target URI.

### [PR #178158](https://github.com/flutter/flutter/pull/178158): Corrects invalid Flutter wiki links
* **Author:** [srivats22](https://github.com/srivats22)
* **Merged At:** 2025-11-17 12:59 PM
* **Comments:** 1
* Updates various README and documentation files to replace invalid GitHub Wiki links with their corresponding file paths in the `docs/` directory.

### [PR #177477](https://github.com/flutter/flutter/pull/177477): Make a11y `computeChildGeometry` slightly faster
* **Author:** [LongCatIsLooong](https://github.com/LongCatIsLooong)
* **Merged At:** 2025-11-17 03:56 PM
* **Comments:** 1
* Optimizes accessibility geometry computation by refactoring `_SemanticsGeometry` to minimize matrix allocations and inversions, and introduces `MatrixUtils.multiplyInPlace` to further reduce overhead during transform calculations.


## Closed Issues

### [Issue #178671](https://github.com/flutter/flutter/issues/178671): win-11 in quarantined state because the local Temp directory exceeded 1024 files.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The win-11 machine has been placed in a quarantined state because the number of files in its local Temp directory exceeded the limit of 1024.

### [Issue #178668](https://github.com/flutter/flutter/issues/178668): mac-34 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The mac-34 machine has reported a lost external connection to the phone device.

### [Issue #178660](https://github.com/flutter/flutter/issues/178660): [ Widget Preview ] Crash when `.dart_tool/widget_preview_scaffold/.dart_tool` doesn't exist on subsequent runs
* **Author:** [bkonyi](https://github.com/bkonyi)
* The Widget Preview tool crashes with a `StateError` on subsequent runs if the `.dart_tool/widget_preview_scaffold/.dart_tool` directory is missing, typically resulting from an interrupted start command or a failure to run `flutter pub get` during initialization.

### [Issue #178656](https://github.com/flutter/flutter/issues/178656): mac-40 is low on local disk space.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The mac-40 machine is reported to be low on local disk space.

### [Issue #178655](https://github.com/flutter/flutter/issues/178655): win-19 in quarantined state because the local Temp directory exceeded 1024 files.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The `win-19` machine is currently in a quarantined state because the file count in the local Temp directory has exceeded the limit of 1024 files.

### [Issue #178654](https://github.com/flutter/flutter/issues/178654): linux-17 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The issue reports that the `linux-17` machine has lost its external connection to the connected phone device.

### [Issue #178648](https://github.com/flutter/flutter/issues/178648): `visual_studio.dart` not detecting Visual Studio 18 2026
* **Author:** [Creeper19472](https://github.com/Creeper19472)
* The `visual_studio.dart` tool logic fails to correctly identify Visual Studio 2026 (version 18), causing it to default to the Visual Studio 2019 CMake generator and resulting in build failures on systems where only the newer version is installed.

### [Issue #178459](https://github.com/flutter/flutter/issues/178459): DropdownMenu wrong width when decorationBuilder provides label
* **Author:** [bleroux](https://github.com/bleroux)
* The DropdownMenu widget fails to calculate sufficient width to display the full label text when an InputDecoration is provided via the decorationBuilder property.

### [Issue #178421](https://github.com/flutter/flutter/issues/178421): After upgrading to Flutter 3.38.0, VSCode/Cursor cannot run debug mode on a real iPhone
* **Author:** [rs5173](https://github.com/rs5173)
* **Reactions:** **3** -- 👍 3
* Users report that after upgrading to Flutter 3.38.0, debug mode fails to launch on physical iPhones when using VSCode or Cursor, causing the application to freeze with a blank screen unless `enable-lldb-debugging` is disabled via config.

### [Issue #178362](https://github.com/flutter/flutter/issues/178362): Linux_pixel_7pro integration_ui_driver is 2.06% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* The `Linux_pixel_7pro integration_ui_driver` post-submit test builder has exceeded the 2.00% flakiness threshold with a 2.06% failure rate over the past 100 commits.

### [Issue #178152](https://github.com/flutter/flutter/issues/178152): New web dev proxy does not proxy query string
* **Author:** [woprandi](https://github.com/woprandi)
* **Reactions:** **2** -- 👍 2
* The web development proxy configured via `web_dev_config.yaml` fails to forward query strings to the upstream server, causing parameters to be stripped from requests matching the defined proxy rules.

### [Issue #177797](https://github.com/flutter/flutter/issues/177797): Replace github.com/flutter/flutter/wiki links with end page
* **Author:** [guidezpl](https://github.com/guidezpl)
* **Reactions:** **1** -- 👍 1
* Update outdated references to the Flutter Wiki to point to the migrated markdown files in the repository's `docs` directory, ensuring that complex cases like constructed links and specific anchors are handled correctly.

### [Issue #177655](https://github.com/flutter/flutter/issues/177655): Flutter crash with widget previewer on package path
* **Author:** [shaakunuigurumi](https://github.com/shaakunuigurumi)
* Executing `flutter widget-preview start` from a package directory within a pub workspace triggers a `StateError` because the build system fails to verify the run package name against the workspace's `package_config.json`.

### [Issue #177535](https://github.com/flutter/flutter/issues/177535): TypeError: "CameraInfo is not a subtype of CameraInfo" caused by mixed imports of camerax_library.g.dart and camerax_library.dart
* **Author:** [m8811163008](https://github.com/m8811163008)
* A runtime `TypeError` regarding incompatible `CameraInfo` types occurs in `camera_android_camerax` because mixed imports of the generated Pigeon bindings (`camerax_library.g.dart`) and the wrapper utility (`camerax_library.dart`) cause Dart to treat the classes as distinct entities.

### [Issue #177530](https://github.com/flutter/flutter/issues/177530): [tool_crash] FileSystemException: Cannot create file, OS Error: The system cannot find the file specified., errno = 2
* **Author:** [marcbet659](https://github.com/marcbet659)
* The `flutter create` command crashes with a `FileSystemException: Cannot create file` (errno 2) when using the `--overwrite` flag during template rendering on Windows.

### [Issue #177395](https://github.com/flutter/flutter/issues/177395): CP .ci.yaml in flutter/flutter to use macOS 15.5
* **Author:** [vashworth](https://github.com/vashworth)
* This issue requests a cherry-pick of changes to the `.ci.yaml` file to support macOS 15.5 on the beta and stable channels.

### [Issue #177266](https://github.com/flutter/flutter/issues/177266): [UIScene] Enable UIScene migration feature as default
* **Author:** [vashworth](https://github.com/vashworth)
* Update the `enable-uiscene-migration` feature flag in the Flutter tools package to be enabled by default.

### [Issue #177265](https://github.com/flutter/flutter/issues/177265): [UIScene] Update create templates to support UIScene
* **Author:** [vashworth](https://github.com/vashworth)
* Update the application creation templates to support UIScene by modifying the `AppDelegate` to use `FlutterImplicitEngineDelegate` and adding `UIApplicationSceneManifest` to `Info.plist`.

### [Issue #176509](https://github.com/flutter/flutter/issues/176509): “impellerc” can’t be opened because Apple cannot check it for malicious software.
* **Author:** [Bshaik](https://github.com/Bshaik)
* The user reports that running a Flutter application on an M3 MacBook Pro fails because macOS blocks the `impellerc` binary with a "cannot check for malicious software" security error.

### [Issue #170293](https://github.com/flutter/flutter/issues/170293): [UIScene][tool] Add SceneDelegate in iOS new project template
* **Author:** [hellohuanlin](https://github.com/hellohuanlin)
* This proposal requests the inclusion of a `SceneDelegate` class subclassing `FlutterSceneDelegate` in the new iOS project template to correctly handle multi-scene application lifecycles and preserve scene-specific information that is lost when relaying events to the `AppDelegate`.

### [Issue #167267](https://github.com/flutter/flutter/issues/167267): UIScene warning in Xcode `CLIENT OF UIKIT REQUIRES UPDATE: This process does not adopt UIScene lifecycle. This will become an assert in a future version.`
* **Author:** [danagbemava-nc](https://github.com/danagbemava-nc)
* **Reactions:** **7** -- 👍 7
* This issue reports a warning generated in Xcode 16.3 when running Flutter apps on iOS 18.4+ stating that the process does not adopt the UIScene lifecycle, which will become a hard assertion in future versions.

### [Issue #163845](https://github.com/flutter/flutter/issues/163845): Xcode DerivedData causes unexpected behavior in Flutter project after adding the new iPhone 16e simulator
* **Author:** [xybl3](https://github.com/xybl3)
* **Reactions:** **63** -- 👍 33 🎉 11 ❤️ 9 🚀 10
* This issue reports that adding the iPhone 16e simulator triggers Xcode build errors in Flutter projects due to default DerivedData configurations, a problem that can be resolved by changing the Derived Data setting to a project-relative location.


# GitHub PR Report for flutter/genui
## From 2025-11-17

Recent updates centered on solidifying the framework's backend-agnostic capabilities and aligning developer resources with the current API surface. The `genui_google_generative_ai` package was made publishable via [PR #541](https://github.com/flutter/genui/pull/541), coinciding with significant documentation revisions in [PR #542](https://github.com/flutter/genui/pull/542) and [PR #539](https://github.com/flutter/genui/pull/539) that highlight alternative `ContentGenerator` implementations and introduce a project overview video (addressing [Issue #522](https://github.com/flutter/genui/issues/522) and [Issue #529](https://github.com/flutter/genui/issues/529)). The developer guides were modernized in [PR #531](https://github.com/flutter/genui/pull/531) to utilize `subscribeToString` and improved UI patterns, ensuring consistency with the latest public API. Functionally, [PR #536](https://github.com/flutter/genui/pull/536) improved the basic chat application by refining system prompts to strictly enforce unique surface creation and correct data model path generation.

## Merged Pull Requests

### [PR #542](https://github.com/flutter/genui/pull/542): Update readme to highlight alternative content generators
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* **Merged At:** 2025-11-17 03:59 PM
* **Comments:** 0
* Updates the README to document alternative `ContentGenerator` implementations, clarifying that the framework is backend-agnostic and detailing specific use cases for the `genui_google_generative_ai` and `genui_a2ui` packages alongside the existing Firebase integration.

### [PR #541](https://github.com/flutter/genui/pull/541): Make genui_google_generative_ai package publishable
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-11-17 02:51 PM
* **Comments:** 0
* Removes the `publish_to: none` configuration from the `genui_google_generative_ai` package's `pubspec.yaml`, enabling the package to be published.

### [PR #539](https://github.com/flutter/genui/pull/539): Update README content to remove code and add video link
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* **Merged At:** 2025-11-17 10:35 AM
* **Comments:** 0
* Updates the README documentation by removing the inline code example and adding a link to the "Getting started with GenUI" video for a package overview.

### [PR #536](https://github.com/flutter/genui/pull/536): Fix basic chat app through prompt engineering
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* **Merged At:** 2025-11-17 02:49 PM
* **Comments:** 0
* Updates the basic chat system prompt to strictly enforce the creation of unique surfaces for every response, while also refining schema descriptions to ensure the model correctly generates data model paths for action contexts.

### [PR #535](https://github.com/flutter/genui/pull/535): Fix server build instructions for Verdure
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* **Merged At:** 2025-11-17 08:17 AM
* **Comments:** 0
* Updates the build instructions for the Verdure server example to specify running `uv` from the `server/verdure` directory and adds a mobile device or simulator to the list of prerequisites.

### [PR #531](https://github.com/flutter/genui/pull/531): Update dot guides based on latest API surface
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* **Merged At:** 2025-11-17 03:58 PM
* **Comments:** 0
* Updates the developer guides to reflect the current API surface by clarifying `ContentGenerator` options for different backends, streamlining setup instructions for Firebase and A2UI, and modernizing code examples to use `subscribeToString` and improved chat UI patterns.

### [PR #530](https://github.com/flutter/genui/pull/530): Fix error being reported twice from Firebase AI content generator
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* **Merged At:** 2025-11-17 08:13 AM
* **Comments:** 0
* Removes a redundant try-catch block in the `FirebaseAiContentGenerator` to prevent errors from being logged and reported to the error stream before rethrowing, which fixes an issue where errors appeared twice in the UI.


## Closed Issues

### [Issue #533](https://github.com/flutter/genui/issues/533): Can't build Verdure server with `uv run` etc.
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* The user reports an inability to build the Verdure server using `uv run`, citing problems such as dependencies not installing correctly.

### [Issue #529](https://github.com/flutter/genui/issues/529): Link in the overview video into the README
* **Author:** [sethladd](https://github.com/sethladd)
* **Reactions:** **1** -- 👍 1
* This issue suggests adding a link to the project's overview video on YouTube to the README file.

### [Issue #526](https://github.com/flutter/genui/issues/526): Remove the usage example code snippet from the README
* **Author:** [sethladd](https://github.com/sethladd)
* Remove the usage example code snippet from the README to prevent outdated content and specific Firebase AI logic from confusing users, relying instead on the actual codebase and new documentation in `.dotguides` for examples.

### [Issue #522](https://github.com/flutter/genui/issues/522): Mention the new generative ai content generator in the README, so folks know they don't NEED firebase ai logic
* **Author:** [sethladd](https://github.com/sethladd)
* **Reactions:** **1** -- 👍 1

### [Issue #494](https://github.com/flutter/genui/issues/494): Double check that the .guides are all up to date , when we publish the package
* **Author:** [sethladd](https://github.com/sethladd)
* Ensure that all content within .guides is verified and up to date during the package publication process.


# GitHub PR Report for flutter/packages
## From 2025-11-17

Recent updates to the repository focused on maintaining ecosystem compatibility and improving build tooling. A significant sweep across all packages was merged in [PR #10450](https://github.com/flutter/packages/pull/10450), updating the codebase to use Pigeon 26; this change ensures compatibility with `analyzer` 8.x and introduces generated equality operators for data classes. In parallel, tooling improvements were implemented to streamline dependency management, with [PR #10412](https://github.com/flutter/packages/pull/10412) extending the update scripts to support bulk changes for the Kotlin Gradle Plugin (KGP). Additionally, [PR #10454](https://github.com/flutter/packages/pull/10454) refined the Dependabot configuration by splitting Gradle plugin updates into separate groups for Kotlin and Android, reducing the likelihood of merge conflicts during automated maintenance.

## Merged Pull Requests

### [PR #10454](https://github.com/flutter/packages/pull/10454): Split dependabot gradle plugin
* **Author:** [jmagman](https://github.com/jmagman)
* **Merged At:** 2025-11-17 02:55 PM
* **Comments:** 0
* Splits the `gradle-plugin` Dependabot group into separate groups for the Kotlin Gradle plugin and the Android Gradle plugin to reduce the frequency of CHANGELOG merge conflicts by handling these updates independently.

### [PR #10450](https://github.com/flutter/packages/pull/10450): [various] Update all packages to Pigeon 26
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-17 09:59 AM
* **Comments:** 0
* Updates all packages to use Pigeon 26 to ensure compatibility with `analyzer` 8.x, incorporating generated equality operators for data classes and updating test overrides across the repository to match the new generated code structure.

### [PR #10412](https://github.com/flutter/packages/pull/10412): Kgp bulk update
* **Author:** [jesswrd](https://github.com/jesswrd)
* **Merged At:** 2025-11-16 04:29 PM
* **Comments:** 0
* Extends the `update-dependency` tooling to support the Kotlin Gradle Plugin (KGP), enabling automated bulk version updates for plugin example applications.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-11-17

There were no merged pull requests or closed issues during this period, resulting in no changes to the repository, public API surface, or language features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-11-17

Updates to the documentation repository were primarily driven by alignment with the Flutter 3.38 stable release and Dart 3.10 SDK constraints ([PR #12701]). Significant attention was given to widget API changes, specifically regarding the `Radio` widget; [PR #12679] refactored code samples to utilize the `RadioGroup` widget, addressing the deprecation of the `groupValue` and `onChanged` parameters raised in [Issue #12692]. Platform-specific guides were improved in [PR #12699], which updated Android setup instructions to support `build.gradle.kts` for projects utilizing the Kotlin DSL. Additionally, the content surface was expanded to recommend the Isar Community database ([PR #12695]) and provide access to the GPU texture compression proposal ([PR #12704]), alongside general maintenance to correct broken links and rendering artifacts ([PR #12707], [PR #12702]).

## Merged Pull Requests

### [PR #12707](https://github.com/flutter/website/pull/12707): Fix links on FWE index page
* **Author:** [ericwindmill](https://github.com/ericwindmill)
* **Merged At:** 2025-11-17 01:36 PM
* **Comments:** 2
* Updates the URL paths in the tutorial index to fix broken links following the migration to Jaspr, and adds a missing entry for the Devtools tutorial step.

### [PR #12706](https://github.com/flutter/website/pull/12706): Fixing a misdirected link in the scrolling page
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2025-11-17 01:38 PM
* **Comments:** 2
* Updates the iOS app extensions documentation to correct the link to the instructions for supporting scrollable lists in Share extensions.

### [PR #12704](https://github.com/flutter/website/pull/12704): Add link to GPU texture compression proposal
* **Author:** [planetmarshall](https://github.com/planetmarshall)
* **Merged At:** 2025-11-17 10:18 AM
* **Comments:** 3
* Adds a new redirect to `firebase.json` for the GPU texture compression proposal document, accessible via `/go/gpu-texture-compression`.

### [PR #12702](https://github.com/flutter/website/pull/12702): Correct escape character in user-input.md
* **Author:** [autorejecttop](https://github.com/autorejecttop)
* **Merged At:** 2025-11-17 10:20 AM
* **Comments:** 3
* Updates the `user-input` documentation to use double quotes for strings containing apostrophes, fixing a rendering issue where the escape character was displayed incorrectly in code examples.

### [PR #12701](https://github.com/flutter/website/pull/12701): Update SDK constraint for stable 3.38 release
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-11-17 09:18 AM
* **Comments:** 2
* Updates the Dart SDK environment constraint to `^3.10.0` in `pubspec.yaml` files across the repository and increments the current Flutter version to 3.38.1 in the site configuration.

### [PR #12699](https://github.com/flutter/website/pull/12699): Update Android package setup instructions to include build.gradle.kts
* **Author:** [Mairramer](https://github.com/Mairramer)
* **Merged At:** 2025-11-17 09:19 AM
* **Comments:** 3
* Updates the Android package setup instructions to reference `build.gradle.kts`, ensuring that projects using the Kotlin DSL are covered alongside those using the standard `build.gradle` file.

### [PR #12695](https://github.com/flutter/website/pull/12695): Add Isar Community as a non-relational database option
* **Author:** [vicenterusso](https://github.com/vicenterusso)
* **Merged At:** 2025-11-17 11:15 AM
* **Comments:** 3
* Updates the local caching documentation to list Isar Community as a recommended non-relational database option.

### [PR #12679](https://github.com/flutter/website/pull/12679): Refactor user input radio buttons to use RadioGroup
* **Author:** [autorejecttop](https://github.com/autorejecttop)
* **Merged At:** 2025-11-16 06:26 PM
* **Comments:** 4
* Updates the user input documentation and code samples to use the `RadioGroup` widget, reflecting the deprecation of the `groupValue` and `onChanged` parameters in the `Radio` widget.


## Closed Issues

### [Issue #12700](https://github.com/flutter/website/issues/12700): A1
* **Author:** [xxcusemyfrench904-ux](https://github.com/xxcusemyfrench904-ux)
* The issue contains HTML source code for the "Doha's Furniture Deals" landing page, including a header, hero section, and the beginning of a product grid, without providing a specific bug report or feature description.

### [Issue #12698](https://github.com/flutter/website/issues/12698): Add Kotlin DSL (build.gradle.kts) support note to Android setup documentation
* **Author:** [Mairramer](https://github.com/Mairramer)
* This issue proposes updating the Android package configuration documentation to explicitly mention support for Kotlin DSL by instructing users to select either `build.gradle` or `build.gradle.kts` when opening the Android module.

### [Issue #12694](https://github.com/flutter/website/issues/12694): Incorrect link for scrolling instructions in app extensions
* **Author:** [vashworth](https://github.com/vashworth)
* Update the "these instructions" link in the iOS app extensions documentation under the "Advanced scrolling behavior" section to point to the correct GitHub issue comment.

### [Issue #12692](https://github.com/flutter/website/issues/12692): Deprecated Radio usage in Learn Flutter Radio Widget example code
* **Author:** [miinhho](https://github.com/miinhho)
* Update the Radio widget example code in the documentation to use `RadioGroup` instead of the deprecated `onChanged` and `groupValue` properties.

### [Issue #12170](https://github.com/flutter/website/issues/12170): Create a new page covering the sensitive content API on Android
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* Create a new documentation page within the Android platform integration section that explains how to utilize the sensitive content API in Flutter applications.



## Top Hacker News Stories

### 1903 🔥🔥🔥 [Cloudflare Global Network experiencing issues](https://www.cloudflarestatus.com/?t=1)
* **Author:** [imdsm](https://news.ycombinator.com/user?id=imdsm) | **Comments:** [1279](https://news.ycombinator.com/item?id=45963780)

### 237 🔥 [Gemini 3 Pro Preview Live in AI Studio](https://aistudio.google.com/prompts/new_chat?model=gemini-3-pro-preview)
* **Author:** [preek](https://news.ycombinator.com/user?id=preek) | **Comments:** [88](https://news.ycombinator.com/item?id=45967211)

### 104 🔥 [Gemini 3 for developers: New reasoning, agentic capabilities](https://blog.google/technology/developers/gemini-3-developers/)
* **Author:** [janpio](https://news.ycombinator.com/user?id=janpio) | **Comments:** [9](https://news.ycombinator.com/item?id=45968043)

### 35  [Google Antigravity, a New Era in AI-Assisted Software Development](https://antigravity.google/blog/introducing-google-antigravity)
* **Author:** [meetpateltech](https://news.ycombinator.com/user?id=meetpateltech) | **Comments:** [5](https://news.ycombinator.com/item?id=45968065)

### 119 🔥 [Gemini 3](https://blog.google/products/gemini/gemini-3/)
* **Author:** [meetpateltech](https://news.ycombinator.com/user?id=meetpateltech) | **Comments:** [14](https://news.ycombinator.com/item?id=45967999)

### 84  [Google Antigravity](https://antigravity.google/)
* **Author:** [Fysi](https://news.ycombinator.com/user?id=Fysi) | **Comments:** [44](https://news.ycombinator.com/item?id=45967814)

### 330 🔥🔥 [Nearly all UK drivers say headlights are too bright](https://www.bbc.com/news/articles/c1j8ewy1p86o)
* **Author:** [YeGoblynQueenne](https://news.ycombinator.com/user?id=YeGoblynQueenne) | **Comments:** [312](https://news.ycombinator.com/item?id=45966251)

### 61  [Short Little Difficult Books](https://countercraft.substack.com/p/short-little-difficult-books)
* **Author:** [crescit_eundo](https://news.ycombinator.com/user?id=crescit_eundo) | **Comments:** [22](https://news.ycombinator.com/item?id=45966435)

### 322 🔥🔥 [How Quake.exe got its TCP/IP stack](https://fabiensanglard.net/quake_chunnel/index.html)
* **Author:** [billiob](https://news.ycombinator.com/user?id=billiob) | **Comments:** [59](https://news.ycombinator.com/item?id=45962654)

### 253 🔥🔥 [Do Not Put Your Site Behind Cloudflare If You Don't Need To](https://huijzer.xyz/posts/123/do-not-put-your-site-behind-cloudflare-if-you-dont)
* **Author:** [huijzer](https://news.ycombinator.com/user?id=huijzer) | **Comments:** [195](https://news.ycombinator.com/item?id=45965060)

### 43  [Experiment: Making TypeScript Immutable-by-Default](https://evanhahn.com/typescript-immutability-experiment/)
* **Author:** [ingve](https://news.ycombinator.com/user?id=ingve) | **Comments:** [31](https://news.ycombinator.com/item?id=45966018)

### 86  [The Miracle of Wörgl](https://scf.green/story-of-worgl-and-others/)
* **Author:** [simonebrunozzi](https://news.ycombinator.com/user?id=simonebrunozzi) | **Comments:** [45](https://news.ycombinator.com/item?id=45963583)

### 128 🔥 [Ruby 4.0.0 Preview2 Released](https://www.ruby-lang.org/en/news/2025/11/17/ruby-4-0-0-preview2-released/)
* **Author:** [pansa2](https://news.ycombinator.com/user?id=pansa2) | **Comments:** [37](https://news.ycombinator.com/item?id=45965664)

### 350 🔥🔥 [Gemini 3 Pro Model Card](https://pixeldrain.com/u/hwgaNKeH)
* **Author:** [Topfi](https://news.ycombinator.com/user?id=Topfi) | **Comments:** [230](https://news.ycombinator.com/item?id=45963836)

### 35  [Mathematics and Computation (2019) [pdf]](https://www.math.ias.edu/files/Book-online-Aug0619.pdf)
* **Author:** [nill0](https://news.ycombinator.com/user?id=nill0) | **Comments:** [6](https://news.ycombinator.com/item?id=45964816)

### 41  [GoSign Desktop RCE flaws affecting users in Italy](https://www.ush.it/2025/11/14/multiple-vulnerabilities-gosign-desktop-remote-code-execution/)
* **Author:** [ascii](https://news.ycombinator.com/user?id=ascii) | **Comments:** [17](https://news.ycombinator.com/item?id=45964835)
* Researchers discovered that **GoSign** versions ≤ 2.4.0 disable TLS verification when using a proxy and rely on unsigned update manifests, exposing users to man-in-the-middle attacks. These combined vulnerabilities allow attackers to deliver malicious updates and achieve **remote code execution**.

### 8  [Beauty in/of mathematics: tessellations and their formulas](https://www.tandfonline.com/doi/full/10.1080/00036811.2025.2510472)
* **Author:** [QueensGambit](https://news.ycombinator.com/user?id=QueensGambit) | **Comments:** [0](https://news.ycombinator.com/item?id=45914435)

### 299 🔥🔥 [How many video games include a marriage proposal? At least one](https://32bits.substack.com/p/under-the-microscope-ncaa-basketball)
* **Author:** [bbayles](https://news.ycombinator.com/user?id=bbayles) | **Comments:** [70](https://news.ycombinator.com/item?id=45916094)

### 1229 🔥🔥🔥 [Show HN: I built a synth for my daughter](https://bitsnpieces.dev/posts/a-synth-for-my-daughter/)
* **Author:** [random_moonwalk](https://news.ycombinator.com/user?id=random_moonwalk) | **Comments:** [205](https://news.ycombinator.com/item?id=45900425)

### 12  [I've Wanted to Play That 'Killer Shark' Arcade Game Briefly Seen in 'Jaws'](https://www.remindmagazine.com/article/15694/jaws-arcade-video-game-killer-shark-atari-sega-electromechanical/)
* **Author:** [speckx](https://news.ycombinator.com/user?id=speckx) | **Comments:** [4](https://news.ycombinator.com/item?id=45929099)

### 88  [The Uselessness of "Fast" and "Slow" in Programming](https://jerf.org/iri/post/2025/the_uselessness_of_fast/)
* **Author:** [zdw](https://news.ycombinator.com/user?id=zdw) | **Comments:** [48](https://news.ycombinator.com/item?id=45895427)

### 95  [Multiple Digital Ocean services down](https://status.digitalocean.com/incidents/lgt5xs2843rx)
* **Author:** [inanothertime](https://news.ycombinator.com/user?id=inanothertime) | **Comments:** [33](https://news.ycombinator.com/item?id=45964987)

### 1  [Langfuse (YC W23) Hiring OSS Support Engineers in Berlin and SF](https://jobs.ashbyhq.com/langfuse/5ff18d4d-9066-4c67-8ecc-ffc0e295fee6)
* **Author:** [clemo_ra](https://news.ycombinator.com/user?id=clemo_ra) | **Comments:** [null](https://news.ycombinator.com/item?id=45962178)

### 439 🔥🔥 [Azure hit by 15 Tbps DDoS attack using 500k IP addresses](https://www.bleepingcomputer.com/news/microsoft/microsoft-aisuru-botnet-used-500-000-ips-in-15-tbps-azure-ddos-attack/)
* **Author:** [speckx](https://news.ycombinator.com/user?id=speckx) | **Comments:** [283](https://news.ycombinator.com/item?id=45955900)
* Microsoft Azure successfully mitigated a record-breaking **15 Tbps DDoS attack**, demonstrating the resilience of their cloud infrastructure against massive-scale threats.

### 110 🔥 [Ditch your (mut)ex, you deserve better](https://chrispenner.ca/posts/mutexes)
* **Author:** [commandersaki](https://news.ycombinator.com/user?id=commandersaki) | **Comments:** [127](https://news.ycombinator.com/item?id=45893592)



