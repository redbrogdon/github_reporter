# Overall Summary
Here is your highlights section:

**🔥🔥🔥 [PR #179639](https://github.com/flutter/flutter/pull/179639) (flutter/flutter): Restore CLI precedence for web headers and HTTPS over web_dev_config.yaml**
  * **Comments:** 10
  * This PR restores the correct precedence for web development server configuration, ensuring that command-line arguments for HTTP headers and HTTPS (TLS cert and key paths) now override settings in `web_dev_config.yaml`, fixing a regression introduced in Flutter 3.38.

**🔥🔥🔥 [PR #179251](https://github.com/flutter/flutter/pull/179251) (flutter/flutter): Don't embed unreferenced assets**
  * **Comments:** 6
  * Fixes an issue in the Xcode build process for Flutter apps where unreferenced native assets were being embedded. This change updates `xcode_backend.dart` to read `NativeAssetsManifest.json` and only copy frameworks explicitly referenced in it, preventing incorrect asset bundling when switching between simulator and release builds.

**🔥 [PR #179870](https://github.com/flutter/flutter/pull/179870) (flutter/flutter): Improve documentation about ValueNotifier's behavior**
  * **Comments:** 1
  * Improves the documentation for `ValueNotifier`, clarifying that notifications are triggered only when its `value` is replaced with an object that is not equal to the old one (as evaluated by `==`), and advises using it primarily with immutable data types.

**[Issue #62352](https://github.com/dart-lang/sdk/issues/62352) (dart-lang/sdk): Undefined constructor error refers to wrong class when on RHS of equality test when using dot shorthands**
  * The Dart analyzer incorrectly reports an "undefined constant constructor" error for the `_` class instead of the correct type (e.g., `int`) when using dot shorthands on the right-hand side of an equality comparison.

**[PR #10720](https://github.com/flutter/packages/pull/10720) (flutter/packages): [google_maps_flutter] Add iOS SDK 10.x support**
  * Adds compatibility with Google Maps SDK version 10.x for the `google_maps_flutter` iOS plugin, enabling support for applications targeting iOS 16 and above, and includes a new `ios16` example.

**[PR #10677](https://github.com/flutter/packages/pull/10677) (flutter/packages): [image_picker] Update for UIScene compatibility**
  * This PR updates the `image_picker_ios` plugin for `UIScene` compatibility by using the registrar's view controller to obtain the actual Flutter content's view controller instead of the key window's root view controller. It also introduces a `FIPViewProvider` protocol abstraction to improve testability and facilitate future Swift migration.

**[PR #180069](https://github.com/flutter/flutter/pull/180069) (flutter/flutter): Add tooltip support to PlatformMenuItem and PlatformMenu.**
  * **Comments:** 1
  * This PR adds a `tooltip` property to `PlatformMenuItem` and `PlatformMenu`, enabling developers to provide hover text for menu items, and includes the necessary macOS engine changes to display these tooltips natively.

**[PR #180593](https://github.com/flutter/flutter/pull/180593) (flutter/flutter): [CP-stable]Add a null check for embedded view being added to accessibility tree**
  * **Comments:** 2
  * Fixes a crash on Android by adding a null check for embedded views when constructing the accessibility tree. This prevents a crash that occurred when enabling accessibility, hiding a platform view, and pulling out the top curtain.


# GitHub PR Report for dart-lang/ai
## From 2026-01-06

There were no pull requests merged and no issues closed during this period, indicating no changes were made to the repository's codebase or outstanding issues addressed within this timeframe.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2026-01-06

This update primarily focused on refining the developer experience by addressing issues within the Dart ecosystem. Notably, a significant analyzer bug was resolved where the Dart analyzer incorrectly reported an "undefined constant constructor" error for the `_` class instead of the correct type (e.g., `int`) when dot shorthands were utilized on the right-hand side of an equality comparison, as detailed in [Issue #62352](https://github.com/dart-lang/sdk/issues/62352). This fix enhances the accuracy of diagnostic messages, improving clarity for developers working with specific language features. Additionally, an internal dependency cleanup was performed, removing the `built_value` dependency from `ConnectRequest` ([Issue #62293](https://github.com/dart-lang/sdk/issues/62293)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62352](https://github.com/dart-lang/sdk/issues/62352): Undefined constructor error refers to wrong class when on RHS of equality test when using dot shorthands
* **Author:** [stereotype441](https://github.com/stereotype441)
* The Dart analyzer incorrectly reports an "undefined constant constructor" error for the `_` class instead of the correct type (e.g., `int`) when using dot shorthands on the right-hand side of an equality comparison.

### [Issue #62293](https://github.com/dart-lang/sdk/issues/62293): Remove built_value dependency from ConnectRequest
* **Author:** [jyameo](https://github.com/jyameo)


# GitHub PR Report for dart-lang/language
## From 2026-01-06

There were no pull requests merged or issues closed during this period, indicating no changes were made to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2026-01-06

The recent activity in the repository primarily focused on internal refactorings and simplifications within `ffigen`, enhancing its code generation and parsing capabilities. Key changes include streamlining the `parseTypedefDeclaration` signature by replacing null returns with an explicit `isAnonymous` flag for type aliases not intended for code generation, as seen in [PR #2930]. Similarly, the `parseEnumDeclaration` function was simplified in [PR #2929] to directly return an `EnumClass` with an `isAnonymous` flag, leading to more unified enum handling. Further internal cleanup was achieved with [PR #2928], which removed the `pointerReference` parameter and its associated plumbing, as this functionality is now managed by dedicated transformers. These `ffigen` improvements contribute to a more robust foundation for generating Dart FFI bindings, indirectly affecting how C APIs are represented in Dart. Additionally, [Issue #2828] tracked crucial cherry-picking efforts for the Dart 3.10 and Flutter 3.38 releases, ensuring ongoing compatibility and stability.

## Merged Pull Requests

### [PR #2930](https://github.com/dart-lang/native/pull/2930): [ffigen] Simplify `parseTypedefDeclaration` signature
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2026-01-06 03:38 PM
* **Comments:** 2
* This PR simplifies `ffigen`'s `parseTypedefDeclaration` signature by replacing `null` returns for type aliases that should not be code-generated with an explicit `isAnonymous` flag on the `Typealias` object, improving clarity and preparing for an upcoming refactor.

### [PR #2929](https://github.com/dart-lang/native/pull/2929): [ffigen] Simplify `parseEnumDeclaration` signature
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2026-01-06 02:57 PM
* **Comments:** 2
* Simplifies the `ffigen` `parseEnumDeclaration` function by making it return an `EnumClass` directly instead of a tuple. This change introduces an `isAnonymous` flag to `EnumClass` to mark anonymous enums, allowing them to be filtered out during subsequent processing and unifying enum handling.

### [PR #2928](https://github.com/dart-lang/native/pull/2928): [ffigen] Remove pointerReference plumbing
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2026-01-06 02:57 PM
* **Comments:** 2
* This PR removes the `pointerReference` parameter and associated plumbing from ffigen's code generation, as the functionality to optionally generate opaque structs or unions when only referenced by pointers is now handled by the `FindByValueCompoundsVisitation` and `ClearOpaqueCompoundMembersVisitation` transformers.


## Closed Issues

### [Issue #2828](https://github.com/dart-lang/native/issues/2828): [hooks] ☂️ Dart 3.10 Flutter 3.38 CP list
* **Author:** [dcharkes](https://github.com/dcharkes)
* This issue tracks the cherry-picking of specific commits from Dart and Flutter to the stable and next beta channels for the Dart 3.10 and Flutter 3.38 releases.


# GitHub PR Report for flutter/ai
## From 2026-01-06

No pull requests were merged and no issues were closed during this period, indicating no changes were made to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2026-01-06

There were no pull requests merged or issues closed during this period, indicating no recent changes to the repository's codebase.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2026-01-06

This update to the repository brings significant refinements across developer tooling, core framework behavior, and platform-specific feature parity. A major focus was on restoring expected precedence for web development server configurations, with [PR #179639](https://github.com/flutter/flutter/pull/179639) ensuring command-line arguments for HTTP headers and HTTPS now correctly override `web_dev_config.yaml` settings, addressing a regression documented in [Issue #179014](https://github.com/flutter/flutter/issues/179014). For web projects, the proxy middleware was also enhanced by [PR #179858](https://github.com/flutter/flutter/pull/179858) to forward 404 responses directly to the client instead of serving the `index.html` fallback, resolving [Issue #178754](https://github.com/flutter/flutter/issues/178754). Improvements in asset management see [PR #179251](https://github.com/flutter/flutter/pull/179251) preventing unreferenced native assets from being incorrectly embedded during Xcode builds, which can reduce application size. Core framework documentation was clarified, with [PR #179870](https://github.com/flutter/flutter/pull/179870) improving the explanation of `ValueNotifier`'s notification triggers based on `==` equality rather than identity, a point of confusion highlighted in [Issue #142418](https://github.com/flutter/flutter/issues/142418). Accessibility saw important fixes, including [PR #180593](https://github.com/flutter/flutter/pull/180593) adding a null check to prevent Android crashes related to embedded views in the accessibility tree (related to [Issue #180381](https://github.com/flutter/flutter/issues/180381)), and [PR #179917](https://github.com/flutter/flutter/pull/179917) migrating `ExpansionTile` on Android to use `liveRegion` for semantic announcements, addressing the deprecation discussed in [Issue #177785](https://github.com/flutter/flutter/issues/177785). Widget functionality expanded with [PR #180069](https://github.com/flutter/flutter/pull/180069) adding `tooltip` support to `PlatformMenuItem` and `PlatformMenu` on macOS (as requested in [Issue #180031](https://github.com/flutter/flutter/issues/180031)), and [PR #179345](https://github.com/flutter/flutter/pull/179345) introducing an `errorBuilder` to `DropdownMenuFormField` for customized error display, addressing [Issue #172416](https://github.com/flutter/flutter/issues/172416). Furthermore, the iOS text selection context menu now correctly includes the "Share" option thanks to [PR #176199](https://github.com/flutter/flutter/pull/176199), resolving [Issue #173491](https://github.com/flutter/flutter/issues/173491). Stability improvements include multiple fixes to prevent crashes when various widgets like `FadeInImage`, `DraggableScrollableSheet`, `Draggable`, and `ColorFiltered` are rendered in zero-dimensional environments, and the build system was updated by [PR #180594](https://github.com/flutter/flutter/pull/180594) to no longer require the Android NDK by default, streamlining development for Android targets.

## Merged Pull Requests

### [PR #180594](https://github.com/flutter/flutter/pull/180594): [hooks] Don't require NDK for Android targets
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2026-01-06 11:41 AM
* **Comments:** 0
* Updates Flutter tools to no longer require the Android NDK by default when building for Android targets. Instead, it passes a `null` C compiler configuration to native asset hooks, allowing them to determine if the NDK is strictly necessary, thereby permitting builds without the NDK if no hooks depend on it.

### [PR #180593](https://github.com/flutter/flutter/pull/180593): [CP-stable]Add a null check for embedded view being added to accessibility tree
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2026-01-06 10:43 AM
* **Comments:** 2
* Fixes a crash on Android by adding a null check for embedded views when constructing the accessibility tree. This prevents a crash that occurred when enabling accessibility, hiding a platform view, and pulling out the top curtain.

### [PR #180535](https://github.com/flutter/flutter/pull/180535): [CP][stable][web] Fix `resizeToAvoidBottomInset` on Android web (#179581)
* **Author:** [mdebbar](https://github.com/mdebbar)
* **Merged At:** 2026-01-06 08:09 AM
* **Comments:** 1
* Fixes an issue on Android web where `resizeToAvoidBottomInset` failed to correctly resize the app after the virtual keyboard closed, leaving a blank area, by ensuring the physical size and view insets are properly managed when the keyboard is active.

### [PR #180513](https://github.com/flutter/flutter/pull/180513): Bump ffigen in templates
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2026-01-05 04:42 PM
* **Comments:** 2
* Bumps the `ffigen` dependency to `^20.1.1` along with `ffi`, `native_toolchain_c`, and `test` in the `package_ffi` and `plugin_ffi` templates, which removes the `preamble` from `ffigen.yaml` and updates linting ignores and code formatting in the generated Dart files.

### [PR #180509](https://github.com/flutter/flutter/pull/180509): Manually bump dependencies
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2026-01-06 09:38 AM
* **Comments:** 0
* This change manually bumps several dependencies within `flutter_tools` and the main project to their newer versions, addressing an issue where automated dependency updates were not being applied.

### [PR #180495](https://github.com/flutter/flutter/pull/180495): Make sure that a FadeInImage doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2026-01-05 05:47 PM
* **Comments:** 0
* Adds a test case to ensure the `FadeInImage` widget does not crash when rendered in a zero-dimensional (0x0) environment, addressing a previously reported issue.

### [PR #180433](https://github.com/flutter/flutter/pull/180433): Make sure that a DraggableScrollableSheet doesn't crash in 0x0 enviro…
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2026-01-05 06:14 PM
* **Comments:** 0
* Adds a test case to confirm that `DraggableScrollableSheet` does not crash when rendered within a zero-size area, addressing issue #6537.

### [PR #180380](https://github.com/flutter/flutter/pull/180380): Make sure that a Draggable doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2026-01-05 05:34 PM
* **Comments:** 0
* Adds a new test case to ensure the `Draggable` widget does not crash when rendered with a zero area, addressing issue #6537.

### [PR #180307](https://github.com/flutter/flutter/pull/180307): Make sure that a ColorFiltered doesn't crash 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2026-01-05 05:59 PM
* **Comments:** 1
* Adds a test to ensure the `ColorFiltered` widget does not crash when rendered with a zero area, addressing issue #6537.

### [PR #180069](https://github.com/flutter/flutter/pull/180069): Add tooltip support to PlatformMenuItem and PlatformMenu.
* **Author:** [ksokolovskyi](https://github.com/ksokolovskyi)
* **Merged At:** 2026-01-06 07:59 AM
* **Comments:** 1
* This PR adds a `tooltip` property to `PlatformMenuItem` and `PlatformMenu`, enabling developers to provide hover text for menu items, and includes the necessary macOS engine changes to display these tooltips natively.

### [PR #179917](https://github.com/flutter/flutter/pull/179917): Replace semantic announcements in expansion tile for Android
* **Author:** [hannah-hyj](https://github.com/hannah-hyj)
* **Merged At:** 2026-01-05 05:10 PM
* **Comments:** 1
* Replaces the use of `SemanticsService.sendAnnouncement` with a `liveRegion` for announcing `ExpansionTile` state changes on Android. This change addresses the deprecation of `SemanticsService.sendAnnouncement` on Android and improves accessibility by using a live region to announce expansion and collapse states without moving focus.

### [PR #179870](https://github.com/flutter/flutter/pull/179870): Improve documentation about ValueNotifier's behavior
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-06 12:58 AM
* **Comments:** 1
* Improves the documentation for `ValueNotifier`, clarifying that notifications are triggered only when its `value` is replaced with an object that is not equal to the old one (as evaluated by `==`), and advises using it primarily with immutable data types.

### [PR #179858](https://github.com/flutter/flutter/pull/179858): Forward proxy 404 responses to client
* **Author:** [brahim-guaali](https://github.com/brahim-guaali)
* **Merged At:** 2026-01-06 02:46 PM
* **Comments:** 2
* Updates the proxy middleware to forward 404 responses from proxied backends directly to the client, preventing the `index.html` fallback from being served for missing backend resources.

### [PR #179684](https://github.com/flutter/flutter/pull/179684): [skia] Disable legacy non-const SkData APIs
* **Author:** [kjlubick](https://github.com/kjlubick)
* **Merged At:** 2026-01-06 11:24 AM
* **Comments:** 1
* Disables legacy non-const SkData APIs in Flutter's Skia integration. This is achieved by adding `SK_DISABLE_LEGACY_NONCONST_SERIAL_PROCS` and `SK_DISABLE_LEGACY_NONCONST_ENCODED_IMAGE_DATA` defines, and removing other deprecated Skia defines to prevent backsliding after recent updates.

### 🔥 [PR #179639](https://github.com/flutter/flutter/pull/179639): Restore CLI precedence for web headers and HTTPS over web_dev_config.yaml
* **Author:** [Saqib198](https://github.com/Saqib198)
* **Merged At:** 2026-01-06 01:45 PM
* **Comments:** 10
* This PR restores the correct precedence for web development server configuration, ensuring that command-line arguments for HTTP headers and HTTPS (TLS cert and key paths) now override settings in `web_dev_config.yaml`, fixing a regression introduced in Flutter 3.38.

### [PR #179345](https://github.com/flutter/flutter/pull/179345): Add DropdownMenuFormField.errorBuilder
* **Author:** [bleroux](https://github.com/bleroux)
* **Merged At:** 2026-01-06 07:58 AM
* **Comments:** 1
* Adds the `errorBuilder` property to `DropdownMenuFormField`, enabling developers to customize the widget used to display error messages. This brings `DropdownMenuFormField` in line with other form fields that already support this customization.

### 🔥 [PR #179251](https://github.com/flutter/flutter/pull/179251): Don't embed unreferenced assets
* **Author:** [simolus3](https://github.com/simolus3)
* **Merged At:** 2026-01-06 03:14 AM
* **Comments:** 6
* Fixes an issue in the Xcode build process for Flutter apps where unreferenced native assets were being embedded. This change updates `xcode_backend.dart` to read `NativeAssetsManifest.json` and only copy frameworks explicitly referenced in it, preventing incorrect asset bundling when switching between simulator and release builds.

### [PR #176992](https://github.com/flutter/flutter/pull/176992): Enable misc leak tracking
* **Author:** [dkwingsmt](https://github.com/dkwingsmt)
* **Merged At:** 2026-01-06 11:57 AM
* **Comments:** 3
* This PR adds a new `misc` subshard to the `framework_tests` CI to enable automated leak tracking tests for the framework, helping to detect memory leaks that are challenging to verify with unit tests.

### [PR #176199](https://github.com/flutter/flutter/pull/176199): Fix/ios share context menu
* **Author:** [muradhossin](https://github.com/muradhossin)
* **Merged At:** 2026-01-06 11:04 AM
* **Comments:** 4
* This PR fixes an issue by adding the missing 'Share' option to the default iOS SystemContextMenu when text is selected, aligning Flutter's text selection menu with native iOS behavior. It integrates `IOSSystemContextMenuItemShare` into the `getDefaultItems` mapping, with a new widget test confirming its presence.


## Closed Issues

### [Issue #180589](https://github.com/flutter/flutter/issues/180589): mac-37 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The mac-37 device lost its external connection from the phone.

### [Issue #180549](https://github.com/flutter/flutter/issues/180549): Flutter Web debug builds block on google-analytics.com requests
* **Author:** [0xNF](https://github.com/0xNF)
* Flutter web debug builds block for 2-3 minutes when google-analytics.com requests are silently dropped, instead of loading immediately.

### [Issue #180497](https://github.com/flutter/flutter/issues/180497): Camera crashing when calling Hot restart
* **Author:** [AbhiCodebugger](https://github.com/AbhiCodebugger)
* The camera plugin crashes with an `IllegalArgumentException` related to `ObserverProxyApi$ObserverImpl` when trying to re-initialize or select the camera after a hot restart in the official CameraExampleHome example.

### [Issue #180381](https://github.com/flutter/flutter/issues/180381): [Google3 Bug]: NullPointerException on AccessibilityBridge
* **Author:** [1e0ng](https://github.com/1e0ng)
* A `NullPointerException` is causing severe production crashes in `AccessibilityBridge.java` at line 992, likely because an `assert embeddedView != null` statement is ignored in production builds, and a fix is suggested to replace the assert with an `if (embeddedView != null)` check.

### [Issue #180330](https://github.com/flutter/flutter/issues/180330): [image_picker] returns null on some Android 16 devices (Samsung 21 FE, Oppo Find X series)
* **Author:** [jenishbhalala16](https://github.com/jenishbhalala16)
* **Reactions:** **1** -- 👍 1
* The `image_picker` package inconsistently returns null after an image is selected from the gallery on some Android 16 devices (Samsung S21 FE, Oppo Find X series), despite working correctly on other devices with the same Android version (Samsung A16), with no errors or crashes reported.

### [Issue #180272](https://github.com/flutter/flutter/issues/180272): [google_maps_flutter] Support iOS SDK v10
* **Author:** [larry-cariq](https://github.com/larry-cariq)
* The `google_maps_flutter_ios` package's dependency constraint for `GoogleMaps` is preventing it from updating to version 10.x of the iOS SDK.

### [Issue #180243](https://github.com/flutter/flutter/issues/180243): Logs from `dart:developer` are not displayed in the terminal upon running the app with `flutter run --debug`
* **Author:** [kerimamansaryyev](https://github.com/kerimamansaryyev)
* **Reactions:** **1** -- 👍 1
* When running a Flutter app with `flutter run --debug`, logs from `dart:developer.log` do not appear in the terminal, unlike `print` statements, which prevents developers from using its advanced features like log levels and non-truncated output directly in the console.

### [Issue #180031](https://github.com/flutter/flutter/issues/180031): Add .toolTip property to PlatformMenuBar's PlatformMenuItem class
* **Author:** [driftwoodstudio](https://github.com/driftwoodstudio)
* PlatformMenuItem for macOS lacks a `toolTip` property, a feature available in native macOS and Flutter on Windows, and the proposal is to add this property to enable tooltips for menu items on macOS by leveraging the existing `NSMenuItem.toolTip` functionality.

### [Issue #179924](https://github.com/flutter/flutter/issues/179924): Image picker on Samsung phone stuck when trying to scroll.
* **Author:** [utsav-gh](https://github.com/utsav-gh)
* When a user scrolls a bottom sheet containing an image GridView and then attempts to interact with the GridView, it becomes unresponsive, preventing image selection, until the bottom sheet is closed and reopened; this issue specifically occurs on Samsung phones.

### [Issue #179922](https://github.com/flutter/flutter/issues/179922): java.lang.NullPointerException: Attempt to invoke virtual method 'void android.view.View.setImportantForAccessibility(int)' on a null object reference
* **Author:** [remarkked](https://github.com/remarkked)
* A `java.lang.NullPointerException` crashes the app in release mode when navigating to a page with a `Slider` widget via a `Navigator` using a `transitionsBuilder` (e.g., `FadeTransition`), specifically upon pulling down the top curtain after switching to the route.

### [Issue #179877](https://github.com/flutter/flutter/issues/179877): Android build fails with Cannot run Project.afterEvaluate(Action) when applying dev.flutter.flutter-gradle-plugin (Flutter 3.38.5, Kotlin DSL)
* **Author:** [YshTyg](https://github.com/YshTyg)
* An Android build for a Flutter 3.38.5 project using Kotlin DSL fails with a `Cannot run Project.afterEvaluate` error when the `dev.flutter.flutter-gradle-plugin` is applied, indicating a Gradle evaluation timing conflict.

### [Issue #179851](https://github.com/flutter/flutter/issues/179851): Flutter Web: TextField input overlaps UI while typing; issue disappears on focus loss
* **Author:** [sarvajeet-VilCart](https://github.com/sarvajeet-VilCart)
* On Flutter Web, typing in a TextField causes input text and surrounding UI to overlap while focused, but the layout corrects itself immediately when focus is lost; this issue is specific to web and does not occur on mobile platforms.

### [Issue #179671](https://github.com/flutter/flutter/issues/179671): Linux_pixel_7pro integration_ui_keyboard_resize is 2.04% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* The `Linux_pixel_7pro integration_ui_keyboard_resize` post-submit test builder is 2.04% flaky, exceeding the 2.00% threshold, and requires investigation and a fix to reduce flakiness.

### [Issue #179664](https://github.com/flutter/flutter/issues/179664): Mac tool_integration_tests_3_5 is 2.04% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* **Reactions:** **1** -- ❤️ 1
* The `Mac tool_integration_tests_3_5` post-submit test builder is 2.04% flaky, exceeding the 2.00% threshold, and requires a fix to address the flakiness.

### [Issue #179586](https://github.com/flutter/flutter/issues/179586): remove `examples/wasm` from  RFW documentation
* **Author:** [runyaga](https://github.com/runyaga)
* Remove the "Integrating with scripting language runtimes" section from the RFW README.md because the `examples/wasm` feature it documented has been removed.

### [Issue #179014](https://github.com/flutter/flutter/issues/179014): Flutter 3.38 run command line arguments not working for web development config
* **Author:** [GreatTux](https://github.com/GreatTux)
* In Flutter 3.38, command-line arguments such as `--web-hostname` and `--web-port` are no longer recognized for web development configuration, as the system now exclusively relies on `web_dev_config.yaml` despite documentation and help output indicating command-line precedence.

### [Issue #178754](https://github.com/flutter/flutter/issues/178754): `web_dev_config.yaml` Proxy intercepts backend 404 responses and serves `index.html` fallback
* **Author:** [mark-dropbear](https://github.com/mark-dropbear)
* The `web_dev_config.yaml` proxy intercepts backend 404 responses and incorrectly serves the `index.html` SPA fallback instead of forwarding the actual 404 status code and JSON body, preventing proper RESTful error handling in the client application.

### [Issue #177785](https://github.com/flutter/flutter/issues/177785): Remove ExpansionTile usage of Semantic Announcements
* **Author:** [ash2moon](https://github.com/ash2moon)
* `ExpansionTile` currently uses `SemanticsService.sendAnnouncement`, which is deprecated on Android API 36+, and will be migrated to use a live region for state change announcements to address this, with related PRs handling tristate patterns for accessibility and refactoring.

### [Issue #174418](https://github.com/flutter/flutter/issues/174418): [image_picker_ios][UIScene] Migrate to scene APIs
* **Author:** [vashworth](https://github.com/vashworth)
* The `image_picker_ios` plugin needs to migrate its usage of the deprecated `UIApplication sharedApplication].windows` API to the `UIScene` equivalent to ensure compatibility with modern iOS scene APIs.

### [Issue #173491](https://github.com/flutter/flutter/issues/173491): [iOS] iOS system context menu is missing the "Share" button
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* On iOS, Flutter's `TextField` context menu does not display the "Share" button when text is selected, contrary to expected system behavior.

### [Issue #172416](https://github.com/flutter/flutter/issues/172416): DropdownMenuFormField is missing an errorBuilder property
* **Author:** [ljmatan](https://github.com/ljmatan)
* The `DropdownMenuFormField` widget is missing an `errorBuilder` property, unlike other form fields, and it is proposed to add this property for consistent error handling.

### [Issue #142418](https://github.com/flutter/flutter/issues/142418): ValueNotifier documentation blurs the line between equality and identity
* **Author:** [RandalSchwartz](https://github.com/RandalSchwartz)
* **Reactions:** **2** -- 👍 2
* The ValueNotifier documentation incorrectly states that it notifies listeners only when the value's *identity* changes, but the actual code uses the `==` operator, which can be overridden for deeper equality, leading to reader confusion about notification behavior.


# GitHub PR Report for flutter/genui
## From 2026-01-06

This update to the repository primarily focused on refining developer experience and documentation. Key improvements include enhanced error handling for catalog example loading, which now provides more contextual messages to simplify debugging of invalid data ([PR #653](https://github.com/flutter/genui/pull/653)). Furthermore, documentation was updated to recommend using `flutter pub add` for dependency management, ensuring developers use the most current and efficient method while removing outdated references ([PR #645](https://github.com/flutter/genui/pull/645)). To improve visibility and project context, the repository's README file will also now include a mention of A2UI ([Issue #503](https://github.com/flutter/genui/issues/503)).

## Merged Pull Requests

### [PR #653](https://github.com/flutter/genui/pull/653): Improve error handling for catalog example loading
* **Author:** [nan-yu](https://github.com/nan-yu)
* **Merged At:** 2026-01-06 03:44 PM
* **Comments:** 0
* This PR improves error handling for catalog example loading by wrapping example data parsing and component creation in a try-catch block. This provides more contextual error messages, including the catalog item's name, which simplifies debugging of invalid example data.

### [PR #645](https://github.com/flutter/genui/pull/645): [docs] Suggest using `flutter pub add` for adding dependencies
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2026-01-06 12:32 PM
* **Comments:** 0
* Updates documentation to recommend `flutter pub add` for adding dependencies, simplifying the process and helping developers avoid outdated versions, while also removing mentions of outdated git dependencies.


## Closed Issues

### [Issue #503](https://github.com/flutter/genui/issues/503): Mention A2UI in the README of the repo
* **Author:** [sethladd](https://github.com/sethladd)
* The issue requests adding a mention of A2UI to the repository's README file to improve SEO and contextualization.


# GitHub PR Report for flutter/packages
## From 2026-01-06

This release primarily focuses on enhancing iOS compatibility and updating core dependencies across several packages. The `google_maps_flutter` plugin now supports iOS SDK 10.x, enabling its use in applications targeting iOS 16 and above, as detailed in [PR #10720](https://github.com/flutter/packages/pull/10720). Similarly, the `image_picker_ios` plugin received an important update for `UIScene` compatibility, improving its integration with modern iOS application lifecycles and enhancing testability through a new protocol abstraction ([PR #10677](https://github.com/flutter/packages/pull/10677)). Beyond platform support, the Google Fonts library was updated to version 7.0.0, introducing a substantial number of new fonts and removing several deprecated ones, expanding the visual assets available to developers ([PR #10713](https://github.com/flutter/packages/pull/10713)). Minor changes include an adjustment to the `go_router` batch release CI workflow for improved reliability ([PR #10733](https://github.com/flutter/packages/pull/10733)) and a documentation cleanup in the `rfw` package by removing an obsolete section ([PR #10726](https://github.com/flutter/packages/pull/10726)).

## Merged Pull Requests

### [PR #10733](https://github.com/flutter/packages/pull/10733): [ci] Adjust workflow for dispatching go_router batch release
* **Author:** [chunhtai](https://github.com/chunhtai)
* **Merged At:** 2026-01-06 01:35 PM
* **Comments:** 2
* This PR fixes an issue in the `go_router` batch release CI workflow by standardizing the `repository_dispatch` event type to `batch-release-pr` and explicitly granting `contents: write` permissions for the dispatch job.

### [PR #10726](https://github.com/flutter/packages/pull/10726): [rfw] Remove scripting language integration section from `README`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-06 01:35 PM
* **Comments:** 0
* Removes the obsolete 'Integrating with scripting language runtimes' section from the `rfw` package's `README.md`.

### [PR #10720](https://github.com/flutter/packages/pull/10720): [google_maps_flutter] Add iOS SDK 10.x support
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2026-01-06 12:36 PM
* **Comments:** 0
* Adds compatibility with Google Maps SDK version 10.x for the `google_maps_flutter` iOS plugin, enabling support for applications targeting iOS 16 and above, and includes a new `ios16` example.

### [PR #10713](https://github.com/flutter/packages/pull/10713): Update Google Fonts to v7.0.0 with new and removed fonts
* **Author:** [guidezpl](https://github.com/guidezpl)
* **Merged At:** 2026-01-06 11:38 AM
* **Comments:** 1
* Updates the Google Fonts library to version 7.0.0, adding support for numerous new fonts and removing several deprecated or replaced fonts.

### [PR #10677](https://github.com/flutter/packages/pull/10677): [image_picker] Update for UIScene compatibility
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2026-01-06 01:00 PM
* **Comments:** 0
* This PR updates the `image_picker_ios` plugin for `UIScene` compatibility by using the registrar's view controller to obtain the actual Flutter content's view controller instead of the key window's root view controller. It also introduces a `FIPViewProvider` protocol abstraction to improve testability and facilitate future Swift migration.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2026-01-06

During this period, no pull requests were merged and no issues were closed, indicating no significant changes or updates were integrated into the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2026-01-06

This period primarily focused on enhancing documentation clarity and accessibility across the repository. A key update involved adding a short URL for easier access to the Flutter style updates design document, reflecting ongoing developer guideline improvements ([PR #12890](https://github.com/flutter/website/pull/12890)). Critical documentation was refined by correcting a link in `uiscenedelegate.md` to accurately point to method channels documentation, which is vital for understanding platform interoperability ([PR #12888](https://github.com/flutter/website/pull/12888)). Furthermore, release notes for DevTools 2.54.0 were published, informing developers of general updates, including an Inspector warning about the removal of the legacy inspector and improvements to the Deep Links tool ([PR #12889](https://github.com/flutter/website/pull/12889)). Finally, overall website navigation was improved by adding the tutorial index page to the navigation dropdown, making educational content more discoverable ([PR #12882](https://github.com/flutter/website/pull/12882)).

## Merged Pull Requests

### [PR #12890](https://github.com/flutter/website/pull/12890): Add link to the Flutter style updates design doc
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* **Merged At:** 2026-01-06 03:05 PM
* **Comments:** 3
* Adds a `/go/flutter-style-updates` redirect to `firebase.json` for the Flutter style updates design document, providing a short URL for easier access.

### [PR #12889](https://github.com/flutter/website/pull/12889): Add DevTools release notes for 2.54.0
* **Author:** [elliette](https://github.com/elliette)
* **Merged At:** 2026-01-06 12:49 PM
* **Comments:** 2
* Adds release notes for DevTools 2.54.0, detailing general updates such as retrying dropped DTD connections, an Inspector warning about the removal of the legacy inspector, a fix for the Memory tool's zoom duration, and improvements to the Deep Links tool.

### [PR #12888](https://github.com/flutter/website/pull/12888): Fix wrong method channels link in `uiscenedelegate.md`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2026-01-06 07:14 AM
* **Comments:** 2
* Fixes a wrong method channels link in the `uiscenedelegate.md` documentation. The link previously pointed to the platform views documentation and now correctly points to the method channels documentation.

### [PR #12882](https://github.com/flutter/website/pull/12882): add tutorial index page to navigation dropdown
* **Author:** [schultek](https://github.com/schultek)
* **Merged At:** 2026-01-06 11:42 AM
* **Comments:** 1
* Adds a link to the tutorial index page in the page navigation dropdown, allowing users to easily navigate back to the tutorial overview. This involves updating tutorial data models to store the tutorial's URL and refactoring the dropdown's divider component.


## Closed Issues

No issues were closed during this time.



## Top Hacker News Stories

### 109 🔥 [Tailscale state file encryption no longer enabled by default](https://tailscale.com/changelog)
* **Author:** [traceroute66](https://news.ycombinator.com/user?id=traceroute66) | **Comments:** [56](https://news.ycombinator.com/item?id=46531925)

### 557 🔥🔥 [Sugar industry influenced researchers and blamed fat for CVD (2016)](https://www.ucsf.edu/news/2016/09/404081/sugar-papers-reveal-industry-role-shifting-national-heart-disease-focus)
* **Author:** [aldarion](https://news.ycombinator.com/user?id=aldarion) | **Comments:** [347](https://news.ycombinator.com/item?id=46526740)

### 56  [LMArena is a cancer on AI](https://surgehq.ai/blog/lmarena-is-a-plague-on-ai)
* **Author:** [jumploops](https://news.ycombinator.com/user?id=jumploops) | **Comments:** [19](https://news.ycombinator.com/item?id=46522632)

### 99  [NPM to implement staged publishing after turbulent shift off classic tokens](https://socket.dev/blog/npm-to-implement-staged-publishing)
* **Author:** [feross](https://news.ycombinator.com/user?id=feross) | **Comments:** [14](https://news.ycombinator.com/item?id=46530448)

### 375 🔥🔥 [Shipmap.org](https://www.shipmap.org/)
* **Author:** [surprisetalk](https://news.ycombinator.com/user?id=surprisetalk) | **Comments:** [63](https://news.ycombinator.com/item?id=46527161)

### 385 🔥🔥 [US will ban Wall Street investors from buying single-family homes](https://www.reuters.com/world/us/us-will-ban-large-institutional-investors-buying-single-family-homes-trump-says-2026-01-07/)
* **Author:** [kpw94](https://news.ycombinator.com/user?id=kpw94) | **Comments:** [390](https://news.ycombinator.com/item?id=46531068)

### 11  [2026 Predictions Scorecard](https://rodneybrooks.com/predictions-scorecard-2026-january-01/)
* **Author:** [calvinfo](https://news.ycombinator.com/user?id=calvinfo) | **Comments:** [5](https://news.ycombinator.com/item?id=46533343)

### 295 🔥🔥 [Eat Real Food](https://realfood.gov)
* **Author:** [atestu](https://news.ycombinator.com/user?id=atestu) | **Comments:** [542](https://news.ycombinator.com/item?id=46529237)

### 128 🔥 [Health care data breach affects over 600k patients, Illinois agency says](https://www.nprillinois.org/illinois/2026-01-06/health-care-data-breach-affects-600-000-patients-illinois-agency-says)
* **Author:** [toomuchtodo](https://news.ycombinator.com/user?id=toomuchtodo) | **Comments:** [45](https://news.ycombinator.com/item?id=46528353)

### 257 🔥🔥 [LaTeX Coffee Stains (2021) [pdf]](https://ctan.math.illinois.edu/graphics/pgf/contrib/coffeestains/coffeestains-en.pdf)
* **Author:** [zahrevsky](https://news.ycombinator.com/user?id=zahrevsky) | **Comments:** [57](https://news.ycombinator.com/item?id=46526933)

### 29  [Notion AI: Unpatched data exfiltration](https://www.promptarmor.com/resources/notion-ai-unpatched-data-exfiltration)
* **Author:** [takira](https://news.ycombinator.com/user?id=takira) | **Comments:** [1](https://news.ycombinator.com/item?id=46531565)

### 58  [Native Amiga Filesystems on macOS / Linux / Windows with FUSE](https://github.com/reinauer/amifuse)
* **Author:** [doener](https://news.ycombinator.com/user?id=doener) | **Comments:** [11](https://news.ycombinator.com/item?id=46473726)

### 26  [We found cryptography bugs in the elliptic library using Wycheproof](https://blog.trailofbits.com/2025/11/18/we-found-cryptography-bugs-in-the-elliptic-library-using-wycheproof/)
* **Author:** [crescit_eundo](https://news.ycombinator.com/user?id=crescit_eundo) | **Comments:** [2](https://news.ycombinator.com/item?id=46454577)

### 797 🔥🔥🔥 [Creators of Tailwind laid off 75% of their engineering team](https://github.com/tailwindlabs/tailwindcss.com/pull/2388)
* **Author:** [kevlened](https://news.ycombinator.com/user?id=kevlened) | **Comments:** [498](https://news.ycombinator.com/item?id=46527950)

### 37  [Claude Code Emergent Behavior: When Skills Combine](https://vibeandscribe.xyz/posts/2025-01-07-emergent-behavior.html)
* **Author:** [ryanthedev](https://news.ycombinator.com/user?id=ryanthedev) | **Comments:** [18](https://news.ycombinator.com/item?id=46531794)

### 263 🔥🔥 [A4 Paper Stories](https://susam.net/a4-paper-stories.html)
* **Author:** [blenderob](https://news.ycombinator.com/user?id=blenderob) | **Comments:** [130](https://news.ycombinator.com/item?id=46525888)

### 98  [Many hells of WebDAV](https://candid.dev/blog/many-hells-of-webdav)
* **Author:** [candiddevmike](https://news.ycombinator.com/user?id=candiddevmike) | **Comments:** [55](https://news.ycombinator.com/item?id=46527775)

### 59  [Building voice agents with Nvidia open models](https://www.daily.co/blog/building-voice-agents-with-nvidia-open-models/)
* **Author:** [kwindla](https://news.ycombinator.com/user?id=kwindla) | **Comments:** [3](https://news.ycombinator.com/item?id=46528045)

### 17  [Show HN: I visualized the entire history of Citi Bike in the browser](https://bikemap.nyc/)
* **Author:** [freemanjiang](https://news.ycombinator.com/user?id=freemanjiang) | **Comments:** [7](https://news.ycombinator.com/item?id=46530832)
* This project visualizes 291 million Citi Bike rides, allowing users to search for their own specific trips within the massive dataset. It is an open-source, backend-less application that uses DuckDB WASM for data querying, deck.gl for GPU-accelerated rendering, and OSRM for route generation.

### 100 🔥 [What *is* code? (2015)](https://www.bloomberg.com/graphics/2015-paul-ford-what-is-code/)
* **Author:** [bblcla](https://news.ycombinator.com/user?id=bblcla) | **Comments:** [41](https://news.ycombinator.com/item?id=46458610)

### 21  [A glimpse into V8 development for RISC-V](https://riseproject.dev/2025/12/09/a-glimpse-into-v8-development-for-risc-v/)
* **Author:** [floitsch](https://news.ycombinator.com/user?id=floitsch) | **Comments:** [2](https://news.ycombinator.com/item?id=46522686)

### 97  [ChatGPT Health](https://openai.com/index/introducing-chatgpt-health/)
* **Author:** [saikatsg](https://news.ycombinator.com/user?id=saikatsg) | **Comments:** [91](https://news.ycombinator.com/item?id=46531280)

### 9  [So you wanna de-bog yourself (2024)](https://www.experimental-history.com/p/so-you-wanna-de-bog-yourself)
* **Author:** [calvinfo](https://news.ycombinator.com/user?id=calvinfo) | **Comments:** [2](https://news.ycombinator.com/item?id=46532961)

### 11  [Michel Siffre: This man spent months alone underground – and it warped his mind](https://www.newscientist.com/article/mg23931900-400-this-man-spent-months-alone-underground-and-it-warped-his-mind/)
* **Author:** [Anon84](https://news.ycombinator.com/user?id=Anon84) | **Comments:** [1](https://news.ycombinator.com/item?id=46456364)

### 118 🔥 [Meditation as Wakeful Relaxation: Unclenching Smooth Muscle](https://psychotechnology.substack.com/p/meditation-as-wakeful-relaxation)
* **Author:** [surprisetalk](https://news.ycombinator.com/user?id=surprisetalk) | **Comments:** [84](https://news.ycombinator.com/item?id=46527157)



