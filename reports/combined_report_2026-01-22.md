# Overall Summary
**🔥🔥🔥 [Issue #124205](https://github.com/flutter/flutter/issues/124205) (flutter/flutter): [Web] Textinput is placed with offset above the keyboard when focused**
  * **Reactions:** **107** -- 👍 104 😕 3
  * On Flutter web applications rendered with CanvasKit and viewed on an iPhone mobile browser, a focused text input field is incorrectly offset with extra vertical space above the on-screen keyboard.

**🔥 [PR #2996](https://github.com/dart-lang/native/pull/2996) (dart-lang/native): [objective_c] - fix private pub dev issue**
  * **Comments:** 5
  * Fixes a bug in the `objective_c` build hook where percent-encoded package root paths were not correctly decoded, leading to 'file not found' errors from clang.

**🔥 [PR #12969](https://github.com/flutter/website/pull/12969) (flutter/website): Add AI rules limits and compressed files**
  * **Comments:** 4
  * Updates the AI rules documentation by adding descriptions of compressed `rules.md` files for tools with stricter context limits, and enhances the table of AI coding assistants with their specific rule file character limits.

**🔥 [PR #181256](https://github.com/flutter/flutter/pull/181256) (flutter/flutter): Fixes Typo in codebase**
  * **Comments:** 3
  * This PR fixes a widespread typo in the codebase by renaming `AccessiblityFocusBlockType` to `AccessibilityFocusBlockType` and updating all references to this enum and its properties across `Semantics`, `RenderObject`, and related accessibility focus management components.

**🔥 [PR #683](https://github.com/flutter/genui/pull/683) (flutter/genui): Rename Part to StandardPart and BasePart to Part.**
  * **Comments:** 3
  * Renames the `BasePart` class to `Part`, making it the new extendable base class for all message parts, and renames the previously `sealed Part` class to `StandardPart` to represent the default set of standard part implementations.

**🔥 [PR #181041](https://github.com/flutter/flutter/pull/181041) (flutter/flutter): [Material] update hourFormat to use Dart 3 switch expression**
  * **Comments:** 3
  * Updates the `hourFormat` function to use Dart 3 switch expressions for improved code readability and adds new unit tests to verify its `TimeOfDayFormat` mappings.

**[Issue #62457](https://github.com/dart-lang/sdk/issues/62457) (dart-lang/sdk): ffi/isolate_group_bound_callback_test/3 now timing out on vm-msan-linux-release-x64**
  * The `ffi/isolate_group_bound_callback_test/3` is now consistently timing out on `vm-msan-linux-release-x64` configuration after a recent commit range, having previously been flaky, with stack traces indicating issues related to `DRT_AllocateMint` and garbage collection.

**[Issue #61078](https://github.com/dart-lang/sdk/issues/61078) (dart-lang/sdk): Use shared field static type information to decide whether to add runtime check for the stored value.**
  * This issue tracks optimizing code generation by using shared static field type information to conditionally add runtime checks, generating them only when the type allows for disallowed values rather than adding checks unconditionally.

**[PR #181322](https://github.com/flutter/flutter/pull/181322) (flutter/flutter): 3.41.1 dart bump to 3.11.0-296.4.beta**
  * **Comments:** 2
  * Updates the Dart SDK to version 3.11.0-296.4.beta and refreshes several associated Dart dependencies in the DEPS file.

**[PR #10857](https://github.com/flutter/packages/pull/10857) (flutter/packages): [pigeon] Modernize Obj-C generation headers**
  * **Comments:** 0
  * This PR modernizes Pigeon's Objective-C code generation by replacing traditional framework imports (`#import <Foo/Foo.h>`) with the newer module style (`@import Foo;`) and removes the no-longer-necessary ARC check from generated files.


# GitHub PR Report for dart-lang/ai
## From 2026-01-22

No pull requests were merged and no issues were closed during this period, indicating no significant changes were introduced to the repository's codebase or public API surface.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2026-01-22

This update primarily addresses several key issues, with no pull requests being merged in this period. A critical stability fix was implemented for the Foreign Function Interface (FFI) component, resolving a persistent timeout in the `ffi/isolate_group_bound_callback_test/3` that occurred on `vm-msan-linux-release-x64` configurations, related to low-level memory allocation and garbage collection [Issue #62457]. Significant progress was also made on performance optimization, specifically targeting code generation by leveraging shared field static type information to conditionally add runtime checks for stored values, thereby improving efficiency by avoiding unnecessary checks [Issue #61078]. Further internal improvements include an update to the `convert_to_field_parameter.dart` refactoring tool to correctly handle private named parameters [Issue #62474], and the removal of the `built_value` dependency from `DataSerializers` [Issue #62306], streamlining internal architecture.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62474](https://github.com/dart-lang/sdk/issues/62474): Update convert_to_field_parameter.dart to handle private named parameters
* **Author:** [munificent](https://github.com/munificent)

### [Issue #62457](https://github.com/dart-lang/sdk/issues/62457): ffi/isolate_group_bound_callback_test/3 now timing out on vm-msan-linux-release-x64
* **Author:** [sstrickl](https://github.com/sstrickl)
* The `ffi/isolate_group_bound_callback_test/3` is now consistently timing out on `vm-msan-linux-release-x64` configuration after a recent commit range, having previously been flaky, with stack traces indicating issues related to `DRT_AllocateMint` and garbage collection.

### [Issue #62306](https://github.com/dart-lang/sdk/issues/62306): Remove built_value dependency from DataSerializers
* **Author:** [jyameo](https://github.com/jyameo)

### [Issue #61078](https://github.com/dart-lang/sdk/issues/61078): Use shared field static type information to decide whether to add runtime check for the stored value.
* **Author:** [aam](https://github.com/aam)
* This issue tracks optimizing code generation by using shared static field type information to conditionally add runtime checks, generating them only when the type allows for disallowed values rather than adding checks unconditionally.


# GitHub PR Report for dart-lang/language
## From 2026-01-22

There were no pull requests merged or issues closed during this period, indicating no changes were made to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2026-01-22

The recent updates to the repository primarily focus on maintenance and improving the build stability for the `objective_c` package. A key improvement landed in [PR #2996](https://github.com/dart-lang/native/pull/2996), which resolved a critical bug where percent-encoded package root paths caused 'file not found' errors from clang during the build process. This fix ensures more robust path resolution by correctly using `toFilePath()` and includes a new test to prevent future regressions. Following these stability enhancements, the `objective_c` package has also been prepared for an upcoming release, bumping its version from 9.2.3 to 9.2.4 in [PR #3002](https://github.com/dart-lang/native/pull/3002).

## Merged Pull Requests

### [PR #3002](https://github.com/dart-lang/native/pull/3002): [objective_c] Prepare to publish 9.2.4
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2026-01-22 03:43 PM
* **Comments:** 2
* Bumps the `objective_c` package version from 9.2.3 to 9.2.4, preparing it for a new release.

### [PR #2996](https://github.com/dart-lang/native/pull/2996): [objective_c] - fix private pub dev issue
* **Author:** [marinkobabic](https://github.com/marinkobabic)
* **Merged At:** 2026-01-22 03:30 PM
* **Comments:** 5
* Fixes a bug in the `objective_c` build hook where percent-encoded package root paths were not correctly decoded, leading to 'file not found' errors from clang. This is resolved by using `toFilePath()` for path resolution and is verified by a new test.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/ai
## From 2026-01-22

During this period, there were no pull requests merged and no issues closed, indicating no changes were introduced to the repository's codebase or outstanding tasks resolved.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2026-01-22

During this period, no pull requests were merged and no issues were closed, indicating no significant changes or updates were integrated into the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2026-01-22

This release cycle delivers foundational updates and targeted enhancements, improving both the core framework and developer experience. Key updates include an engine version bump for 3.41.1 ([PR #181329](https://github.com/flutter/flutter/pull/181329)) and an upgrade to the Dart SDK, bringing it to version 3.11.0-296.4.beta ([PR #181322](https://github.com/flutter/flutter/pull/181322)). Significant adoption of modern Dart language features is evident with the `hourFormat` function in Material widgets now utilizing Dart 3 switch expressions for enhanced clarity ([PR #181041](https://github.com/flutter/flutter/pull/181041)), complementing the use of null-aware elements in `cupertino/nav_bar.dart` ([PR #181237](https://github.com/flutter/flutter/pull/181237)). A crucial public API refinement involved correcting a widespread typo, renaming `AccessiblityFocusBlockType` to `AccessibilityFocusBlockType` across `Semantics`, `RenderObject`, and related accessibility components, which resolves [Issue #181153](https://github.com/flutter/flutter/issues/181153) and improves consistency ([PR #181256](https://github.com/flutter/flutter/pull/181256)). Furthermore, a high-impact bug on Flutter web, where text input fields exhibited incorrect vertical offsetting above the keyboard on iPhone browsers, has been addressed ([Issue #124205](https://github.com/flutter/flutter/issues/124205)). Other notable changes include bolstering the robustness of the `Hero` widget to prevent crashes in zero-dimension environments ([PR #180954](https://github.com/flutter/flutter/pull/180954)), enhancing test debuggability by providing clearer error messages for `bySemanticsLabel` and `bySemanticsIdentifier` finders ([PR #181214](https://github.com/flutter/flutter/pull/181214), addressing [Issue #181196](https://github.com/flutter/flutter/issues/181196)), and improving Swift Package Manager integration within Xcode for plugin example applications ([PR #179512](https://github.com/flutter/flutter/pull/179512), resolving [Issue #179032](https://github.com/flutter/flutter/issues/179032)).

## Merged Pull Requests

### [PR #181329](https://github.com/flutter/flutter/pull/181329): bump engine version for 3.41.1
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2026-01-22 10:17 AM
* **Comments:** 2
* Bumps the engine version for release 3.41.1 by updating the `engine.version` file with a new engine hash.

### [PR #181322](https://github.com/flutter/flutter/pull/181322): 3.41.1 dart bump to 3.11.0-296.4.beta 
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2026-01-22 08:11 AM
* **Comments:** 2
* Updates the Dart SDK to version 3.11.0-296.4.beta and refreshes several associated Dart dependencies in the DEPS file.

### [PR #181295](https://github.com/flutter/flutter/pull/181295): Roll pub packages
* **Author:** [flutter-pub-roller-bot](https://github.com/flutter-pub-roller-bot)
* **Merged At:** 2026-01-21 05:16 PM
* **Comments:** 1
* Updates the `video_player_avfoundation` package from version 2.8.10 to 2.9.0, as part of a general package roll generated by `flutter update-packages --force-upgrade`.

### [PR #181256](https://github.com/flutter/flutter/pull/181256): Fixes Typo in codebase
* **Author:** [srivats22](https://github.com/srivats22)
* **Merged At:** 2026-01-22 03:55 PM
* **Comments:** 3
* This PR fixes a widespread typo in the codebase by renaming `AccessiblityFocusBlockType` to `AccessibilityFocusBlockType` and updating all references to this enum and its properties across `Semantics`, `RenderObject`, and related accessibility focus management components.

### [PR #181254](https://github.com/flutter/flutter/pull/181254): Fix remove material import textfield
* **Author:** [kazbeksultanov](https://github.com/kazbeksultanov)
* **Merged At:** 2026-01-22 11:33 AM
* **Comments:** 0
* Removes the `material.dart` import from `packages/flutter/test/cupertino/text_field_restoration_test.dart` by replacing the `Material` widget with an `Align` widget and updates the cross-import check to remove the test from the allowed Material imports list.

### [PR #181237](https://github.com/flutter/flutter/pull/181237): Use null-aware elements in cupertino/nav_bar.dart
* **Author:** [brahim-guaali](https://github.com/brahim-guaali)
* **Merged At:** 2026-01-21 06:27 PM
* **Comments:** 2
* Adopts null-aware element syntax (`?x`) in `cupertino/nav_bar.dart` to replace 16 instances of the verbose `if (x != null) x!` pattern within the `_NavigationBarTransition` widget's children list, improving code conciseness and readability.

### [PR #181214](https://github.com/flutter/flutter/pull/181214): fix description for semantics finders
* **Author:** [navaronbracke](https://github.com/navaronbracke)
* **Merged At:** 2026-01-21 04:14 PM
* **Comments:** 0
* This PR fixes missing descriptions in the error messages generated by `bySemanticsLabel` and `bySemanticsIdentifier` finders in `flutter_test`. The updated messages now clearly specify the semantics label or identifier (including regex patterns) that was being searched for, enhancing debuggability for test failures.

### [PR #181204](https://github.com/flutter/flutter/pull/181204): [CP] Fix style_manager_test for Firefox (#181084)
* **Author:** [harryterkelsen](https://github.com/harryterkelsen)
* **Merged At:** 2026-01-22 05:55 AM
* **Comments:** 1
* Fixes `style_manager_test.dart` for Firefox by explicitly setting the `outline` CSS property in `style_manager.dart` and ensuring the test element is correctly focused before asserting its computed style.

### [PR #181200](https://github.com/flutter/flutter/pull/181200): Reland "Fix capitalization of the path to FlutterWindowControllerTest.mm in the macOS platform build script"
* **Author:** [jason-simmons](https://github.com/jason-simmons)
* **Merged At:** 2026-01-22 01:13 PM
* **Comments:** 0
* This PR is a re-land that fixes the capitalization of the path to `FlutterWindowControllerTest.mm` in the macOS build script and addresses clang-tidy warnings in that file by refactoring a local variable into a member variable and renaming a test, resolving #180963.

### [PR #181041](https://github.com/flutter/flutter/pull/181041): [Material] update hourFormat to use Dart 3 switch expression
* **Author:** [Enderjua](https://github.com/Enderjua)
* **Merged At:** 2026-01-21 08:42 PM
* **Comments:** 3
* Updates the `hourFormat` function to use Dart 3 switch expressions for improved code readability and adds new unit tests to verify its `TimeOfDayFormat` mappings.

### [PR #181013](https://github.com/flutter/flutter/pull/181013): Enables fragment shader test for impeller (fixes mat2 on vulkan)
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2026-01-21 05:01 PM
* **Comments:** 2
* This PR fixes an issue with `mat2` uniform packing in Impeller's shader reflector, enabling a fragment shader test to pass on Vulkan by correctly defining the stride and byte length for `mat2` members in structs. The fix does not yet apply to Metal.

### [PR #180954](https://github.com/flutter/flutter/pull/180954): Make sure that a Hero doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2026-01-22 03:48 PM
* **Comments:** 1
* Adds a new test case to verify that the `Hero` widget does not crash when rendered with zero dimensions. This test ensures that the `Hero` widget behaves correctly in zero-area environments, addressing an issue previously reported in #6537.

### [PR #179512](https://github.com/flutter/flutter/pull/179512): Add FlutterFramework as an Xcode SwiftPM local package override
* **Author:** [vashworth](https://github.com/vashworth)
* **Merged At:** 2026-01-22 11:07 AM
* **Comments:** 1
* This PR updates the Swift Package Manager integration to include FlutterFramework as an Xcode local package override and conditionally adds local package overrides for plugins when the application is an example app, resolving existing issues with Swift Package Manager integration.


## Closed Issues

### [Issue #181334](https://github.com/flutter/flutter/issues/181334): Implement re-run failed checks flow
* **Author:** [ievdokdm](https://github.com/ievdokdm)
* Implement the back-end logic for a re-run failed checks flow, enabling multiple failed checks to be re-run simultaneously.

### [Issue #181330](https://github.com/flutter/flutter/issues/181330): linux-8 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The linux-8 device is losing its external connection to a phone device.

### [Issue #181309](https://github.com/flutter/flutter/issues/181309): Image Picker Gradle Problem
* **Author:** [naved997](https://github.com/naved997)
* The user is encountering a Gradle error with the Image Picker library, which requests a Gradle version upgrade to 8.9.1 despite the project already being on the latest Gradle version.

### [Issue #181302](https://github.com/flutter/flutter/issues/181302): flutter --version  ,then result: Got TLS error trying to find package archive at https://pub.flutter-io.cn.
* **Author:** [Okacaty](https://github.com/Okacaty)
* The user is encountering a TLS error when running `flutter --version` because it cannot find the package archive at `https://pub.flutter-io.cn` and is seeking assistance to resolve this issue.

### [Issue #181298](https://github.com/flutter/flutter/issues/181298): mac-37 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The mac-37 device lost its external connection to a phone.

### [Issue #181296](https://github.com/flutter/flutter/issues/181296): test suppression: "missing url" when resolving
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* A 'missing URL' error occurs during resolution in production, unexpectedly requiring a URL despite test suppression suggesting it should not be necessary.

### [Issue #181293](https://github.com/flutter/flutter/issues/181293): Upgrade remaining devicelab bots in each pool to macOS 15.7
* **Author:** [okorohelijah](https://github.com/okorohelijah)
* This infrastructure task involves upgrading a list of Devicelab macOS bots to macOS 15.7, followed by post-upgrade verification steps including deleting and verifying ownership of `/opt/flutter/xcode` directories and ensuring Developer mode is enabled via `DevToolsSecurity`.

### [Issue #181260](https://github.com/flutter/flutter/issues/181260): Text selection handles remain visible above parent widgets when it should be hidden
* **Author:** [Developer-1892831](https://github.com/Developer-1892831)
* Text selection handles in `TextField` or `SelectableText` widgets remain visibly drawn above parent widgets, such as the `AppBar` and the phone's status bar, when the page is scrolled down, instead of being hidden.

### [Issue #181196](https://github.com/flutter/flutter/issues/181196): Flutter test's bySemanticsLabel() finder has unhelpful description
* **Author:** [math1man](https://github.com/math1man)
* The `bySemanticsLabel()` finder in Flutter tests produces unhelpful failure messages that do not indicate the label it was trying to match when the matcher fails.

### [Issue #181153](https://github.com/flutter/flutter/issues/181153): Typo in codebase
* **Author:** [srivats22](https://github.com/srivats22)
* A typo exists in `semantics.dart` line 122, where "AccessiblityFocusBlockType" should be "AccessibilityFocusBlockType", requiring a name change across files and tests, which might be a breaking change for existing semantic widget users.

### [Issue #179032](https://github.com/flutter/flutter/issues/179032): Xcode live issues don't show in plugin example app when integrated with SwiftPM
* **Author:** [vashworth](https://github.com/vashworth)
* When a Flutter plugin example app is integrated with Swift Package Manager, Xcode fails to display live inline errors, such as those caused by adding a bogus string to a Swift file, even though such errors are expected to appear.

### [Issue #124205](https://github.com/flutter/flutter/issues/124205): [Web] Textinput is placed with offset above the keyboard when focused
* **Author:** [NelepovDmitry](https://github.com/NelepovDmitry)
* **Reactions:** **107** -- 👍 104 😕 3
* On Flutter web applications rendered with CanvasKit and viewed on an iPhone mobile browser, a focused text input field is incorrectly offset with extra vertical space above the on-screen keyboard.


# GitHub PR Report for flutter/genui
## From 2026-01-22

The repository has undergone a significant refactoring of its core message component structure, particularly impacting the `Part` and `BasePart` classes, which are central to defining message components and their extensibility. A key change involved differentiating between a `sealed class Part` for core components (like Text, Data, and Tool) and an `abstract base class BasePart` for extendable custom parts, simplifying `ChatMessage`'s internal handling and JSON deserialization ([PR #680](https://github.com/flutter/genui/pull/680)). This architectural refinement was further solidified by renaming `BasePart` to `Part`, establishing it as the new extendable base class for all message parts, and renaming the original `sealed Part` to `StandardPart` to represent the default set of standard implementations ([PR #683](https://github.com/flutter/genui/pull/683)). These updates, alongside an upgrade to the `genai_primitives` dependency which saw `Part` classes refactored to extend the `BasePart` structure ([PR #681](https://github.com/flutter/genui/pull/681)), collectively streamline the public API for defining both standard and custom message components.

## Merged Pull Requests

### [PR #684](https://github.com/flutter/genui/pull/684): Fix small automation warning
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2026-01-22 11:09 AM
* **Comments:** 0
* This PR fixes a warning and bug in the `flutter_packages.yaml` CI workflow by correcting the syntax of a conditional expression, preventing it from always evaluating to truthy.

### [PR #683](https://github.com/flutter/genui/pull/683): Rename Part to StandardPart and BasePart to Part.
* **Author:** [polina-c](https://github.com/polina-c)
* **Merged At:** 2026-01-22 01:08 PM
* **Comments:** 3
* Renames the `BasePart` class to `Part`, making it the new extendable base class for all message parts, and renames the previously `sealed Part` class to `StandardPart` to represent the default set of standard part implementations.

### [PR #681](https://github.com/flutter/genui/pull/681): Upgrade primitives.
* **Author:** [polina-c](https://github.com/polina-c)
* **Merged At:** 2026-01-22 09:06 AM
* **Comments:** 0
* Upgrades the `genai_primitives` dependency to version `0.1.0`, refactoring `Part` classes to extend `BasePart` and removing the `ThinkingPart` class.

### [PR #680](https://github.com/flutter/genui/pull/680): Differentiate Part(sealed) and BasePart(extendable).
* **Author:** [polina-c](https://github.com/polina-c)
* **Merged At:** 2026-01-21 08:59 PM
* **Comments:** 1
* This PR refactors the `genai_primitives` package by introducing a `sealed class Part` for core message components (Text, Data, Link, Tool, and a new Thinking part) and an `abstract base class BasePart` for extendable custom parts, which simplifies `ChatMessage`'s internal handling and JSON deserialization while clearly separating standard and custom part types.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2026-01-22

The recent updates to the repository primarily focus on modernizing platform-specific code generation and plugin implementations. A significant step was taken in [PR #10857](https://github.com/flutter/packages/pull/10857) to modernize Pigeon's Objective-C code generation, shifting from traditional framework imports to the newer module style (`@import Foo;`) and removing outdated ARC checks, which improves the cleanliness and modernity of generated Objective-C headers. Concurrently, the `camera_avfoundation` plugin saw further internal modernization with the completion of a Swift migration for several key wrappers, including `FLTSavePhotoDelegate` and `FLTWritableData`, as detailed in [PR #10752](https://github.com/flutter/packages/pull/10752). These classes and helpers are now natively written in Swift, enhancing the plugin's underlying architecture. An additional minor change addressed a YAML formatting error in the `sync_release_pr` GitHub Actions workflow ([PR #10855](https://github.com/flutter/packages/pull/10855)), preventing potential workflow failures.

## Merged Pull Requests

### [PR #10857](https://github.com/flutter/packages/pull/10857): [pigeon] Modernize Obj-C generation headers
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2026-01-22 01:05 PM
* **Comments:** 0
* This PR modernizes Pigeon's Objective-C code generation by replacing traditional framework imports (`#import <Foo/Foo.h>`) with the newer module style (`@import Foo;`) and removes the no-longer-necessary ARC check from generated files.

### [PR #10855](https://github.com/flutter/packages/pull/10855): Fixes sync_release_pr workflow yaml formatting
* **Author:** [chunhtai](https://github.com/chunhtai)
* **Merged At:** 2026-01-22 10:15 AM
* **Comments:** 1
* Fixes an indentation error in the `sync_release_pr` GitHub Actions workflow YAML file to prevent workflow failures.

### [PR #10752](https://github.com/flutter/packages/pull/10752): [camera_avfoundation] Wrappers swift migration - part 6
* **Author:** [RobertOdrowaz](https://github.com/RobertOdrowaz)
* **Merged At:** 2026-01-22 08:56 AM
* **Comments:** 1
* This PR completes the Swift migration for several `camera_avfoundation` wrappers, including `FLTSavePhotoDelegate`, `FLTWritableData`, `FLTImageStreamHandler`, `CameraProperties`, and `QueueUtils`. These classes and helpers are now written in Swift, and their `FLT` prefixes have been removed to align with Swift conventions.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2026-01-22

There were no pull requests merged or issues closed during this period, indicating no recent changes to the repository's codebase or outstanding issues addressed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2026-01-22

The repository's documentation was enhanced to provide clearer guidelines for integrating AI coding assistants, particularly addressing their context limits when processing project rules. This update, detailed in [#12969](https://github.com/flutter/website/pull/12969), introduces descriptions of compressed `rules.md` files designed for AI tools with stricter character limits and expands the existing table of AI coding assistants to include their specific rule file character constraints, thus improving the overall developer experience for users leveraging AI-powered development aids.

## Merged Pull Requests

### [PR #12969](https://github.com/flutter/website/pull/12969): Add AI rules limits and compressed files
* **Author:** [johnpryan](https://github.com/johnpryan)
* **Merged At:** 2026-01-21 04:53 PM
* **Comments:** 4
* Updates the AI rules documentation by adding descriptions of compressed `rules.md` files for tools with stricter context limits, and enhances the table of AI coding assistants with their specific rule file character limits.


## Closed Issues

No issues were closed during this time.



## Top Hacker News Stories

### 105 🔥 [Radicle: The Sovereign Forge](https://radicle.xyz)
* **Author:** [ibobev](https://news.ycombinator.com/user?id=ibobev) | **Comments:** [56](https://news.ycombinator.com/item?id=46732213)

### 146 🔥 [Booting from a vinyl record (2020)](https://boginjr.com/it/sw/dev/vinyl-boot/)
* **Author:** [yesturi](https://news.ycombinator.com/user?id=yesturi) | **Comments:** [36](https://news.ycombinator.com/item?id=46730885)

### 248 🔥 [AI is a horse (2024)](https://kconner.com/2024/08/02/ai-is-a-horse.html)
* **Author:** [zdw](https://news.ycombinator.com/user?id=zdw) | **Comments:** [131](https://news.ycombinator.com/item?id=46686402)

### 76  [Show HN: Whosthere: A LAN discovery tool with a modern TUI, written in Go](https://github.com/ramonvermeulen/whosthere)
* **Author:** [rvermeulen98](https://news.ycombinator.com/user?id=rvermeulen98) | **Comments:** [27](https://news.ycombinator.com/item?id=46731432)

### 325 🔥🔥 [Proton Spam and the AI Consent Problem](https://dbushell.com/2026/01/22/proton-spam/)
* **Author:** [dbushell](https://news.ycombinator.com/user?id=dbushell) | **Comments:** [212](https://news.ycombinator.com/item?id=46729368)

### 326 🔥🔥 [I built a light that reacts to radio waves [video]](https://www.youtube.com/watch?v=moBCOEiqiPs)
* **Author:** [codetheweb](https://news.ycombinator.com/user?id=codetheweb) | **Comments:** [75](https://news.ycombinator.com/item?id=46728808)
* This link directs to a personal website showcasing a specific project or work titled "spectrum-slit."

### 153 🔥 [Updates to our web search products and  Programmable Search Engine capabilities](https://programmablesearchengine.googleblog.com/2026/01/updates-to-our-web-search-products.html)
* **Author:** [01jonny01](https://news.ycombinator.com/user?id=01jonny01) | **Comments:** [135](https://news.ycombinator.com/item?id=46730436)

### 8  [Flying with Photons: Rendering Novel Views of Propagating Light](https://anaghmalik.com/FlyingWithPhotons/)
* **Author:** [pillars](https://news.ycombinator.com/user?id=pillars) | **Comments:** [2](https://news.ycombinator.com/item?id=46687603)

### 139 🔥 [What has Docker become?](https://tuananh.net/2026/01/20/what-has-docker-become/)
* **Author:** [tuananh](https://news.ycombinator.com/user?id=tuananh) | **Comments:** [152](https://news.ycombinator.com/item?id=46731748)

### 4  [Show HN: Zsweep – Play Minesweeper using only Vim motions](https://zsweep.com)
* **Author:** [oug-t](https://news.ycombinator.com/user?id=oug-t) | **Comments:** [4](https://news.ycombinator.com/item?id=46667849)

### 1121 🔥🔥🔥 [Show HN: isometric.nyc – giant isometric pixel art map of NYC](https://cannoneyed.com/isometric-nyc/)
* **Author:** [cannoneyed](https://news.ycombinator.com/user?id=cannoneyed) | **Comments:** [208](https://news.ycombinator.com/item?id=46721802)
* The author presents isometric.nyc, a massive isometric pixel art map of NYC built without writing any code, utilizing tools like nano banana and coding agents. A linked deep dive explores the workflow, emphasizing that "no-code" still required significant manual engineering, and discusses the future of AI coding and creativity.

### 114 🔥 [Replacing Protobuf with Rust to go 5 times faster](https://pgdog.dev/blog/replace-protobuf-with-rust)
* **Author:** [whiteros_e](https://news.ycombinator.com/user?id=whiteros_e) | **Comments:** [74](https://news.ycombinator.com/item?id=46730214)

### 895 🔥🔥🔥 [GPTZero finds 100 new hallucinations in NeurIPS 2025 accepted papers](https://gptzero.me/news/neurips/)
* **Author:** [segmenta](https://news.ycombinator.com/user?id=segmenta) | **Comments:** [474](https://news.ycombinator.com/item?id=46720395)

### 42  [Show HN: S2-lite, an open source Stream Store](https://github.com/s2-streamstore/s2)
* **Author:** [shikhar](https://news.ycombinator.com/user?id=shikhar) | **Comments:** [11](https://news.ycombinator.com/item?id=46708055)
* S2-lite is a new, open-source (MIT-licensed, Rust) version of S2, a serverless API for durable streams, designed for simple operation with object storage or in-memory execution. It provides a cloud storage primitive for numerous durable streams, distinguishing it from systems like Kafka or Redis Streams.

### 56  [The state of modern AI text to speech systems for screen reader users](https://stuff.interfree.ca/2026/01/05/ai-tts-for-screenreaders.html)
* **Author:** [tuukkao](https://news.ycombinator.com/user?id=tuukkao) | **Comments:** [22](https://news.ycombinator.com/item?id=46730346)

### 364 🔥🔥 [AI Usage Policy](https://github.com/ghostty-org/ghostty/blob/main/AI_POLICY.md)
* **Author:** [mefengl](https://news.ycombinator.com/user?id=mefengl) | **Comments:** [177](https://news.ycombinator.com/item?id=46730504)

### 148 🔥 [Microsoft mishandling example.com](https://tinyapps.org/blog/microsoft-mishandling-example-com.html)
* **Author:** [mrled](https://news.ycombinator.com/user?id=mrled) | **Comments:** [52](https://news.ycombinator.com/item?id=46731996)

### 108 🔥 [European Alternatives](https://european-alternatives.eu)
* **Author:** [s_dev](https://news.ycombinator.com/user?id=s_dev) | **Comments:** [28](https://news.ycombinator.com/item?id=46731976)

### 5  [KORG phase8 – Acoustic Synthesizer](https://www.korg.com/us/products/dj/phase8/)
* **Author:** [bpierre](https://news.ycombinator.com/user?id=bpierre) | **Comments:** [3](https://news.ycombinator.com/item?id=46732967)

### 39  [Presence in Death](https://rubinmuseum.org/presence-in-death/)
* **Author:** [tock](https://news.ycombinator.com/user?id=tock) | **Comments:** [7](https://news.ycombinator.com/item?id=46731612)

### 343 🔥🔥 [Capital One to acquire Brex for $5.15B](https://www.reuters.com/legal/transactional/capital-one-buy-fintech-firm-brex-515-billion-deal-2026-01-22/)
* **Author:** [personjerry](https://news.ycombinator.com/user?id=personjerry) | **Comments:** [286](https://news.ycombinator.com/item?id=46725288)
* Capital One is acquiring Brex, with both companies issuing statements about the transaction. These links provide official announcements regarding Capital One's intent to acquire Brex.

### 582 🔥🔥 [Why does SSH send 100 packets per keystroke?](https://eieio.games/blog/ssh-sends-100-packets-per-keystroke/)
* **Author:** [eieio](https://news.ycombinator.com/user?id=eieio) | **Comments:** [304](https://news.ycombinator.com/item?id=46723990)

### 636 🔥🔥🔥 [I was banned from Claude for scaffolding a Claude.md file?](https://hugodaniel.com/posts/claude-code-banned-me/)
* **Author:** [hugodan](https://news.ycombinator.com/user?id=hugodan) | **Comments:** [559](https://news.ycombinator.com/item?id=46723384)

### 664 🔥🔥🔥 [Qwen3-TTS family is now open sourced: Voice design, clone, and generation](https://qwen.ai/blog?id=qwen3tts-0115)
* **Author:** [Palmik](https://news.ycombinator.com/user?id=Palmik) | **Comments:** [206](https://news.ycombinator.com/item?id=46719229)

### 11  [Variation on Iota](https://www.toolofthought.com/posts/variation-on-iota)
* **Author:** [aebtebeten](https://news.ycombinator.com/user?id=aebtebeten) | **Comments:** [2](https://news.ycombinator.com/item?id=46676629)



