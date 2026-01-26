# Overall Summary
Here are the highlights from the recent pull request and issue closures:

**🔥🔥🔥 [PR #7657](https://github.com/flutter/packages/pull/7657) (flutter/packages): [video_player_avfoundation] fix playback speed resetting**
  * **Comments:** 16
  * This PR fixes an issue in `video_player_avfoundation` where the playback speed would reset to 1.0 after calling play by ensuring the stored target playback speed is applied directly instead of relying on `AVPlayer`'s default `play` method, which implicitly sets the rate.

**🔥 [PR #158580](https://github.com/flutter/flutter/pull/158580) (flutter/flutter): feat: Change default value of keyboardDismissBehavior**
  * **Comments:** 7
  * This PR updates scrollable widgets to inherit `keyboardDismissBehavior` from `ScrollConfiguration`, giving developers the ability to set a global or local default behavior using `ScrollBehavior.copyWith`, rather than it being hardcoded to `manual`.

**[Issue #59911](https://github.com/dart-lang/sdk/issues/59911) (dart-lang/sdk): jsonEncode with async toEncodable Function Causes Exception**
  * `jsonEncode` throws an exception when its `toEncodable` function is marked as `async`, even if valid data is returned, indicating it does not properly handle asynchronous custom encoding operations.

**[Issue #161161](https://github.com/flutter/flutter/issues/161161) (flutter/flutter): Allow setState parameter to be nullable**
  * **Reactions:** **10** -- 👍 6 👎 1 ❤️ 3
  * The user proposes allowing Flutter's `setState` function to be called without a parameter (e.g., `setState()`) instead of requiring an empty `(() {})` callback when no internal state changes are performed, to simplify syntax and improve readability.

**[PR #1894](https://github.com/dart-lang/native/pull/1894) (dart-lang/native): [jnigen] Support nullability annotations on non-types**
  * **Comments:** 4
  * This PR improves jnigen's nullability analysis by inferring nullability for Java return and field types from annotations placed on their containing methods or fields, addressing ambiguities with array types and common Android annotations.

**[PR #1897](https://github.com/dart-lang/native/pull/1897) (dart-lang/native): [objective_c] Make all API types public**
  * **Comments:** 2
  * This PR makes many previously internal types within the `package:objective_c` API public by removing their leading underscores. This change resolves issues for developers trying to mock these types and addresses related API leak health checks.

**[PR #1875](https://github.com/dart-lang/native/pull/1875) (dart-lang/native): [objective_c] Add a bunch more categories to the bindings**
  * **Comments:** 2
  * Adds a variety of `NSExtended` Objective-C categories (extension methods) to the `objective_c` package, providing expanded built-in functionality for core Objective-C classes like `NSArray`, `NSData`, and `NSDictionary`.

**[PR #161025](https://github.com/flutter/flutter/pull/161025) (flutter/flutter): Feature/twitter keyboard**
  * **Comments:** 3
  * Adds a new `TextInputType.twitter` to Flutter, providing a keyboard optimized for social media inputs with quick access to characters like '@' and '#', and includes platform-specific implementations and tests for both Android and iOS.

**[Issue #153995](https://github.com/flutter/flutter/issues/153995) (flutter/flutter): [pigeon] Support sealed classes**
  * **Reactions:** **5** -- 👍 5
  * This issue proposes adding support to the `pigeon` package for generating sealed classes (or equivalent union types/enums) in Dart, Kotlin, and Swift to enable safer code generation for these language constructs.

**[PR #161514](https://github.com/flutter/flutter/pull/161514) (flutter/flutter): Fix `TabBar` glitchy elastic `Tab` animation**
  * **Comments:** 1
  * This PR fixes a glitchy elastic animation in the `TabBar` indicator, resolving issues during swiping or tapping between tabs by refactoring the animation calculation logic to correctly account for text direction and interaction type.


# GitHub PR Report for dart-lang/ai
## From 2025-01-15

There were no pull requests merged or issues closed during this period, indicating no recent changes to the repository's codebase or outstanding issues were resolved.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2025-01-15

Although no pull requests were merged during this period, several important issues were closed, reflecting a focus on stability and correct behavior within the Dart SDK. A significant bug concerning the `jsonEncode` function was addressed, where passing an `async toEncodable` function incorrectly caused an exception even when valid data was returned, improving the reliability of the `dart:convert` library's public API for asynchronous custom encoding operations ([Issue #59911](https://github.com/dart-lang/sdk/issues/59911)). Additionally, a critical runtime error in the Dart 3.7.0-edge AOT runtime, specifically affecting the `dynamic_modules_suite/implicitly_extendable` test with a 'Trace/breakpoint trap' crash, was resolved, enhancing the overall stability of dynamic modules and message/function invocation within the runtime ([Issue #59880](https://github.com/dart-lang/sdk/issues/59880)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #59911](https://github.com/dart-lang/sdk/issues/59911): jsonEncode with async toEncodable Function Causes Exception
* **Author:** [yesilcimenahmet](https://github.com/yesilcimenahmet)
* `jsonEncode` throws an exception when its `toEncodable` function is marked as `async`, even if valid data is returned, indicating it does not properly handle asynchronous custom encoding operations.

### [Issue #59880](https://github.com/dart-lang/sdk/issues/59880): dynamic_modules_suite/implicitly_extendable is new and failed (RuntimeError, expected Pass)
* **Author:** [brianquinlan](https://github.com/brianquinlan)
* The `dynamic_modules_suite/implicitly_extendable` test is newly failing with a `RuntimeError` due to a 'Trace/breakpoint trap' crash on linux_x64 within the Dart 3.7.0-edge AOT runtime, specifically during message handling or function invocation.


# GitHub PR Report for dart-lang/language
## From 2025-01-15

There were no pull requests merged or issues closed during this period, indicating no recent changes to the repository's codebase or outstanding issues were addressed based on the provided summaries.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2025-01-15

Recent updates to the repository primarily focused on refining the `objective_c` and `jnigen` packages, alongside enhancing clarity for `native_assets_cli` behavior. The `objective_c` package received significant attention, with [PR #1897](https://github.com/dart-lang/native/pull/1897) making numerous internal API types public by removing their leading underscores, directly resolving issues like [#1863](https://github.com/dart-lang/native/issues/1863), [#1862](https://github.com/dart-lang/native/issues/1862), and [#1861](https://github.com/dart-lang/native/issues/1861) that previously hindered mocking and type completeness due to private type exposure. Furthermore, [PR #1875](https://github.com/dart-lang/native/pull/1875) expanded the `objective_c` API by incorporating many `NSExtended` Objective-C categories, adding crucial functionality to core classes such as `NSArray`, `NSData`, and `NSDictionary`, addressing missing properties highlighted in [#1818](https://github.com/dart-lang/native/issues/1818) and the requested `timeIntervalSince1970` in [#1873](https://github.com/dart-lang/native/issues/1873). For `jnigen`, [PR #1894](https://github.com/dart-lang/native/pull/1894) significantly improved nullability analysis by inferring nullability for Java return and field types from annotations on their containing methods or fields, tackling ambiguities and ensuring correct type generation, which directly addresses the unreliable nullability described in [#1813](https://github.com/dart-lang/native/issues/1813). Finally, the `native_assets_cli` package's build and link hook invocation behavior was thoroughly documented in [PR #1891](https://github.com/dart-lang/native/pull/1891), providing clear guidance on how hooks are invoked across different architectures and asset types, stemming from discussions in [#1739](https://github.com/dart-lang/native/issues/1739).

## Merged Pull Requests

### [PR #1897](https://github.com/dart-lang/native/pull/1897): [objective_c] Make all API types public
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-01-15 02:35 PM
* **Comments:** 2
* This PR makes many previously internal types within the `package:objective_c` API public by removing their leading underscores. This change resolves issues for developers trying to mock these types and addresses related API leak health checks.

### [PR #1894](https://github.com/dart-lang/native/pull/1894): [jnigen] Support nullability annotations on non-types
* **Author:** [HosseinYousefi](https://github.com/HosseinYousefi)
* **Merged At:** 2025-01-15 02:30 AM
* **Comments:** 4
* This PR improves jnigen's nullability analysis by inferring nullability for Java return and field types from annotations placed on their containing methods or fields, addressing ambiguities with array types and common Android annotations. Additionally, it ensures that the returned values of suspend functions are properly released.

### [PR #1891](https://github.com/dart-lang/native/pull/1891): [native_assets_cli] [doc] Document multiple invocation behavior
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-01-15 11:33 AM
* **Comments:** 2
* Documents the `native_assets_cli` build and link hook invocation behavior, clarifying that hooks are invoked once per target architecture and may be invoked separately for different asset types, with guidance for hooks to act as no-ops for irrelevant types.

### [PR #1875](https://github.com/dart-lang/native/pull/1875): [objective_c] Add a bunch more categories to the bindings
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-01-14 06:28 PM
* **Comments:** 2
* Adds a variety of `NSExtended` Objective-C categories (extension methods) to the `objective_c` package, providing expanded built-in functionality for core Objective-C classes like `NSArray`, `NSData`, and `NSDictionary`. This change also updates the package to version 5.0.0-wip and fixes issues #1818 and #1873.


## Closed Issues

### [Issue #1873](https://github.com/dart-lang/native/issues/1873): NSDate.timeIntervalSince1970 missing from generated code
* **Author:** [cgrand](https://github.com/cgrand)
* **Reactions:** **1** -- 👍 1
* The generated code is missing `NSDate.timeIntervalSince1970`, even though `NSDate.timeIntervalSinceReferenceDate` is present.

### [Issue #1863](https://github.com/dart-lang/native/issues/1863): `ref` on an `NSObject` returns a private type
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* The `ref` getter on `NSObject` instances, which is publicly accessible, returns a private type (`_ObjCObjectRef`), making it impossible to mock with `mockito` and causing compilation errors.

### [Issue #1862](https://github.com/dart-lang/native/issues/1862): `zone` returns a private type
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* The `zone` function returns the private type `_NSZone`, which causes issues similar to those described in issue #1861.

### [Issue #1861](https://github.com/dart-lang/native/issues/1861): The selector type is private
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* The `toSelector()` method's return type `Pointer<_ObjCSelector>` is private, preventing users from fully typing selector variables and causing significant problems when attempting to mock generated objects in unit tests, requiring extensive workarounds.

### [Issue #1818](https://github.com/dart-lang/native/issues/1818): NSArray is missing some properties
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* The `NSArray` generated in `objective_c` is missing properties such as `firstObject` and `lastObject`.

### [Issue #1813](https://github.com/dart-lang/native/issues/1813): Nullability annotations aren't reliably working
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* `jnigen` 0.13.0 is incorrectly generating nullable Dart types for Java methods annotated with `@NonNull`, particularly affecting static factory methods.

### [Issue #1739](https://github.com/dart-lang/native/issues/1739): [native_assets_cli] Semantics of one vs multiple hook invocations
* **Author:** [mkustermann](https://github.com/mkustermann)
* This issue explores the semantics of `native_assets_cli` hook invocations, specifically whether a bundling tool should invoke hooks once for all asset types and architectures or multiple times for specific combinations, to prevent conflicting data assets and allow for architecture-independent data assets.


# GitHub PR Report for flutter/ai
## From 2025-01-15

There were no pull requests merged or issues closed during this period, indicating no changes were made to the repository's codebase, public API surface, or language features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-01-15

During this period, no pull requests were merged and no issues were closed, indicating no significant changes or new features were introduced to the repository's codebase.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-01-15

The recent updates to the repository have delivered significant enhancements to the framework's behavior and expanded its public API, alongside crucial rendering engine improvements and platform-specific bug fixes. A key feature introduced is the ability to customize `keyboardDismissBehavior` across scrollable widgets by inheriting from `ScrollConfiguration`, providing a global or local default rather than a hardcoded manual behavior ([PR #158580](https://github.com/flutter/flutter/pull/158580)), which addresses a frequently requested feature ([Issue #158566](https://github.com/flutter/flutter/issues/158566)). Developers also gain a new `TextInputType.twitter` to provide a social media-optimized keyboard ([PR #161025](https://github.com/flutter/flutter/pull/161025)). User interface components received several refinements, including a fix for the glitchy elastic animation in `TabBar` indicators during swiping or tapping ([PR #161514](https://github.com/flutter/flutter/pull/161514), resolving [Issue #160631](https://github.com/flutter/flutter/issues/160631)) and ensuring `DropdownMenu`'s `isCollapsed` property correctly reduces its height and aligns suffix icons ([PR #161427](https://github.com/flutter/flutter/pull/161427), addressing [Issue #138691](https://github.com/flutter/flutter/issues/138691)). Notably, a prior change to `Autocomplete` options width was reverted due to test failures, restoring previous behavior ([PR #161666](https://github.com/flutter/flutter/pull/161666)). Internally, the rendering pipeline saw a migration of DisplayList from Skia's `SkRSXform` to Impeller's `RSTransform` ([PR #161652](https://github.com/flutter/flutter/pull/161652)) to improve native Impeller support, accompanied by a manual update to the core Skia dependency ([PR #161609](https://github.com/flutter/flutter/pull/161609)). Stability was further boosted with an Impeller null check during image encoding ([PR #161194](https://github.com/flutter/flutter/pull/161194)) and a critical fix for the Xiaomi status bar height calculation on Android 30+ devices ([PR #161271](https://github.com/flutter/flutter/pull/161271), resolving [Issue #132831](https://github.com/flutter/flutter/issues/132831)). Discussions around potential language features included interest in allowing a nullable `setState` parameter ([Issue #161161](https://github.com/flutter/flutter/issues/161161)) and enhancing `pigeon` to support sealed classes ([Issue #153995](https://github.com/flutter/flutter/issues/153995)).

## Merged Pull Requests

### [PR #161680](https://github.com/flutter/flutter/pull/161680): Roll pub packages
* **Author:** [flutter-pub-roller-bot](https://github.com/flutter-pub-roller-bot)
* **Merged At:** 2025-01-15 01:52 PM
* **Comments:** 2
* This PR updates pub package dependencies to their latest compatible versions, generated automatically by running `flutter update-packages --force-upgrade`.

### [PR #161667](https://github.com/flutter/flutter/pull/161667): Update two_dimensional_scrollables triage routing
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-01-15 12:09 PM
* **Comments:** 1
* Updates the triage documentation to route issues concerning the `two_dimensional_scrollables` package to the framework team, reflecting their primary ownership of the package.

### [PR #161666](https://github.com/flutter/flutter/pull/161666): Revert "Autocomplete Options Width"
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* **Merged At:** 2025-01-15 12:09 PM
* **Comments:** 0
* This PR reverts the "Autocomplete Options Width" change (flutter/flutter#143249) because it broke some Google tests, thereby removing custom layout and sizing logic for autocomplete options and restoring prior behavior.

### [PR #161652](https://github.com/flutter/flutter/pull/161652): [DisplayList] Migrate from SkRSXform to Impeller RSTransform
* **Author:** [flar](https://github.com/flar)
* **Merged At:** 2025-01-15 11:54 AM
* **Comments:** 0
* This PR migrates DisplayList from using Skia's `SkRSXform` to a new Impeller `RSTransform` geometry object, resolving a rendering issue and improving native Impeller support while maintaining compatibility with the Skia backend.

### [PR #161643](https://github.com/flutter/flutter/pull/161643): Roll pub packages
* **Author:** [flutter-pub-roller-bot](https://github.com/flutter-pub-roller-bot)
* **Merged At:** 2025-01-14 11:44 PM
* **Comments:** 0
* This PR updates pub packages, specifically bumping the `ffigen` dependency from version 16.0.0 to 16.1.0, as generated by the `flutter update-packages --force-upgrade` command.

### [PR #161635](https://github.com/flutter/flutter/pull/161635): Exclude the top-level `engine` directory from `generate_gradle_lockfiles`.
* **Author:** [matanlurey](https://github.com/matanlurey)
* **Merged At:** 2025-01-14 07:45 PM
* **Comments:** 0
* Excludes the top-level `engine` directory from the `generate_gradle_lockfiles` script to improve local development workflows by preventing the inclusion of irrelevant directories, with a new test added to verify this exclusion logic.

### [PR #161632](https://github.com/flutter/flutter/pull/161632): Roll pub packages
* **Author:** [flutter-pub-roller-bot](https://github.com/flutter-pub-roller-bot)
* **Merged At:** 2025-01-14 06:10 PM
* **Comments:** 0
* Rolls pub packages by updating `video_player_avfoundation` from version 2.6.5 to 2.6.6, an automated change generated by `flutter update-packages --force-upgrade`.

### [PR #161609](https://github.com/flutter/flutter/pull/161609): Manual roll of Skia to e7b8d078851f
* **Author:** [jason-simmons](https://github.com/jason-simmons)
* **Merged At:** 2025-01-15 08:25 AM
* **Comments:** 2
* Manually rolls the Skia dependency to revision `e7b8d078851f` to catch up after the automated roller was temporarily disabled, also updating related license files and test assets.

### [PR #161554](https://github.com/flutter/flutter/pull/161554): Clean up engine's analysis_options.yaml
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2025-01-14 04:50 PM
* **Comments:** 0
* Simplifies the engine's `analysis_options.yaml` by importing the general monorepo analysis rules, reducing duplication and making engine-specific rule deviations clearer.

### [PR #161534](https://github.com/flutter/flutter/pull/161534): Refactor `android_engine_test`, make it easier to debug/deflake locally.
* **Author:** [matanlurey](https://github.com/matanlurey)
* **Merged At:** 2025-01-14 06:10 PM
* **Comments:** 3
* This PR refactors and renames the `android_engine_test` suite to improve local developer experience and flakiness investigation, adding a new Hybrid Composition test, enhancing documentation for local golden file generation, and introducing a `tool/deflake.dart` utility.

### [PR #161514](https://github.com/flutter/flutter/pull/161514): Fix `TabBar` glitchy elastic `Tab`  animation
* **Author:** [TahaTesser](https://github.com/TahaTesser)
* **Merged At:** 2025-01-15 04:32 AM
* **Comments:** 1
* This PR fixes a glitchy elastic animation in the `TabBar` indicator, resolving issues during swiping or tapping between tabs by refactoring the animation calculation logic to correctly account for text direction and interaction type. New golden file tests have been added to validate the improved animation behavior across various tab configurations.

### [PR #161427](https://github.com/flutter/flutter/pull/161427): Fix DropdownMenu isCollapsed decoration does not Reduce height
* **Author:** [bleroux](https://github.com/bleroux)
* **Merged At:** 2025-01-15 08:25 AM
* **Comments:** 0
* This PR fixes an issue in `DropdownMenu` where `InputDecoration.isCollapsed` did not correctly reduce its height and the suffix icon was misaligned when `suffixIconConstraints` were applied, by ensuring the internal `IconButton` respects these decoration properties to allow for properly collapsed and aligned `DropdownMenu` instances.

### [PR #161271](https://github.com/flutter/flutter/pull/161271): Fixed XiaoMi statusBar Bug
* **Author:** [jesswrd](https://github.com/jesswrd)
* **Merged At:** 2025-01-14 05:06 PM
* **Comments:** 2
* This PR fixes a XiaoMi status bar bug by updating `FlutterView` to use `android.view.WindowInsets.Type.systemBars()` when calculating window insets on Android API 30+ devices, simplifying the handling of system UI elements.

### [PR #161194](https://github.com/flutter/flutter/pull/161194): [Impeller] null check device buffer in image encoding.
* **Author:** [jonahwilliams](https://github.com/jonahwilliams)
* **Merged At:** 2025-01-14 05:19 PM
* **Comments:** 1
* Adds a null check for the device buffer during Impeller's image encoding to gracefully handle allocation failures, preventing potential crashes and addressing issue #160652.

### [PR #161025](https://github.com/flutter/flutter/pull/161025): Feature/twitter keyboard
* **Author:** [NabilaWorks](https://github.com/NabilaWorks)
* **Merged At:** 2025-01-14 05:06 PM
* **Comments:** 3
* Adds a new `TextInputType.twitter` to Flutter, providing a keyboard optimized for social media inputs with quick access to characters like '@' and '#', and includes platform-specific implementations and tests for both Android and iOS to address issue #64801.

### 🔥 [PR #158580](https://github.com/flutter/flutter/pull/158580): feat: Change default value of keyboardDismissBehavior
* **Author:** [EArminjon](https://github.com/EArminjon)
* **Merged At:** 2025-01-15 01:58 PM
* **Comments:** 7
* This PR updates scrollable widgets to inherit `keyboardDismissBehavior` from `ScrollConfiguration`, giving developers the ability to set a global or local default behavior using `ScrollBehavior.copyWith`, rather than it being hardcoded to `manual`.


## Closed Issues

### [Issue #161691](https://github.com/flutter/flutter/issues/161691): win-5 lost external connection from phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The user is reporting a bug where "win-5" lost its external connection to a phone device, with an image provided for context.

### [Issue #161684](https://github.com/flutter/flutter/issues/161684): mac-6 lost external connection from phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* A user reported a bug where the 'mac-6' device lost its external connection to a phone, occurring within a LUCI/Github/Cocoon scheduler environment.

### [Issue #161683](https://github.com/flutter/flutter/issues/161683): mac-28 lost external connection from phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* A bug is reported where mac-28 lost its external connection from a phone device within the LUCI, Github, Cocoon scheduler, and Autosubmit infrastructure.

### [Issue #161679](https://github.com/flutter/flutter/issues/161679): mac-12 and mac-14 lost external connection from phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* Two devices, mac-12 and mac-14, running within the LUCI/Github/Cocoon infrastructure, are experiencing a loss of external connection to phone devices.

### [Issue #161678](https://github.com/flutter/flutter/issues/161678): mac-24, mac-3 and mac-25 lost external connection from phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* A bug is reported where mac-24, mac-3, and mac-25 devices are losing their external connection from a phone device within the LUCI/Github/Cocoon infrastructure.

### [Issue #161669](https://github.com/flutter/flutter/issues/161669): Allow users to apply custom NavigationRail  padding from AdaptiveScaffold constructor
* **Author:** [jmiller-pwi](https://github.com/jmiller-pwi)
* Users request the ability to customize `NavigationRail` padding in `AdaptiveScaffold` by adding a `navigationRailPadding` property to its constructor, as the current default 8 dp padding is not suitable for all layouts.

### [Issue #161646](https://github.com/flutter/flutter/issues/161646): Flutter scrolling freezes
* **Author:** [bob0721](https://github.com/bob0721)
* A Flutter user on stable channel 3.27.2 reports that a basic `ListView.builder` experiences freezing instead of smooth scrolling when displaying a "normal list jam," and provides a minimal code sample to reproduce the issue.

### [Issue #161642](https://github.com/flutter/flutter/issues/161642): Adjust preset for camera resolution
* **Author:** [indratrisnar](https://github.com/indratrisnar)
* The user wants to dynamically change the camera's `resolutionPreset` after initialization, as the current property only supports a getter, and proposes adding a UI menu to select and apply new resolution presets while the camera is active.

### [Issue #161638](https://github.com/flutter/flutter/issues/161638): jsonEncode with async toEncodable Function Causes Unexpected Behavior
* **Author:** [yesilcimenahmet](https://github.com/yesilcimenahmet)
* `jsonEncode` throws an `UnsupportedObject` exception when its `toEncodable` callback is declared `async`, as the function expects a synchronous return value and does not properly handle the `Future` returned by asynchronous functions.

### [Issue #161615](https://github.com/flutter/flutter/issues/161615): Add hash fragment to web files to aide in caching and cache busting
* **Author:** [willsmanley](https://github.com/willsmanley)
* This issue proposes adding automated, content-based hash fragments to all web build output files to enable more controlled caching strategies, allowing some assets to be long-lived while others are busted with each release.

### [Issue #161589](https://github.com/flutter/flutter/issues/161589): Flutter web list sliding freezes
* **Author:** [bob0721](https://github.com/bob0721)
* A Flutter web application freezes when sliding a `MasonryGridView` containing `Image.network` widgets, specifically reproducible on Android Chrome.

### [Issue #161587](https://github.com/flutter/flutter/issues/161587): [camerax] Incorrectly rotated camera preview
* **Author:** [lubomirmolin](https://github.com/lubomirmolin)
* **Reactions:** **3** -- 👍 3
* The camera preview is incorrectly rotated and stretched on Android 14 devices (Samsung S23 Ultra, Xiaomi Redmi Note 11 Pro) when switching between front and back cameras using `camera_android_camerax: ^0.6.13`, whereas downgrading to `0.6.11` resolves the issue.

### [Issue #161563](https://github.com/flutter/flutter/issues/161563): Switch Control does not focus on unselected NavigationBar destinations (iOS)
* **Author:** [QuncCccccc](https://github.com/QuncCccccc)
* Switch Control on iOS fails to traverse and highlight unselected NavigationBar destinations, always focusing on the currently selected label instead.

### [Issue #161535](https://github.com/flutter/flutter/issues/161535): mac-14 could not connecting to external phone device and got errors.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* mac-14 is experiencing a bug where it fails to connect to an external phone device, resulting in errors, as evidenced by attached screenshots.

### [Issue #161264](https://github.com/flutter/flutter/issues/161264): WASM + video_player PageView offset bug
* **Author:** [binlebin](https://github.com/binlebin)
* When building a video player with a PageView and a top SizedBox using the WASM flag, the video player is clipped at the top by the height of the SizedBox.

### [Issue #161161](https://github.com/flutter/flutter/issues/161161): Allow setState parameter to be nullable
* **Author:** [stan-at-work](https://github.com/stan-at-work)
* **Reactions:** **10** -- 👍 6 👎 1 ❤️ 3
* The user proposes allowing Flutter's `setState` function to be called without a parameter (e.g., `setState()`) instead of requiring an empty `(() {})` callback when no internal state changes are performed, to simplify syntax and improve readability.

### [Issue #160631](https://github.com/flutter/flutter/issues/160631): M3 TabBar indicator animation broken both when swiping or tapping
* **Author:** [ofsp6070](https://github.com/ofsp6070)
* The M3 TabBar indicator animation exhibits broken, non-smooth behavior when navigating between tabs by swiping or tapping, especially when the destination tab is far from the current one, causing the indicator to jump around rather than animate smoothly.

### [Issue #160320](https://github.com/flutter/flutter/issues/160320): Consider using platform view for progress indicators
* **Author:** [cedvdb](https://github.com/cedvdb)
* **Reactions:** **1** -- 👀 1
* Flutter's `CircularProgressIndicator` on the web significantly blocks Firestore cache responses, causing data loading times to increase from 1 second to 45 seconds, leading the author to successfully implement a native progress indicator via a platform view plugin as a solution.

### [Issue #161440](https://github.com/flutter/flutter/issues/161440): Error message in tool is referring to outdated Xcode UI, "Xcode > Settings > Platforms", should be "Components"
* **Author:** [michaeloki](https://github.com/michaeloki)
* An error message in the tool currently refers to "Xcode > Settings > Platforms", which is outdated and should be updated to "Components" to match the current Xcode UI.

### [Issue #160247](https://github.com/flutter/flutter/issues/160247): Re-enable DevTools customer testing
* **Author:** [bkonyi](https://github.com/bkonyi)
* Re-enable DevTools customer testing, which was temporarily disabled to unblock pull request #160174.

### [Issue #158882](https://github.com/flutter/flutter/issues/158882): [in_app_purchase_storekit] Expose JSON representation of Transactions
* **Author:** [LouiseHsu](https://github.com/LouiseHsu)
* The issue requests exposing the JSON representation of StoreKit transactions within the `in_app_purchase_storekit` package, enabling developers to access properties not directly exposed by the package.

### [Issue #158566](https://github.com/flutter/flutter/issues/158566): [Feature Requet] Set a default keyboardDismissBehavior inside MaterialApp / CupertinoApp
* **Author:** [EArminjon](https://github.com/EArminjon)
* The user requests a feature to set a global default `keyboardDismissBehavior` for all scrollviews in an app, specifically `ScrollViewKeyboardDismissBehavior.onDrag`, proposing an addition like `MaterialApp.keyboardDismissBehavior`.

### [Issue #157210](https://github.com/flutter/flutter/issues/157210): Link widget requires roles, ARIA properties, and keyboard support (Accessibility)
* **Author:** [jcollins-disney](https://github.com/jcollins-disney)
* The Link widget needs to be updated with appropriate WAI-ARIA roles, states, properties, and keyboard support, specifically using `<a>` or `role="link"` and potentially `aria-label` or `aria-labelledby`, to meet WCAG accessibility compliance requirements.

### [Issue #154058](https://github.com/flutter/flutter/issues/154058): [local_auth] [android] Going back using System Navigation button after authenticating using local_auth closes the app
* **Author:** [shivamag00](https://github.com/shivamag00)
* **Reactions:** **2** -- 👍 2
* On Android, an app utilizing the `local_auth` plugin unexpectedly closes when the system navigation back button is pressed after re-authenticating via biometrics to return to the home page, instead of navigating back to the login page.

### [Issue #153995](https://github.com/flutter/flutter/issues/153995): [pigeon] Support sealed classes
* **Author:** [feduke-nukem](https://github.com/feduke-nukem)
* **Reactions:** **5** -- 👍 5
* This issue proposes adding support to the `pigeon` package for generating sealed classes (or equivalent union types/enums) in Dart, Kotlin, and Swift to enable safer code generation for these language constructs.

### [Issue #153762](https://github.com/flutter/flutter/issues/153762): [Impeller] Flutter 3.24.0 on Android weird glitches during animations on Huawei P40 Pro+ / P smart Z .
* **Author:** [AtjonTV](https://github.com/AtjonTV)
* Visual glitches appear during animations (e.g., bottom bar, scroll views) on Huawei P40 Pro+ and P smart Z devices running Android 10, when a Flutter 3.24.0 app is built with Impeller enabled, and these glitches are not capturable by on-device screen recording.

### [Issue #138691](https://github.com/flutter/flutter/issues/138691): DropdownMenu inputDecoration isCollapsed property does not reduce vertical spacing
* **Author:** [albe-jj](https://github.com/albe-jj)
* The `DropdownMenu`'s `inputDecorationTheme` property `isCollapsed: true` does not reduce the vertical spacing as expected, preventing users from removing extra padding around the input field.

### [Issue #136398](https://github.com/flutter/flutter/issues/136398): [pigeon] Document that Pigeon communication details are internal
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* This issue requests documentation clarifying that Pigeon's communication details are internal to per-package method channels and should not be used in public interface packages, as the protocol is subject to change without warning and can cause breaking changes.

### [Issue #132831](https://github.com/flutter/flutter/issues/132831): A bug about statusbar‘s height  in the multi window on Xiaomi phone
* **Author:** [AWarmHug](https://github.com/AWarmHug)
* **Reactions:** **1** -- 👍 1
* On Xiaomi phones, Flutter apps running in multi-window mode incorrectly report the status bar height as 0, leading to the app's app bar being obscured, possibly due to `FlutterView` using `statusBar.top` instead of `captionBar.top` for inset calculations.

### [Issue #103230](https://github.com/flutter/flutter/issues/103230): Comparison method violates its general contract! error across many Android tests.
* **Author:** [keyonghan](https://github.com/keyonghan)
* Android tests are failing with "Comparison method violates its general contract!" errors due to Groovy dynamic dispatch, and the Flutter team plans to address this by migrating all Groovy code to Kotlin, with using `@CompileStatic` as a possible interim workaround.


# GitHub PR Report for flutter/genui
## From 2025-01-15

No pull requests were merged and no issues were closed during this period, indicating that there were no recent changes or updates to the repository's codebase.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2025-01-15

Recent updates to the repository have focused on refining existing plugin behavior and expanding API access. A significant bug fix landed with [PR #7657](https://github.com/flutter/packages/pull/7657), which resolved an issue in `video_player_avfoundation` where the playback speed would unexpectedly reset to 1.0 after calling `play`, ensuring that the intended playback speed is now consistently applied. Furthermore, the `in_app_purchase_storekit` plugin was enhanced by exposing the `jsonRepresentation` property for StoreKit2 transactions through [PR #8430](https://github.com/flutter/packages/pull/8430), providing developers with direct access to raw transaction data.

## Merged Pull Requests

### [PR #8430](https://github.com/flutter/packages/pull/8430): [in_app_purchase_storekit] expose `jsonRepresentation` for Transactions
* **Author:** [LouiseHsu](https://github.com/LouiseHsu)
* **Merged At:** 2025-01-15 03:58 PM
* **Comments:** 0
* Exposes the `jsonRepresentation` property for StoreKit2 transactions in the `in_app_purchase_storekit` plugin, allowing developers to directly access raw transaction properties, which addresses issue #158882.

### 🔥🔥🔥 [PR #7657](https://github.com/flutter/packages/pull/7657): [video_player_avfoundation] fix playback speed resetting
* **Author:** [misos1](https://github.com/misos1)
* **Merged At:** 2025-01-15 08:34 AM
* **Comments:** 16
* This PR fixes an issue in `video_player_avfoundation` where the playback speed would reset to 1.0 after calling play by ensuring the stored target playback speed is applied directly instead of relying on `AVPlayer`'s default `play` method, which implicitly sets the rate.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-01-15

There were no pull requests merged or issues closed during this period, indicating no recent changes were applied to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-01-15

The repository has recently focused on refining its documentation, primarily by addressing outdated information and enhancing the clarity of codelabs. A significant update involved removing an outdated explanation concerning service worker settings from the Flutter web initialization documentation, as the referenced code had been previously removed ([PR #11592](https://github.com/flutter/website/pull/11592)). Concurrently, efforts were made to improve the user experience in codelabs by addressing feedback on missing context, such as the need for an explanation of the `home.dart` file in the Firebase Auth in Flutter Apps codelab ([Issue #11579](https://github.com/flutter/website/issues/11579)) and ensuring that concepts like `AppStateModel` are introduced appropriately in the Flutter Cupertino codelab ([Issue #11528](https://github.com/flutter/website/issues/11528)). These changes collectively aim to improve the accuracy and usability of the project's educational content.

## Merged Pull Requests

### [PR #11592](https://github.com/flutter/website/pull/11592): Remove explanation for service worker settings
* **Author:** [NilsPvR](https://github.com/NilsPvR)
* **Merged At:** 2025-01-15 02:29 PM
* **Comments:** 3
* Removes an outdated explanation from the Flutter web initialization documentation concerning service worker settings, as the code it referenced was previously removed.


## Closed Issues

### [Issue #11579](https://github.com/flutter/website/issues/11579): missing the home.dart explanation even on the setting up 
* **Author:** [prey801](https://github.com/prey801)
* **Reactions:** **1** -- 😄 1
* The user is requesting an explanation for the `home.dart` file within step 4 of the Firebase Auth in Flutter Apps codelab, which they believe is currently missing, and suggests adding it to the explanation.

### [Issue #11528](https://github.com/flutter/website/issues/11528): No context given for import 'model/app_state_model.dart'; in step 4.
* **Author:** [HedgeWizardly](https://github.com/HedgeWizardly)
* The Flutter Cupertino codelab on `codelabs.flutter-io.cn` uses `AppStateModel` from `model/app_state_model.dart` in step 4 without prior introduction or explanation, as the file is only introduced in a subsequent step, causing confusion for users.



## Top Hacker News Stories

### 486 🔥🔥 [GPTZero finds 100 new hallucinations in NeurIPS 2025 accepted papers](https://gptzero.me/news/neurips/)
* **Author:** [segmenta](https://news.ycombinator.com/user?id=segmenta) | **Comments:** [261](https://news.ycombinator.com/item?id=46720395)

### 54  [Why does SSH send 100 packets per keystroke?](https://eieio.games/blog/ssh-sends-100-packets-per-keystroke/)
* **Author:** [eieio](https://news.ycombinator.com/user?id=eieio) | **Comments:** [31](https://news.ycombinator.com/item?id=46723990)

### 251 🔥🔥 [Show HN: isometric.nyc – giant isometric pixel art map of NYC](https://cannoneyed.com/isometric-nyc/)
* **Author:** [cannoneyed](https://news.ycombinator.com/user?id=cannoneyed) | **Comments:** [82](https://news.ycombinator.com/item?id=46721802)

### 196 🔥 [It looks like the status/need-triage label was removed](https://github.com/google-gemini/gemini-cli/issues/16728)
* **Author:** [nickswalker](https://news.ycombinator.com/user?id=nickswalker) | **Comments:** [54](https://news.ycombinator.com/item?id=46721179)

### 297 🔥🔥 [Qwen3-TTS Family Is Now Open Sourced: Voice Design, Clone, and Generation](https://qwen.ai/blog?id=qwen3tts-0115)
* **Author:** [Palmik](https://news.ycombinator.com/user?id=Palmik) | **Comments:** [89](https://news.ycombinator.com/item?id=46719229)

### 68  [CSS Optical Illusions](https://alvaromontoro.com/blog/68091/css-optical-illusions)
* **Author:** [ulrischa](https://news.ycombinator.com/user?id=ulrischa) | **Comments:** [7](https://news.ycombinator.com/item?id=46722570)

### 139 🔥 [I was banned from Claude for scaffolding a Claude.md file?](https://hugodaniel.com/posts/claude-code-banned-me/)
* **Author:** [hugodan](https://news.ycombinator.com/user?id=hugodan) | **Comments:** [100](https://news.ycombinator.com/item?id=46723384)

### 161 🔥 [Tree-sitter vs. Language Servers](https://lambdaland.org/posts/2026-01-21_tree-sitter_vs_lsp/)
* **Author:** [ashton314](https://news.ycombinator.com/user?id=ashton314) | **Comments:** [43](https://news.ycombinator.com/item?id=46719899)

### 32  [Recent discoveries on the acquisition of the highest levels of human performance](https://www.science.org/doi/abs/10.1126/science.adt7790)
* **Author:** [colincooke](https://news.ycombinator.com/user?id=colincooke) | **Comments:** [6](https://news.ycombinator.com/item?id=46722853)

### 37  [Mote: An Interactive Ecosystem Simulation [video]](https://www.youtube.com/watch?v=Hju0H3NHxVI)
* **Author:** [evakhoury](https://news.ycombinator.com/user?id=evakhoury) | **Comments:** [2](https://news.ycombinator.com/item?id=46712547)
* This text is a link to a TikTok video from the Recurse Center.

### 241 🔥 [Design Thinking Books (2024)](https://www.designorate.com/design-thinking-books/)
* **Author:** [rrm1977](https://news.ycombinator.com/user?id=rrm1977) | **Comments:** [113](https://news.ycombinator.com/item?id=46718061)

### 1  [AnswerThis (YC F25) Is Hiring](https://www.ycombinator.com/companies/answerthis/jobs/r5VHmSC-ai-agent-orchestration)
* **Author:** [ayush4921](https://news.ycombinator.com/user?id=ayush4921) | **Comments:** [null](https://news.ycombinator.com/item?id=46721897)

### 20  [Launch HN: Constellation Space (YC W26) – AI for satellite mission assurance](https://constellation-io.com/)
* **Author:** [kmajid](https://news.ycombinator.com/user?id=kmajid) | **Comments:** [3](https://news.ycombinator.com/item?id=46721933)
* Constellation Space, founded by former SpaceX, Blue Origin, and NASA engineers, has developed an AI system to predict satellite link failures before they occur. This system uses real-time telemetry, physics-based models, and federated machine learning to achieve over 90% accuracy in forecasting failures 3-5 minutes out, preventing data loss.

### 3  [Taming P99s in OpenFGA: How we built a self-tuning strategy planner](https://auth0.com/blog/self-tuning-strategy-planner-openfga/)
* **Author:** [elbuo](https://news.ycombinator.com/user?id=elbuo) | **Comments:** [0](https://news.ycombinator.com/item?id=46724542)

### 5  [Vulnerable WhisperPair Devices – Hijack Bluetooth Accessories Using Fast Pair](https://whisperpair.eu/vulnerable-devices)
* **Author:** [gnabgib](https://news.ycombinator.com/user?id=gnabgib) | **Comments:** [0](https://news.ycombinator.com/item?id=46663225)

### 5  ['Active' sitting is better for brain health: review of studies](https://www.sciencealert.com/not-all-sitting-is-equal-one-type-was-just-linked-to-better-brain-health)
* **Author:** [mikhael](https://news.ycombinator.com/user?id=mikhael) | **Comments:** [2](https://news.ycombinator.com/item?id=46723694)

### 393 🔥🔥 [In Europe, Wind and Solar Overtake Fossil Fuels](https://e360.yale.edu/digest/europe-wind-solar-fossil-fuels)
* **Author:** [speckx](https://news.ycombinator.com/user?id=speckx) | **Comments:** [416](https://news.ycombinator.com/item?id=46719491)

### 24  [Keeping 20k GPUs Healthy](https://modal.com/blog/gpu-health)
* **Author:** [jxmorris12](https://news.ycombinator.com/user?id=jxmorris12) | **Comments:** [6](https://news.ycombinator.com/item?id=46669001)

### 11  [How LLM agents solve the table merging problem](https://futuresearch.ai/deep-merge-tutorial/)
* **Author:** [ddp26](https://news.ycombinator.com/user?id=ddp26) | **Comments:** [2](https://news.ycombinator.com/item?id=46723898)

### 18  [Show HN: BrowserOS – "Claude Cowork" in the browser](https://github.com/browseros-ai/BrowserOS)
* **Author:** [felarof](https://news.ycombinator.com/user?id=felarof) | **Comments:** [9](https://news.ycombinator.com/item?id=46721474)
* BrowserOS, an open-source and privacy-first AI browser, now offers filesystem access, allowing its client-side agent to read and write files and run shell commands. This capability stems from its architectural choice to run LLMs and agents entirely on the user's machine, ensuring sensitive data remains local unlike server-side alternatives.

### 123 🔥 [ISO PDF spec is getting Brotli – ~20 % smaller documents with no quality loss](https://pdfa.org/want-to-make-your-pdfs-20-smaller-for-free/)
* **Author:** [whizzx](https://news.ycombinator.com/user?id=whizzx) | **Comments:** [72](https://news.ycombinator.com/item?id=46717507)

### 4  [Skill.md: An open standard for agent skills](https://www.mintlify.com/blog/skill-md)
* **Author:** [skeptrune](https://news.ycombinator.com/user?id=skeptrune) | **Comments:** [0](https://news.ycombinator.com/item?id=46723183)

### 216 🔥 [30 Years of ReactOS](https://reactos.org/blogs/30yrs-of-ros/)
* **Author:** [Mark_Jansen](https://news.ycombinator.com/user?id=Mark_Jansen) | **Comments:** [117](https://news.ycombinator.com/item?id=46716469)

### 8  [Show HN: Synesthesia, make noise music with a colorpicker](https://visualnoise.ca)
* **Author:** [tevans3](https://news.ycombinator.com/user?id=tevans3) | **Comments:** [2](https://news.ycombinator.com/item?id=46715766)
* This app generates noise music by mapping the binary representation of colors selected in a color picker to "chords" played using Tone.js in a 24-tone equal temperament scale. Users are advised to turn their volume down, as the output is explicitly noise music.

### 581 🔥🔥 [Your brain on ChatGPT: Accumulation of cognitive debt when using an AI assistant](https://www.media.mit.edu/publications/your-brain-on-chatgpt/)
* **Author:** [misswaterfairy](https://news.ycombinator.com/user?id=misswaterfairy) | **Comments:** [420](https://news.ycombinator.com/item?id=46712678)



