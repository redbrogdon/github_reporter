# Overall Summary
🔥🔥🔥 **[PR #179757](https://github.com/flutter/flutter/pull/179757) (flutter/flutter): Implement popup windows in the API and test code**
  * This PR adds an API for creating and managing popup windows, introducing `PopupWindow`, `PopupWindowController`, and `PopupWindowControllerDelegate`. This functionality is intended for transient UI elements like menus and context menus.

**[Issue #4595](https://github.com/dart-lang/language/issues/4595) (dart-lang/language): How can an augmentation add an initializing expression to a variable declaration?**
  * This issue discusses the lack of a syntax to add only an initializing expression to an existing variable declaration using an `augment` declaration and proposes a language change to support it.

**[PR #179493](https://github.com/flutter/flutter/pull/179493) (flutter/flutter): Fix Gradient.scale not preserving transformation.**
  * **Comments:** 1
  * This PR fixes an issue where the `scale` method on `LinearGradient`, `RadialGradient`, and `SweepGradient` would discard the `transform` property, ensuring that transformations like rotations are now correctly preserved when scaling.

**[PR #180058](https://github.com/flutter/flutter/pull/180058) (flutter/flutter): Add accessibilityAnnouncement matcher**
  * Adds the `isAccessibilityAnnouncement` matcher to the `flutter_test` package, providing a more declarative and convenient way to write tests for accessibility announcements.

**[Issue #179975](https://github.com/flutter/flutter/issues/179975) (flutter/flutter): [Navigator] Mixing CupertinoPage and MaterialPage causes unnecessary rebuilds of previous page**
  * **Reactions:** **5** -- 👍 5
  * Mixing `CupertinoPage` and `MaterialPage` within a navigation stack causes the previous page to rebuild unnecessarily when pushing or popping a new route, a behavior that does not occur when the pages are of the same type.

**[PR #179387](https://github.com/flutter/flutter/pull/179387) (flutter/flutter): docs: Impeller usage requirements for ImageFilter.shader and isShader…**
  * **Comments:** 4
  * This PR improves the API documentation for `ImageFilter.shader` and `isShaderFilterSupported` by adding prominent warning notices to make it clear that these APIs require the Impeller rendering engine to be enabled.

**[Issue #62087](https://github.com/dart-lang/sdk/issues/62087) (dart-lang/sdk): Crash when compiling: not found in compoundCache**
  * The Dart compiler crashes with a "not found in compoundCache" error when compiling an `ffi.Native` external variable that is an array of a self-referential `Struct`.

**[PR #12883](https://github.com/flutter/website/pull/12883) (flutter/website): docs: update GenUI docs for 0.6.0**
  * **Comments:** 3
  * Updates the GenUI documentation to reflect API changes in version 0.6.0, including the renaming of `GenUiManager` to `A2uiMessageProcessor` and its new ability to accept multiple catalogs.


# GitHub PR Report for dart-lang/ai
## From 2026-01-05

There were no pull requests merged or issues closed during this period. Consequently, there have been no changes to the repository's codebase, public API, or language features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2026-01-05

This period focused on compiler stability and correctness. Several issues were addressed across different compilers, including a proposal to limit parallel jobs in the `dart2wasm` compiler to prevent resource exhaustion ([#62309](https://github.com/dart-lang/sdk/issues/62309)), a fix for a compiler crash involving `ffi.Native` arrays of self-referential `Struct`s ([#62087](https://github.com/dart-lang/sdk/issues/62087)), and a resolution for an issue in `dart2js` regarding the handling of named arguments in record types ([#60597](https://github.com/dart-lang/sdk/issues/60597)). Additionally, a documentation fix was made to correct a broken link in the API reference for the `Runes` class ([#62270](https://github.com/dart-lang/sdk/issues/62270)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62309](https://github.com/dart-lang/sdk/issues/62309): [dart2wasm] Consider limiting number of parallel jobs when calling wasm-opt
* **Author:** [osa1](https://github.com/osa1)
* The dart2wasm compiler's parallel execution of `wasm-opt` on deferred modules can create an excessive number of processes, and this issue proposes limiting the number of parallel jobs to avoid overwhelming systems with limited resources.

### [Issue #62270](https://github.com/dart-lang/sdk/issues/62270): `Runes` docs reference nonexistent part of site
* **Author:** [treeplate](https://github.com/treeplate)
* A link in the "See also" section of the `Runes` class documentation is broken, as it points to a non-existent "runes and grapheme clusters" section on the language tour page.

### [Issue #62087](https://github.com/dart-lang/sdk/issues/62087): Crash when compiling: not found in compoundCache
* **Author:** [omarhogni](https://github.com/omarhogni)
* The Dart compiler crashes with a "not found in compoundCache" error when compiling an `ffi.Native` external variable that is an array of a self-referential `Struct`.

### [Issue #60597](https://github.com/dart-lang/sdk/issues/60597): [record_use] Correctness: Record signatures in dart2js
* **Author:** [mosuem](https://github.com/mosuem)
* The `dart2js` compiler's translation of named to positional arguments makes the `record_use` feature difficult to use, requiring a workaround where users must manually input the function signature.


# GitHub PR Report for dart-lang/language
## From 2026-01-05

While no code changes were merged, a notable language design discussion took place. Issue [#4595](https://github.com/dart-lang/language/issues/4595) proposes a new language feature to address a gap in augmentations. Specifically, it suggests a new syntax to allow an `augment` declaration to add an initializing expression to a variable that was previously declared without one, enhancing the flexibility of this feature.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #4595](https://github.com/dart-lang/language/issues/4595): How can an augmentation add an initializing expression to a variable declaration?
* **Author:** [eernstg](https://github.com/eernstg)
* This issue discusses the lack of a syntax to add only an initializing expression to an existing variable declaration using an `augment` declaration and proposes a language change to support it.


# GitHub PR Report for dart-lang/native
## From 2026-01-05

This period focused on improving developer tooling and test reliability. For developers tracking API usage, new documentation was added to the `record_use` package to explain how compiler optimizations can lead to inconsistencies in usage reports ([PR #2912](https://github.com/dart-lang/native/pull/2912)). To improve CI stability, Android cross-compilation tests were updated with more consistent and explicit timeouts, preventing test flakes ([PR #2924](https://github.com/dart-lang/native/pull/2924)).

## Merged Pull Requests

### [PR #2924](https://github.com/dart-lang/native/pull/2924): [native_toolchain_c] Make timeouts consistent
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2026-01-05 05:59 AM
* **Comments:** 2
* This PR updates Android cross-compilation tests to use an explicit 5-minute timeout for each test, replacing a file-level annotation. This change uses a more robust syntax and prevents CI flakes caused by longer test execution times from scanning multiple NDKs.

### [PR #2912](https://github.com/dart-lang/native/pull/2912): [record_use] Document compiler differences
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2026-01-05 02:50 AM
* **Comments:** 2
* Adds new documentation explaining how differences in Dart compiler optimizations, such as tree-shaking and constant propagation, can lead to inconsistencies in API usage reports generated by the `record_use` package and provides recommendations for achieving more consistent results.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/ai
## From 2026-01-05

This period focused on documentation improvements to enhance the new user experience. To simplify the main project overview, the migration notes were moved from the primary `README.md` into a dedicated `migration-notes.md` file in pull request [#176](https://github.com/flutter/ai/pull/176). There were no changes to the public API or language features during this time.

## Merged Pull Requests

### [PR #176](https://github.com/flutter/ai/pull/176): Split migration notes out of README
* **Author:** [mit-mit](https://github.com/mit-mit)
* **Merged At:** 2026-01-04 08:12 PM
* **Comments:** 0
* Moves the migration notes for v0.9.0 out of the main README and into a new `migration-notes.md` file to simplify the experience for new users.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2026-01-05

This was a quiet period for the repository. No pull requests were merged and no issues were closed, resulting in no changes to the codebase.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2026-01-05

This period's updates introduce a significant new feature with the implementation of a popup window API, adding `PopupWindow` and `PopupWindowController` for managing transient UI elements like context menus ([PR #179757](https://github.com/flutter/flutter/pull/179757)). The public API and framework also saw several key improvements. For testing, a new `isAccessibilityAnnouncement` matcher was added to `flutter_test`, providing a more declarative way to verify accessibility behavior ([PR #180058](https://github.com/flutter/flutter/pull/180058)). A notable graphics bug was fixed where `Gradient.scale` would discard its `transform` property, ensuring transformations are now correctly preserved ([PR #179493](https://github.com/flutter/flutter/pull/179493)) and resolving a community-reported issue ([Issue #163972](https://github.com/flutter/flutter/issues/163972)). Documentation was also improved with a prominent warning added to the `ImageFilter.shader` API to clarify its dependency on the Impeller rendering engine ([PR #179387](https://github.com/flutter/flutter/pull/179387)). On the tooling and platform side, the debugging experience was enhanced by updating the libcxx ABI namespace for compatibility with LLDB type formatters ([PR #180134](https://github.com/flutter/flutter/pull/180134)), and a fix was implemented for an issue causing iOS WebViews to become unresponsive after scrolling ([PR #180522](https://github.com/flutter/flutter/pull/180522)). Finally, attention was given to performance issues, such as the one causing unnecessary widget rebuilds when mixing `CupertinoPage` and `MaterialPage` in a navigator stack ([Issue #179975](https://github.com/flutter/flutter/issues/179975)).

## Merged Pull Requests

### [PR #180539](https://github.com/flutter/flutter/pull/180539): Add a null check for embedded view being added to accessibility tree
* **Author:** [gmackall](https://github.com/gmackall)
* **Merged At:** 2026-01-05 03:32 PM
* **Comments:** 1
* This PR fixes a crash in the Android `AccessibilityBridge` by adding a null check for embedded platform views. If the view is null, the bridge now falls back to adding the virtual semantics node to the accessibility tree.

### [PR #180522](https://github.com/flutter/flutter/pull/180522): [CP][Stable][ios][pv] quick fix to enable and re-enable web view's gesture recognizer
* **Author:** [hellohuanlin](https://github.com/hellohuanlin)
* **Merged At:** 2026-01-05 10:59 AM
* **Comments:** 1
* This PR fixes an issue on iOS where WebViews could become unresponsive to taps after being scrolled by implementing a workaround that resets the state of the view's internal gesture recognizer by quickly disabling and re-enabling it.

### [PR #180510](https://github.com/flutter/flutter/pull/180510): Roll pub packages
* **Author:** [flutter-pub-roller-bot](https://github.com/flutter-pub-roller-bot)
* **Merged At:** 2026-01-05 04:57 AM
* **Comments:** 0
* This PR updates the `code_builder` dependency in the `flutter_tools` package to version 4.11.1.

### [PR #180504](https://github.com/flutter/flutter/pull/180504): Bump deps of hooks,code_assets,native_toolchain_c
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2026-01-05 03:41 AM
* **Comments:** 1
* This PR bumps the versions of the `hooks`, `code_assets`, and `native_toolchain_c` dependencies.

### [PR #180474](https://github.com/flutter/flutter/pull/180474): Small cleanUp in `FlutterView.java`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-05 08:53 AM
* **Comments:** 2
* This PR applies several small code cleanups to `FlutterView.java`, including correcting a typo and a Javadoc link, removing an unnecessary `toString()` call, and consolidating similar exception `catch` blocks.

### [PR #180473](https://github.com/flutter/flutter/pull/180473): Remove unnecessary semicolon in `InputConnectionAdaptor.java`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-05 10:48 AM
* **Comments:** 2
* Removes an unnecessary semicolon from the `InputConnectionAdaptor.java` file.

### [PR #180140](https://github.com/flutter/flutter/pull/180140): [ Widget Preview ] Add UUID to registered DTD streams and services
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2026-01-05 12:26 PM
* **Comments:** 1
* This PR adds a unique identifier to the widget preview's Dart Tooling Daemon (DTD) service and stream names, preventing crashes by allowing multiple `flutter widget-preview` instances to connect to the same DTD instance without service name conflicts.

### [PR #180134](https://github.com/flutter/flutter/pull/180134): use a libcxx abi namespace compatible with lldb
* **Author:** [planetmarshall](https://github.com/planetmarshall)
* **Merged At:** 2026-01-05 02:03 PM
* **Comments:** 2
* Updates the libcxx ABI namespace from `_fl` to `__fl` to ensure compatibility with LLDB's type formatters, which expect the namespace to begin with two leading underscores.

### [PR #180118](https://github.com/flutter/flutter/pull/180118): Fix linter warnings in `AccessibilityBridgeTest.java‎`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-05 12:44 PM
* **Comments:** 3
* Fixes linter warnings in `AccessibilityBridgeTest.java` by correcting the argument order in assertion calls and modernizing the usage of `Charset`.

### [PR #180058](https://github.com/flutter/flutter/pull/180058): Add accessibilityAnnouncement matcher
* **Author:** [zemanux](https://github.com/zemanux)
* **Merged At:** 2026-01-05 01:27 PM
* **Comments:** 0
* Adds the `isAccessibilityAnnouncement` matcher to the `flutter_test` package, providing a more declarative and convenient way to write tests for accessibility announcements.

### [PR #179757](https://github.com/flutter/flutter/pull/179757): Implement popup windows in the API and test code
* **Author:** [mattkae](https://github.com/mattkae)
* **Merged At:** 2026-01-05 09:48 AM
* **Comments:** 0
* This PR adds an API for creating and managing popup windows, introducing `PopupWindow`, `PopupWindowController`, and `PopupWindowControllerDelegate`. This functionality is intended for transient UI elements like menus and context menus and includes a reference implementation in the test bindings along with new tests and examples.

### [PR #179689](https://github.com/flutter/flutter/pull/179689): add the existing compute unit tests to the build
* **Author:** [planetmarshall](https://github.com/planetmarshall)
* **Merged At:** 2026-01-05 03:18 PM
* **Comments:** 1
* This PR adds the existing Impeller compute unit tests to the build configuration, ensuring they are compiled and run when the `impeller_enable_compute` flag is enabled.

### [PR #179493](https://github.com/flutter/flutter/pull/179493): Fix Gradient.scale not preserving transformation.
* **Author:** [ksokolovskyi](https://github.com/ksokolovskyi)
* **Merged At:** 2026-01-05 02:45 AM
* **Comments:** 1
* This PR fixes an issue where the `scale` method on `LinearGradient`, `RadialGradient`, and `SweepGradient` would discard the `transform` property, ensuring that transformations like rotations are now correctly preserved when scaling.

### [PR #179387](https://github.com/flutter/flutter/pull/179387): docs: Impeller usage requirements for ImageFilter.shader and isShader…
* **Author:** [gowsikraja](https://github.com/gowsikraja)
* **Merged At:** 2026-01-05 03:42 PM
* **Comments:** 4
* This PR improves the API documentation for `ImageFilter.shader` and `isShaderFilterSupported` by adding prominent warning notices to make it clear that these APIs require the Impeller rendering engine to be enabled.


## Closed Issues

### [Issue #180544](https://github.com/flutter/flutter/issues/180544): mac-37 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The build agent `mac-37` has lost its external network connection from the attached phone device.

### [Issue #180541](https://github.com/flutter/flutter/issues/180541): mac-68 marked dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The build agent `mac-68` has been marked as dead.

### [Issue #180540](https://github.com/flutter/flutter/issues/180540): mac-69 and mac-70 marked dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The Mac machines `mac-69` and `mac-70` have been marked as dead.

### [Issue #180537](https://github.com/flutter/flutter/issues/180537): mac-53 marked dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The build agent `mac-53` has been marked as dead and is currently offline.

### [Issue #180536](https://github.com/flutter/flutter/issues/180536): mac-67 marked dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The machine mac-67 has been marked as dead.

### [Issue #180532](https://github.com/flutter/flutter/issues/180532): mac-66 marked dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* This issue reports that the build machine `mac-66` has been marked as dead.

### [Issue #180529](https://github.com/flutter/flutter/issues/180529): mac-55 and mac-54 marked dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* Two macOS build agents, mac-55 and mac-54, have been marked as dead and are unresponsive.

### [Issue #180528](https://github.com/flutter/flutter/issues/180528): mac-64 and mac-63 marked dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The macOS machines `mac-64` and `mac-63` have been marked as dead.

### [Issue #180527](https://github.com/flutter/flutter/issues/180527): mac-61 and mac-62 marked dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The macOS workers mac-61 and mac-62 have been marked as dead.

### [Issue #180525](https://github.com/flutter/flutter/issues/180525): Listing of Mac Bots marked dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* This issue reports that several Mac bots are listed with a "dead" status on the monitoring dashboard.

### [Issue #180523](https://github.com/flutter/flutter/issues/180523): [CP-stable] [ios][pv] quick fix to enable and re-enable web view's gesture recognizer
* **Author:** [hellohuanlin](https://github.com/hellohuanlin)
* This change addresses a regression on iOS where WebViews become unclickable after being scrolled or after a menu is closed by re-enabling the web view's gesture recognizer.

### [Issue #180521](https://github.com/flutter/flutter/issues/180521): mac-58 marked dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The machine `mac-58` has been marked as dead.

### [Issue #180520](https://github.com/flutter/flutter/issues/180520): Listing of Mac Bots marked dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* This issue provides a list of Mac bots that are currently marked as dead.

### [Issue #180519](https://github.com/flutter/flutter/issues/180519): linux-76 is dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The `linux-76` build agent is offline and is being reported as "missing" on the build dashboard.

### [Issue #180517](https://github.com/flutter/flutter/issues/180517): [tool_crash] StateError: Bad state: Cannot add event while adding stream.
* **Author:** [bamemuc](https://github.com/bamemuc)
* Running `flutter test` for integration tests on Windows is causing a `StateError: Bad state: Cannot add event while adding stream`, with the stack trace indicating the crash occurs during the test finalization process.

### [Issue #180281](https://github.com/flutter/flutter/issues/180281): [Issue] Input vowel in thai language
* **Author:** [ishrek](https://github.com/ishrek)
* A user reports a text rendering issue where Thai vowels are misaligned and do not display correctly when input.

### [Issue #180132](https://github.com/flutter/flutter/issues/180132): LLDB type formatters do not work with in-source flutter libcxx
* **Author:** [planetmarshall](https://github.com/planetmarshall)
* The LLDB debugger's type formatters are not working correctly for STL types when using the Flutter Engine's in-source libcxx, causing the debugger to display the raw internal object structure instead of a "pretty-printed" view of its contents.

### [Issue #180057](https://github.com/flutter/flutter/issues/180057): [flutter_test] Add a Matcher for CapturedAccessibilityAnnouncement
* **Author:** [zemanux](https://github.com/zemanux)
* This issue proposes adding a new `accessibilityAnnouncement` matcher to `flutter_test` to simplify the verification of `CapturedAccessibilityAnnouncement` objects, making tests more concise and readable, particularly when checking lists of announcements.

### [Issue #179975](https://github.com/flutter/flutter/issues/179975): [Navigator] Mixing CupertinoPage and MaterialPage causes unnecessary rebuilds of previous page
* **Author:** [definev](https://github.com/definev)
* **Reactions:** **5** -- 👍 5
* Mixing `CupertinoPage` and `MaterialPage` within a navigation stack causes the previous page to rebuild unnecessarily when pushing or popping a new route, a behavior that does not occur when the pages are of the same type.

### [Issue #179883](https://github.com/flutter/flutter/issues/179883): [tool_crash] RpcException trying to start a widget preview using a DTD connection that already has a widget preview
* **Author:** [DanTup](https://github.com/DanTup)
* Running `flutter widget-preview start` with a Dart Tooling Daemon (DTD) URI that is already in use by another widget preview causes an `RpcException` and crashes the tool, which should instead provide a user-friendly error message explaining the conflict.

### [Issue #179847](https://github.com/flutter/flutter/issues/179847): [tool_crash] ArgumentError: Invalid argument(s): Invalid type for "path": null
* **Author:** [codeandpipesmoke](https://github.com/codeandpipesmoke)
* The `flutter create` command crashes with an `ArgumentError` because a null value is passed for a path when the tool attempts to access a template's image directory.

### [Issue #179832](https://github.com/flutter/flutter/issues/179832): [camera_android_camerax] videoBitrate parameter from MediaSettings is ignored
* **Author:** [AmandeepSingh179](https://github.com/AmandeepSingh179)
* In the `camera_android_camerax` implementation, the `videoBitrate` parameter from `MediaSettings` is ignored because the value is not being passed to the `Recorder` upon initialization, causing videos to be encoded at a default bitrate instead of the specified one.

### [Issue #179831](https://github.com/flutter/flutter/issues/179831): [MacOS desktop] Hardware keyboard assertion when there are no open windows
* **Author:** [subzero911](https://github.com/subzero911)
* On macOS, using a keyboard shortcut to create a new window when no other windows are open triggers a `HardwareKeyboard` assertion, indicating a keyboard state desynchronization where a `KeyDownEvent` is received for a key the framework believes is already pressed.

### [Issue #179790](https://github.com/flutter/flutter/issues/179790): PlatformException(channel-error, Unable to establish connection on channel: "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.pigeon_defaultConstructor"., null, null)
* **Author:** [rajatjain7869](https://github.com/rajatjain7869)
* A user is reporting a `PlatformException` on Android when loading a webpage, caused by a native `AssertionError` stating that the `WebChromeClient` must be a `SecureWebChromeClient`, which appears to be related to their file picker implementation.

### [Issue #179789](https://github.com/flutter/flutter/issues/179789): [tool_crash] String: <168 characters>
* **Author:** [Lehomar2vinci](https://github.com/Lehomar2vinci)
* The Flutter tool crashes on Windows (stable channel, 3.35.3) when running the `flutter run --profile` command.

### [Issue #179709](https://github.com/flutter/flutter/issues/179709): Compute pipeline unit tests have not been added to the build
* **Author:** [planetmarshall](https://github.com/planetmarshall)
* The unit tests for compute pipelines in `compute_unittests.cc` are not being run because the file has not been added to the build.

### [Issue #179620](https://github.com/flutter/flutter/issues/179620): Unable to load the contents of http://localhost:9300/main.dart (HTTP Error: Status code 404, net::ERR_HTTP_RESPONSE_CODE_FAILURE)
* **Author:** [cruvie](https://github.com/cruvie)
* When debugging a Flutter web application built with the `--source-maps` flag, the browser's developer tools fail to load the original Dart source files, resulting in a 404 Not Found error.

### [Issue #178767](https://github.com/flutter/flutter/issues/178767): Improve doc comments RE ImageFilter.shader and . isShaderFilterSupported
* **Author:** [kevmoo](https://github.com/kevmoo)
* The documentation for `ImageFilter.shader` and `isShaderFilterSupported` should be updated to prominently state that these APIs are only available when using the Impeller rendering backend.

### [Issue #169921](https://github.com/flutter/flutter/issues/169921): analyze-size
* **Author:** [BraveAction](https://github.com/BraveAction)
* Running `flutter build apk --analyze-size` for the `android-arm64` target platform on Flutter 3.32.1 fails with a fatal Dart VM error, `Request to create artificial node for object with cid 61`, during AOT snapshot creation.

### [Issue #163972](https://github.com/flutter/flutter/issues/163972): Gradient subclasses' `scale` methods lose the GradientTransform
* **Author:** [Zabadam](https://github.com/Zabadam)
* **Reactions:** **2** -- 👍 2
* When the `scale()` method is called on `Gradient` subclasses, the new gradient returned incorrectly discards the original `GradientTransform` property.


# GitHub PR Report for flutter/genui
## From 2026-01-05

This period saw several updates focused on documentation, developer experience, and dependency management. For users of the library, the README was updated to clarify that the SDK internally uses and can render UIs from backends that support the A2UI protocol ([PR #648](https://github.com/flutter/genui/pull/648)). A recent code review ([Issue #647](https://github.com/flutter/genui/issues/647)) also highlighted beneficial changes that have made the library more flexible, such as removing the enforced `ChatMessageRole`. Behind the scenes, several housekeeping changes landed, including an update to the `dartantic_ai` dependency to resolve a publishing issue ([PR #649](https://github.com/flutter/genui/pull/649)) and an improvement to the CI workflow to allow for manual triggers ([PR #633](https://github.com/flutter/genui/pull/633)).

## Merged Pull Requests

### [PR #650](https://github.com/flutter/genui/pull/650): Post publish commit to add sections to CHANGELOGs
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2026-01-05 12:11 PM
* **Comments:** 0
* This pull request adds a new "in progress" section to the changelogs of all packages to prepare for the next release.

### [PR #649](https://github.com/flutter/genui/pull/649): Update `dartantic_ai` dependency
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2026-01-05 12:04 PM
* **Comments:** 0
* This PR updates the `dartantic_ai` dependency to the latest version, which resolves a package publishing issue by making it no longer necessary to override its dependency on `mistralai_dart`.

### [PR #648](https://github.com/flutter/genui/pull/648): Add A2UI support section to README
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* **Merged At:** 2026-01-05 10:19 AM
* **Comments:** 1
* This PR adds an "A2UI Support" section to the README, clarifying that the SDK uses the A2UI protocol (v0.8) internally and can render UIs from A2UI backends.

### [PR #633](https://github.com/flutter/genui/pull/633): ci: add workflow_dispatch to enable manual CI triggers
* **Author:** [andrewkolos](https://github.com/andrewkolos)
* **Merged At:** 2026-01-04 04:23 PM
* **Comments:** 0
* This pull request adds a `workflow_dispatch` trigger to the main CI workflow, allowing it to be run manually to help troubleshoot breaking changes in dependencies.


## Closed Issues

### [Issue #647](https://github.com/flutter/genui/issues/647): ## Code Review
* **Author:** [mrtakao550-gif](https://github.com/mrtakao550-gif)
* This code review praises a pull request for beneficial changes that make the library more flexible, such as removing the enforced `ChatMessageRole` and improving test coverage, while suggesting further enhancements to code clarity using modern Dart features like `const` constructors.


# GitHub PR Report for flutter/packages
## From 2026-01-05

This period focused on enhancing the repository's continuous integration (CI) and release processes. For improved security and stability, CI workflows were updated to pin GitHub Actions to specific commit hashes instead of floating version tags ([PR #10599](https://github.com/flutter/packages/pull/10599)). Additionally, the release process for batch packages was strengthened with new CI checks to validate that changes are submitted via new changelog files, preventing direct modifications to the `CHANGELOG.md` or `pubspec.yaml` version ([PR #10485](https://github.com/flutter/packages/pull/10485)).

## Merged Pull Requests

### [PR #10599](https://github.com/flutter/packages/pull/10599): [ci] Pins github action commit hash
* **Author:** [chunhtai](https://github.com/chunhtai)
* **Merged At:** 2026-01-05 10:05 AM
* **Comments:** 3
* This PR updates CI workflows to pin GitHub Actions to specific commit hashes instead of floating version tags for improved security and stability, and also updates repository tooling to treat all workflow file changes as non-code-impacting.

### [PR #10485](https://github.com/flutter/packages/pull/10485): [ci] Adds repo checks in main branch for batch release
* **Author:** [chunhtai](https://github.com/chunhtai)
* **Merged At:** 2026-01-05 11:10 AM
* **Comments:** 1
* This PR adds CI checks for batch release packages on the main branch by refactoring the parsing of `ci_config.yaml` and pending changelogs. The updated `version-check` now validates that changes for batch packages are submitted via new changelog files rather than by directly modifying `CHANGELOG.md` or the `pubspec.yaml` version.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2026-01-05

During this period, there were no changes to the repository, as no pull requests were merged and no issues were closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2026-01-05

This period focused on key documentation improvements to enhance developer experience. To support users with different build configurations, the Android deployment guide was updated in [PR #12863](https://github.com/flutter/website/pull/12863) to include Groovy syntax examples alongside the existing Kotlin, directly addressing a gap identified in [Issue #12793](https://github.com/flutter/website/issues/12793). For developers using generative UI, the documentation was updated for GenUI v0.6.0, highlighting API changes such as the renaming of `GenUiManager` to `A2uiMessageProcessor` and its new ability to accept multiple catalogs ([PR #12883](https://github.com/flutter/website/pull/12883)). Finally, the repository's own contribution and setup guide was improved, with [PR #12884](https://github.com/flutter/website/pull/12884) updating the `README.md` to clarify the latest requirements and add a new dependency on the Firebase CLI.

## Merged Pull Requests

### [PR #12884](https://github.com/flutter/website/pull/12884): Update repo README for latest requirements and setup
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2026-01-05 12:22 PM
* **Comments:** 2
* This PR updates the repository's `README.md` to reflect the latest setup instructions, including an updated link for upgrading Flutter and an expanded, multi-step process for checking links that adds a new dependency on the Firebase CLI.

### [PR #12883](https://github.com/flutter/website/pull/12883): docs: update GenUI docs for 0.6.0
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-05 11:35 AM
* **Comments:** 3
* Updates the GenUI documentation to reflect API changes in version 0.6.0, including the renaming of `GenUiManager` to `A2uiMessageProcessor`, its new ability to accept multiple catalogs, and the use of the `additionalTools` parameter in `FirebaseAiContentGenerator`.

### [PR #12863](https://github.com/flutter/website/pull/12863): Fix(docs): Add Groovy syntax tabs to Android deployment guide (fixes #12793)
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2026-01-05 11:24 AM
* **Comments:** 4
* Updates the Android deployment guide to include Groovy syntax examples alongside the existing Kotlin (KTS) examples, ensuring users with older Flutter projects or those who prefer Groovy can follow the configuration steps.


## Closed Issues

### [Issue #12869](https://github.com/flutter/website/issues/12869): Prerequisite instructions are inconsistent
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* The README contains inconsistent prerequisite instructions, as one section mentions a Node.js requirement while the prerequisite list itself omits it.

### [Issue #12866](https://github.com/flutter/website/issues/12866): Request for Official Android TV Platform Support in Flutter
* **Author:** [KISHORE-KUMAR-S](https://github.com/KISHORE-KUMAR-S)
* This issue requests that Flutter add official, first-class support for the Android TV platform, including proper device detection in tooling, official documentation, framework-level support for D-Pad navigation, and dedicated CI testing.

### [Issue #12793](https://github.com/flutter/website/issues/12793): Groovy syntax not covered
* **Author:** [rogersm-uwosh](https://github.com/rogersm-uwosh)
* The Android deployment documentation provides examples using Kotlin syntax, but since new projects can still be generated with Groovy, the page should be updated to include the necessary Groovy syntax or instructions on how to migrate to Kotlin.



## Top Hacker News Stories

### 89  [Show HN: Prism.Tools – Free and privacy-focused developer utilities](https://blgardner.github.io/prism.tools/)
* **Author:** [BLGardner](https://news.ycombinator.com/user?id=BLGardner) | **Comments:** [35](https://news.ycombinator.com/item?id=46511469)
* Prism.Tools is a collection of 40+ privacy-focused developer utilities, such as JSON formatters and a regex tester, that run entirely in your browser. Each tool is a single, self-contained HTML file built with vanilla JavaScript, requiring no frameworks, build steps, or data collection.

### 673 🔥🔥🔥 [enclose.horse](https://enclose.horse/)
* **Author:** [DavidSJ](https://news.ycombinator.com/user?id=DavidSJ) | **Comments:** [118](https://news.ycombinator.com/item?id=46509211)

### 327 🔥🔥 [AWS raises GPU prices 15% on a Saturday, hopes you weren't paying attention](https://www.theregister.com/2026/01/05/aws_price_increase/)
* **Author:** [Brajeshwar](https://news.ycombinator.com/user?id=Brajeshwar) | **Comments:** [211](https://news.ycombinator.com/item?id=46511153)

### 11  [65% of Hacker News Posts Have Negative Sentiment, and They Outperform](https://philippdubach.com/standalone/hn-sentiment/)
* **Author:** [7777777phil](https://news.ycombinator.com/user?id=7777777phil) | **Comments:** [5](https://news.ycombinator.com/item?id=46512881)

### 20  [Why German Strings Are Everywhere?](https://cedardb.com/blog/german_strings/)
* **Author:** [byt3h3ad](https://news.ycombinator.com/user?id=byt3h3ad) | **Comments:** [9](https://news.ycombinator.com/item?id=46511981)

### 832 🔥🔥🔥 [There were BGP anomalies during the Venezuela blackout](https://loworbitsecurity.com/radar/radar16/)
* **Author:** [illithid0](https://news.ycombinator.com/user?id=illithid0) | **Comments:** [358](https://news.ycombinator.com/item?id=46504963)

### 73  [SCiZE's Classic Warez Collection](https://scenelist.org/)
* **Author:** [achairapart](https://news.ycombinator.com/user?id=achairapart) | **Comments:** [24](https://news.ycombinator.com/item?id=46510625)

### 103 🔥 [Repair a ship’s hull still in the river in -50˚C (2022)](https://eugene.kaspersky.com/2022/04/26/how-to-repair-the-underside-of-a-ships-hull-still-in-the-river-in-50%CB%9Ac-yakutsk/)
* **Author:** [aziaziazi](https://news.ycombinator.com/user?id=aziaziazi) | **Comments:** [23](https://news.ycombinator.com/item?id=46464462)

### 20  [Show HN: DDL to Data – Generate realistic test data from SQL schemas]()
* **Author:** [ddltodata](https://news.ycombinator.com/user?id=ddltodata) | **Comments:** [8](https://news.ycombinator.com/item?id=46511578)
* DDL to Data is a tool that generates realistic test data from `CREATE TABLE` statements for PostgreSQL and MySQL. It offers a simple, no-configuration alternative to the security risks of using production data or the maintenance burden of hand-written seed scripts.

### 147 🔥 [C Is Best](https://sqlite.org/whyc.html)
* **Author:** [alexpadula](https://news.ycombinator.com/user?id=alexpadula) | **Comments:** [130](https://news.ycombinator.com/item?id=46511470)

### 37  ["Inspector Dangerfuck", ANSI art comic from 1994](https://breakintochat.com/blog/2025/12/31/ansi-art-and-webcomics-part-3-eerie-and-inspector-dangerfuck/)
* **Author:** [Kirkman14](https://news.ycombinator.com/user?id=Kirkman14) | **Comments:** [4](https://news.ycombinator.com/item?id=46469473)

### 13  [System: Control your Mac from anywhere using natural language](https://system.surf/)
* **Author:** [handfuloflight](https://news.ycombinator.com/user?id=handfuloflight) | **Comments:** [4](https://news.ycombinator.com/item?id=46511298)

### 15  [I write and ship code ~20–50x faster than I did 5 years ago]()
* **Author:** [EGreg](https://news.ycombinator.com/user?id=EGreg) | **Comments:** [14](https://news.ycombinator.com/item?id=46436872)
* The author describes a development workflow that yields a massive increase in speed by using two parallel AIs in a browser. One AI, the "builder," is given full file context to write and integrate code, while a second AI acts as a "reviewer" to check the resulting diff for bugs and regressions.

### 483 🔥🔥 [Try to take my position: The best promotion advice I ever got](https://andrew.grahamyooll.com/blog/Try-to-Take-My-Position/)
* **Author:** [yuppiepuppie](https://news.ycombinator.com/user?id=yuppiepuppie) | **Comments:** [235](https://news.ycombinator.com/item?id=46466027)

### 218 🔥 [I/O is no longer the bottleneck? (2022)](https://stoppels.ch/2022/11/27/io-is-no-longer-the-bottleneck.html)
* **Author:** [benhoyt](https://news.ycombinator.com/user?id=benhoyt) | **Comments:** [109](https://news.ycombinator.com/item?id=46506994)

### 56  [Interpreter – Offline screen translator for Japanese retro games](https://github.com/bquenin/interpreter)
* **Author:** [bane](https://news.ycombinator.com/user?id=bane) | **Comments:** [6](https://news.ycombinator.com/item?id=46460930)

### 155 🔥 [GBC Boot Animation 88×31 Web Button](https://zakhary.dev/blog/gbc-web-button)
* **Author:** [zakhary](https://news.ycombinator.com/user?id=zakhary) | **Comments:** [14](https://news.ycombinator.com/item?id=46507963)

### 31  [Shipping at Inference-Speed](https://steipete.me/posts/2025/shipping-at-inference-speed)
* **Author:** [xngbuilds](https://news.ycombinator.com/user?id=xngbuilds) | **Comments:** [23](https://news.ycombinator.com/item?id=46441873)

### 435 🔥🔥 [The Post-American Internet](https://pluralistic.net/2026/01/01/39c3/)
* **Author:** [EvanAnderson](https://news.ycombinator.com/user?id=EvanAnderson) | **Comments:** [291](https://news.ycombinator.com/item?id=46509019)

### 213 🔥 [Six-decade math puzzle solved by Korean mathematician](https://www.koreaherald.com/article/10648326)
* **Author:** [mikhael](https://news.ycombinator.com/user?id=mikhael) | **Comments:** [68](https://news.ycombinator.com/item?id=46491129)

### 28  [Tube trains could navigate the Underground using the rules of Quantum Physics](https://www.ianvisits.co.uk/articles/tube-trains-could-navigate-the-underground-using-the-weird-rules-of-quantum-physics-86370/)
* **Author:** [beardyw](https://news.ycombinator.com/user?id=beardyw) | **Comments:** [59](https://news.ycombinator.com/item?id=46509967)

### 1  [GoGoGrandparent (YC S16) is hiring back end engineers](https://www.ycombinator.com/companies/gogograndparent/jobs/2vbzAw8-gogograndparent-yc-s16-is-hiring-backend-and-full-stack-engineers)
* **Author:** [davidchl](https://news.ycombinator.com/user?id=davidchl) | **Comments:** [null](https://news.ycombinator.com/item?id=46508441)

### 157 🔥 [How Y Combinator made it smart to trust founders](https://elbowgreasegames.substack.com/p/when-good-actors-can-trust-each-other)
* **Author:** [spacemarine1](https://news.ycombinator.com/user?id=spacemarine1) | **Comments:** [112](https://news.ycombinator.com/item?id=46501677)

### 406 🔥🔥 [Brave overhauled its Rust adblock engine with FlatBuffers, cutting memory 75%](https://brave.com/privacy-updates/36-adblock-memory-reduction/)
* **Author:** [skaul](https://news.ycombinator.com/user?id=skaul) | **Comments:** [221](https://news.ycombinator.com/item?id=46501894)

### 52  [JavaScript's For-Of Loops Are Fast](https://waspdev.com/articles/2026-01-01/javascript-for-of-loops-are-actually-fast)
* **Author:** [surprisetalk](https://news.ycombinator.com/user?id=surprisetalk) | **Comments:** [49](https://news.ycombinator.com/item?id=46477306)



