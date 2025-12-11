# Overall Summary
🔥🔥🔥 [PR #175515](https://github.com/flutter/flutter/pull/175515) (flutter/flutter): added onUserInteractionIfError for form
  * **Comments:** 11
  * Adds `onUserInteractionIfError`, a new `AutovalidateMode` for `Form` and `FormField` widgets, which triggers auto-validation on user interaction only if the field already has an error. This provides immediate feedback as a user corrects their input without running unnecessary validations beforehand.

🔥 [PR #9750](https://github.com/flutter/packages/pull/9750) (flutter/packages): [rfw] Add Flexible widget support to core widgets
  * **Comments:** 9
  * This PR adds support for the `Flexible` widget to the Remote Flutter Widgets (RFW) package, allowing developers to create flexible layouts with both loose and tight fitting behaviors for more granular control over how child widgets share space.

[Issue #62181](https://github.com/dart-lang/sdk/issues/62181) (dart-lang/sdk): Isolate group callbacks can capture mutable `late final` variables.
  * Isolate group callbacks can capture `late final` variables before they are initialized, which allows them to be assigned a mutable object later, bypassing the shareability check and permitting mutable state to be shared across isolates.

[Issue #62178](https://github.com/dart-lang/sdk/issues/62178) (dart-lang/sdk): IsolateGroup.runSync does not handle cycles in object graph when checking closures
  * The `IsolateGroup.runSync` method does not handle cycles in an object graph when checking closures, leading to infinite recursion and a segmentation fault.

[PR #179484](https://github.com/flutter/flutter/pull/179484) (flutter/flutter): Implement flutter/accessibility channel
  * **Comments:** 3
  * This PR implements the `flutter/accessibility` platform channel for the Linux embedder, enabling the framework to send accessibility announcements to be read by screen readers via the native ATK library.

[PR #179352](https://github.com/flutter/flutter/pull/179352) (flutter/flutter): Reland: Add framework-side hitTestBehavior support to Semantics (#178817)
  * **Comments:** 1
  * This PR adds `hitTestBehavior` support to the semantics framework to fix an issue where platform views would become unresponsive when a modal route was present. The content of dialogs and bottom sheets is now marked as opaque, preventing clicks from passing through to the modal barrier while keeping platform views interactive.

[PR #10476](https://github.com/flutter/packages/pull/10476) (flutter/packages): [go_router] Fixes an issue where `onEnter` blocking causes navigation stack loss (stale state restoration)
  * **Comments:** 1
  * This PR fixes an issue in `go_router` where a navigation blocked by an `onEnter` callback could cause a stale or popped route to be restored; the router now correctly falls back to the current active configuration, preserving the navigation stack.

[Issue #2856](https://github.com/dart-lang/native/issues/2856) (dart-lang/native): [jnigen] Nested classes need escaping when used in type signatures.
  * The `jnigen` tool fails to escape the `$` character in type signatures for nested classes, causing the generated Dart code to misinterpret it as string interpolation, which can lead to compilation errors or runtime infinite loops.


# GitHub PR Report for dart-lang/ai
## From 2025-12-10

This release focused on improving the stability of tooling integrations, particularly for multi-client environments. To prevent registration conflicts when multiple clients are connected to the Dart Tooling Daemon, the `samplingRequest` service extension is now registered with a unique name for each client. This change, detailed in [Issue #327](https://github.com/dart-lang/ai/issues/327) and implemented in [PR #328](https://github.com/dart-lang/ai/pull/328), ensures that requests can be correctly routed to a specific client instance, which is crucial for supporting multiple simultaneous connections and handling disconnections gracefully.

## Merged Pull Requests

### [PR #328](https://github.com/dart-lang/ai/pull/328): Register `samplingRequest` with a unique service name
* **Author:** [elliette](https://github.com/elliette)
* **Merged At:** 2025-12-10 09:10 AM
* **Comments:** 1
* Registers the `samplingRequest` service extension with a unique name for each MCP client, preventing registration conflicts when multiple clients are connected to the Dart Tooling Daemon.


## Closed Issues

### [Issue #327](https://github.com/dart-lang/ai/issues/327): Sampling service extension should include client identifier in method name
* **Author:** [elliette](https://github.com/elliette)
* To support multiple simultaneous clients and handle disconnections, the `DartMcpServer.samplingRequest` service extension method should be made unique by suffixing it with a client-specific identifier, allowing requests to be routed to a specific client instance.


# GitHub PR Report for dart-lang/sdk
## From 2025-12-10

While no new pull requests were merged, a number of significant issues were closed, focusing on core language features, concurrency, and tooling. The Isolate API received important stability fixes, addressing a soundness hole that allowed mutable `late final` variables to be shared across isolates ([#62181](https://github.com/dart-lang/sdk/issues/62181)) and a segmentation fault in `IsolateGroup.runSync` when processing object graphs with cycles ([#62178](https://github.com/dart-lang/sdk/issues/62178)). For language features, a bug was fixed where dot-shorthand notation for named constructors would fail if the constructor's name conflicted with a field name ([#62085](https://github.com/dart-lang/sdk/issues/62085)). The developer experience was also improved through several tooling and analyzer fixes, including correct code completion for enum dot shorthands with the `!=` operator ([#62216](https://github.com/dart-lang/sdk/issues/62216)) and more reliable quick fixes for creating getters and methods ([#62108](https://github.com/dart-lang/sdk/issues/62108), [#61898](https://github.com/dart-lang/sdk/issues/61898)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62217](https://github.com/dart-lang/sdk/issues/62217): pkg/perf_witness/test/recorder_server_test fails on windows bots
* **Author:** [aam](https://github.com/aam)
* The `pkg/perf_witness/test/recorder_server_test` is failing on Windows CI bots because the recorder script is not finding any processes to monitor, which results in an expected timeline file not being created.

### [Issue #62216](https://github.com/dart-lang/sdk/issues/62216): IDEs pick wrong context when using dot shorthands with operator `!=`
* **Author:** [mernen](https://github.com/mernen)
* The live analyzer provides incorrect code completion suggestions for enum dot shorthands when used with the `!=` operator, offering members of `Object` instead of the expected enum values which are correctly suggested with the `==` operator.

### [Issue #62181](https://github.com/dart-lang/sdk/issues/62181): Isolate group callbacks can capture mutable `late final` variables.
* **Author:** [alexmarkov](https://github.com/alexmarkov)
* Isolate group callbacks can capture `late final` variables before they are initialized, which allows them to be assigned a mutable object later, bypassing the shareability check and permitting mutable state to be shared across isolates.

### [Issue #62178](https://github.com/dart-lang/sdk/issues/62178): IsolateGroup.runSync does not handle cycles in object graph when checking closures
* **Author:** [alexmarkov](https://github.com/alexmarkov)
* The `IsolateGroup.runSync` method does not handle cycles in an object graph when checking closures, leading to infinite recursion and a segmentation fault.

### [Issue #62108](https://github.com/dart-lang/sdk/issues/62108): Create members getter doesn't calculate the expected type from a switch expression
* **Author:** [FMorschel](https://github.com/FMorschel)
* The "Create members getter" quick fix fails to infer the correct return type for a getter when it is used inside a `switch` expression.

### [Issue #62085](https://github.com/dart-lang/sdk/issues/62085): bug: Not all names are legal wrt. to dot-shorthands notation
* **Author:** [nielsenko](https://github.com/nielsenko)
* The dot-shorthand notation for a named constructor incorrectly produces an "undefined member" error when the constructor's name is the same as a field name within the class.

### [Issue #61898](https://github.com/dart-lang/sdk/issues/61898): `Create (extension) method` false-negative
* **Author:** [FMorschel](https://github.com/FMorschel)
* The "Create (extension) method" quick fix is not offered for an undefined method when it is called from within a lambda expression.

### [Issue #61431](https://github.com/dart-lang/sdk/issues/61431): `Convert to wildcard variable` fix for `unnecessary_underscores` could be applied automatically
* **Author:** [FMorschel](https://github.com/FMorschel)
* The fix for the `unnecessary_underscores` lint, which converts an unused underscore-named parameter to a wildcard variable, should be made automatically applicable by the tooling.


# GitHub PR Report for dart-lang/language
## From 2025-12-10

This was a quiet period for the project, with no pull requests merged and no issues closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2025-12-10

While no new pull requests were merged, an important issue concerning the `jnigen` tool was closed. Issue [#2856](https://github.com/dart-lang/native/issues/2856) highlighted a bug where the `$` character used for nested classes in Java type signatures was not being properly escaped in the generated Dart code. This could lead to significant problems, as the Dart compiler would misinterpret the character as string interpolation, causing compilation errors or even runtime infinite loops.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #2856](https://github.com/dart-lang/native/issues/2856): [jnigen] Nested classes need escaping when used in type signatures.
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* The `jnigen` tool fails to escape the `$` character in type signatures for nested classes, causing the generated Dart code to misinterpret it as string interpolation, which can lead to compilation errors or runtime infinite loops.


# GitHub PR Report for flutter/ai
## From 2025-12-10

This was a quiet period for the repository, with no pull requests merged or issues closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-12-10

During this period, there were no merged pull requests or closed issues, indicating a quiet period of development with no changes to the repository's codebase or issue tracker.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-12-10

This period saw the introduction of a new form validation feature, along with significant improvements to accessibility and stability across the framework and engine. A highly-discussed pull request, [#175515](https://github.com/flutter/flutter/pull/175515), introduced `onUserInteractionIfError`, a new `AutovalidateMode` for forms that provides developers with more granular control by triggering validation on user interaction only after an error has already occurred. Accessibility was enhanced through multiple contributions; [#179484](https://github.com/flutter/flutter/pull/179484) implemented the `flutter/accessibility` channel on Linux to enable screen reader announcements, resolving a long-standing issue ([#172023](https://github.com/flutter/flutter/issues/172023)), while [#179352](https://github.com/flutter/flutter/pull/179352) added `hitTestBehavior` support to the semantics framework to improve interaction with platform views inside modal routes. Several important bug fixes also landed, including a fix for a regression where pinned headers in nested `SliverMainAxisGroup` widgets would overlap ([#179132](https://github.com/flutter/flutter/pull/179132)), a correction for how paths with non-ASCII characters are handled on Windows ([#179528](https://github.com/flutter/flutter/pull/179528)), and a fix for a bug where multiple Flutter engines would incorrectly share configuration data ([#179636](https://github.com/flutter/flutter/pull/179636)). Finally, a large number of pull requests, such as [#179566](https://github.com/flutter/flutter/pull/179566), were merged to prevent various Cupertino widgets and the `Tooltip` from crashing when rendered in a zero-sized environment.

## Merged Pull Requests

### [PR #179669](https://github.com/flutter/flutter/pull/179669): Marks Mac_ios draw_arcs_all_stroke_styles_perf_ios__timeline_summary to be unflaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* **Merged At:** 2025-12-10 09:58 AM
* **Comments:** 0
* Removes the `bringup: true` flag from the `Mac_ios draw_arcs_all_stroke_styles_perf_ios__timeline_summary` test in the CI configuration, indicating that the test is now considered stable.

### [PR #179636](https://github.com/flutter/flutter/pull/179636): Make SettingsChannel configuration queue not static
* **Author:** [mboetger](https://github.com/mboetger)
* **Merged At:** 2025-12-09 06:33 PM
* **Comments:** 1
* This PR converts the `SettingsChannel` configuration queue from a static variable to an instance variable, which fixes a bug where multiple Flutter engines in the same process would incorrectly share and overwrite each other's configuration data.

### [PR #179566](https://github.com/flutter/flutter/pull/179566): Make sure that a CupertinoSlider doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-09 05:22 PM
* **Comments:** 0
* This pull request fixes a crash in `CupertinoSlider` that would occur when the widget was rendered in a zero-sized container, and adds a test to verify this fix.

### [PR #179544](https://github.com/flutter/flutter/pull/179544): Make sure that a CupertinoSegmentedControl doesn't crash in 0x0 envir…
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-09 05:22 PM
* **Comments:** 0
* This change adds a regression test to ensure that the `CupertinoSegmentedControl` widget does not crash when rendered in a zero-sized area.

### [PR #179528](https://github.com/flutter/flutter/pull/179528): Ensure that the engine converts std::filesystem::path objects to UTF-8 strings on Windows
* **Author:** [jason-simmons](https://github.com/jason-simmons)
* **Merged At:** 2025-12-10 02:11 PM
* **Comments:** 1
* This PR adds a new `fml::PathToUtf8` utility function to ensure that `std::filesystem::path` objects are correctly converted to UTF-8 encoded strings. This change fixes a bug on Windows where paths containing non-ASCII characters could be misinterpreted by the engine.

### [PR #179484](https://github.com/flutter/flutter/pull/179484): Implement flutter/accessibility channel
* **Author:** [robert-ancell](https://github.com/robert-ancell)
* **Merged At:** 2025-12-09 08:12 PM
* **Comments:** 3
* This PR implements the `flutter/accessibility` platform channel for the Linux embedder, enabling the framework to send accessibility announcements to be read by screen readers via the native ATK library.

### [PR #179483](https://github.com/flutter/flutter/pull/179483): Check for a null cached image in SingleFrameCodec::getNextFrame
* **Author:** [jason-simmons](https://github.com/jason-simmons)
* **Merged At:** 2025-12-10 08:43 AM
* **Comments:** 0
* This PR adds a null check to `SingleFrameCodec::getNextFrame` to prevent a potential crash when an image fails to decode, which can occur if the decoder callback signals an error with a null image.

### [PR #179447](https://github.com/flutter/flutter/pull/179447): Manually roll characters
* **Author:** [Carapacik](https://github.com/Carapacik)
* **Merged At:** 2025-12-10 10:48 AM
* **Comments:** 3
* This PR manually updates the `characters` package dependency to version 1.4.1 across the repository.

### [PR #179352](https://github.com/flutter/flutter/pull/179352): Reland: Add framework-side hitTestBehavior support to Semantics (#178817)
* **Author:** [flutter-zl](https://github.com/flutter-zl)
* **Merged At:** 2025-12-10 03:09 PM
* **Comments:** 1
* This PR adds `hitTestBehavior` support to the semantics framework to fix an issue where platform views would become unresponsive when a modal route was present. The content of dialogs and bottom sheets is now marked as opaque, preventing clicks from passing through to the modal barrier while keeping platform views interactive.

### [PR #179245](https://github.com/flutter/flutter/pull/179245): Make sure that a CupertinoPageScaffold doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-09 05:22 PM
* **Comments:** 1
* This PR adds a regression test to ensure that the `CupertinoPageScaffold` widget does not crash when rendered in a zero-sized environment.

### [PR #179206](https://github.com/flutter/flutter/pull/179206): Make sure that a CupertinoMagnifier doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-09 05:56 PM
* **Comments:** 1
* This PR adds a test to ensure that the `CupertinoMagnifier` widget does not crash when rendered in a zero-sized environment.

### [PR #179132](https://github.com/flutter/flutter/pull/179132): Fix the issue with pinned headers in nested SliverMainAxisGroup.
* **Author:** [yiiim](https://github.com/yiiim)
* **Merged At:** 2025-12-10 01:51 PM
* **Comments:** 1
* This PR fixes an issue where pinned headers inside a nested `SliverMainAxisGroup` were incorrectly positioned during scrolling. The change updates the paint offset correction logic to properly account for overflowing child slivers, ensuring headers are positioned correctly.

### [PR #179068](https://github.com/flutter/flutter/pull/179068): Make sure that a CupertinoListSection doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-09 06:14 PM
* **Comments:** 1
* Adds a regression test to ensure the `CupertinoListSection` widget does not crash when rendered in a zero-size area.

### [PR #179001](https://github.com/flutter/flutter/pull/179001): Make sure that a CupertinoFormSection doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-09 06:02 PM
* **Comments:** 1
* This PR adds a regression test to ensure that the `CupertinoFormSection` widget does not crash when rendered in a zero-size environment.

### [PR #178956](https://github.com/flutter/flutter/pull/178956): Make sure that a CupertinoDialogAction doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-09 06:45 PM
* **Comments:** 1
* This PR adds a regression test to ensure that the `CupertinoDialogAction` widget does not crash when rendered in a zero-sized environment.

### [PR #178461](https://github.com/flutter/flutter/pull/178461): Make sure that a Tooltip doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-09 05:41 PM
* **Comments:** 1
* This PR prevents a crash that could occur when a Tooltip is displayed in a zero-sized environment by adding a regression test to verify the fix.

### 🔥🔥🔥 [PR #175515](https://github.com/flutter/flutter/pull/175515): added onUserInteractionIfError for form
* **Author:** [akashefrath](https://github.com/akashefrath)
* **Merged At:** 2025-12-10 01:43 PM
* **Comments:** 11
* Adds `onUserInteractionIfError`, a new `AutovalidateMode` for `Form` and `FormField` widgets, which triggers auto-validation on user interaction only if the field already has an error. This provides immediate feedback as a user corrects their input without running unnecessary validations beforehand.

### 🔥🔥🔥 [PR #170980](https://github.com/flutter/flutter/pull/170980): Fixed RenderFlex overflow in RouteObserver Example
* **Author:** [prash4931](https://github.com/prash4931)
* **Merged At:** 2025-12-10 01:29 PM
* **Comments:** 12
* This PR fixes a `RenderFlex` overflow in the `RouteObserver` API example by wrapping the widget's body in a `SingleChildScrollView`, making it scrollable on small screens. A new test has also been added to verify that no layout exceptions occur.


## Closed Issues

### [Issue #179695](https://github.com/flutter/flutter/issues/179695): win-3 is dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The win-3 system is reported as non-functional, with an accompanying screenshot showing its failed status on a dashboard.

### [Issue #179694](https://github.com/flutter/flutter/issues/179694): mac-37 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The test machine mac-37 has lost its external network connection, which was being provided by a connected phone device.

### [Issue #179674](https://github.com/flutter/flutter/issues/179674): Mac plugin_dependencies_test is 2.02% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* The `Mac plugin_dependencies_test` post-submit test is being flagged as flaky due to its failure rate of 2.02%, which is above the 2.00% threshold.

### [Issue #179665](https://github.com/flutter/flutter/issues/179665): Mac plugin_test_android_variants is 2.04% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* The `Mac plugin_test_android_variants` post-submit test has a flakiness ratio of 2.04%, which exceeds the 2.00% threshold.

### [Issue #179654](https://github.com/flutter/flutter/issues/179654): The method 'Scaffold' isn't defined for the type '_MyHomePageState'. Try correcting the name to the name of an existing method, or defining a method named 'Scaffold'.dartundefined_method
* **Author:** [jiangdotgs](https://github.com/jiangdotgs)
* A user is encountering an `undefined_method` error for `Scaffold` in the default Flutter counter app, indicating the widget is being incorrectly called as a method within the state class instead of being returned from the build method.

### [Issue #179648](https://github.com/flutter/flutter/issues/179648): mac-37 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The host `mac-37` is reporting that a connected phone device has lost its external internet connection.

### [Issue #179630](https://github.com/flutter/flutter/issues/179630): mac-37 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The host machine mac-37 has lost its external connection from the attached phone device.

### [Issue #179559](https://github.com/flutter/flutter/issues/179559): Hot restart with multiple FlutterEngines and non-default text scale triggers layout errors
* **Author:** [mengyanshou](https://github.com/mengyanshou)
* On Android, performing a hot restart in an application with multiple `FlutterEngine` instances on separate displays while using a non-default system text scale triggers an "incorrect configuration id" assertion and subsequent layout errors on the primary display.

### [Issue #179495](https://github.com/flutter/flutter/issues/179495): characters not updating by flutter pub roller
* **Author:** [Carapacik](https://github.com/Carapacik)
* The Flutter Pub Roller has not updated the `characters` package from version 1.4.1, which was released five months ago.

### [Issue #179264](https://github.com/flutter/flutter/issues/179264): flutter clean can't delete .dart_tool folder
* **Author:** [asafgo](https://github.com/asafgo)
* **Reactions:** **1** -- 👍 1
* On Windows with Flutter 3.38.1, the `flutter clean` command fails to delete the `.dart_tool` directory because it is locked by multiple lingering `dart.exe` processes.

### [Issue #178973](https://github.com/flutter/flutter/issues/178973): SliverMainAxisGroup + pinned headers overlap (no push-off) in 3.38.x, works in 3.35.x
* **Author:** [silvershort](https://github.com/silvershort)
* A regression in Flutter 3.38.x causes pinned `SliverPersistentHeader`s inside nested `SliverMainAxisGroup`s to overlap when scrolling instead of pushing the previous header off-screen, a behavior that functioned correctly in 3.35.x.

### [Issue #178896](https://github.com/flutter/flutter/issues/178896): Can not run with in a path containing Chinese character on windows with flutter 3.38
* **Author:** [liugangnhm](https://github.com/liugangnhm)
* **Reactions:** **1** -- 👍 1
* On Windows, applications built with Flutter 3.38 fail to launch if their executable file path contains Chinese characters.

### [Issue #178853](https://github.com/flutter/flutter/issues/178853): onEnter blocking causes navigation stack loss (stale state restoration)
* **Author:** [ArinFaraj](https://github.com/ArinFaraj)
* In `go_router`, when a user navigates back via a system gesture and then attempts a new navigation that is blocked by the `onEnter` callback, the router incorrectly restores the previously popped route from a stale navigation state.

### [Issue #178560](https://github.com/flutter/flutter/issues/178560): Wireless debugging is not available on iOS physical devices.
* **Author:** [rs5173](https://github.com/rs5173)
* Wireless debugging on physical iOS devices is failing, causing the app to hang on a blank screen and show an "Error connecting to the service protocol" after the "Local Network" permissions dialog appears.

### [Issue #178027](https://github.com/flutter/flutter/issues/178027): Windows tool_integration_tests_2_9 is 3.00% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* The `Windows tool_integration_tests_2_9` post-submit test has a 3.00% flaky ratio, which is above the 2.00% threshold.

### [Issue #173313](https://github.com/flutter/flutter/issues/173313): [rfw] Add Flexible widget support to core widgets
* **Author:** [BottlePumpkin](https://github.com/BottlePumpkin)
* **Reactions:** **1** -- ❤️ 1
* This issue proposes adding support for the `Flexible` widget to the RFW core library to provide developers with fine-grained layout control, as the current implementation only supports the `Expanded` (FlexFit.tight) behavior and lacks an option for `FlexFit.loose`.

### [Issue #172636](https://github.com/flutter/flutter/issues/172636): Mac tool_integration_tests_4_5 is 2.04% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* The `Mac tool_integration_tests_4_5` post-submit test requires investigation as its flakiness ratio has reached 2.04%, which is above the 2.00% threshold.

### [Issue #172023](https://github.com/flutter/flutter/issues/172023): Nonfunctioning semantic announcements on Ubuntu desktop
* **Author:** [ashuntu](https://github.com/ashuntu)
* Semantic announcements and live regions are not functioning for Flutter apps on Ubuntu desktop, preventing screen readers from announcing content changes even though `SemanticsService.isAnnounceSupported()` reports that the feature is supported.

### [Issue #166602](https://github.com/flutter/flutter/issues/166602): [shared_preferences_tool] `requiresRunningApplication` is deprecated
* **Author:** [bparrishMines](https://github.com/bparrishMines)
* The `shared_preferences_tool` should be updated to replace the deprecated `requiresRunningApplication` member with the `requiresConnection` field in the extension's `config.yaml` file.

### [Issue #161031](https://github.com/flutter/flutter/issues/161031): [engine] potential crash on deref of canvas_image_ in single_frame_codec.cc.
* **Author:** [Tom3652](https://github.com/Tom3652)
* **Reactions:** **1** -- 👍 1
* A user is reporting a new native crash in a production application after upgrading to Flutter 3.27.1, with the stack trace pointing to a potential null pointer dereference in `flutter::SingleFrameCodec::getNextFrame`.

### [Issue #95107](https://github.com/flutter/flutter/issues/95107): Android app shows blank keyboard
* **Author:** [MuathSawalqah](https://github.com/MuathSawalqah)
* On some Android devices, users who have installed the app from the Play Store are seeing a blank keyboard with no keys, an issue the reporter cannot reproduce on their own test devices or emulators.


# GitHub PR Report for flutter/genui
## From 2025-12-10

This period saw significant improvements to the project's documentation and examples. The `README` was enhanced with new diagrams illustrating package dependencies and example app architecture, along with new pub.dev badges for better visibility ([#592](https://github.com/flutter/genui/pull/592)). New contribution guidelines were also added to clarify the process for managing the `pubspec.lock` file ([#595](https://github.com/flutter/genui/pull/595)). For developers, the Verdure example server was fixed to run correctly on macOS, iOS, and Android ([#593](https://github.com/flutter/genui/pull/593)). Finally, an important issue was closed concerning the preservation of state in input elements, addressing a bug where input chip selections were lost during UI updates ([#135](https://github.com/flutter/genui/issues/135)).

## Merged Pull Requests

### [PR #595](https://github.com/flutter/genui/pull/595): Add examples to diagram and document process for pubspec.lock.
* **Author:** [polina-c](https://github.com/polina-c)
* **Merged At:** 2025-12-10 02:14 PM
* **Comments:** 0
* Adds a dependency diagram to the README showing how example apps use the various packages, and includes new contribution guidelines for managing the `pubspec.lock` file.

### [PR #593](https://github.com/flutter/genui/pull/593): Fix Verdure example server on macOS, iOS and Android
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-12-10 12:10 PM
* **Comments:** 0
* This pull request fixes the Verdure example server for macOS, iOS, and Android by updating the extension URI to a versioned path, adding the `device_info_plus` dependency for iOS and macOS, and correcting a minor JSON syntax error in the UI examples.

### [PR #592](https://github.com/flutter/genui/pull/592): Add diagram, link pub.dev and fix capitalization in the headers.
* **Author:** [polina-c](https://github.com/polina-c)
* **Merged At:** 2025-12-10 09:47 AM
* **Comments:** 1
* This PR updates the project's README file to add pub.dev version badges for each package, a Mermaid diagram showing package dependencies, and corrects the capitalization in headers to align with the Google developer style guide.


## Closed Issues

### [Issue #135](https://github.com/flutter/genui/issues/135): State of input elements is not preserved when UI updates
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* The selected state of input chips is lost when the UI updates after a button press, likely due to the component being rebuilt.


# GitHub PR Report for flutter/packages
## From 2025-12-10

This release features a significant enhancement to the Remote Flutter Widgets (`rfw`) package, which now supports the `Flexible` widget following a highly-discussed pull request ([PR #9750](https://github.com/flutter/packages/pull/9750)). This change provides developers with more granular control over how child widgets share space, enabling more complex and responsive remote layouts. In routing, a key bug fix for `go_router` ([PR #10476](https://github.com/flutter/packages/pull/10476)) resolves an issue where the navigation stack could be lost if an `onEnter` callback blocked a navigation event, ensuring the router now correctly preserves the active route configuration. Additionally, the `file_selector_linux` example has been updated to use the latest, non-deprecated APIs ([PR #10542](https://github.com/flutter/packages/pull/10542)).

## Merged Pull Requests

### [PR #10594](https://github.com/flutter/packages/pull/10594): [ci] Rewrites branch exists without external dependencies
* **Author:** [chunhtai](https://github.com/chunhtai)
* **Merged At:** 2025-12-10 09:06 AM
* **Comments:** 1
* This PR updates a GitHub Actions workflow by replacing a third-party "branch-exists" action with a native `git` command, removing an external dependency and avoiding the need to add it to an allow-list.

### [PR #10542](https://github.com/flutter/packages/pull/10542): [file_selector] Update Linux example for deprecations
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-12-10 01:47 PM
* **Comments:** 2
* This PR updates the `file_selector_linux` example to use the new `...WithOptions` methods, replacing deprecated versions that accepted direct parameters.

### [PR #10476](https://github.com/flutter/packages/pull/10476): [go_router] Fixes an issue where `onEnter` blocking causes navigation stack loss (stale state restoration)
* **Author:** [ArinFaraj](https://github.com/ArinFaraj)
* **Merged At:** 2025-12-10 02:02 PM
* **Comments:** 1
* This PR fixes an issue in `go_router` where a navigation blocked by an `onEnter` callback could cause a stale or popped route to be restored; the router now correctly falls back to the current active configuration, preserving the navigation stack.

### 🔥 [PR #9750](https://github.com/flutter/packages/pull/9750): [rfw] Add Flexible widget support to core widgets
* **Author:** [BottlePumpkin](https://github.com/BottlePumpkin)
* **Merged At:** 2025-12-10 07:14 AM
* **Comments:** 9
* This PR adds support for the `Flexible` widget to the Remote Flutter Widgets (RFW) package, allowing developers to create flexible layouts with both loose and tight fitting behaviors for more granular control over how child widgets share space.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-12-10

This release introduces a new sample for developers using Flutter's add-to-app functionality on iOS. In pull request [#2756](https://github.com/flutter/samples/pull/2756), a sample was added to demonstrate how a `FlutterViewController` can dynamically resize based on its content. This change, in turn, causes the native UIKit host view to automatically adjust its layout, providing a helpful example for seamlessly integrating Flutter components into existing native applications.

## Merged Pull Requests

### [PR #2756](https://github.com/flutter/samples/pull/2756): Add content resizing sample
* **Author:** [LouiseHsu](https://github.com/LouiseHsu)
* **Merged At:** 2025-12-10 08:38 AM
* **Comments:** 0
* Adds a new add-to-app sample for iOS demonstrating how a `FlutterViewController` can dynamically resize based on its content, causing the native UIKit host view to automatically adjust its layout.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-12-10

This period saw a minor content update to the website. The job listing for a previously open Technical Writer position was removed now that the role has been filled ([#12809](https://github.com/flutter/website/pull/12809)). There were no other changes or issue resolutions during this time.

## Merged Pull Requests

### [PR #12809](https://github.com/flutter/website/pull/12809): Remove filled role
* **Author:** [twerske](https://github.com/twerske)
* **Merged At:** 2025-12-10 02:06 PM
* **Comments:** 2
* Removes the job listing for the Technical Writer II role from the website, as the position has been filled.


## Closed Issues

No issues were closed during this time.



## Top Hacker News Stories

### 118 🔥 [Show HN: I've asked Claude to improve codebase quality 200 times](https://gricha.dev/blog/the-highest-quality-codebase)
* **Author:** [Gricha](https://news.ycombinator.com/user?id=Gricha) | **Comments:** [49](https://news.ycombinator.com/item?id=46197930)

### 37  [An Orbital House of Cards: Frequent Megaconstellation Close Conjunctions](https://arxiv.org/abs/2512.09643)
* **Author:** [rapnie](https://news.ycombinator.com/user?id=rapnie) | **Comments:** [11](https://news.ycombinator.com/item?id=46232220)

### 18  [Launch HN: BrowserBook (YC F24) – IDE for deterministic browser automation]()
* **Author:** [cschlaepfer](https://news.ycombinator.com/user?id=cschlaepfer) | **Comments:** [11](https://news.ycombinator.com/item?id=46232434)
* **BrowserBook** is a Mac IDE for writing and debugging Playwright-based web automations, designed as a more reliable and efficient alternative to LLM-based browser agents. It features an integrated browser, a notebook-style interface, and an AI coding assistant to make the process of creating and maintaining scripts faster and easier.

### 49  [Craft software that makes people feel something](https://rapha.land/craft-software-that-makes-people-feel-something/)
* **Author:** [lukeio](https://news.ycombinator.com/user?id=lukeio) | **Comments:** [15](https://news.ycombinator.com/item?id=46231274)

### 173 🔥 [Disney making $1B investment in OpenAI, will allow characters on Sora AI](https://www.cnbc.com/2025/12/11/disney-openai-sora-characters-video.html)
* **Author:** [tiahura](https://news.ycombinator.com/user?id=tiahura) | **Comments:** [126](https://news.ycombinator.com/item?id=46231585)

### 2323 🔥🔥🔥 [Size of Life](https://neal.fun/size-of-life/)
* **Author:** [eatonphil](https://news.ycombinator.com/user?id=eatonphil) | **Comments:** [260](https://news.ycombinator.com/item?id=46219346)

### 89  [iPhone Typos? It's Not Just You – The iOS Keyboard Is Broken [video]](https://www.youtube.com/watch?v=hksVvXONrIo)
* **Author:** [walterbell](https://news.ycombinator.com/user?id=walterbell) | **Comments:** [48](https://news.ycombinator.com/item?id=46232528)

### 64  [Show HN: Local Privacy Firewall-blocks PII and secrets before ChatGPT sees them](https://github.com/privacyshield-ai/privacy-firewall)
* **Author:** [arnabkarsarkar](https://news.ycombinator.com/user?id=arnabkarsarkar) | **Comments:** [26](https://news.ycombinator.com/item?id=46206591)
* This open-source Chrome extension prevents leaking sensitive data to cloud-based AI by using a local model to scrub PII and secrets from prompts before they leave the browser. The author is seeking feedback on this early prototype and is exploring a WASM-based version to remove the local Python server dependency.

### 31  [Oldest attestation of Austronesian language: Đông Yên Châu inscription](https://en.wikipedia.org/wiki/%C4%90%C3%B4ng_Y%C3%AAn_Ch%C3%A2u_inscription)
* **Author:** [teleforce](https://news.ycombinator.com/user?id=teleforce) | **Comments:** [2](https://news.ycombinator.com/item?id=46168902)

### 136 🔥 [A “frozen” dictionary for Python](https://lwn.net/SubscriberLink/1047238/25c270b077849dc0/)
* **Author:** [jwilk](https://news.ycombinator.com/user?id=jwilk) | **Comments:** [95](https://news.ycombinator.com/item?id=46229467)

### 698 🔥🔥🔥 [Getting a Gemini API key is an exercise in frustration](https://ankursethi.com/blog/gemini-api-key-frustration/)
* **Author:** [speckx](https://news.ycombinator.com/user?id=speckx) | **Comments:** [273](https://news.ycombinator.com/item?id=46223311)

### 20  [A Developer Accidentally Found CSAM in AI Data. Google Banned Him for It](https://www.404media.co/a-developer-accidentally-found-csam-in-ai-data-google-banned-him-for-it/)
* **Author:** [markatlarge](https://news.ycombinator.com/user?id=markatlarge) | **Comments:** [1](https://news.ycombinator.com/item?id=46233067)

### 895 🔥🔥🔥 [Australia begins enforcing world-first teen social media ban](https://www.reuters.com/legal/litigation/australia-social-media-ban-takes-effect-world-first-2025-12-09/)
* **Author:** [chirau](https://news.ycombinator.com/user?id=chirau) | **Comments:** [1345](https://news.ycombinator.com/item?id=46208348)
* This text contains a collection of hyperlinks to news articles and their archived versions.

### 5  [Deprecate Like You Mean It](https://entropicthoughts.com/deprecate-like-you-mean-it)
* **Author:** [todsacerdoti](https://news.ycombinator.com/user?id=todsacerdoti) | **Comments:** [4](https://news.ycombinator.com/item?id=46232898)

### 138 🔥 [The Cost of a Closure in C](https://thephd.dev/the-cost-of-a-closure-in-c-c2y)
* **Author:** [ingve](https://news.ycombinator.com/user?id=ingve) | **Comments:** [45](https://news.ycombinator.com/item?id=46228597)

### 438 🔥🔥 [Patterns.dev](https://www.patterns.dev/)
* **Author:** [handfuloflight](https://news.ycombinator.com/user?id=handfuloflight) | **Comments:** [98](https://news.ycombinator.com/item?id=46226483)

### 137 🔥 [Helldivers 2 on-disk size 85% reduction](https://store.steampowered.com/news/app/553850/view/491583942944621371)
* **Author:** [SergeAx](https://news.ycombinator.com/user?id=SergeAx) | **Comments:** [118](https://news.ycombinator.com/item?id=46131518)

### 78  [How the Brain Parses Language](https://www.quantamagazine.org/the-polyglot-neuroscientist-resolving-how-the-brain-parses-language-20251205/)
* **Author:** [mylifeandtimes](https://news.ycombinator.com/user?id=mylifeandtimes) | **Comments:** [38](https://news.ycombinator.com/item?id=46191597)

### 210 🔥 [Booting Linux in QEMU and Writing PID 1 in Go to Illustrate Kernel as Program](https://serversfor.dev/linux-inside-out/the-linux-kernel-is-just-a-program/)
* **Author:** [birdculture](https://news.ycombinator.com/user?id=birdculture) | **Comments:** [63](https://news.ycombinator.com/item?id=46147987)

### 505 🔥🔥 [Auto-grading decade-old Hacker News discussions with hindsight](https://karpathy.bearblog.dev/auto-grade-hn/)
* **Author:** [__rito__](https://news.ycombinator.com/user?id=__rito__) | **Comments:** [224](https://news.ycombinator.com/item?id=46220540)
* This text links to a related *Show HN* submission from the previous day where the Gemini Pro 3 model was used to imagine the Hacker News front page ten years in the future.

### 29  [Crick and Watson Did Not Steal Franklin's Data](https://nautil.us/crick-and-watson-did-not-steal-franklins-data-1252663/)
* **Author:** [Brajeshwar](https://news.ycombinator.com/user?id=Brajeshwar) | **Comments:** [6](https://news.ycombinator.com/item?id=46232828)

### 6  [Pop Goes the Population Count?](https://xania.org/202512/11-pop-goes-the-weasel-er-count)
* **Author:** [hasheddan](https://news.ycombinator.com/user?id=hasheddan) | **Comments:** [0](https://news.ycombinator.com/item?id=46231829)

### 25  [Show HN: oeis-tui – A TUI to search OEIS integer sequences in the terminal](https://github.com/hako/oeis-tui)
* **Author:** [wesleyhill](https://news.ycombinator.com/user?id=wesleyhill) | **Comments:** [1](https://news.ycombinator.com/item?id=46087339)
* `oeis-tui` is a new TUI and CLI for browsing the On-Line Encyclopedia of Integer Sequences (OEIS) from the terminal. It supports most of the website's features, including graphs, exporting, and bookmarks.

### 40  [How can I read the standard output of an already-running process?](https://devblogs.microsoft.com/oldnewthing/20251204-00/?p=111841)
* **Author:** [ibobev](https://news.ycombinator.com/user?id=ibobev) | **Comments:** [13](https://news.ycombinator.com/item?id=46168180)

### 100 🔥 [Python Workers redux: fast cold starts, packages, and a uv-first workflow](https://blog.cloudflare.com/python-workers-advancements/)
* **Author:** [dom96](https://news.ycombinator.com/user?id=dom96) | **Comments:** [45](https://news.ycombinator.com/item?id=46192748)



