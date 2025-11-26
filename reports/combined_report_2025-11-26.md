# Overall Summary
Here are the highlights from the merged pull requests and closed issues.

**🔥🔥🔥 [Issue #53402](https://github.com/dart-lang/sdk/issues/53402) (dart-lang/sdk): ☂️ New analyzer plugin system**
  * **Reactions:** **124** -- 👍 65 ❤️ 29 🚀 16 👀 14
  * This tracking issue outlines the tasks for delivering a new analyzer plugin system, covering the work from the initial tech preview and MVP to the deprecation of the legacy system and future product excellence goals.

**🔥 [PR #10517](https://github.com/flutter/packages/pull/10517) (flutter/packages): [path_provider] Revert iOS/macOS to plugin-based implementation**
  * **Comments:** 2
  * This PR reverts the iOS and macOS implementation of `path_provider_foundation` from FFI back to a plugin-based approach to resolve production build issues and work around upstream dependency blockers present in the FFI version.

**🔥 [PR #177404](https://github.com/flutter/flutter/pull/177404) (flutter/flutter): Add tooltip windows to the windowing API alongside the window positioning logic**
  * **Comments:** 1
  * This PR adds `TooltipWindow` to the windowing API and introduces a `WindowPositioner` class to manage its placement. The `WindowPositioner` provides flexible logic for positioning windows relative to an anchor, with automatic adjustments such as sliding or flipping to ensure they remain on-screen.

**[Issue #178529](https://github.com/flutter/flutter/issues/178529) (flutter/flutter): Flutter 3.38.1 - AppLocalizations are getting deleted every time on web in debug mode**
  * **Reactions:** **18** -- 👍 18
  * After upgrading to Flutter 3.38.1, automatically generated `AppLocalizations` files are deleted every time the web app is run in debug mode.

**[PR #178680](https://github.com/flutter/flutter/pull/178680) (flutter/flutter): Remove semantics geometry shortcircuit**
  * **Comments:** 2
  * This PR removes a faulty optimization that skipped semantics geometry updates when a node's position changed, such as during scrolling. This fix ensures accessibility information is correctly updated for widgets that scroll into view, resolving an issue where they would remain hidden from assistive technologies.

**[Issue #62089](https://github.com/dart-lang/sdk/issues/62089) (dart-lang/sdk): Uri.replace() gives unexpected result**
  * Calling `Uri.replace()` on a relative URI that starts with a slash causes the leading slash to be unexpectedly removed from the path in the resulting URI.

**[Issue #62001](https://github.com/dart-lang/sdk/issues/62001) (dart-lang/sdk): Dot shorthand syntax fails when combining EdgeInsets with +**
  * Using Dart's dot shorthand syntax for constructors (e.g., `.symmetric`) fails to compile when combined with the `+` operator for `EdgeInsets`, as the compiler loses the type context.

**[PR #178163](https://github.com/flutter/flutter/pull/178163) (flutter/flutter): Add an assert message when OverlayEntry.remove is called twice**
  * **Comments:** 0
  * This PR adds a descriptive assertion message to `OverlayEntry.remove` to help developers understand the error that occurs when the method is called more than once on the same entry.

**[PR #12744](https://github.com/flutter/website/pull/12744) (flutter/website): Adding slivers to the glossary**
  * **Comments:** 3
  * Adds an entry for 'Sliver' to the project glossary, defining it as a customizable and lazily-built portion of a scrollable area and including links to relevant documentation, articles, and API references.

**[PR #2823](https://github.com/dart-lang/native/pull/2823) (dart-lang/native): [hooks_runner] Don't time out on missing `output.json`**
  * **Comments:** 3
  * This PR fixes a bug in the `hooks_runner` where a build hook failing to produce an `output.json` file would cause a timeout. The build now fails immediately with a clear error message in this scenario.


# GitHub PR Report for dart-lang/ai
## From 2025-11-25

This was a quiet period for the repository, with no new pull requests merged or issues closed. As a result, there were no direct changes to the codebase, public API, or language features during this time.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2025-11-25

While no pull requests were merged during this period, significant progress was marked by the closure of numerous issues, most notably the tracking issue for a **new analyzer plugin system** ([#53402](https://github.com/dart-lang/sdk/issues/53402)), which received over 100 community reactions. This milestone coincided with the resolution of many proposals for new lints and improved diagnostics, including a discussion to refine the `discarded_futures` lint ([#59887](https://github.com/dart-lang/sdk/issues/59887)), a request for an IDE quick-fix to add all missing required parameters ([#44224](https://github.com/dart-lang/sdk/issues/44224)), and a new lint to warn against redundant lint rule declarations in analysis options ([#57969](https://github.com/dart-lang/sdk/issues/57969)). Additionally, several issues related to the core API and language features were addressed, such as a bug where `Uri.replace()` produced an unexpected result ([#62089](https://github.com/dart-lang/sdk/issues/62089)), and a failure in the dot shorthand constructor syntax when used with operators ([#62001](https://github.com/dart-lang/sdk/issues/62001)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62091](https://github.com/dart-lang/sdk/issues/62091): Feature Request: Support cross-compiling Dart native executables for Linux (x86_64, arm64, armhf)
* **Author:** [stephane-archer](https://github.com/stephane-archer)
* This feature request asks for the ability to cross-compile Dart native executables for different Linux architectures (x86_64, arm64, armhf) from a host machine, similar to the first-class support offered by languages like Go and Rust.

### [Issue #62089](https://github.com/dart-lang/sdk/issues/62089): Uri.replace() gives unexpected result
* **Author:** [markbeij](https://github.com/markbeij)
* Calling `Uri.replace()` on a relative URI that starts with a slash causes the leading slash to be unexpectedly removed from the path in the resulting URI.

### [Issue #62088](https://github.com/dart-lang/sdk/issues/62088): [linter] Missing `main` under `_test.dart` file
* **Author:** [FMorschel](https://github.com/FMorschel)
* **Reactions:** **2** -- 👍 2
* This issue proposes a new linter rule to ensure `_test.dart` files contain a `main` function, which prevents test loading failures when it is accidentally omitted.

### [Issue #62086](https://github.com/dart-lang/sdk/issues/62086): Exception: lookupResolvedPackageUris result contained more results than the request
* **Author:** [mujeeb-coding](https://github.com/mujeeb-coding)
* A user reports their application exits after the debugger fails to connect, throwing an `Exception: lookupResolvedPackageUris result contained more results than the request`, which the error log links to existing issue #52632.

### [Issue #62082](https://github.com/dart-lang/sdk/issues/62082): Some unhandled exceptions sent to LSP client via `showMessage` usages are not written to the instrumentation log with stack traces
* **Author:** [FMorschel](https://github.com/FMorschel)
* Some unhandled exceptions sent to the LSP client via `showMessage` are not being written to the instrumentation log with their full stack traces, making them difficult to debug.

### [Issue #62076](https://github.com/dart-lang/sdk/issues/62076): Support calling `Dart_DeletePersistentHandle` from `NativeFinalizer`
* **Author:** [dcharkes](https://github.com/dcharkes)
* This issue requests support for calling `Dart_DeletePersistentHandle` from within a `NativeFinalizer` to correctly manage memory in scenarios where native code holds a persistent handle to a Dart object.

### [Issue #62001](https://github.com/dart-lang/sdk/issues/62001): Dot shorthand syntax fails when combining EdgeInsets with +
* **Author:** [RahmiTufanoglu](https://github.com/RahmiTufanoglu)
* **Reactions:** **1** -- 👍 1
* Using Dart's dot shorthand syntax for constructors (e.g., `.symmetric`) fails to compile when combined with the `+` operator for `EdgeInsets`, as the compiler loses the type context, even though the equivalent long-form syntax works correctly.

### [Issue #61981](https://github.com/dart-lang/sdk/issues/61981): Process::Exec - (null) on GitBash on Dart SDK 3.10.0
* **Author:** [projektorius96](https://github.com/projektorius96)
* **Reactions:** **3** -- 👍 3
* On Dart SDK 3.10.0, `Process::Exec` returns `(null)` when run on GitBash, an issue that was originally reported in the Flutter repository.

### [Issue #61877](https://github.com/dart-lang/sdk/issues/61877): Unused import doesn't handle export
* **Author:** [johnniwinther](https://github.com/johnniwinther)
* The unused import warning fails to flag a redundant import when a declaration is imported from both its original library and a separate, re-exporting library.

### [Issue #61857](https://github.com/dart-lang/sdk/issues/61857): `dart run` or `flutter pub run` ?
* **Author:** [dickermoshe](https://github.com/dickermoshe)
* Users in a Flutter project are receiving contradictory messages, as `dart run` fails and directs them to use `flutter pub`, while `flutter pub run` works but displays a deprecation warning recommending `dart run`.

### [Issue #59887](https://github.com/dart-lang/sdk/issues/59887): `discarded_futures` lint discussion
* **Author:** [FMorschel](https://github.com/FMorschel)
* **Reactions:** **4** -- 👍 2 👀 2
* This issue proposes changing the `discarded_futures` lint to behave like `unawaited_futures` but for synchronous code, only flagging a `Future` when it is used in a context that does not explicitly expect one, which would resolve numerous false positives.

### [Issue #55209](https://github.com/dart-lang/sdk/issues/55209): [DAP] Only kill positive pids on disconnection
* **Author:** [elliette](https://github.com/elliette)
* On Linux, the Debug Adapter Protocol's disconnection logic can kill all of a user's running processes because it attempts to terminate a process with a default PID of -1, a special value that signals to kill all possible processes.

### [Issue #53402](https://github.com/dart-lang/sdk/issues/53402): ☂️ New analyzer plugin system
* **Author:** [srawlins](https://github.com/srawlins)
* **Reactions:** **124** -- 👍 65 ❤️ 29 🚀 16 👀 14
* This tracking issue outlines the tasks for delivering a new analyzer plugin system, covering the work from the initial tech preview and MVP to the deprecation of the legacy system and future product excellence goals.

### [Issue #50983](https://github.com/dart-lang/sdk/issues/50983): Confusing error when a type parameter shadows a type
* **Author:** [gisborne](https://github.com/gisborne)
* The analyzer produces confusing `invalid_override` and `return_of_invalid_type` errors when a generic type parameter on a class shadows a built-in type like `String`.

### [Issue #49445](https://github.com/dart-lang/sdk/issues/49445): Gather analysis server crash data and performance analytics from external users
* **Author:** [srawlins](https://github.com/srawlins)
* **Reactions:** **1** -- 👍 1

### [Issue #45545](https://github.com/dart-lang/sdk/issues/45545): Highlight parameters that are their default value differently
* **Author:** [jacob314](https://github.com/jacob314)
* This issue proposes adding a new syntax highlighting tag in the analyzer for parameters that are set to their default value, allowing IDEs to visually de-emphasize them as a more reliable alternative to the existing `avoid_redundant_argument_values` lint which has too many false positives.

### [Issue #44907](https://github.com/dart-lang/sdk/issues/44907): Add integration tests to ensure that error context data is being sent to clients (both LSP and legacy protocol)
* **Author:** [stereotype441](https://github.com/stereotype441)
* This issue proposes adding integration tests to verify that new analyzer context messages for type promotion failures are successfully delivered to clients over both the LSP and legacy protocols.

### [Issue #44224](https://github.com/dart-lang/sdk/issues/44224): [Feature Request] add all required params option
* **Author:** [ghost](https://github.com/ghost)
* **Reactions:** **5** -- 👍 5
* This feature request proposes an IDE quick-fix option to add all missing required parameters to a method call in a single action, as the current process of adding them individually is inefficient for methods with many parameters.

### [Issue #58257](https://github.com/dart-lang/sdk/issues/58257): @mustCall annotation for instance methods
* **Author:** [benfgit](https://github.com/benfgit)
* **Reactions:** **1** -- 👍 1
* This issue proposes a `@mustCall` annotation to ensure that a specific instance method, such as `dispose()`, is called at least once during an object's lifecycle to help prevent resource leaks.

### [Issue #58251](https://github.com/dart-lang/sdk/issues/58251): Linters to make applications more accessible
* **Author:** [csantacruza](https://github.com/csantacruza)
* **Reactions:** **1** -- 👍 1
* This issue proposes adding a new set of linter rules based on WCAG 2.1 guidelines to improve application accessibility, with specific checks for font size, semantic labels, color contrast, and button padding.

### [Issue #58125](https://github.com/dart-lang/sdk/issues/58125): Calling a super constructor with an @required parameter that is not defaulted
* **Author:** [dnfield](https://github.com/dnfield)
* **Reactions:** **1** -- 👍 1
* This issue proposes a new lint to warn when a subclass constructor has an optional parameter that is passed to a superclass constructor where the parameter is marked as `@required`, which can lead to a null value being passed in violation of the superclass's contract.

### [Issue #58110](https://github.com/dart-lang/sdk/issues/58110): Boolean literal in ternary result
* **Author:** [camsteffen](https://github.com/camsteffen)
* **Reactions:** **1** -- 👍 1
* This issue proposes a new lint rule to flag ternary expressions that use a boolean literal (`true` or `false`) as a result, since these expressions can be simplified into more readable logical operations.

### [Issue #58093](https://github.com/dart-lang/sdk/issues/58093): [new lint]: `avoid_types_as_type_parameter_names`
* **Author:** [pq](https://github.com/pq)
* This issue proposes a new lint, `avoid_types_as_type_parameter_names`, to warn against using built-in type names as the names for generic type parameters.

### [Issue #58017](https://github.com/dart-lang/sdk/issues/58017): Lint idea: upcast function literals by parameter type
* **Author:** [MichaelRFairhurst](https://github.com/MichaelRFairhurst)
* This issue proposes a new lint rule to detect when a function literal's parameter types are less specific than what the context allows, encouraging more type-safe code by having developers provide explicit types.

### [Issue #58012](https://github.com/dart-lang/sdk/issues/58012): Flag comparisons between non-nullable booleans and literals 
* **Author:** [jamesderlin](https://github.com/jamesderlin)
* **Reactions:** **1** -- 👍 1
* This issue proposes a new lint to flag redundant comparisons between non-nullable `bool` variables and boolean literals, suggesting simplification for improved readability (e.g., changing `someBool == true` to `someBool`).

### [Issue #57969](https://github.com/dart-lang/sdk/issues/57969): lint to flag duplicated lint rules
* **Author:** [pq](https://github.com/pq)
* **Reactions:** **3** -- 👍 3
* This issue proposes a new lint rule to flag duplicated or redundant lint rules in the analysis options file, which can occur when a user manually enables a rule that is also provided by an included package like `pedantic`.

### [Issue #57965](https://github.com/dart-lang/sdk/issues/57965): Add a unnecessary_null_aware_access_operators
* **Author:** [a14n](https://github.com/a14n)
* This issue proposes a new lint, `unnecessary_null_aware_access_operators`, to flag instances where the null-aware access operator (`?.`) is used on a non-nullable receiver, which can be safely replaced with the standard member access operator (`.`).

### [Issue #35451](https://github.com/dart-lang/sdk/issues/35451): Analysis server response to same request (getRefactoring) twice
* **Author:** [DanTup](https://github.com/DanTup)
* If a `getRefactoring` request fails with an error, sending a subsequent request for the same refactor causes the analysis server to incorrectly send a second "request cancelled" error for the original, already-completed request.

### [Issue #57801](https://github.com/dart-lang/sdk/issues/57801): Add analyzer info when using uninitialized variables
* **Author:** [ghost](https://github.com/ghost)
* **Reactions:** **1** -- 👍 1
* This issue requests that the Dart analyzer provide a static warning when a variable is used before being initialized to help developers avoid runtime null errors.

### [Issue #57799](https://github.com/dart-lang/sdk/issues/57799): Avoid contravariant function fields
* **Author:** [matanlurey](https://github.com/matanlurey)
* **Reactions:** **1** -- 👍 1
* This issue proposes a new lint, `avoid_contravariant_function_fields`, to flag public function fields with generic type parameters in contravariant positions, which can cause runtime type errors when a specialized generic class is upcast.


# GitHub PR Report for dart-lang/language
## From 2025-11-25

During this period, there were no pull requests merged or issues closed, resulting in no changes to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2025-11-25

This period saw significant activity around the `objective_c` package and its build process. The release of `objective_c` v9.2.0 in [PR #2815](https://github.com/dart-lang/native/pull/2815) improved the accuracy of Clang target triples for Apple platforms. However, this release introduced a regression reported in [Issue #2824](https://github.com/dart-lang/native/issues/2824), causing asset builds to fail. A fix for this build hook crash was quickly merged in [PR #2825](https://github.com/dart-lang/native/pull/2825), leading to the preparation of the v9.2.1 patch release in [PR #2826](https://github.com/dart-lang/native/pull/2826). The underlying build tooling was also made more robust; [PR #2823](https://github.com/dart-lang/native/pull/2823) updated the `hooks_runner` to fail immediately with a clear error message, preventing timeouts when build hooks fail. Additionally, a notable feature request for Swift Package Manager support was closed in [Issue #2817](https://github.com/dart-lang/native/issues/2817), signaling community interest in modernizing the package's dependency management.

## Merged Pull Requests

### [PR #2826](https://github.com/dart-lang/native/pull/2826): [objective_c] Prepare to publish v9.2.1
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-25 03:22 PM
* **Comments:** 2
* Prepares for the release of version 9.2.1 of the `objective_c` package by bumping the version number and updating the minimum required Dart SDK to 3.10.0.

### [PR #2825](https://github.com/dart-lang/native/pull/2825): [objective_c] Fix build hook
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-11-25 02:23 PM
* **Comments:** 2
* This PR fixes a bug in the `objective_c` build hook that incorrectly tried to access the code configuration when it was not provided, adding a check to exit early if code assets are not being built.

### [PR #2823](https://github.com/dart-lang/native/pull/2823): [hooks_runner] Don't time out on missing `output.json`
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-11-25 04:52 AM
* **Comments:** 3
* This PR fixes a bug in the `hooks_runner` where a build hook failing to produce an `output.json` file would be misinterpreted as a file lock failure, causing a timeout. The build now fails immediately with a clear error message in this scenario.

### [PR #2815](https://github.com/dart-lang/native/pull/2815): [objective_c] Publish v9.2.0
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-24 04:05 PM
* **Comments:** 2
* Publishes version 9.2.0 of the `objective_c` package, which improves the build hook to generate more accurate Clang target triples for Apple platforms by differentiating between device and simulator SDKs for iOS.


## Closed Issues

### [Issue #2824](https://github.com/dart-lang/native/issues/2824): Asset build fails with "Null check operator used on a null value" in CodeConfig._fromJson
* **Author:** [SherpaMiguel](https://github.com/SherpaMiguel)
* The asset build for `objective_c` v9.2.0 fails with a "Null check operator used on a null value" error in `CodeConfig._fromJson` during the build hook's configuration parsing, preventing the project from building.

### [Issue #2817](https://github.com/dart-lang/native/issues/2817): [objective_c] Implement Swift Package Manager support for the objective_c plugin
* **Author:** [electricbolt](https://github.com/electricbolt)
* This issue requests adding Swift Package Manager support for the objective_c plugin, as the current dependency manager, Cocoapods, is deprecated.


# GitHub PR Report for flutter/ai
## From 2025-11-25

During this period, there were no merged pull requests or closed issues, resulting in no changes to the repository's codebase or public API.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-11-25

During this period, there were no new features, bug fixes, or other code changes, as no pull requests were merged and no issues were closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-11-25

This period saw significant work on the framework's accessibility features and windowing APIs. An effort to add `hitTestBehavior` support to the `Semantics` widget ([#178817](https://github.com/flutter/flutter/pull/178817)) was quickly reverted ([#179100](https://github.com/flutter/flutter/pull/179100)) after it caused a regression with platform views. On a positive note for accessibility, a faulty optimization was removed in [#178680](https://github.com/flutter/flutter/pull/178680), ensuring that semantics information is correctly updated for widgets in scrollable areas and resolving a key issue where screen readers could not interact with all items ([#173097](https://github.com/flutter/flutter/issues/173097)). For desktop, the windowing API was expanded to include support for `TooltipWindow` alongside a new `WindowPositioner` class for managing its placement relative to an anchor ([#177404](https://github.com/flutter/flutter/pull/177404)). Developer experience was also improved by adding a descriptive assertion message when `OverlayEntry.remove` is called more than once ([#178163](https://github.com/flutter/flutter/pull/178163)), addressing a common source of confusion ([#145466](https://github.com/flutter/flutter/issues/145466)). Finally, several foundational changes landed, including an update to the Dart SDK constraint to version 3.9 ([#179041](https://github.com/flutter/flutter/pull/179041)) and fixes for platform-specific build issues like dynamically setting the `MinimumOSVersion` on iOS ([#178253](https://github.com/flutter/flutter/pull/178253)).

## Merged Pull Requests

### [PR #179100](https://github.com/flutter/flutter/pull/179100): Reverts "Add framework-side hitTestBehavior support to Semantics (#178817)"
* **Author:** [auto-submit[bot]](https://github.com/apps/auto-submit)
* **Merged At:** 2025-11-25 03:20 PM
* **Comments:** 2
* This PR reverts the addition of framework-side `hitTestBehavior` support to Semantics, which was landed during a tree closure and caused a regression that blocked pointer events to platform views.

### [PR #179093](https://github.com/flutter/flutter/pull/179093): Bumpt the engine version after the dart version change
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2025-11-25 10:16 AM
* **Comments:** 2
* This PR updates the pinned engine version to a new commit following a recent change to the Dart version.

### [PR #179054](https://github.com/flutter/flutter/pull/179054): Manual Dart SDK roll to 3.11.0-169.0.dev
* **Author:** [mraleph](https://github.com/mraleph)
* **Merged At:** 2025-11-24 05:21 PM
* **Comments:** 1
* This PR manually rolls the Dart SDK to version 3.11.0-169.0.dev to accommodate the migration of the `package:record_use` into the native monorepo.

### [PR #179053](https://github.com/flutter/flutter/pull/179053): FlutterWindowsView::SendWindowMetrics now reliably sends the display_id
* **Author:** [mattkae](https://github.com/mattkae)
* **Merged At:** 2025-11-25 07:06 AM
* **Comments:** 1
* This PR fixes an issue on Windows where the `display_id` was not being set in the `SendWindowMetrics` call. This change ensures the correct display ID is retrieved and included in the window metrics event, preventing it from incorrectly defaulting to zero.

### [PR #179041](https://github.com/flutter/flutter/pull/179041): Bump Dart to 3.9
* **Author:** [Piinks](https://github.com/Piinks)
* **Merged At:** 2025-11-24 05:21 PM
* **Comments:** 0
* This change bumps the Dart SDK version constraint to 3.9 across the entire Flutter repository.

### [PR #178817](https://github.com/flutter/flutter/pull/178817): Add framework-side hitTestBehavior support to Semantics
* **Author:** [flutter-zl](https://github.com/flutter-zl)
* **Merged At:** 2025-11-25 10:46 AM
* **Comments:** 4
* Adds `hitTestBehavior` support to the Semantics framework to control how nodes handle pointer events. This is used to make Dialog and ModalBottomSheet content opaque, preventing accidental dismissals, while ensuring platform views under modal routes remain interactive.

### [PR #178680](https://github.com/flutter/flutter/pull/178680): Remove semantics geometry shortcircuit
* **Author:** [LongCatIsLooong](https://github.com/LongCatIsLooong)
* **Merged At:** 2025-11-25 02:50 AM
* **Comments:** 2
* This PR removes a faulty optimization that skipped semantics geometry updates when a node's position changed, such as during scrolling. This fix ensures accessibility information is correctly updated for widgets that scroll into view, resolving an issue where they would remain hidden from assistive technologies.

### [PR #178253](https://github.com/flutter/flutter/pull/178253): Dynamically set MinimumOSVersion in App.framework
* **Author:** [okorohelijah](https://github.com/okorohelijah)
* **Merged At:** 2025-11-24 08:08 PM
* **Comments:** 2
* Dynamically sets the `MinimumOSVersion` in the iOS `App.framework/Info.plist` during the build process, ensuring it aligns with the compilation target and preventing mismatches that could cause App Store submission warnings.

### [PR #178163](https://github.com/flutter/flutter/pull/178163): Add an assert message when OverlayEntry.remove is called twice
* **Author:** [bleroux](https://github.com/bleroux)
* **Merged At:** 2025-11-25 01:02 AM
* **Comments:** 0
* This PR adds a descriptive assertion message to `OverlayEntry.remove` to help developers understand the error that occurs when the method is called more than once on the same entry.

### [PR #177404](https://github.com/flutter/flutter/pull/177404): Add tooltip windows to the windowing API alongside the window positioning logic
* **Author:** [mattkae](https://github.com/mattkae)
* **Merged At:** 2025-11-25 07:58 AM
* **Comments:** 1
* This PR adds `TooltipWindow` to the windowing API and introduces a `WindowPositioner` class to manage its placement. The `WindowPositioner` provides flexible logic for positioning windows relative to an anchor, with automatic adjustments such as sliding or flipping to ensure they remain on-screen, although platform-specific implementations are not yet included.

### [PR #174865](https://github.com/flutter/flutter/pull/174865): Marks Linux_mokey complex_layout__start_up to be unflaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* **Merged At:** 2025-11-24 05:36 PM
* **Comments:** 1
* Removes the `bringup: true` flag from the `Linux_mokey complex_layout__start_up` test in the CI configuration, indicating that the test is now considered stable.

### [PR #174864](https://github.com/flutter/flutter/pull/174864): Marks Linux build_android_host_app_with_module_aar to be unflaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* **Merged At:** 2025-11-24 05:49 PM
* **Comments:** 1
* Removes the `bringup: true` flag from the `Linux build_android_host_app_with_module_aar` CI test, indicating that the test is now considered stable after a period of successful runs.


## Closed Issues

### [Issue #179101](https://github.com/flutter/flutter/issues/179101): mac-10 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The host `mac-10` has lost its external network connection from an attached phone device.

### [Issue #179098](https://github.com/flutter/flutter/issues/179098): Linux analyze formatting does not agree with local formating
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* The `dart format` command on the CI server is failing due to a formatting discrepancy, but running the command locally reports no changes, and applying the patch suggested by the CI results in a "corrupt patch" error.

### [Issue #179096](https://github.com/flutter/flutter/issues/179096): Migrate samples from Color.withOpacity(...) to Color.withValues(opacity: ...)
* **Author:** [loic-sharma](https://github.com/loic-sharma)

### [Issue #179090](https://github.com/flutter/flutter/issues/179090): linux-25 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The host `linux-25` has lost its external connection from an attached phone device.

### [Issue #179027](https://github.com/flutter/flutter/issues/179027): win-5 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The host machine `win-5` has lost its external network connection, as observed from a connected phone device.

### [Issue #179021](https://github.com/flutter/flutter/issues/179021): [tool_crash] ProcessException: The system cannot find the file specified. Command: .\Google\Chrome\Application\chrome.exe, OS error code: 2 #179021
* **Author:** [silent-flamingo](https://github.com/silent-flamingo)
* The Flutter tool crashes with a `ProcessException` when attempting to open DevTools (by pressing 'v' during `flutter run`) because it cannot find the Chrome executable at the specified path.

### [Issue #179011](https://github.com/flutter/flutter/issues/179011): Naming a variable "override" breaks the localization in l10n
* **Author:** [RidSib](https://github.com/RidSib)
* Defining a localization key named "override" in a `.arb` file causes a conflict with the `@override` annotation in the generated Dart localization files because "override" is a reserved keyword.

### [Issue #178997](https://github.com/flutter/flutter/issues/178997): Dart 3.10 and 3.10.1 Dot shorthands Breaks Named Parameter Suggestions (e.g., .symmetric()) in stable 3.38.3 but works in 3.38.2 & latest master.
* **Author:** [bharat314](https://github.com/bharat314)
* **Reactions:** **2** -- 👍 2
* A regression in Flutter stable 3.38.3 (using Dart 3.10.x) breaks named parameter suggestions for dot shorthands like `.symmetric()`, a feature that worked correctly in version 3.38.2 and is already fixed on the master branch.

### [Issue #178982](https://github.com/flutter/flutter/issues/178982): Windows WidgetsBinding displays getter throws exception after update from 3.35.7 to 3.38.2 after calling SetWindowPos
* **Author:** [krll-kov](https://github.com/krll-kov)
* On Windows, a failed assertion is thrown when accessing the `FlutterView.display` getter after resizing the application window using the native `SetWindowPos` API, in what appears to be a regression introduced in a recent Flutter update.

### [Issue #178925](https://github.com/flutter/flutter/issues/178925): exception on flutter analyze
* **Author:** [dfrobese](https://github.com/dfrobese)
* Running `flutter analyze` on the master channel causes the analysis server to crash with a `LibraryCycleLinkException` and exit code 255.

### [Issue #178915](https://github.com/flutter/flutter/issues/178915): Failed to get ApplicationDocumentsDirectory: Invalid argument(s): Couldn't resolve native function 'DOBJC_initializeApi' in 'objective_c.framework/ objective_c'
* **Author:** [dmitry-kotorov](https://github.com/dmitry-kotorov)
* **Reactions:** **2** -- 👍 2
* A crash occurs on iOS release builds running on physical devices when calling `getApplicationDocumentsDirectory()` with `path_provider_foundation` v2.5.0, because the native FFI function `DOBJC_initializeApi` cannot be resolved.

### [Issue #178836](https://github.com/flutter/flutter/issues/178836): [google_maps_flutter_android] Heatmap Deprecation is blocking Dependabot
* **Author:** [mboetger](https://github.com/mboetger)
* A Dependabot update is blocked because the `google_maps_flutter_android` package is using a deprecated heatmap API, which causes a build failure since warnings are being treated as errors.

### [Issue #178806](https://github.com/flutter/flutter/issues/178806): [packages] Switch podspec linting to `--quick`
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* This issue proposes switching podspec linting to use the `--quick` flag to remove a redundant and problematic code analysis step that duplicates existing checks and blocks development by requiring a published Flutter pod to use new APIs.

### [Issue #178602](https://github.com/flutter/flutter/issues/178602): Flutter 3.38.1: Failed to Verify when Submitting to App Store Connect
* **Author:** [KiddoV](https://github.com/KiddoV)
* After upgrading to Flutter 3.38.1, users are experiencing a validation failure when submitting to App Store Connect due to an error with the binary's `LC_ENCRYPTION_INFO` load command.

### [Issue #178546](https://github.com/flutter/flutter/issues/178546): Process::Exec - (null) on GitBash on Flutter 3.38.1
* **Author:** [toshiossada](https://github.com/toshiossada)
* **Reactions:** **2** -- 👍 2
* After upgrading to Flutter 3.38.1, running `flutter run` in a Git Bash terminal on Windows results in a `Process::Exec - (null)` error.

### [Issue #178529](https://github.com/flutter/flutter/issues/178529): Flutter 3.38.1 - AppLocalizations are getting deleted every time on web in debug mode
* **Author:** [vasilevzhivko](https://github.com/vasilevzhivko)
* **Reactions:** **18** -- 👍 18
* After upgrading to Flutter 3.38.1, automatically generated `AppLocalizations` files are deleted every time the web app is run in debug mode.

### [Issue #177981](https://github.com/flutter/flutter/issues/177981): [tool_crash] SessionNotCreatedException
* **Author:** [agrahariak](https://github.com/agrahariak)
* A `SessionNotCreatedException` is thrown, causing a tool crash when running a `flutter drive` integration test on the Chrome browser.

### [Issue #177975](https://github.com/flutter/flutter/issues/177975): The application opted out of Impeller by either using the
* **Author:** [asarkar101](https://github.com/asarkar101)
* **Reactions:** **1** -- 👍 1
* A warning is displayed on Android builds stating that the application has opted out of the Impeller rendering engine using a flag or manifest entry that will be deprecated in an upcoming Flutter release.

### [Issue #177938](https://github.com/flutter/flutter/issues/177938): [tool_crash] ShaderCompilerException
* **Author:** [hubert-pro](https://github.com/hubert-pro)
* The `flutter run` command crashes with a `ShaderCompilerException` originating from the `flutter_tools` package.

### [Issue #176313](https://github.com/flutter/flutter/issues/176313): Dynamically add `MinimumOSVersion` to App.framework Info.plist based on the deployment target the binary is compiled with
* **Author:** [jmagman](https://github.com/jmagman)
* This issue proposes to dynamically set the `MinimumOSVersion` in the `App.framework` `Info.plist` at build time based on the binary's actual deployment target, which would eliminate the need for developers to perform this step manually and resolve confusion caused by incorrect documentation.

### [Issue #173097](https://github.com/flutter/flutter/issues/173097): [Google3 Bug]: [Accessibility] Screen reader unable to reach/interact with all items in a scrollable
* **Author:** [joel-lim](https://github.com/joel-lim)
* **Reactions:** **2** -- 👍 2
* An accessibility issue on iOS prevents Voiceover from reliably reaching and interacting with all fields inside a scrollable `Form`, especially those initially off-screen, as focus can get stuck or reset to the top of the page.

### [Issue #145466](https://github.com/flutter/flutter/issues/145466): "Failed assertion: line 207 pos 12: '_overlay != null': is not true" when trying to remove a non null overlayEntry
* **Author:** [maheshj01](https://github.com/maheshj01)
* **Reactions:** **2** -- 👍 2
* Calling `OverlayEntry.remove()` within a widget's `dispose()` method triggers an `_overlay != null` assertion failure if the disposal is caused by a navigation event initiated from within the overlay itself.

### [Issue #132624](https://github.com/flutter/flutter/issues/132624): [go_router_builder] update the version of `analyzer` being used
* **Author:** [GeorgePagounis](https://github.com/GeorgePagounis)
* **Reactions:** **5** -- 👍 5
* The `go_router_builder` package has a dependency conflict with packages like `riverpod_lint` because it requires an older version of the `analyzer` package; this can be resolved by updating `go_router_builder` to support `analyzer` version 6.0.0 or newer.


# GitHub PR Report for flutter/genui
## From 2025-11-25

This period focused on project maintenance, improving the user experience of samples, and preparing for a release. While no new code was merged, significant progress was made by closing several issues. Work was completed to ensure all non-playground samples compile and run correctly ([#407](https://github.com/flutter/genui/issues/407)), and a user experience enhancement was identified for the simple chat example, which will now display the AI's text response before rendering the UI ([#487](https://github.com/flutter/genui/issues/487)). Finally, a major step was taken towards a public release with the closure of the issue tracking the publication of packages, including the new `generative_ai` package ([#74](https://github.com/flutter/genui/issues/74)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #487](https://github.com/flutter/genui/issues/487): Simple chat should put the AI response *before* it shows the GenUI
* **Author:** [sethladd](https://github.com/sethladd)
* **Reactions:** **1** -- 🚀 1
* To provide a more intuitive and less confusing user experience, the AI's text response should be displayed before the generated UI elements.

### [Issue #407](https://github.com/flutter/genui/issues/407): Confirm each non-playground sample works (compiles, runs locally if you have the right keys)
* **Author:** [sethladd](https://github.com/sethladd)
* This is a tracking issue to confirm that all non-playground samples compile and run correctly locally.

### [Issue #74](https://github.com/flutter/genui/issues/74): Publish packages
* **Author:** [polina-c](https://github.com/polina-c)
* This issue is a request to publish packages, including the new `generative_ai` package for genui.


# GitHub PR Report for flutter/packages
## From 2025-11-25

This period saw a significant architectural change in the `path_provider` plugin, where the iOS and macOS implementations were reverted from FFI back to a plugin-based approach to resolve critical production build issues ([PR #10517](https://github.com/flutter/packages/pull/10517)). In other updates, the `google_maps_flutter` plugin was updated to replace deprecated APIs, introducing a new structured `PlatformColor` type in its Pigeon interface for more robust color serialization ([PR #10474](https://github.com/flutter/packages/pull/10474)). Additionally, internal tooling was improved by streamlining the `podspec-check` tool to remove redundant native code analysis, making the check faster for developers ([PR #10484](https://github.com/flutter/packages/pull/10484)).

## Merged Pull Requests

### [PR #10517](https://github.com/flutter/packages/pull/10517): [path_provider] Revert iOS/macOS to plugin-based implementation
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-25 11:12 AM
* **Comments:** 2
* This PR reverts the iOS and macOS implementation of `path_provider_foundation` from FFI back to a plugin-based approach to resolve production build issues and work around upstream dependency blockers present in the FFI version.

### [PR #10484](https://github.com/flutter/packages/pull/10484): [tool] Remove code analysis from podspec-check
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-25 09:32 AM
* **Comments:** 0
* This PR updates the `podspec-check` tool to use the `--quick` version of `pod lib lint`, which removes the redundant native code analysis step and eliminates the need for an exclusion list for packages with warnings.

### [PR #10474](https://github.com/flutter/packages/pull/10474): [google_maps_flutter] Replace deprecated APIs
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-25 09:33 AM
* **Comments:** 0
* This PR updates the `google_maps_flutter` plugin to replace deprecated APIs, renaming the internal `cloudMapId` property to `mapId` and introducing a structured `PlatformColor` type in the Pigeon interface for more robust, non-lossy color serialization.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-11-25

There were no pull requests merged or issues closed during this period, resulting in no changes to the repository's codebase or features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-11-25

This period saw significant updates to documentation for new and existing features. The Antigravity AI agent received more exposure in the "Create with AI" overview, highlighting its capabilities ([PR #12749](https://github.com/flutter/website/pull/12749)). Following some discussion, the setup instructions for the Antigravity MCP server were also updated, shifting to a manual JSON configuration process ([PR #12748](https://github.com/flutter/website/pull/12748)). In response to a community request in [Issue #12643](https://github.com/flutter/website/issues/12643), a glossary entry was added for "Sliver," a core UI concept, to better define this portion of a scrollable area and link to relevant API documentation ([PR #12744](https://github.com/flutter/website/pull/12744)). Lastly, a redirect was added from `/download` to `/install` to improve the user experience on the site ([PR #12750](https://github.com/flutter/website/pull/12750)).

## Merged Pull Requests

### [PR #12750](https://github.com/flutter/website/pull/12750): Add redirect from `/download` to `/install`
* **Author:** [ericwindmill](https://github.com/ericwindmill)
* **Merged At:** 2025-11-25 03:06 PM
* **Comments:** 2
* This PR adds a permanent redirect from `/download` to `/install` to prevent users from encountering a 404 error if they manually type the URL on the docs site.

### [PR #12749](https://github.com/flutter/website/pull/12749): Add more exposure to antigravity in ai overview
* **Author:** [antfitch](https://github.com/antfitch)
* **Merged At:** 2025-11-25 11:07 AM
* **Comments:** 2
* This PR adds a section about the Antigravity AI agent to the "Create with AI" documentation, highlighting its ability to edit code, run terminal commands, and verify its own changes.

### [PR #12748](https://github.com/flutter/website/pull/12748): Update Antigravity MCP setup instructions
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-11-25 11:04 AM
* **Comments:** 5
* This documentation update changes the Antigravity MCP server setup instructions from a simple store installation to a manual JSON configuration process.

### [PR #12744](https://github.com/flutter/website/pull/12744): Adding slivers to the glossary
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2025-11-25 08:19 AM
* **Comments:** 3
* Adds an entry for 'Sliver' to the project glossary, defining it as a customizable and lazily-built portion of a scrollable area and including links to relevant documentation, articles, and API references.


## Closed Issues

### [Issue #12643](https://github.com/flutter/website/issues/12643): Add glossary entry for "Sliver"
* **Author:** [parlough](https://github.com/parlough)
* This issue proposes adding a glossary entry for the term "Sliver" to the Flutter website's documentation.



## Top Hacker News Stories

### 265 🔥🔥 [Voyager 1 Is About to Reach One Light-Day from Earth](https://scienceclock.com/voyager-1-is-about-to-reach-one-light-day-from-earth/)
* **Author:** [ashishgupta2209](https://news.ycombinator.com/user?id=ashishgupta2209) | **Comments:** [80](https://news.ycombinator.com/item?id=46057488)

### 291 🔥🔥 [OpenAI needs to raise at least $207B by 2030 so it can continue to lose money](https://ft.com/content/23e54a28-6f63-4533-ab96-3756d9c88bad)
* **Author:** [akira_067](https://news.ycombinator.com/user?id=akira_067) | **Comments:** [201](https://news.ycombinator.com/item?id=46058065)

### 10  [Cloudflare outage should not have happened](https://ebellani.github.io/blog/2025/cloudflare-outage-should-not-have-happened-and-they-seem-to-be-missing-the-point-on-how-to-avoid-it-in-the-future/)
* **Author:** [b-man](https://news.ycombinator.com/user?id=b-man) | **Comments:** [0](https://news.ycombinator.com/item?id=46059227)

### 360 🔥🔥 [I don't care how well your "AI" works](https://fokus.cool/2025/11/25/i-dont-care-how-well-your-ai-works.html)
* **Author:** [todsacerdoti](https://news.ycombinator.com/user?id=todsacerdoti) | **Comments:** [451](https://news.ycombinator.com/item?id=46055944)

### 137 🔥 [A cell so minimal that it challenges definitions of life](https://www.quantamagazine.org/a-cell-so-minimal-that-it-challenges-definitions-of-life-20251124/)
* **Author:** [ibobev](https://news.ycombinator.com/user?id=ibobev) | **Comments:** [62](https://news.ycombinator.com/item?id=46055935)

### 143 🔥 [Statistical Process Control in Python](https://timothyfraser.com/sigma/statistical-process-control-in-python.html)
* **Author:** [lifeisstillgood](https://news.ycombinator.com/user?id=lifeisstillgood) | **Comments:** [40](https://news.ycombinator.com/item?id=46055421)

### 17  [Show HN: I turned algae into a bio-altimeter and put it on a weather balloon](https://radi8.dev/blog/stratospore/)
* **Author:** [radeeyate](https://news.ycombinator.com/user?id=radeeyate) | **Comments:** [1](https://news.ycombinator.com/item?id=46016288)
* **StratoSpore** is an open-source stratospheric payload, built by a high school student, that attempts to estimate physical altitude using algae fluorescence and a lightweight ML model. The project includes custom hardware designs, a biological altimeter concept, and a novel compression algorithm for transmitting images over LoRA.

### 22  [Slashdot Effect](https://en.wikipedia.org/wiki/Slashdot_effect)
* **Author:** [firefax](https://news.ycombinator.com/user?id=firefax) | **Comments:** [18](https://news.ycombinator.com/item?id=46058912)

### 31  [Is DWPD Still a Useful SSD Spec?](https://klarasystems.com/articles/is-dwpd-still-useful-ssd-spec/)
* **Author:** [zdw](https://news.ycombinator.com/user?id=zdw) | **Comments:** [14](https://news.ycombinator.com/item?id=46005581)

### 294 🔥🔥 [Show HN: KiDoom – Running DOOM on PCB Traces](https://www.mikeayles.com/#kidoom)
* **Author:** [mikeayles](https://news.ycombinator.com/user?id=mikeayles) | **Comments:** [40](https://news.ycombinator.com/item?id=46051449)
* The author details `KiDoom`, a project that renders DOOM's game world inside the KiCad PCB editor by representing walls as PCB traces and characters as component footprints. A follow-up project, `ScopeDoom`, uses the same vector extraction method to display the game's geometry on an oscilloscope by converting coordinate data into audio signals.

### 77  [Image Diffusion Models Exhibit Emergent Temporal Propagation in Videos](https://arxiv.org/abs/2511.19936)
* **Author:** [50kIters](https://news.ycombinator.com/user?id=50kIters) | **Comments:** [12](https://news.ycombinator.com/item?id=46055177)

### 197 🔥 [Surprisingly, Emacs on Android is pretty good](https://kristofferbalintona.me/posts/202505291438/)
* **Author:** [harryday](https://news.ycombinator.com/user?id=harryday) | **Comments:** [96](https://news.ycombinator.com/item?id=46021577)

### 100 🔥 [I DM'd a Korean presidential candidate and ended up building his core campaign](https://medium.com/@wjsdj2008/i-dmd-a-korean-presidential-candidate-and-ended-up-building-his-core-campaign-platform-the-38eb1c5f5e7d)
* **Author:** [wjsdj2009](https://news.ycombinator.com/user?id=wjsdj2009) | **Comments:** [46](https://news.ycombinator.com/item?id=46057304)

### 20  [Qiskit open-source SDK for working with quantum computers](https://github.com/Qiskit/qiskit)
* **Author:** [thinkingemote](https://news.ycombinator.com/user?id=thinkingemote) | **Comments:** [1](https://news.ycombinator.com/item?id=46056757)

### 1  [Cekura (YC F24) Is Hiring](https://www.ycombinator.com/companies/cekura-ai/jobs/0ZGLW69-forward-deployed-engineer-us)
* **Author:** [atarus](https://news.ycombinator.com/user?id=atarus) | **Comments:** [null](https://news.ycombinator.com/item?id=46056583)

### 155 🔥 [Copyparty, the FOSS file server [video]](https://www.youtube.com/watch?v=15_-hgsX2V0)
* **Author:** [franczesko](https://news.ycombinator.com/user?id=franczesko) | **Comments:** [45](https://news.ycombinator.com/item?id=45984864)

### 11  [Show HN: Offline RAG System Using Docker and Llama 3 (No Cloud APIs)](https://github.com/PhilYeh1212/Local-AI-Knowledge-Base-Docker-Llama3)
* **Author:** [PhilYeh](https://news.ycombinator.com/user?id=PhilYeh) | **Comments:** [1](https://news.ycombinator.com/item?id=46057717)
* This project presents a fully offline, containerized RAG stack designed to address data privacy and recurring API costs for industrial use cases. The solution uses Llama 3, ChromaDB, and Docker to create a secure, local AI knowledge base for querying sensitive documents without cloud-based services.

### 5  [JOPA: Java compiler in C++, Jikes modernized to Java 6 with Claude](https://github.com/7mind/jopa)
* **Author:** [pshirshov](https://news.ycombinator.com/user?id=pshirshov) | **Comments:** [1](https://news.ycombinator.com/item?id=46025223)

### 33  [Justice dept. requires Realpage end sharing competitively sensitive information](https://www.justice.gov/opa/pr/justice-department-requires-realpage-end-sharing-competitively-sensitive-information-and)
* **Author:** [phkahler](https://news.ycombinator.com/user?id=phkahler) | **Comments:** [18](https://news.ycombinator.com/item?id=46057852)

### 553 🔥🔥 [Trillions spent and big software projects are still failing](https://spectrum.ieee.org/it-management-software-failures)
* **Author:** [pseudolus](https://news.ycombinator.com/user?id=pseudolus) | **Comments:** [508](https://news.ycombinator.com/item?id=46045085)

### 390 🔥🔥 [Jakarta is now the biggest city in the world](https://www.axios.com/2025/11/24/jakarta-tokyo-worlds-biggest-city-population)
* **Author:** [skx001](https://news.ycombinator.com/user?id=skx001) | **Comments:** [307](https://news.ycombinator.com/item?id=46042810)

### 163 🔥 [CS234: Reinforcement Learning Winter 2025](https://web.stanford.edu/class/cs234/)
* **Author:** [jonbaer](https://news.ycombinator.com/user?id=jonbaer) | **Comments:** [34](https://news.ycombinator.com/item?id=46052685)

### 343 🔥🔥 [Show HN: We built an open source, zero webhooks payment processor](https://github.com/flowglad/flowglad)
* **Author:** [agreeahmed](https://news.ycombinator.com/user?id=agreeahmed) | **Comments:** [197](https://news.ycombinator.com/item?id=46048252)
* **Flowglad** is an open-source payment processor designed to simplify integration by using a reactive programming paradigm, eliminating the need for glue code. It allows developers to easily create and manage complex pricing models through a declarative `pricing.yaml` file.

### 117 🔥 [1,700-year-old Roman sarcophagus is unearthed in Budapest](https://apnews.com/article/hungary-roman-sarcophagus-discovery-budapest-77a41fe190bbcc167b43d05141536f54)
* **Author:** [gmays](https://news.ycombinator.com/user?id=gmays) | **Comments:** [69](https://news.ycombinator.com/item?id=46040053)

### 217 🔥 [A new bridge links the math of infinity to computer science](https://www.quantamagazine.org/a-new-bridge-links-the-strange-math-of-infinity-to-computer-science-20251121/)
* **Author:** [digital55](https://news.ycombinator.com/user?id=digital55) | **Comments:** [121](https://news.ycombinator.com/item?id=46049932)



