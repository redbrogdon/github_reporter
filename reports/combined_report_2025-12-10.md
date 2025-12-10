# Overall Summary
Here are the highlights from the latest pull requests and closed issues:

**🔥🔥🔥 [PR #175442](https://github.com/flutter/flutter/pull/175442) (flutter/flutter): [wimp] Initial Impeller on Web implementation.**
  * **Comments:** 4
  * This PR adds an initial implementation of the Impeller rendering backend for Flutter on the web, codenamed "wimp", which uses Impeller's OpenGL ES backend to target WebGL.

**[Issue #58303](https://github.com/dart-lang/sdk/issues/58303) (dart-lang/sdk): Lint request : avoid_returning_widgets**
  * **Reactions:** **35** -- 👍 24 ❤️ 9 🚀 2
  * This issue proposes a new lint rule, `avoid_returning_widgets`, to discourage functions that return a `Widget` and instead promote using widget classes for better performance, maintainability, and tooling.

**[Issue #49027](https://github.com/flutter/flutter/issues/49027) (flutter/flutter): CustomScrollView systematically initializes the first child of every SliverList/SliverGrid sliver**
  * **Reactions:** **12** -- 👍 12
  * When using a `CustomScrollView` with multiple `SliverList` or `SliverGrid` slivers, the first child of every sliver is unnecessarily initialized on build, even for slivers that are far off-screen and beyond the cache extent.

**🔥 [PR #12636](https://github.com/flutter/website/pull/12636) (flutter/website): docs: add migration guide for findChildIndexCallback of separated builder**
  * **Comments:** 7
  * Adds a migration guide for the deprecation of `findChildIndexCallback` in `ListView.separated` and `SliverList.separated`, which is replaced by `findItemIndexCallback` to simplify index lookups.

**[PR #10571](https://github.com/flutter/packages/pull/10571) (flutter/packages): [camera_android_camerax] Updates pigeon generation to prevent crash when objects call to Dart after a hot restart**
  * **Comments:** 3
  * This PR updates the Pigeon-generated code in `camera_android_camerax` to prevent a crash that occurs when native objects attempt to call into Dart after a hot restart by adding a check to ensure a corresponding Dart instance exists before making the callback.

**[PR #179480](https://github.com/flutter/flutter/pull/179480) (flutter/flutter): Fix - Semantics focus does not move outside viewport when moving up or down**
  * **Comments:** 3
  * This PR fixes a regression in Android accessibility where `SliverList`s would not scroll with TalkBack, by ensuring that semantic nodes with implicit scrolling actions are correctly identified.


# GitHub PR Report for dart-lang/ai
## From 2025-12-09

While no new code was merged in this period, planning for future capabilities continued. A notable feature request was closed, proposing a new `sendSamplingRequest` service extension to improve tooling integration ([#326](https://github.com/dart-lang/ai/issues/326)). This extension would allow development tools like Flutter DevTools to forward sampling requests to a user's connected AI agent, enabling more powerful and seamless development workflows.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #326](https://github.com/dart-lang/ai/issues/326): [FR] Add service extension to forward sampling request to MCP client
* **Author:** [elliette](https://github.com/elliette)
* This feature request proposes adding a `sendSamplingRequest` service extension to the Dart MCP Server, which will allow tools connected to the Dart Tooling Daemon, such as Flutter DevTools, to forward sampling requests to the user's connected AI agent.


# GitHub PR Report for dart-lang/sdk
## From 2025-12-09

While no new pull requests were merged, this period saw significant activity in closing issues, with a strong focus on improving the Dart static analysis engine and proposing new linter rules. A highly-discussed proposal ([#58303](https://github.com/dart-lang/sdk/issues/58303)) suggested a new `avoid_returning_widgets` lint to promote better performance and tooling support in Flutter code. Other notable proposals included encouraging named parameters for function types to improve readability ([#61391](https://github.com/dart-lang/sdk/issues/61391)) and deprecating the `use_if_null_to_convert_nulls_to_bools` rule ([#58998](https://github.com/dart-lang/sdk/issues/58998)). Alongside these feature discussions, numerous issues were resolved to improve tooling stability and correctness, such as fixing a type inference discrepancy with generic constructor tear-offs ([#62211](https://github.com/dart-lang/sdk/issues/62211)), preventing an analysis server crash ([#62202](https://github.com/dart-lang/sdk/issues/62202)), and ensuring analyzer plugin quick-fixes are available in `part of` files ([#62075](https://github.com/dart-lang/sdk/issues/62075)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62211](https://github.com/dart-lang/sdk/issues/62211): Difference in assigning a function typed getter or a constructor
* **Author:** [FMorschel](https://github.com/FMorschel)
* An `invalid_assignment` error occurs when assigning a static getter that returns a generic constructor tear-off to a variable with a more specific generic function type, while assigning the constructor tear-off directly succeeds, indicating a difference in type inference.

### [Issue #62209](https://github.com/dart-lang/sdk/issues/62209): `multiple_part_of_directives` triggering on a quick-fix needs a server restart to go away
* **Author:** [FMorschel](https://github.com/FMorschel)
* The `multiple_part_of_directives` lint is incorrectly triggered after using the "Create file" quick-fix for a `part` directive, and the erroneous diagnostic persists until the analysis server is restarted.

### [Issue #62208](https://github.com/dart-lang/sdk/issues/62208): Flutter web app stuck on loader after multiple manual browser reloads when running with flutter run -d web-server
* **Author:** [ashoksisara](https://github.com/ashoksisara)
* **Reactions:** **1** -- 👍 1
* A Flutter web app running with `flutter run -d web-server` gets stuck on its loading screen after being manually reloaded in the browser multiple times.

### [Issue #62206](https://github.com/dart-lang/sdk/issues/62206): `use_named_constants` false-negatve with dot shorthand
* **Author:** [FMorschel](https://github.com/FMorschel)
* The `use_named_constants` lint fails to trigger (a false negative) when a constant is instantiated using the dot shorthand constructor syntax like `.new()`.

### [Issue #62202](https://github.com/dart-lang/sdk/issues/62202): Analysis server crash: "Bad state: endToken not found"
* **Author:** [DanTup](https://github.com/DanTup)
* The analysis server crashes with a "Bad state: endToken not found" error when typing an incomplete method call on a `File` object within a class field initializer.

### [Issue #62195](https://github.com/dart-lang/sdk/issues/62195): Snippets showing up on enum constant declaration position
* **Author:** [FMorschel](https://github.com/FMorschel)
* Code completion is incorrectly suggesting statement snippets like `for` and `if` within the list of enum constant declarations where they are not syntactically valid.

### [Issue #62148](https://github.com/dart-lang/sdk/issues/62148): DTD client and/or server should enable pings to keep WebSockets alive through proxies that drop idle connections
* **Author:** [DanTup](https://github.com/DanTup)
* To prevent proxies from dropping idle WebSocket connections to the Dart Tooling Daemon (DTD), the client and/or server should enable periodic pings to keep the connection alive.

### [Issue #62075](https://github.com/dart-lang/sdk/issues/62075): Plugin fixes and assists do not work inside `part of` files
* **Author:** [vowxzero](https://github.com/vowxzero)
* Although analyzer plugins correctly report diagnostics in `part of` files, the associated quick-fixes and assists are not available, unlike in the main library file where they function as expected.

### [Issue #62010](https://github.com/dart-lang/sdk/issues/62010): `RuleVisitorRegistry.afterLibrary` not running for plugins(?)
* **Author:** [FMorschel](https://github.com/FMorschel)
* The `RuleVisitorRegistry.afterLibrary` callback is reportedly not running for a custom lint rule when used as a plugin, preventing post-analysis logic from executing, even though it works as expected during testing.

### [Issue #61982](https://github.com/dart-lang/sdk/issues/61982): Failures on [vm/shared] Introduce ScopedThreadLocal to allow keeping state on
* **Author:** [alexmarkov](https://github.com/alexmarkov)
* The `scoped_thread_local_test`, added in the commit that introduced `ScopedThreadLocal`, is causing a segmentation fault crash on dynamic VM configurations.

### [Issue #61915](https://github.com/dart-lang/sdk/issues/61915): Tutorial/example on how to use `newPackageConfigJsonFileFromBuilder`
* **Author:** [FMorschel](https://github.com/FMorschel)
* This issue proposes adding a tutorial or example to the `analyzer_testing` or `analysis_server_plugin` documentation to demonstrate how to use the `newPackageConfigJsonFileFromBuilder` function, including examples for both physical and in-memory folders.

### [Issue #61867](https://github.com/dart-lang/sdk/issues/61867): proposal: `specify_types_on_closure_parameters`
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* **Reactions:** **1** -- 👍 1
* This issue proposes a new lint rule, `specify_types_on_closure_parameters`, that would require developers to explicitly annotate types for function expression parameters, which is being considered for the Flutter style guide and is the inverse of the existing `avoid_types_on_closure_parameters` rule.

### [Issue #61866](https://github.com/dart-lang/sdk/issues/61866): Exception when using analyzer plugin, and changing analysis options.
* **Author:** [srawlins](https://github.com/srawlins)
* Modifying the analysis options file while an analyzer plugin is active can cause a "Null check operator used on a null value" exception during the subsequent re-analysis.

### [Issue #61826](https://github.com/dart-lang/sdk/issues/61826): `pkg/dds/test/dap/integration/debug_test` flaky on `pkg-linux-release-arm64/unittest-asserts-release-linux-arm64`
* **Author:** [DanTup](https://github.com/DanTup)
* The `pkg/dds/test/dap/integration/debug_test` is flaky on the `pkg-linux-release-arm64` builder, failing because it receives a `terminated` event instead of the expected `thread (reason: exited, ...)` event.

### [Issue #61391](https://github.com/dart-lang/sdk/issues/61391): proposal: `prefer_named_function_parameters`
* **Author:** [Pante](https://github.com/Pante)
* **Reactions:** **5** -- 👍 5
* This issue proposes a new lint rule, `prefer_named_function_parameters`, to encourage developers to provide descriptive names for the parameters of function-typed fields, which improves IDE autocompletion and code readability by avoiding generic placeholders like `p0` and `p1`.

### [Issue #60786](https://github.com/dart-lang/sdk/issues/60786): Recommend using `DateTime.timestamp()` over `DateTime.now().toUtc()`
* **Author:** [Mr-Pepe](https://github.com/Mr-Pepe)
* **Reactions:** **1** -- 👍 1
* This issue proposes a new lint rule to recommend using the simpler `DateTime.timestamp()` constructor instead of `DateTime.now().toUtc()`, which would improve discoverability and help prevent bugs caused by forgetting to convert to UTC.

### [Issue #60667](https://github.com/dart-lang/sdk/issues/60667): Lints to prefer project root path import
* **Author:** [predatorx7](https://github.com/predatorx7)
* **Reactions:** **2** -- 👍 2
* This issue proposes a new lint rule to encourage using project root path imports (e.g., `/core/logger.dart`) over relative or package imports to improve code clarity and maintainability.

### [Issue #60515](https://github.com/dart-lang/sdk/issues/60515): A linter rule to recommend "mixing in"
* **Author:** [nate-thegrate](https://github.com/nate-thegrate)
* **Reactions:** **1** -- 👍 1
* This issue proposes a new linter rule to recommend using `with` instead of `extends` when inheriting from a `mixin class` to improve readability and better communicate its intended usage.

### [Issue #60461](https://github.com/dart-lang/sdk/issues/60461): Feature Request: Linter Rule for Explicit Imports Using `show` or `as`
* **Author:** [frank-weindel](https://github.com/frank-weindel)
* **Reactions:** **2** -- 👍 2
* This feature request proposes a new, auto-fixable linter rule to enforce explicit imports, requiring developers to either list imported symbols with `show` or use a namespace alias with `as` to improve code readability and clarity outside of an IDE.

### [Issue #60334](https://github.com/dart-lang/sdk/issues/60334): Flutter lint rule to prefer `Text.rich` over `RichText`
* **Author:** [IchordeDionysos](https://github.com/IchordeDionysos)
* This issue proposes a new lint rule to prefer `Text.rich` over the `RichText` widget, as `Text.rich` improves accessibility by automatically respecting the device's text scale settings.

### [Issue #60208](https://github.com/dart-lang/sdk/issues/60208): Static analysis with if conditions for boolean assignments
* **Author:** [htoopyaelinn56](https://github.com/htoopyaelinn56)
* A user suggests that the static analyzer should issue a warning when a boolean variable is assigned a value inside an `if` condition, as this is a common source of bugs where a comparison (`==`) was intended.

### [Issue #59852](https://github.com/dart-lang/sdk/issues/59852): Linter to suggest removing the `Future` return type for the synchronous option
* **Author:** [FMorschel](https://github.com/FMorschel)
* This issue proposes a new lint to suggest removing the `Future` return type from synchronous functions, as benchmarks indicate this change can result in significant performance improvements.

### [Issue #58998](https://github.com/dart-lang/sdk/issues/58998): proposal: deprecate `use_if_null_to_convert_nulls_to_bools`
* **Author:** [pq](https://github.com/pq)
* **Reactions:** **3** -- 👍 3
* This issue proposes deprecating the `use_if_null_to_convert_nulls_to_bools` linter rule, based on a consensus from a related discussion.

### [Issue #58303](https://github.com/dart-lang/sdk/issues/58303): Lint request : avoid_returning_widgets
* **Author:** [NatoBoram](https://github.com/NatoBoram)
* **Reactions:** **35** -- 👍 24 ❤️ 9 🚀 2
* This issue proposes a new lint rule, `avoid_returning_widgets`, to discourage functions that return a `Widget` and instead promote using widget classes for better performance, maintainability, and tooling, with exceptions for overridden methods, type definitions, and anonymous functions.

### [Issue #57267](https://github.com/dart-lang/sdk/issues/57267): Flag boolean checks that can't ever be true
* **Author:** [filiph](https://github.com/filiph)
* This issue proposes a new static analysis check to flag boolean expressions that can never be true, such as when a variable is checked for equality against two different values in a condition joined by `&&`.

### [Issue #57266](https://github.com/dart-lang/sdk/issues/57266): Flag duplicate boolean expressions
* **Author:** [filiph](https://github.com/filiph)
* This issue proposes a new lint to detect and flag duplicate sub-expressions within a boolean expression, which are often the result of a copy-paste error.


# GitHub PR Report for dart-lang/language
## From 2025-12-09

During this period, there were no new updates to the repository, as no pull requests were merged and no issues were closed. Consequently, there have been no changes to the codebase or its public API.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2025-12-09

This period focused on improving the developer experience for native interoperability, particularly in debugging and API consistency. To help diagnose memory management issues like the one described in [Issue #2246](https://github.com/dart-lang/native/issues/2246), a new `Jni.captureStackTraceOnRelease` flag was added in [PR #2851](https://github.com/dart-lang/native/pull/2851) to provide a useful stack trace when a `DoubleReleaseError` occurs. The `ffigen` package also saw updates to its public API surface. Following a recent rename of key Objective-C interop methods, the documentation was updated in [PR #2853](https://github.com/dart-lang/native/pull/2853) to replace mentions of `isInstance` and `castFrom` with `isA` and `as`. This change is timely, as an issue ([#2852](https://github.com/dart-lang/native/issues/2852)) related to the new `.as()` casting method was also recently closed.

## Merged Pull Requests

### [PR #2853](https://github.com/dart-lang/native/pull/2853): [ffigen] Update mentions of isInstance and castFrom
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-12-09 10:36 AM
* **Comments:** 2
* Updates the ffigen Objective-C documentation to replace mentions of the renamed `isInstance` and `castFrom` methods with their new names, `isA` and `as`.

### [PR #2851](https://github.com/dart-lang/native/pull/2851): [jni] Store and display stack trace of release point for debugging
* **Author:** [HosseinYousefi](https://github.com/HosseinYousefi)
* **Merged At:** 2025-12-09 10:55 AM
* **Comments:** 2
* This PR introduces a `Jni.captureStackTraceOnRelease` flag to aid in debugging `DoubleReleaseError` and `UseAfterReleaseError` by capturing and displaying the stack trace from the point where a JNI object was released or registered for release. The change also makes `JObject.releasedBy(arena)` more lenient, preventing it from throwing an error if the object was already released manually.

### [PR #2846](https://github.com/dart-lang/native/pull/2846): [ffigen] Remove BindingsIndex._declaredTypes
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-12-09 02:39 PM
* **Comments:** 2
* This PR refactors caching in `ffigen` by removing the `BindingsIndex._declaredTypes` map and moving the caching logic for enums, compounds, typealiases, and Objective-C interfaces into their respective parser files for better consistency.


## Closed Issues

### [Issue #2852](https://github.com/dart-lang/native/issues/2852): [Interop EAP] cannot cast generated wrapper types using `.as()` in ffigen 20
* **Author:** [josxha](https://github.com/josxha)
* In ffigen 20, the generated `.as()` constructor for wrapper types fails with a `FailedToLoadClassException` because it incorrectly tries to find a native Objective-C class with the same name as the Dart wrapper type, but a standard Dart cast (`as WrapperType`) works correctly.

### [Issue #2246](https://github.com/dart-lang/native/issues/2246): `using()` does not show a useful stacktrace on double frees.
* **Author:** [dickermoshe](https://github.com/dickermoshe)
* The `using()` function throws a `DoubleReleaseError` with an unhelpful stack trace when a reference is freed twice, making it difficult to debug; proposed solutions include ignoring the error or changing the API to throw an error with a useful trace upon registration of the duplicate release.


# GitHub PR Report for flutter/ai
## From 2025-12-09

This was a quiet period for the repository, with no pull requests merged and no issues closed. Consequently, there were no updates to the codebase, language features, or public API.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-12-09

During this period, no pull requests were merged and no issues were closed, resulting in no changes to the repository's codebase, public API, or language features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-12-09

This period's updates are highlighted by the exciting initial implementation of the Impeller rendering backend for Flutter on the web. This significant effort, which landed in a highly-commented pull request ([PR #175442](https://github.com/flutter/flutter/pull/175442)), introduces a new backend targeting WebGL and marks a major step forward for web rendering performance. Accessibility also saw key improvements, with a fix in [PR #179480](https://github.com/flutter/flutter/pull/179480) to resolve a regression ([#179450](https://github.com/flutter/flutter/issues/179450)) that prevented Android's TalkBack from scrolling `SliverList`s, while another change relaxed an assertion to simplify how semantics locales are configured ([PR #178140](https://github.com/flutter/flutter/pull/178140)). Finally, in response to long-standing developer feedback in a popular issue ([#11660](https://github.com/flutter/flutter/issues/11660)), the API documentation for the `LocalHistoryEntry` class was significantly enhanced with more detail and a new code sample ([PR #179223](https://github.com/flutter/flutter/pull/179223)).

## Merged Pull Requests

### [PR #179525](https://github.com/flutter/flutter/pull/179525): Remove unused optional argument in _followDiagnosticableChain
* **Author:** [harryterkelsen](https://github.com/harryterkelsen)
* **Merged At:** 2025-12-08 05:30 PM
* **Comments:** 2
* This PR resolves a Dart analysis warning by removing the unused optional `name` and `style` arguments from the `_followDiagnosticableChain` method.

### [PR #179480](https://github.com/flutter/flutter/pull/179480): Fix - Semantics focus does not move outside viewport when moving up or down
* **Author:** [jwlilly](https://github.com/jwlilly)
* **Merged At:** 2025-12-09 11:30 AM
* **Comments:** 3
* This PR fixes a regression in Android accessibility where `SliverList`s would not scroll with TalkBack, by ensuring that semantic nodes with implicit scrolling actions are correctly identified as a `ScrollView` or `HorizontalScrollView`.

### [PR #179351](https://github.com/flutter/flutter/pull/179351): Make sure that a CupertinoPickerDefaultSelectionOverlay doesn't crash…
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-09 10:11 AM
* **Comments:** 2
* This PR adds a test to ensure the `CupertinoPickerDefaultSelectionOverlay` widget does not crash when rendered in a zero-sized area.

### [PR #179347](https://github.com/flutter/flutter/pull/179347): [skia] Update SkSerialProcs to use new type
* **Author:** [kjlubick](https://github.com/kjlubick)
* **Merged At:** 2025-12-09 06:46 AM
* **Comments:** 1
* This PR updates several Skia serialization callbacks in the engine to use the new `SkSerialReturnType` instead of `sk_sp<SkData>`, aligning with a recent upstream change in the Skia library.

### [PR #179223](https://github.com/flutter/flutter/pull/179223): Enhance documentation for `LocalHistoryEntry` class
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-12-09 02:56 PM
* **Comments:** 2
* This PR enhances the documentation for the `LocalHistoryEntry` class by adding a detailed doc comment and a new code sample that demonstrates how to implement a dismissible panel.

### [PR #179199](https://github.com/flutter/flutter/pull/179199): Fix Scrollbar drag behavior
* **Author:** [RamonFarizel](https://github.com/RamonFarizel)
* **Merged At:** 2025-12-09 01:06 PM
* **Comments:** 1
* This PR fixes an issue where scrollbar drag gestures were incorrectly disabled by updating the logic to check for any scrollable range (`maxScrollExtent > minScrollExtent`) rather than just a positive `maxScrollExtent`.

### [PR #179115](https://github.com/flutter/flutter/pull/179115): Marks Linux_mokey flutter_engine_group_performance to be flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* **Merged At:** 2025-12-08 04:21 PM
* **Comments:** 0
* Marks the `Linux_mokey flutter_engine_group_performance` test as flaky in the CI configuration by adding the `bringup: true` flag.

### [PR #178978](https://github.com/flutter/flutter/pull/178978): Make sure that a CupertinoExpansionTile doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-09 09:57 AM
* **Comments:** 2
* This PR adds a regression test to ensure that the `CupertinoExpansionTile` widget does not crash when it is expanded within a zero-size environment.

### [PR #178955](https://github.com/flutter/flutter/pull/178955): Make sure that a CupertinoActionSheetAction doesn't crash in 0x0 envi…
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-09 10:25 AM
* **Comments:** 3
* This PR fixes a crash in `CupertinoActionSheetAction` that occurred when the widget was rendered in a zero-sized environment and adds a regression test to verify the fix.

### [PR #178748](https://github.com/flutter/flutter/pull/178748): WebParagrah: ellipsis
* **Author:** [Rusino](https://github.com/Rusino)
* **Merged At:** 2025-12-09 02:45 PM
* **Comments:** 0
* This PR implements `ellipsis` and `maxLines` support for the web paragraph implementation by updating the line-breaking logic to replace overflowing text with a correctly styled and positioned ellipsis string for both LTR and RTL layouts.

### [PR #178140](https://github.com/flutter/flutter/pull/178140): Relax assertion for adding semantics locale
* **Author:** [chunhtai](https://github.com/chunhtai)
* **Merged At:** 2025-12-09 01:20 PM
* **Comments:** 0
* Relaxes the requirement for a `Semantics` widget to be a container when setting a `localeForSubtree`, instead preventing nodes with different locales from implicitly merging to simplify locale configuration.

### [PR #177372](https://github.com/flutter/flutter/pull/177372): Marks Mac_arm64_mokey run_release_test to be flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* **Merged At:** 2025-12-08 04:02 PM
* **Comments:** 0
* Marks the `Mac_arm64_mokey run_release_test` as flaky in the CI configuration by adding the `bringup: true` flag.

### [PR #177187](https://github.com/flutter/flutter/pull/177187): Update the doc on Google Testing to reflect the current state
* **Author:** [chingjun](https://github.com/chingjun)
* **Merged At:** 2025-12-09 02:19 PM
* **Comments:** 0
* Updates the "Understanding Google Testing" documentation to more accurately describe the validation pipeline and expand the section on handling common issues and failures.

### [PR #175442](https://github.com/flutter/flutter/pull/175442): [wimp] Initial Impeller on Web implementation.
* **Author:** [eyebrowsoffire](https://github.com/eyebrowsoffire)
* **Merged At:** 2025-12-09 01:41 PM
* **Comments:** 4
* This PR adds an initial implementation of the Impeller rendering backend for Flutter on the web, codenamed "wimp", which uses Impeller's OpenGL ES backend to target WebGL. The skwasm C++ layer has been refactored to support both the existing Skia backend and the new Impeller backend, though this initial version lacks features such as image support, custom shaders, MSAA, and multithreading.


## Closed Issues

### [Issue #179633](https://github.com/flutter/flutter/issues/179633): win-2 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The Windows host `win-2` has lost its external network connection from an attached phone device.

### [Issue #179602](https://github.com/flutter/flutter/issues/179602): mac-37 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The `mac-37` host has lost its external connection from the attached phone device.

### [Issue #179601](https://github.com/flutter/flutter/issues/179601): mac-44 is low on disk space.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The host mac-44 is running low on disk space.

### [Issue #179523](https://github.com/flutter/flutter/issues/179523): mac-37 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The build agent mac-37 has lost its external network connection from an attached phone device.

### [Issue #179507](https://github.com/flutter/flutter/issues/179507): mac-21 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* A phone device connected to the host mac-21 has lost its external network connection.

### [Issue #179450](https://github.com/flutter/flutter/issues/179450): Semantics focus does not move outside viewport when moving up or down
* **Author:** [zemanux](https://github.com/zemanux)
* When using TalkBack on Android, accessibility focus fails to scroll a `SliverList` to the next/previous off-screen item, instead jumping to the `SliverAppBar` or other UI elements.

### [Issue #178863](https://github.com/flutter/flutter/issues/178863): CustomScrollView's Scrollbar is not draggable when using a center key for a empty sliverlist with an anchor of 1.0
* **Author:** [JuubiSnake](https://github.com/JuubiSnake)
* When a `CustomScrollView` uses an `anchor` of `1.0` and its `center` key is assigned to an empty `SliverList`, the scrollbar cannot be dragged with the mouse.

### [Issue #178657](https://github.com/flutter/flutter/issues/178657): Flutter sdk don't work
* **Author:** [Svisc1](https://github.com/Svisc1)
* A user on Windows is unable to run their Flutter app after a memory overflow event, encountering an "Unexpected Kernel SDK Version" error which suggests a corrupted SDK installation or cache.

### [Issue #176933](https://github.com/flutter/flutter/issues/176933): Upgrade 50% of chromium bots to macOS 15.7.1
* **Author:** [vashworth](https://github.com/vashworth)
* This issue tracks an infrastructure task to upgrade approximately 50% of the Chromium bots to macOS 15.7.1 for each architecture and pool, while ensuring at least 20 bots per architecture remain on macOS 15.5 in the try and prod pools to maintain beta and stable channel support.

### [Issue #176451](https://github.com/flutter/flutter/issues/176451): Camera initialization fails when re-running the app without stopping it
* **Author:** [giordy16](https://github.com/giordy16)
* **Reactions:** **5** -- 👍 5
* Re-running the camera example app without stopping it causes a fatal `IllegalArgumentException` on Android, likely due to a state-handling issue introduced after the migration to the `camera_android_camerax` implementation.

### [Issue #49027](https://github.com/flutter/flutter/issues/49027): CustomScrollView systematically initializes the first child of every SliverList/SliverGrid sliver
* **Author:** [deckerst](https://github.com/deckerst)
* **Reactions:** **12** -- 👍 12
* When using a `CustomScrollView` with multiple `SliverList` or `SliverGrid` slivers, the first child of every sliver is unnecessarily initialized on build, even for slivers that are far off-screen and beyond the cache extent.

### [Issue #11660](https://github.com/flutter/flutter/issues/11660): LocalHistoryEntry api docs are sparse
* **Author:** [eseidelGoogle](https://github.com/eseidelGoogle)
* **Reactions:** **2** -- 👍 2
* The API documentation for the `LocalHistoryEntry` class is too brief, causing confusion for developers, and could be improved by adding more detail or a link to a relevant tutorial.


# GitHub PR Report for flutter/genui
## From 2025-12-09

This period saw significant progress in aligning the library with the A2UI specification, focusing on both new features and API refinements. A key addition is the implementation of A2UI catalog negotiation ([PR #576](https://github.com/flutter/genui/pull/576)), a feature that allows a client to declare its supported UI component catalogs so the server can choose a compatible one for rendering. This work addresses the need for clients to declare their UI capabilities as proposed in [Issue #373](https://github.com/flutter/genui/issues/373). To improve the public API, `GenUiConfiguration` was retired to simplify the configuration and always allow create, update, and delete actions ([PR #586](https://github.com/flutter/genui/pull/586)). Finally, for better consistency with the A2UI project, the core `GenUiManager` class was renamed to `A2uiMessageProcessor` across the entire codebase ([PR #587](https://github.com/flutter/genui/pull/587)).

## Merged Pull Requests

### [PR #587](https://github.com/flutter/genui/pull/587): Rename GenUiManager to A2uiMessageProcessor
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* **Merged At:** 2025-12-09 02:06 PM
* **Comments:** 2
* This PR renames the `GenUiManager` class to `A2uiMessageProcessor` to be consistent with A2UI project naming conventions, updating all usages across the library, documentation, and example applications.

### [PR #586](https://github.com/flutter/genui/pull/586): Retire genUI configuration.
* **Author:** [polina-c](https://github.com/polina-c)
* **Merged At:** 2025-12-09 12:25 PM
* **Comments:** 1
* This PR retires the `GenUiConfiguration` and `ActionsConfig` classes, simplifying the API by always allowing create, update, and delete actions rather than making them configurable.

### [PR #576](https://github.com/flutter/genui/pull/576): Implement A2UI catalog negotiation
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* **Merged At:** 2025-12-09 03:15 AM
* **Comments:** 1
* Implements the A2UI catalog negotiation process, allowing a client to declare its supported UI component catalogs so the server can select a compatible one for rendering a given surface. This change updates `GenUiManager` to support a list of catalogs and adds validation in `GenUiSurface` to ensure the requested `catalogId` is supported by the client.


## Closed Issues

### [Issue #373](https://github.com/flutter/genui/issues/373): Implement clientUiCapabilities event from client to agent as part of A2UI
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* This issue proposes implementing a `clientUiCapabilities` event for a client to declare its support for dynamic (inline) and non-dynamic (URI-based) UI catalogs to an agent as part of the A2UI specification.


# GitHub PR Report for flutter/packages
## From 2025-12-09

This cycle focused on improving the developer experience and performing routine maintenance. A notable fix in the `camera_android_camerax` plugin ([#10571](https://github.com/flutter/packages/pull/10571)) addresses a crash that could occur when native Android code attempts to call into Dart after a hot restart. The update to the Pigeon-generated code ensures that a corresponding Dart instance exists before a callback is made, enhancing stability during development. Additionally, dependencies were updated for the `shared_preferences_tool` to resolve deprecations ([#10560](https://github.com/flutter/packages/pull/10560)).

## Merged Pull Requests

### [PR #10571](https://github.com/flutter/packages/pull/10571): [camera_android_camerax] Updates pigeon generation to prevent crash when objects call to Dart after a hot restart
* **Author:** [bparrishMines](https://github.com/bparrishMines)
* **Merged At:** 2025-12-09 10:51 AM
* **Comments:** 3
* This PR updates the Pigeon-generated code in `camera_android_camerax` to prevent a crash that occurs when native objects attempt to call into Dart after a hot restart. The new code adds a check to ensure a corresponding Dart instance exists before making the callback, avoiding a crash when the instance has been cleared.

### [PR #10569](https://github.com/flutter/packages/pull/10569): Redistribute package ownership among Android team
* **Author:** [mboetger](https://github.com/mboetger)
* **Merged At:** 2025-12-09 03:34 PM
* **Comments:** 0
* Updates the `CODEOWNERS` file to transfer ownership of the `quick_actions_android` and `video_player_android` packages to new maintainers.

### [PR #10560](https://github.com/flutter/packages/pull/10560): [shared_preferences_tool] Update dependencies and fix deprecation
* **Author:** [adsonpleal](https://github.com/adsonpleal)
* **Merged At:** 2025-12-08 11:38 PM
* **Comments:** 0
* This PR updates dependencies for the `shared_preferences_tool` and fixes related deprecations, including removing the `requiresRunningApplication` parameter in tests and updating the web bootstrap script.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-12-09

This was a quiet period for the repository, with no pull requests merged and no issues closed. Consequently, there were no updates to the public API or language features during this time.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-12-09

This cycle focused on improving developer experience through key documentation updates and UI enhancements. A significant addition is a new migration guide ([#12636](https://github.com/flutter/website/pull/12636)) to help developers transition from the deprecated `findChildIndexCallback` to the new `findItemIndexCallback` in `ListView.separated` and `SliverList.separated`. The "Supported Platforms" page was also redesigned, replacing the old table with a modern, card-based layout for better readability ([#12772](https://github.com/flutter/website/pull/12772)). To aid in setup and configuration, the documentation now includes a new troubleshooting section for a common PowerShell installation error on Windows ([#12782](https://github.com/flutter/website/pull/12782)) and updated instructions for configuring the Dart MCP Server ([#12802](https://github.com/flutter/website/pull/12802)).

## Merged Pull Requests

### [PR #12802](https://github.com/flutter/website/pull/12802): Update steps for Dart MCP Server & Antigravity
* **Author:** [antfitch](https://github.com/antfitch)
* **Merged At:** 2025-12-09 08:08 AM
* **Comments:** 2
* This documentation change adds instructions for configuring Antigravity with the Dart MCP server by installing it from the server list, which requires a manual edit to add the `--force-roots-fallback` flag.

### [PR #12782](https://github.com/flutter/website/pull/12782): Fix #12781: Add troubleshooting for PowerShell Invoke-Expression error
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2025-12-09 08:12 AM
* **Comments:** 3
* This pull request adds a troubleshooting section to the installation guide to help Windows users resolve a PowerShell `Invoke-Expression` error caused by a missing `SystemRoot` environment variable or restrictive execution policies.

### [PR #12772](https://github.com/flutter/website/pull/12772): Redesign supported platform cards
* **Author:** [schultek](https://github.com/schultek)
* **Merged At:** 2025-12-09 01:51 AM
* **Comments:** 4
* This PR redesigns the "Supported Platforms" documentation page, replacing the previous table layout with a new, more readable card-based design using `PlatformsGrid` and `PlatformCard` components.

### 🔥 [PR #12636](https://github.com/flutter/website/pull/12636): docs: add migration guide for findChildIndexCallback of separated builder
* **Author:** [rkishan516](https://github.com/rkishan516)
* **Merged At:** 2025-12-09 11:11 AM
* **Comments:** 7
* Adds a migration guide for the deprecation of `findChildIndexCallback` in `ListView.separated` and `SliverList.separated`, which is replaced by `findItemIndexCallback` to simplify index lookups by no longer requiring developers to manually account for separator widgets.


## Closed Issues

### [Issue #12801](https://github.com/flutter/website/issues/12801): Dart MCP Server - Antigravity cleanup
* **Author:** [antfitch](https://github.com/antfitch)
* The Antigravity documentation for the Dart MCP server needs to be updated to show users how to manually add the `--force-roots-fallback` argument, as it is not passed by default.

### [Issue #12795](https://github.com/flutter/website/issues/12795): Supported deployment platform card
* **Author:** [parlough](https://github.com/parlough)
* This issue proposes creating a new UI card component to better display information on supported deployment platforms, with a suggested design that includes a deploy button, architecture tags, and icons.

### [Issue #12781](https://github.com/flutter/website/issues/12781): flutter SDK installion
* **Author:** [Marawanemad](https://github.com/Marawanemad)
* A user on Windows is unable to run `flutter doctor` due to a PowerShell error, "Unable to determine engine version," which persists despite trying multiple installation methods and setting the environment path correctly.



## Top Hacker News Stories

### 191 🔥 [In New York City, congestion pricing leads to marked drop in pollution](https://e360.yale.edu/digest/new-york-congestion-pricing-pollution)
* **Author:** [Brajeshwar](https://news.ycombinator.com/user?id=Brajeshwar) | **Comments:** [128](https://news.ycombinator.com/item?id=46218725)

### 11  [Size of Life](https://neal.fun/size-of-life/)
* **Author:** [eatonphil](https://news.ycombinator.com/user?id=eatonphil) | **Comments:** [1](https://news.ycombinator.com/item?id=46219346)

### 110 🔥 [Map of all the buildings in the world](https://gizmodo.com/literally-a-map-showing-all-the-buildings-in-the-world-2000694696)
* **Author:** [dr_dshiv](https://news.ycombinator.com/user?id=dr_dshiv) | **Comments:** [40](https://news.ycombinator.com/item?id=46154220)

### 11  [Writing an Outlook Add-in in Rust](https://tritium.legal/blog/outlook)
* **Author:** [piker](https://news.ycombinator.com/user?id=piker) | **Comments:** [0](https://news.ycombinator.com/item?id=46218538)

### 191 🔥 [Revisiting "Let's Build a Compiler"](https://eli.thegreenplace.net/2025/revisiting-lets-build-a-compiler/)
* **Author:** [cui](https://news.ycombinator.com/user?id=cui) | **Comments:** [31](https://news.ycombinator.com/item?id=46214693)

### 5  [Launch HN: InspectMind (YC W24) – AI agent for reviewing construction drawings]()
* **Author:** [aakashprasad91](https://news.ycombinator.com/user?id=aakashprasad91) | **Comments:** [4](https://news.ycombinator.com/item?id=46219386)
* **InspectMind** is an AI-powered tool that analyzes construction drawings and specifications to find costly errors, conflicts, and omissions before building begins. By cross-checking the full set of PDFs, it helps prevent expensive rework and project delays caused by issues that are often missed during manual review.

### 810 🔥🔥🔥 [Rust in the kernel is no longer experimental](https://lwn.net/Articles/1049831/)
* **Author:** [rascul](https://news.ycombinator.com/user?id=rascul) | **Comments:** [576](https://news.ycombinator.com/item?id=46213585)

### 627 🔥🔥🔥 [PeerTube is recognized as a digital public good by Digital Public Goods Alliance](https://www.digitalpublicgoods.net/r/peertube)
* **Author:** [fsflover](https://news.ycombinator.com/user?id=fsflover) | **Comments:** [130](https://news.ycombinator.com/item?id=46207464)

### 12  [Volcanic eruptions set off a chain of events that brought Black Death to Europe](https://www.cam.ac.uk/stories/volcanoes-black-death)
* **Author:** [gmays](https://news.ycombinator.com/user?id=gmays) | **Comments:** [1](https://news.ycombinator.com/item?id=46170707)

### 122 🔥 [Amazon EC2 M9g Instances](https://aws.amazon.com/ec2/instance-types/m9g/)
* **Author:** [AlexClickHouse](https://news.ycombinator.com/user?id=AlexClickHouse) | **Comments:** [47](https://news.ycombinator.com/item?id=46171008)

### 123 🔥 [Cloth Simulation](https://cloth.mikail-khan.com/)
* **Author:** [adamch](https://news.ycombinator.com/user?id=adamch) | **Comments:** [24](https://news.ycombinator.com/item?id=46127981)

### 92  [Putting email in its place with Emacs and Mu4e](https://eamonnsullivan.co.uk/posts-output/email-setup/2025-12-3-putting-email-in-its-place/)
* **Author:** [eamonnsullivan](https://news.ycombinator.com/user?id=eamonnsullivan) | **Comments:** [31](https://news.ycombinator.com/item?id=46140579)

### 238 🔥 [When a video codec wins an Emmy](https://blog.mozilla.org/en/mozilla/av1-video-codec-wins-emmy/)
* **Author:** [todsacerdoti](https://news.ycombinator.com/user?id=todsacerdoti) | **Comments:** [54](https://news.ycombinator.com/item?id=46164197)

### 696 🔥🔥🔥 [Bruno Simon – 3D Portfolio](https://bruno-simon.com/)
* **Author:** [razzmataks](https://news.ycombinator.com/user?id=razzmataks) | **Comments:** [164](https://news.ycombinator.com/item?id=46206531)

### 694 🔥🔥🔥 [Mistral releases Devstral2 and Mistral Vibe CLI](https://mistral.ai/news/devstral-2-vibe-cli)
* **Author:** [pember](https://news.ycombinator.com/user?id=pember) | **Comments:** [319](https://news.ycombinator.com/item?id=46205437)

### 581 🔥🔥 [If you're going to vibe code, why not do it in C?](https://stephenramsay.net/posts/vibe-coding.html)
* **Author:** [sramsay](https://news.ycombinator.com/user?id=sramsay) | **Comments:** [540](https://news.ycombinator.com/item?id=46207505)

### 346 🔥🔥 [Django: what’s new in 6.0](https://adamj.eu/tech/2025/12/03/django-whats-new-6.0/)
* **Author:** [rbanffy](https://news.ycombinator.com/user?id=rbanffy) | **Comments:** [116](https://news.ycombinator.com/item?id=46210240)

### 3163 🔥🔥🔥 [Show HN: Gemini Pro 3 hallucinates the HN front page 10 years from now](https://dosaygo-studio.github.io/hn-front-page-2035/news)
* **Author:** [keepamovin](https://news.ycombinator.com/user?id=keepamovin) | **Comments:** [902](https://news.ycombinator.com/item?id=46205632)

### 36  [Running Linux on a RiscPC – why is it so hard?](https://thejpster.org.uk/blog/blog-2025-12-02/)
* **Author:** [zdw](https://news.ycombinator.com/user?id=zdw) | **Comments:** [10](https://news.ycombinator.com/item?id=46128523)

### 557 🔥🔥 [Pebble Index 01 – External memory for your brain](https://repebble.com/blog/meet-pebble-index-01-external-memory-for-your-brain)
* **Author:** [freshrap6](https://news.ycombinator.com/user?id=freshrap6) | **Comments:** [534](https://news.ycombinator.com/item?id=46205661)

### 266 🔥🔥 [Italy's longest-serving barista reflects on six decades behind the counter](https://www.reuters.com/lifestyle/culture-current/anna-possi-six-decades-behind-counter-italys-bar-centrale-2025-11-20/)
* **Author:** [NaOH](https://news.ycombinator.com/user?id=NaOH) | **Comments:** [151](https://news.ycombinator.com/item?id=46155740)

### 24  [The New Kindle Scribes Are Great, but Not Great Enough](https://www.wired.com/review/kindle-scribe-colorsoft-2025/)
* **Author:** [thm](https://news.ycombinator.com/user?id=thm) | **Comments:** [32](https://news.ycombinator.com/item?id=46218202)

### 757 🔥🔥🔥 [10 Years of Let's Encrypt](https://letsencrypt.org/2025/12/09/10-years)
* **Author:** [SGran](https://news.ycombinator.com/user?id=SGran) | **Comments:** [315](https://news.ycombinator.com/item?id=46208962)

### 273 🔥🔥 [Donating the Model Context Protocol and establishing the Agentic AI Foundation](https://www.anthropic.com/news/donating-the-model-context-protocol-and-establishing-of-the-agentic-ai-foundation)
* **Author:** [meetpateltech](https://news.ycombinator.com/user?id=meetpateltech) | **Comments:** [123](https://news.ycombinator.com/item?id=46207425)

### 219 🔥 [So you want to speak at software conferences?](https://dylanbeattie.net/2025/12/08/so-you-want-to-speak-at-software-conferences.html)
* **Author:** [speckx](https://news.ycombinator.com/user?id=speckx) | **Comments:** [113](https://news.ycombinator.com/item?id=46208773)



