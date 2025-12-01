# Overall Summary
Here are the highlights from the pull requests and closed issues:

**🔥🔥🔥 [Issue #178827](https://github.com/flutter/flutter/issues/178827) (flutter/flutter): Unify lints in flutter/flutter and flutter/packages**
  * **Reactions:** **37** -- 🎉 24 ❤️ 10 👀 3
  * This issue announces a plan to unify linting rules across the `flutter/flutter` and `flutter/packages` repositories to establish a single, consistent coding style by adding several new lints and removing `always_specify_types`.

**🔥 [PR #176495](https://github.com/flutter/flutter/pull/176495) (flutter/flutter): Add shared Darwin implementation for plugins**
  * **Comments:** 6
  * Introduces a new `darwin` platform option for the `flutter create` command, allowing developers to generate plugins with a single, shared implementation for both iOS and macOS to simplify code maintenance and reduce duplication.

**[Issue #57989](https://github.com/dart-lang/sdk/issues/57989) (dart-lang/sdk): Lint when an explicit type would be inferred**
  * **Reactions:** **15** -- 👍 13 ❤️ 2
  * This issue proposes a new lint to flag explicit type annotations that are unnecessary because the same type would be inferred if the annotation were omitted.

**🔥 [PR #178670](https://github.com/flutter/flutter/pull/178670) (flutter/flutter): [ Tool ] Remove --no-sandbox when launching web apps on Chrome device**
  * **Comments:** 6
  * This change removes the `--no-sandbox` flag from the default arguments when launching Chrome, enabling the browser's security sandbox by default. The flag is now only applied when running in headless mode, a common scenario in CI environments.

**🔥 [PR #175832](https://github.com/flutter/flutter/pull/175832) (flutter/flutter): Fix error when generating pt_BR localizations**
  * **Comments:** 10
  * Fixes a bug in the localization generation tool where it failed to parse locales from filenames like `pt_BR.arb`. The updated logic now correctly handles these cases by first attempting to parse the entire filename as a locale before looking for an underscore separator.

**🔥 [PR #178954](https://github.com/flutter/flutter/pull/178954) (flutter/flutter): Build hooks: Don't require toolchain for unit tests**
  * **Comments:** 6
  * This change makes the native toolchain resolution for build hooks optional when running `flutter test`, preventing crashes on machines without a native C compiler installed. This allows hooks that download pre-built artifacts, rather than compiling from source, to run successfully during unit tests.

**🔥 [PR #12712](https://github.com/flutter/website/pull/12712) (flutter/website): Add forceSingleThreadedSkwasm option to Flutter web loader (#178406)**
  * **Comments:** 7
  * Updates the Flutter web initialization documentation to include the `forceSingleThreadedSkwasm` option, which allows developers to force the Skia WASM renderer to run in single-threaded mode for improved compatibility in environments without multi-threaded WASM support.

**🔥 [PR #2821](https://github.com/dart-lang/native/pull/2821) (dart-lang/native): [hooks_runner] Pass proxy environment variables to hook**
  * **Comments:** 6
  * This PR updates the `hooks_runner` to pass proxy-related environment variables such as `HTTP_PROXY` to build hooks, allowing them to download assets like precompiled binaries in corporate environments that require a proxy for HTTP requests.

**[PR #10301](https://github.com/flutter/packages/pull/10301) (flutter/packages): [camera_android_camerax] use MediaSettings::fps for image preview, streaming, and video recording**
  * **Comments:** 1
  * This PR adds support for the `MediaSettings.fps` property in `camera_android_camerax`, allowing developers to set the target frame rate for camera preview, image streaming, and video recording.

**[Issue #54348](https://github.com/dart-lang/sdk/issues/54348) (dart-lang/sdk): Find a way to deprecate `extends`, `implements`, or `with` classes**
  * **Reactions:** **3** -- 👍 3
  * A developer requests a mechanism to issue deprecation warnings for specific inheritance patterns, such as using `extends` on a class intended to be a `mixin`, to guide users toward correct usage without introducing breaking changes.


# GitHub PR Report for dart-lang/ai
## From 2025-11-26 to 2025-11-30

During this period, there were no pull requests merged and no issues closed, resulting in no changes to the repository's code, public API, or language features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2025-11-26 to 2025-11-30

This period focused heavily on improving static analysis, developer tooling, and the language itself, as reflected in a large number of closed issues. The analyzer saw numerous proposals for new lint rules, with a highly-requested lint to flag unnecessary explicit type annotations ([#57989](https://github.com/dart-lang/sdk/issues/57989)) gaining significant support. Other proposals aim to identify infinite loops ([#57276](https://github.com/dart-lang/sdk/issues/57276)), flag public members that return private types ([#57732](https://github.com/dart-lang/sdk/issues/57732)), and improve dead code detection ([#29196](https://github.com/dart-lang/sdk/issues/29196)). A key fix was made to ensure `analysis_options.yaml` is correctly respected in multi-package workspaces ([#61565](https://github.com/dart-lang/sdk/issues/61565)). On the language front, a notable discussion explored ways to deprecate specific uses of `extends` or `with` on certain classes to guide API usage ([#54348](https://github.com/dart-lang/sdk/issues/54348)). Finally, improvements to core tooling were discussed, including a proposal to align `dart test` coverage reporting with `flutter test` by adding native `lcov` format support ([#60958](https://github.com/dart-lang/sdk/issues/60958)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62099](https://github.com/dart-lang/sdk/issues/62099): Migrate frontend_server_client
* **Author:** [jyameo](https://github.com/jyameo)

### [Issue #62092](https://github.com/dart-lang/sdk/issues/62092): Create member fixes should calculate `Iterable` in for-in
* **Author:** [FMorschel](https://github.com/FMorschel)
* The "create member" quick fix should suggest an `Iterable` type for non-existent members used in a for-in loop, inferring the generic type from the loop variable if available.

### [Issue #62081](https://github.com/dart-lang/sdk/issues/62081): snapshot_util.cc using incorrect guard
* **Author:** [biggs0125](https://github.com/biggs0125)
* The `snapshot_util.cc` file uses incorrect `TARGET` preprocessor guards instead of `HOST` guards, causing failures in cross-compilation builds.

### [Issue #62042](https://github.com/dart-lang/sdk/issues/62042): Solving Symbolic Links on a Directory if you still want to work with a Directory, feels weird that it doesn't return a Directory object.
* **Author:** [stephane-archer](https://github.com/stephane-archer)
* A user suggests that the `Directory.resolveSymbolicLinksSync()` method should return a `Directory` object instead of a `String` for a more intuitive developer experience.

### [Issue #61996](https://github.com/dart-lang/sdk/issues/61996): [hooks] how to remove "Running build hooks..." from stdout when using `dart run`
* **Author:** [alextekartik](https://github.com/alextekartik)
* The `dart run` command prints "Running build hooks..." to standard output, which interferes with parsing program output, and this message is not suppressed by the `--verbosity error` flag.

### [Issue #61974](https://github.com/dart-lang/sdk/issues/61974): array_data_race_test broke on  vm-tsan-linux-release-arm64
* **Author:** [aam](https://github.com/aam)
* The `array_data_race_test` is failing on the `vm-tsan-linux-release-arm64` builder because an `Expect.notEquals(0, 0)` assertion is failing, indicating that the ThreadSanitizer did not detect the expected data race.

### [Issue #61837](https://github.com/dart-lang/sdk/issues/61837): Failures on [dart2wasm] Roll binaryen which brings in fixes
* **Author:** [fishythefish](https://github.com/fishythefish)
* A recent binaryen roll for dart2wasm is causing several new test failures, including `RuntimeError` and `Timeout`, on the `dart2wasm-asserts-minified-linux-d8` and `dart2wasm-linux-optimized-jsc` configurations.

### [Issue #61565](https://github.com/dart-lang/sdk/issues/61565): analysis_options.yaml behaves differently when using workspaces
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Reactions:** **5** -- 👍 5
* When a project uses workspaces, running `flutter analyze` on a specific package ignores that package's local `analysis_options.yaml` file, leading to inconsistent analysis results compared to a non-workspace setup.

### [Issue #60958](https://github.com/dart-lang/sdk/issues/60958): Support coverage from "dart test" in lcov format to match "flutter test", and make the output locations more consistent
* **Author:** [DanTup](https://github.com/DanTup)
* **Reactions:** **2** -- 👍 2
* To simplify integration with tooling like the VS Code extension, the `dart test` command should be updated to directly support generating code coverage in the `lcov` format and use consistent output location flags, aligning its behavior with `flutter test`.

### [Issue #60458](https://github.com/dart-lang/sdk/issues/60458): [dart2wasm] Avoid making every closure needs it's own dynamic call forwarder
* **Author:** [mkustermann](https://github.com/mkustermann)
* To reduce `dart2wasm` code size, this issue proposes replacing unique, per-closure dynamic call forwarders with a shared forwarder for closures of the same representation that dispatches calls by inspecting arguments and using the vtable.

### [Issue #59785](https://github.com/dart-lang/sdk/issues/59785): [linter] avoid_dynamic_construtor_arguments
* **Author:** [stephane-archer](https://github.com/stephane-archer)
* This issue requests a new lint rule to flag constructor arguments that are implicitly typed as `dynamic` when a type annotation is accidentally omitted.

### [Issue #59571](https://github.com/dart-lang/sdk/issues/59571): [linter proposal] member function can be static
* **Author:** [stephane-archer](https://github.com/stephane-archer)
* **Reactions:** **1** -- 👍 1
* This issue proposes a new linter rule to identify class methods that can be made `static` because they do not access any instance members.

### [Issue #56883](https://github.com/dart-lang/sdk/issues/56883): [Augmentations] No error when augmenting enum has no  values
* **Author:** [sgrekhov](https://github.com/sgrekhov)
* An `augment enum` declaration with no values does not produce the expected syntax error in the analyzer or CFE.

### [Issue #54348](https://github.com/dart-lang/sdk/issues/54348): Find a way to deprecate `extends`, `implements`, or `with` classes
* **Author:** [AlexV525](https://github.com/AlexV525)
* **Reactions:** **3** -- 👍 3
* A developer requests a mechanism to issue deprecation warnings for specific inheritance patterns, such as using `extends` on a class intended to be a `mixin`, to guide users toward correct usage without introducing breaking changes.

### [Issue #53042](https://github.com/dart-lang/sdk/issues/53042): Analyzer: Offer a TypeSystem.mostUpperBound
* **Author:** [rrousselGit](https://github.com/rrousselGit)
* This issue proposes adding a `TypeSystem.mostUpperBound` method to compute the greatest lower bound (or intersection type) of two types, the inverse of `leastUpperBound`, to determine a common, assignable parameter type for methods like `copyWith` in a shared interface.

### [Issue #52683](https://github.com/dart-lang/sdk/issues/52683): Add gerrit mirrors for dartdoc dev_dependencies
* **Author:** [srawlins](https://github.com/srawlins)
* This issue requests that new Gerrit mirrors be created for several repositories, including `dart-lang/build` and `dart-lang/code_builder`, which are required as development dependencies for the `dartdoc` package.

### [Issue #51979](https://github.com/dart-lang/sdk/issues/51979): Add `flutter_test` fix tests to `analyze_flutter_flutter.sh`
* **Author:** [pdblasi-google](https://github.com/pdblasi-google)
* **Reactions:** **1** -- 👍 1
* This issue proposes adding `dart fix` tests for the `flutter_test` library to the `analyze_flutter_flutter.sh` script, which currently only runs fix tests for the main flutter package.

### [Issue #58573](https://github.com/dart-lang/sdk/issues/58573): Revisit `avoid_classes_with_only_static_members`
* **Author:** [minhqdao](https://github.com/minhqdao)
* **Reactions:** **1** -- 👍 1
* This issue proposes changing the `avoid_classes_with_only_static_members` lint, arguing that such classes are a valid namespacing pattern if made non-instantiable with a private constructor, and suggests updating the documentation and adding a quick-fix to support this use case.

### [Issue #43653](https://github.com/dart-lang/sdk/issues/43653): Map of const Set breaks Dart analyzer
* **Author:** [magnuswikhog](https://github.com/magnuswikhog)
* A map declaration containing `const Set` literals as values breaks the Dart analyzer, causing IDE features like "Go to Declaration" to fail for all subsequent code in the file.

### [Issue #41651](https://github.com/dart-lang/sdk/issues/41651): Make sure analyzer bots catch lints and implicit downcasts configured through analysis_options.yaml
* **Author:** [stereotype441](https://github.com/stereotype441)
* **Reactions:** **1** -- 👍 1
* The automated analyzer bots are failing to report lint violations and implicit downcast errors, likely because they are not respecting the rules configured in the project's `analysis_options.yaml` file.

### [Issue #57989](https://github.com/dart-lang/sdk/issues/57989): Lint when an explicit type would be inferred
* **Author:** [bwilkerson](https://github.com/bwilkerson)
* **Reactions:** **15** -- 👍 13 ❤️ 2
* This issue proposes a new lint to flag explicit type annotations that are unnecessary because the same type would be inferred if the annotation were omitted.

### [Issue #57951](https://github.com/dart-lang/sdk/issues/57951): Lint request: Warn when referencing private members from public dartdocs
* **Author:** [jamesderlin](https://github.com/jamesderlin)
* **Reactions:** **2** -- 👍 2
* This issue requests a new lint rule to warn when a public member's dartdoc comment references a private member, as the reference is not useful in generated documentation, but it should not warn when a private member's dartdoc references another private member.

### [Issue #57770](https://github.com/dart-lang/sdk/issues/57770): voidness propagation as a lint
* **Author:** [MichaelRFairhurst](https://github.com/MichaelRFairhurst)
* This issue proposes a new lint rule to statically detect improper assignments of collections containing `void`, such as `List<void>` to `List<int>`, which was originally intended to be caught by a planned but unimplemented language feature called "voidness propagation".

### [Issue #57732](https://github.com/dart-lang/sdk/issues/57732): lint: warn if public member returns private type
* **Author:** [pq](https://github.com/pq)
* This issue proposes a new lint rule to warn developers when a public member, such as a function, has a return type that is private to its library.

### [Issue #57671](https://github.com/dart-lang/sdk/issues/57671): comment_references: Doc comment reference for mixin property not recognized
* **Author:** [zoechi](https://github.com/zoechi)
* Doc comment references for properties accessed via a mixin are not being recognized, such as when trying to reference a nested property like `[sys.createdUserId]` where `sys` is defined in the mixin.

### [Issue #29196](https://github.com/dart-lang/sdk/issues/29196): "dead code" warning for short circuiting isn't complete
* **Author:** [MichaelRFairhurst](https://github.com/MichaelRFairhurst)
* The dead code warning for short-circuiting logical expressions is incomplete, as it only highlights the immediately following sub-expression as unreachable instead of the entire dead portion of the expression.

### [Issue #57390](https://github.com/dart-lang/sdk/issues/57390): AVOID mixing in a class that isn’t intended to be a mixin.
* **Author:** [alexeieleusis](https://github.com/alexeieleusis)
* This issue proposes adding a new lint rule to enforce the Effective Dart guideline that classes should not be used as mixins unless they are specifically designed for that purpose.

### [Issue #57276](https://github.com/dart-lang/sdk/issues/57276): Flag the more obvious infinite loops
* **Author:** [filiph](https://github.com/filiph)
* This issue proposes a new lint to detect potential infinite loops in `while` statements where the condition variable is not mutated within the loop body.

### [Issue #57209](https://github.com/dart-lang/sdk/issues/57209): Lint for statement with only literal values
* **Author:** [a14n](https://github.com/a14n)
* This issue proposes a new lint to flag statements that consist only of a literal value, as this is often an error caused by a missing `return` keyword.


# GitHub PR Report for dart-lang/language
## From 2025-11-26 to 2025-11-30

There were no changes to the repository during this period, as no pull requests were merged and no issues were closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2025-11-26 to 2025-11-30

This release brings significant improvements to the development and testing infrastructure. Progress was made on the long-standing goal of enabling concurrent CI tests ([Issue #461](https://github.com/dart-lang/native/issues/461)), with the `ffigen` package now supporting concurrent execution by removing modifications to global state ([PR #2827](https://github.com/dart-lang/native/pull/2827)). In another key infrastructure enhancement, the `hooks_runner` was updated to pass proxy-related environment variables to build hooks, which unblocks developers in corporate environments from downloading assets like precompiled binaries ([PR #2821](https://github.com/dart-lang/native/pull/2821)). Finally, a bug was addressed where a dependency upgrade in `path_provider_foundation` caused network images to fail in iOS Release builds ([Issue #2818](https://github.com/dart-lang/native/issues/2818)).

## Merged Pull Requests

### [PR #2827](https://github.com/dart-lang/native/pull/2827): [ffigen] Support concurrent tests
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-26 02:47 PM
* **Comments:** 2
* Enables concurrent testing in `ffigen` by removing modifications to global state, which includes eliminating a utility that set `Directory.current` and replacing the use of the global `Logger.root` with detached loggers in tests.

### 🔥 [PR #2821](https://github.com/dart-lang/native/pull/2821): [hooks_runner] Pass proxy environment variables to hook
* **Author:** [simolus3](https://github.com/simolus3)
* **Merged At:** 2025-11-26 07:28 AM
* **Comments:** 6
* This PR updates the `hooks_runner` to pass proxy-related environment variables such as `HTTP_PROXY` to build hooks, allowing them to download assets like precompiled binaries in corporate environments that require a proxy for HTTP requests.


## Closed Issues

### [Issue #2818](https://github.com/dart-lang/native/issues/2818): path_provider_foundation  to version 2.5.0 network images fail
* **Author:** [LittleJamie](https://github.com/LittleJamie)
* Upgrading `path_provider_foundation` to version 2.5.0 introduces an Objective-C dependency that causes network images to fail in iOS Release builds, though they work correctly in Debug mode.

### [Issue #461](https://github.com/dart-lang/native/issues/461): Enable concurrency in CI tests
* **Author:** [TzviPM](https://github.com/TzviPM)
* CI tests were set to run serially with `--concurrency=1` to prevent failures, and this issue tracks the work to fix the underlying thread-safety problems so that concurrency can be re-enabled.


# GitHub PR Report for flutter/ai
## From 2025-11-26 to 2025-11-30

This update introduces a series of enhancements focused on improving the flexibility and user experience of the chat interface. For developers, new styling parameters have been added to `LlmChatView` and `LlmMessageView`, providing greater control over layout properties like margins, padding, and message spacing ([#172](https://github.com/flutter/ai/pull/172)). The user experience has been improved with several new features, including the ability to attach URLs as rich preview cards via a new popup menu option ([#169](https://github.com/flutter/ai/pull/169)). Additionally, quality-of-life updates include support for Shift+Enter to create newlines, making LLM-generated links clickable, and automatically submitting chat suggestions upon selection ([#171](https://github.com/flutter/ai/pull/171)).

## Merged Pull Requests

### [PR #172](https://github.com/flutter/ai/pull/172): chore: #158 and #86
* **Author:** [DeTuksa](https://github.com/DeTuksa)
* **Merged At:** 2025-11-29 03:47 PM
* **Comments:** 2
* This pull request introduces new styling parameters to `LlmChatView` and `LlmMessageView` for controlling sizing properties like margins, padding, width, flex, and message spacing, giving developers greater flexibility over the layout of the chat interface.

### [PR #171](https://github.com/flutter/ai/pull/171): Added a variety of features to enhance the UX
* **Author:** [csells](https://github.com/csells)
* **Merged At:** 2025-11-27 06:09 PM
* **Comments:** 0
* This PR introduces several user experience enhancements, including support for Shift+Enter for newlines on web and desktop, making LLM-generated links clickable, and automatically submitting chat suggestions when they are tapped.

### [PR #169](https://github.com/flutter/ai/pull/169): Add url to popup menu #120
* **Author:** [DeTuksa](https://github.com/DeTuksa)
* **Merged At:** 2025-11-25 04:01 PM
* **Comments:** 3
* This PR adds the ability to attach URLs to a chat message through a new "Attach Link" option in the popup menu, which displays the link as a rich preview card showing the website's favicon and title.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-11-26 to 2025-11-30

During this period, there were no new pull requests merged or issues closed. As a result, there have been no changes to the repository's codebase or public API.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-11-26 to 2025-11-30

This period saw a significant focus on code health and developer experience, highlighted by a widely supported initiative to unify and modernize linting rules across the Flutter framework ([#178827](https://github.com/flutter/flutter/issues/178827), [#179089](https://github.com/flutter/flutter/pull/179089)). A major new feature was introduced to the `flutter create` command, which now supports a `darwin` platform option to generate plugins with a single, shared implementation for both iOS and macOS ([#176495](https://github.com/flutter/flutter/pull/176495)). Tooling was also made more flexible by making the native toolchain optional for build hooks during `flutter test` ([#178954](https://github.com/flutter/flutter/pull/178954)), and the localization tool was fixed to correctly parse locales from filenames like `pt_BR.arb` ([#175832](https://github.com/flutter/flutter/pull/175832)). On the framework side, several key bugs were addressed, including an issue where changing `supportedLocales` at runtime failed to update the app's locale ([#178526](https://github.com/flutter/flutter/pull/178526)) and a rendering error where backdrop filter shaders were sampled incorrectly when clipped ([#178940](https://github.com/flutter/flutter/pull/178940)). Finally, in a notable security improvement, the insecure `--no-sandbox` flag was removed by default when launching web apps on Chrome ([#178670](https://github.com/flutter/flutter/pull/178670)), addressing a highly-rated issue ([#175227](https://github.com/flutter/flutter/issues/175227)).

## Merged Pull Requests

### [PR #179193](https://github.com/flutter/flutter/pull/179193): [ Tool ] Don't try to reattach when attach target disappears
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-11-28 02:12 PM
* **Comments:** 2
* This change removes undocumented logic in `flutter attach` that would attempt to reattach to a new application if the original target disappeared, fixing a top-10 tool crash caused by a `StateError`.

### [PR #179186](https://github.com/flutter/flutter/pull/179186): Make tree green again by fixing lints
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2025-11-27 06:52 AM
* **Comments:** 1
* This PR corrects several lint warnings in test files, primarily related to variable type declarations, to resolve CI failures.

### [PR #179157](https://github.com/flutter/flutter/pull/179157): [ Widget Preview ] Handle changes to unexpected pubspec.yaml files gracefully
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-11-27 02:20 PM
* **Comments:** 0
* This PR fixes a crash in the widget preview command that occurred when a `pubspec.yaml` file was added or deleted within a project directory, especially in pub workspaces. The change makes the `PreviewManifest` more robust by correctly handling these file system changes and ensuring project information is always reloaded from disk to reflect the latest state.

### [PR #179136](https://github.com/flutter/flutter/pull/179136): Reverts "Fix for win32 embedder failing to send all alt key downs to the flutter app (#179097)"
* **Author:** [auto-submit[bot]](https://github.com/apps/auto-submit)
* **Merged At:** 2025-11-26 07:09 AM
* **Comments:** 0
* This PR reverts a previous change that fixed an issue where the Win32 embedder failed to send all 'alt' key down events to the Flutter app, as the original change was merged while the development tree was closed.

### [PR #179097](https://github.com/flutter/flutter/pull/179097): Fix for win32 embedder failing to send all alt key downs to the flutter app
* **Author:** [mattkae](https://github.com/mattkae)
* **Merged At:** 2025-11-26 05:48 AM
* **Comments:** 4
* This PR fixes an issue on the Windows embedder where pressing the Alt key would cause the OS to activate the system menu, preventing subsequent Alt key down events from being delivered to the Flutter application.

### [PR #179091](https://github.com/flutter/flutter/pull/179091): Add flutter_lints to samples
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* **Merged At:** 2025-11-26 02:43 PM
* **Comments:** 2
* This PR adds the `flutter_lints` package to all Flutter sample projects to enforce consistent code style and best practices, while suppressing the `Radio` to `RadioGroup` API migration to manage the scope of this large-scale change.

### 🔥 [PR #179089](https://github.com/flutter/flutter/pull/179089): Modernize framework lints
* **Author:** [Piinks](https://github.com/Piinks)
* **Merged At:** 2025-11-25 05:39 PM
* **Comments:** 7
* This PR modernizes the lint rules across the Flutter framework by updating `analysis_options.yaml` files and applying the corresponding automatic code fixes and formatting.

### [PR #179079](https://github.com/flutter/flutter/pull/179079): [native assets] Bump minimum iOS version from 12 to 13
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-11-26 05:41 PM
* **Comments:** 1
* This PR updates the minimum iOS version for the native assets build process from 12 to 13, correcting a location that was missed during a previous version bump.

### [PR #179044](https://github.com/flutter/flutter/pull/179044): Add more templates that the UIScene migrator can match against
* **Author:** [vashworth](https://github.com/vashworth)
* **Merged At:** 2025-11-26 04:46 PM
* **Comments:** 0
* This PR expands the UIScene migrator to recognize additional `AppDelegate.swift` templates, making the migration process more robust for projects with minor variations in their initial iOS boilerplate code.

### [PR #178961](https://github.com/flutter/flutter/pull/178961): Remove deprecated activeColor in `dynamic_content_color.0.dart`‎ example
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-26 04:32 PM
* **Comments:** 0
* This PR updates the `dynamic_content_color` example by replacing the deprecated `activeColor` property in a `Switch` widget with `activeThumbColor`.

### [PR #178959](https://github.com/flutter/flutter/pull/178959): Remove deprecated `activeColor` in `decorated_sliver.1.dart‎` example
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-26 04:24 PM
* **Comments:** 0
* Updates the `decorated_sliver.1.dart` example by replacing the deprecated `activeColor` property on the `Switch` widget with `activeThumbColor`.

### 🔥 [PR #178954](https://github.com/flutter/flutter/pull/178954): Build hooks: Don't require toolchain for unit tests
* **Author:** [simolus3](https://github.com/simolus3)
* **Merged At:** 2025-11-26 06:29 PM
* **Comments:** 6
* This change makes the native toolchain resolution for build hooks optional when running `flutter test`, preventing crashes on machines without a native C compiler installed. This allows hooks that download pre-built artifacts, rather than compiling from source, to run successfully during unit tests.

### 🔥 [PR #178940](https://github.com/flutter/flutter/pull/178940): Documents and fixes behavior when clipping background filter fragment shader
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2025-11-26 05:25 PM
* **Comments:** 6
* This PR fixes incorrect rendering for clipped backdrop filters that use runtime shaders by forcing a re-rasterization of the input, ensuring the shader receives the correct fragment coordinates, especially when a preceding filter like a blur has altered the snapshot's coordinate space.

### [PR #178919](https://github.com/flutter/flutter/pull/178919): Update workflow permissions in easy-cp.yml
* **Author:** [guidezpl](https://github.com/guidezpl)
* **Merged At:** 2025-11-28 11:14 AM
* **Comments:** 1
* This PR enhances the security of the `easy-cp.yml` GitHub Actions workflow by replacing the broad `write-all` permission with the more granular `contents: read` and `pull-requests: write` permissions, adhering to the principle of least privilege.

### [PR #178917](https://github.com/flutter/flutter/pull/178917): Fix GitHub Actions not pinned by hash
* **Author:** [step-security-bot](https://github.com/step-security-bot)
* **Merged At:** 2025-11-28 11:19 AM
* **Comments:** 3
* This PR enhances security by pinning GitHub Actions dependencies to their full commit hashes instead of mutable version tags, which prevents the workflows from using a potentially compromised version of an action.

### 🔥 [PR #178670](https://github.com/flutter/flutter/pull/178670): [ Tool ] Remove --no-sandbox when launching web apps on Chrome device
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-11-26 06:44 PM
* **Comments:** 6
* This change removes the `--no-sandbox` flag from the default arguments when launching Chrome, enabling the browser's security sandbox by default. The flag is now only applied when running in headless mode, a common scenario in CI environments.

### [PR #178595](https://github.com/flutter/flutter/pull/178595): Fix a small typo in `HandlerCompat.java` docs
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-26 06:19 PM
* **Comments:** 3
* Fixes a typo in a Javadoc comment in the `HandlerCompat.java` file.

### [PR #178588](https://github.com/flutter/flutter/pull/178588): Replace the hardcoded link with an actual link tag in `PlatformChannel.java‎` docs
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-26 05:13 PM
* **Comments:** 5
* This PR updates a Javadoc comment in `ActivityPluginBinding.java` to replace a plain-text URL with a clickable HTML `<a>` tag and corrects the link to its new location.

### [PR #178586](https://github.com/flutter/flutter/pull/178586): Small refactor in `PlayStoreDeferredComponentManager.java‎`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-26 04:09 PM
* **Comments:** 1
* This PR performs a small refactor on `PlayStoreDeferredComponentManager.java` to improve code quality by replacing `equals("")` with `isEmpty()`, using `addAll()` instead of a loop, and simplifying exception handling logic.

### [PR #178565](https://github.com/flutter/flutter/pull/178565): Make sure that a CupertinoActivityIndicator doesn't crash in 0x0 envi…
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-11-26 05:51 PM
* **Comments:** 1
* This pull request adds a regression test to ensure the `CupertinoActivityIndicator` widget does not crash when rendered in a container with a zero-size area.

### 🔥 [PR #178526](https://github.com/flutter/flutter/pull/178526): Fixed changing supportedLocales fails to update the locale
* **Author:** [shivanuj13](https://github.com/shivanuj13)
* **Merged At:** 2025-11-26 06:59 PM
* **Comments:** 7
* Fixes a bug where changing `supportedLocales` at runtime would not update the application's locale. This change ensures the `LocalizationsResolver` recomputes the resolved locale and notifies listeners, but only if the new resolved locale is different.

### 🔥 [PR #176495](https://github.com/flutter/flutter/pull/176495): Add shared Darwin implementation for plugins
* **Author:** [okorohelijah](https://github.com/okorohelijah)
* **Merged At:** 2025-11-26 07:10 PM
* **Comments:** 6
* Introduces a new `darwin` platform option for the `flutter create` command, allowing developers to generate plugins with a single, shared implementation for both iOS and macOS to simplify code maintenance and reduce duplication.

### 🔥 [PR #175832](https://github.com/flutter/flutter/pull/175832): Fix error when generating pt_BR localizations
* **Author:** [Mr-Pepe](https://github.com/Mr-Pepe)
* **Merged At:** 2025-11-26 03:40 PM
* **Comments:** 10
* Fixes a bug in the localization generation tool where it failed to parse locales from filenames like `pt_BR.arb`. The updated logic now correctly handles these cases by first attempting to parse the entire filename as a locale before looking for an underscore separator.


## Closed Issues

### [Issue #179244](https://github.com/flutter/flutter/issues/179244): Timestamp toDate function not working
* **Author:** [quactech-del](https://github.com/quactech-del)
* A `NoSuchMethodError` is being thrown when calling the `.toDate()` method on a Firestore `Timestamp` object to convert it to a `DateTime`.

### [Issue #179239](https://github.com/flutter/flutter/issues/179239): SUDOKU
* **Author:** [Jack-The-Kiddo](https://github.com/Jack-The-Kiddo)

### [Issue #179209](https://github.com/flutter/flutter/issues/179209): Cannot run Project.afterEvaluate(Action) when the project is already evaluated
* **Author:** [kostasoft](https://github.com/kostasoft)
* A Gradle build failure is occurring when applying the `dev.flutter.flutter-gradle-plugin`, resulting in a `Cannot run Project.afterEvaluate(Action) when the project is already evaluated` error.

### [Issue #179204](https://github.com/flutter/flutter/issues/179204): TextField is allowing non-ASCII char.s ,even when they are filtered
* **Author:** [atototenten](https://github.com/atototenten)
* On Android, a `TextField` with a `FilteringTextInputFormatter` set to allow only printable ASCII characters is incorrectly permitting non-ASCII character input.

### [Issue #179155](https://github.com/flutter/flutter/issues/179155): [ Widget Preview ] Crash when adding or removing a `pubspec.yaml` from a subdirectory
* **Author:** [bkonyi](https://github.com/bkonyi)
* The widget previewer crashes when a `pubspec.yaml` file is added to or removed from a subdirectory because it fails to find the corresponding project in its manifest when attempting to process the file change.

### [Issue #179152](https://github.com/flutter/flutter/issues/179152): Flutter packages tool errors when using flutter 3.38.3
* **Author:** [reidbaker](https://github.com/reidbaker)
* The `flutter_plugin_tools` script is failing on a development version of Flutter (3.38.3) with a null safety type error in `update_dependency_command.dart` where a nullable string is being passed to a parameter that requires a non-nullable string.

### [Issue #179146](https://github.com/flutter/flutter/issues/179146): Migrate samples off deprecated Color APIs
* **Author:** [loic-sharma](https://github.com/loic-sharma)

### [Issue #179085](https://github.com/flutter/flutter/issues/179085): TextSpan gesture recognizer doesn't apply on children
* **Author:** [ValentinVignal](https://github.com/ValentinVignal)
* A `GestureRecognizer` attached to a parent `TextSpan` is not being applied to its nested child `TextSpan`s, causing tap events on the child text to be ignored.

### [Issue #179073](https://github.com/flutter/flutter/issues/179073): [go_router_builder] Add compatibility with `analyzer` 9.x
* **Author:** [JarvanMo](https://github.com/JarvanMo)
* **Reactions:** **1** -- 👍 1
* The `go_router_builder` package needs to be updated to support version 9.x of the `analyzer` package to resolve dependency conflicts with other packages, such as `json_serializable`.

### [Issue #178951](https://github.com/flutter/flutter/issues/178951): [Impeller] Geometry overdraw protection should be handled by the clip depth
* **Author:** [flar](https://github.com/flar)
* This issue proposes providing geometry overdraw protection without a performance penalty by reusing the existing depth buffer clipping mechanism, adjusting the depth comparison limit to be less than or equal to the current primitive's render depth to prevent its own overlapping triangles from being drawn.

### [Issue #178904](https://github.com/flutter/flutter/issues/178904): UIScene auto migration doesn't work if `UIKit` is imported before `Flutter` in `AppDelegate`
* **Author:** [danagbemava-nc](https://github.com/danagbemava-nc)
* The automatic UIScene migration fails if `import UIKit` appears before `import Flutter` in the iOS `AppDelegate.swift` file, as the script incorrectly flags the file as not matching the expected template.

### [Issue #178842](https://github.com/flutter/flutter/issues/178842): [Flutter SDK 3.35.7][iOS] Crash in impeller::Canvas::GetLocalCoverageLimit()
* **Author:** [littleGnAl](https://github.com/littleGnAl)
* An `EXC_BAD_ACCESS` crash is being reported via APM for iOS apps using Flutter SDK 3.35.7, occurring in the Impeller rendering engine within the `impeller::Canvas::GetLocalCoverageLimit()` function on the raster thread.

### [Issue #178827](https://github.com/flutter/flutter/issues/178827): Unify lints in flutter/flutter and flutter/packages
* **Author:** [Piinks](https://github.com/Piinks)
* **Reactions:** **37** -- 🎉 24 ❤️ 10 👀 3
* This issue announces a plan to unify linting rules across the `flutter/flutter` and `flutter/packages` repositories to establish a single, consistent coding style by adding several new lints and removing `always_specify_types`.

### [Issue #178798](https://github.com/flutter/flutter/issues/178798): `BackdropFilter` shader UV sampling is incorrect on beta when using `ClipRect`
* **Author:** [timcreatedit](https://github.com/timcreatedit)
* A regression in the beta channel causes a shader applied with `BackdropFilter` to have its UV coordinates incorrectly sampled relative to the `ClipRect`'s coordinate space instead of the screen's.

### [Issue #178757](https://github.com/flutter/flutter/issues/178757): Some plugin READMEs have outdated version support
* **Author:** [jmagman](https://github.com/jmagman)
* The README files for some plugins, such as `image_picker`, contain outdated minimum supported OS version information and require an audit to ensure correctness across all platforms.

### [Issue #178715](https://github.com/flutter/flutter/issues/178715): Running flutter tests on linux might require clang and lld even if the app does not target linux since 3.38
* **Author:** [slaci](https://github.com/slaci)
* **Reactions:** **1** -- 👍 1
* Since Flutter 3.38, `flutter test` on a Linux host requires `clang` and `lld` if the project uses a package with native assets, even when the project itself does not target the Linux platform.

### [Issue #178090](https://github.com/flutter/flutter/issues/178090): [Crash] Flutter 3.35.2 app crash on POCO F7 (Android 15 / HyperOS 2.0.203.0)
* **Author:** [magerngulik](https://github.com/magerngulik)
* A Flutter 3.35.2 app is experiencing a native crash in `libflutter.so` when rendering an SVG image with the `flutter_svg` package, specifically on a POCO F7 device running Android 15 / HyperOS 2.0.203.0.

### [Issue #178020](https://github.com/flutter/flutter/issues/178020): Stateful widget with ViewModel comprised of two ChangeNotifiers updates only once
* **Author:** [mercurio](https://github.com/mercurio)
* In a StatefulWidget whose ViewModel listens to two nested ChangeNotifiers, the UI updates correctly on the first change but fails on subsequent updates because the listener on the nested notifier is unexpectedly removed after the initial rebuild.

### [Issue #177982](https://github.com/flutter/flutter/issues/177982): [url_launcher] UrlLauncherIOS._failedSafariViewControllerLoadException
* **Author:** [DelcoigneYves](https://github.com/DelcoigneYves)
* The `url_launcher` plugin is causing a `_failedSafariViewControllerLoadException` crash on specific iOS versions when attempting to open an App Store link using `LaunchMode.platformDefault`.

### [Issue #177980](https://github.com/flutter/flutter/issues/177980): Gesture is not working like zoom, pan, scrolling on integrated google map
* **Author:** [dev147jainsoft](https://github.com/dev147jainsoft)
* A user reports that gestures such as zoom, pan, and scroll are not working on an integrated Google Map, despite being explicitly enabled in the `GoogleMap` widget's properties.

### [Issue #177822](https://github.com/flutter/flutter/issues/177822): [Windows] HardwareKeyboard misses next key press after alt is pressed
* **Author:** [josh-audio](https://github.com/josh-audio)
* On Windows, the `HardwareKeyboard` API fails to detect the key press event that immediately follows the press of an `alt` key.

### [Issue #176148](https://github.com/flutter/flutter/issues/176148): [camera] Add framesPerSecond parameter to CameraImageStreamOptions
* **Author:** [TecHaxter](https://github.com/TecHaxter)
* **Reactions:** **2** -- 👍 2
* This feature request proposes adding a `framesPerSecond` parameter to the `CameraImageStreamOptions` class to allow developers to control the camera's image stream frame rate for improved performance and resource management.

### [Issue #175227](https://github.com/flutter/flutter/issues/175227): Getting a warning on Web: `You are using an unsupported command-line flag: --no-sandbox. Stability and security will suffer.`
* **Author:** [tirth-patel-nc](https://github.com/tirth-patel-nc)
* **Reactions:** **15** -- 👍 13 👀 2
* A regression on the master channel causes a `--no-sandbox` warning to appear when running a Flutter web application on Chrome.

### [Issue #170810](https://github.com/flutter/flutter/issues/170810): Small grammar error in brick-breaker codelab website
* **Author:** [daltus](https://github.com/daltus)
* A user has reported a small grammatical error in the Flutter Flame Brick Breaker codelab, specifically in the phrase "especially when games that involve," and has suggested a correction.

### [Issue #167745](https://github.com/flutter/flutter/issues/167745): macOS: Update macOS minimum supported version from 10.14 to 10.15
* **Author:** [cbracken](https://github.com/cbracken)
* **Reactions:** **1** -- 👍 1
* To utilize the Swift stable ABI and avoid bundling Swift runtime libraries in apps, the minimum supported macOS version is being increased from 10.14 to 10.15, a move justified by the low user base of macOS 10.14.

### [Issue #167719](https://github.com/flutter/flutter/issues/167719): [camera_android_camerax] Document camera package fps setting has no effect – always records at 30fps
* **Author:** [mahenjrc](https://github.com/mahenjrc)
* **Reactions:** **2** -- 👍 2
* On Android, the `fps` parameter for the `CameraController` is being ignored, causing videos to always record at 30fps, even when a higher frame rate is requested on a supported device.

### [Issue #166603](https://github.com/flutter/flutter/issues/166603): [go_router_builder] `withNullability` is deprecated
* **Author:** [bparrishMines](https://github.com/bparrishMines)
* This issue addresses the use of the deprecated `withNullability` method, which needs to be removed from the codebase as the package now only supports non-nullable by default mode.

### [Issue #166601](https://github.com/flutter/flutter/issues/166601): [video_player_web] `create` is deprecated
* **Author:** [bparrishMines](https://github.com/bparrishMines)
* The deprecated `create` and `buildView` methods in the `video_player_web` package's integration tests should be replaced with `createWithOptions` and `buildViewWithOptions` respectively.

### [Issue #162743](https://github.com/flutter/flutter/issues/162743): [Android] Using arrow keys on an external keyboard adds a green border around the screen
* **Author:** [corepuncher](https://github.com/corepuncher)
* On Android tablets, pressing an arrow key on an external keyboard triggers a persistent green focus highlight border around the screen, and a common native fix to disable this highlight was unsuccessful.

### [Issue #161019](https://github.com/flutter/flutter/issues/161019): Allow creating "darwin" (shared codebase for ios/macos) plugins directly in `flutter create`
* **Author:** [mgenware](https://github.com/mgenware)
* **Reactions:** **3** -- 👍 3
* This feature request proposes adding a "darwin" platform option to `flutter create` to allow for the direct generation of plugins with a shared codebase for both iOS and macOS.


# GitHub PR Report for flutter/genui
## From 2025-11-26 to 2025-11-30

This period saw a focused effort on improving the stability of surface management. A key bug fix in the `GenUiManager`, introduced in [#556](https://github.com/flutter/genui/pull/556), corrects the logic for state notifications. This update ensures that the `SurfaceAdded` event is fired only when rendering begins, with all subsequent modifications correctly triggering `SurfaceUpdated` events, leading to more accurate and reliable surface state tracking.

## Merged Pull Requests

### [PR #556](https://github.com/flutter/genui/pull/556): Fix surface creation and update notification bugs
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* **Merged At:** 2025-11-27 02:55 PM
* **Comments:** 2
* This PR corrects the surface management logic in `GenUiManager` by firing a `SurfaceAdded` event only when rendering begins and `SurfaceUpdated` events for any subsequent modifications, ensuring more accurate state notifications.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2025-11-26 to 2025-11-30

This period saw several important updates across various packages, most notably an increase in the minimum supported OS versions for Android, iOS, and macOS, which is documented in the READMEs of the affected packages ([PR #10470](https://github.com/flutter/packages/pull/10470)). The camera plugins also received significant attention; the CameraX implementation gained support for setting a target frames-per-second (FPS) for preview, streaming, and video recording ([PR #10301](https://github.com/flutter/packages/pull/10301)), and a fix was implemented to allow video recording to proceed without audio when the `RECORD_AUDIO` permission is denied on Android ([PR #10424](https://github.com/flutter/packages/pull/10424)). Additionally, to support modern tooling, `go_router_builder` was updated to ensure compatibility with version 9 of the `analyzer` package ([PR #10526](https://github.com/flutter/packages/pull/10526)).

## Merged Pull Requests

### [PR #10526](https://github.com/flutter/packages/pull/10526): [go_router_builder] Add `analyzer` 9 compatibility
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-30 07:48 AM
* **Comments:** 3
* This PR updates `go_router_builder` to support versions 8.x and 9.x of the `analyzer` package, addressing breaking API changes introduced in version 9.0.

### [PR #10490](https://github.com/flutter/packages/pull/10490): [video_player_avfoundation] Create a Dart player instance
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-26 07:38 AM
* **Comments:** 0
* This PR refactors the Dart internals of `video_player_avfoundation` by introducing a `_PlayerInstance` class to encapsulate the state and event stream for each player. This change improves maintainability and aligns the implementation with the Android version, preparing for more logic to be moved to Dart in the future.

### [PR #10470](https://github.com/flutter/packages/pull/10470): [various] Update READMEs to reflect current OS support
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-26 12:26 PM
* **Comments:** 5
* This PR updates the READMEs and Android build configurations for numerous packages to reflect the latest minimum supported OS versions, including raising the Android `minSdkVersion` to 24 and increasing the minimum required versions for iOS and macOS.

### [PR #10424](https://github.com/flutter/packages/pull/10424): [camera] fix RECORD_AUDIO permission on Android when there is no permission
* **Author:** [agrapine](https://github.com/agrapine)
* **Merged At:** 2025-11-26 09:55 AM
* **Comments:** 3
* This PR fixes an issue in the Android camera plugin where video recording would fail if the `RECORD_AUDIO` permission was not granted. The change ensures that if permission is denied, recording proceeds successfully with audio disabled.

### [PR #10301](https://github.com/flutter/packages/pull/10301): [camera_android_camerax] use MediaSettings::fps for image preview, streaming, and video recording
* **Author:** [dasyad00](https://github.com/dasyad00)
* **Merged At:** 2025-11-26 01:01 PM
* **Comments:** 1
* This PR adds support for the `MediaSettings.fps` property in `camera_android_camerax`, allowing developers to set the target frame rate for camera preview, image streaming, and video recording.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-11-26 to 2025-11-30

There were no pull requests merged or issues closed during this period. Consequently, there have been no changes to the repository's codebase or public API.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-11-26 to 2025-11-30

This period saw several key updates to the Flutter website, focusing on developer features, documentation clarity, and site infrastructure. A significant update to the Flutter web engine initialization process introduces the `forceSingleThreadedSkwasm` option, which provides developers a way to ensure compatibility in environments that lack multi-threaded WASM support ([PR #12712](https://github.com/flutter/website/pull/12712)). The website itself saw a major architectural refactor with the migration of the widget catalog from individual markdown files to a more maintainable, data-driven system using YAML and reusable components ([PR #12760](https://github.com/flutter/website/pull/12760), [PR #12755](https://github.com/flutter/website/pull/12755)). To clarify core development concepts, new glossary entries were added for "Hot reload" and "Hot restart", and related documentation was updated to reflect that hot reload for web is no longer experimental ([PR #12757](https://github.com/flutter/website/pull/12757)). Finally, a fix was merged for errors in the `RadialExpansion` class example, resolving compilation issues reported by the community ([PR #12762](https://github.com/flutter/website/pull/12762)).

## Merged Pull Requests

### [PR #12762](https://github.com/flutter/website/pull/12762): Fix errors in `RadialExpansion class` example
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-29 12:58 PM
* **Comments:** 3
* This PR fixes errors in the `RadialExpansion` class example by explicitly typing `clipRectSize` as a `double` and making the `child` property nullable.

### [PR #12760](https://github.com/flutter/website/pull/12760): Refactor widget catalog pages to generate from data
* **Author:** [schultek](https://github.com/schultek)
* **Merged At:** 2025-11-28 11:59 AM
* **Comments:** 2
* This PR refactors the widget catalog pages to be dynamically generated from data files, replacing the previous system of individual markdown files and a dedicated `CatalogPageLayout`. This change moves the catalog's definition into YAML and its rendering logic into Jaspr components, simplifying maintenance.

### [PR #12757](https://github.com/flutter/website/pull/12757): Add glossary entries for hot reload and hot restart
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2025-11-26 11:07 AM
* **Comments:** 2
* This PR adds glossary entries for "Hot reload" and "Hot restart" to define these core development features, and also updates the web FAQ to remove mentions of web hot reload being experimental.

### [PR #12755](https://github.com/flutter/website/pull/12755): Add `WidgetCatalogCategories` component
* **Author:** [schultek](https://github.com/schultek)
* **Merged At:** 2025-11-26 10:39 AM
* **Comments:** 3
* This PR introduces a new `WidgetCatalogCategories` component to render the widget category list, refactoring the display logic from Liquid templating in the markdown file into a reusable Dart component.

### [PR #12754](https://github.com/flutter/website/pull/12754): add page navigation and prefetching to the tutorial
* **Author:** [schultek](https://github.com/schultek)
* **Merged At:** 2025-11-28 02:06 AM
* **Comments:** 2
* Introduces a new `tutorial.yml` file to define the tutorial's structure, which is used to automatically generate the tutorial outline, previous/next navigation buttons on each page, and a prefetch link for the upcoming page.

### [PR #12752](https://github.com/flutter/website/pull/12752): Fix style of leading console token in code blocks
* **Author:** [schultek](https://github.com/schultek)
* **Merged At:** 2025-11-26 10:04 AM
* **Comments:** 3
* This pull request updates the styling for console code blocks by rendering the leading dollar sign (`$`) token in a different color and making it non-selectable, which improves readability and simplifies copying commands.

### 🔥 [PR #12712](https://github.com/flutter/website/pull/12712): Add forceSingleThreadedSkwasm option to Flutter web loader (#178406)
* **Author:** [Ecraindrop](https://github.com/Ecraindrop)
* **Merged At:** 2025-11-26 11:08 AM
* **Comments:** 7
* Updates the Flutter web initialization documentation to include the `forceSingleThreadedSkwasm` option, which allows developers to force the Skia WASM renderer to run in single-threaded mode for improved compatibility in environments without multi-threaded WASM support.


## Closed Issues

### [Issue #12761](https://github.com/flutter/website/issues/12761): multiple errors when trying the code form the `RadialExpansion class` example
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* The `RadialExpansion` class example in the Hero animations documentation causes compile-time errors because the `child` parameter is missing the `required` keyword and the `clipRectSize` field is missing its `double` type declaration.

### [Issue #12746](https://github.com/flutter/website/issues/12746): Hot reload on web no longer needs experiment
* **Author:** [sigurdm](https://github.com/sigurdm)
* The Flutter web FAQ documentation needs to be updated because it incorrectly states that hot reload is an experiment, when it is now enabled by default.

### [Issue #12739](https://github.com/flutter/website/issues/12739): Migrate widget catalog pages and index away from Liquid logic
* **Author:** [parlough](https://github.com/parlough)
* This issue tracks the migration of the widget catalog and index pages away from Liquid logic, with a proposal to also generate the necessary markdown files directly from data.

### [Issue #12644](https://github.com/flutter/website/issues/12644): Add glossary entries for "Hot reload" and "Hot restart"
* **Author:** [parlough](https://github.com/parlough)
* This issue requests adding definitions for "Hot reload" and "Hot restart" to the Flutter website's glossary.



## Top Hacker News Stories

### 91  [Google *Unkills* JPEG XL?](https://tonisagrista.com/blog/2025/google-unkills-jpegxl/)
* **Author:** [speckx](https://news.ycombinator.com/user?id=speckx) | **Comments:** [63](https://news.ycombinator.com/item?id=46108563)

### 308 🔥🔥 [Why xor eax, eax?](https://xania.org/202512/01-xor-eax-eax)
* **Author:** [hasheddan](https://news.ycombinator.com/user?id=hasheddan) | **Comments:** [113](https://news.ycombinator.com/item?id=46106556)

### 73  [Ask HN: Who is hiring? (December 2025)]()
* **Author:** [whoishiring](https://news.ycombinator.com/user?id=whoishiring) | **Comments:** [83](https://news.ycombinator.com/item?id=46108941)
* This text provides the posting guidelines and etiquette for employers and applicants in the "Who is Hiring?" thread on Hacker News. It also includes links to helpful job search aggregators and the companion "Who wants to be hired?" thread.

### 130 🔥 [Cartographers Have Been Hiding Covert Illustrations Inside of Switzerland's Maps](https://eyeondesign.aiga.org/for-decades-cartographers-have-been-hiding-covert-illustrations-inside-of-switzerlands-official-maps/)
* **Author:** [mhb](https://news.ycombinator.com/user?id=mhb) | **Comments:** [29](https://news.ycombinator.com/item?id=46107282)

### 45  [Google, Nvidia, and OpenAI – Stratechery by Ben Thompson](https://stratechery.com/2025/google-nvidia-and-openai/)
* **Author:** [tambourine_man](https://news.ycombinator.com/user?id=tambourine_man) | **Comments:** [33](https://news.ycombinator.com/item?id=46108437)

### 710 🔥🔥🔥 [Search tool that only returns content created before ChatGPT's public release](https://tegabrain.com/Slop-Evader)
* **Author:** [dmitrygr](https://news.ycombinator.com/user?id=dmitrygr) | **Comments:** [282](https://news.ycombinator.com/item?id=46103376)

### 1  [Better Auth (YC X25) Is Hiring](https://www.ycombinator.com/companies/better-auth/jobs/eKk5nLt-developer-relation-engineer)
* **Author:** [bekacru](https://news.ycombinator.com/user?id=bekacru) | **Comments:** [null](https://news.ycombinator.com/item?id=46109802)

### 73  [A vector graphics workstation from the 70s](https://justanotherelectronicsblog.com/?p=1429)
* **Author:** [ibobev](https://news.ycombinator.com/user?id=ibobev) | **Comments:** [7](https://news.ycombinator.com/item?id=46107177)

### 25  [ImAnim: Modern animation capabilities to ImGui applications](https://github.com/soufianekhiat/ImAnim)
* **Author:** [klaussilveira](https://news.ycombinator.com/user?id=klaussilveira) | **Comments:** [3](https://news.ycombinator.com/item?id=46109080)

### 184 🔥 [Self-hosting a Matrix server for 5 years](https://yaky.dev/2025-11-30-self-hosting-matrix/)
* **Author:** [the-anarchist](https://news.ycombinator.com/user?id=the-anarchist) | **Comments:** [73](https://news.ycombinator.com/item?id=46106132)

### 67  [The Penicillin Myth](https://www.asimov.press/p/penicillin-myth)
* **Author:** [surprisetalk](https://news.ycombinator.com/user?id=surprisetalk) | **Comments:** [31](https://news.ycombinator.com/item?id=46107658)

### 74  [A New AI Winter Is Coming](https://taranis.ie/llms-are-a-failure-a-new-ai-winter-is-coming/)
* **Author:** [voxleone](https://news.ycombinator.com/user?id=voxleone) | **Comments:** [70](https://news.ycombinator.com/item?id=46109534)

### 61  [Historic Engineering Wonders: Photos That Reveal How They Pulled It Off](https://rarehistoricalphotos.com/engineering-methods-from-the-past/)
* **Author:** [dxs](https://news.ycombinator.com/user?id=dxs) | **Comments:** [12](https://news.ycombinator.com/item?id=46045876)

### 20  [Isn't WSL2 just a VM?](https://ssg.dev/isnt-wsl2-just-a-vm/)
* **Author:** [sedatk](https://news.ycombinator.com/user?id=sedatk) | **Comments:** [5](https://news.ycombinator.com/item?id=46039140)

### 189 🔥 [Games using anti-cheats and their compatibility with GNU/Linux or Wine/Proton](https://areweanticheatyet.com/)
* **Author:** [doener](https://news.ycombinator.com/user?id=doener) | **Comments:** [252](https://news.ycombinator.com/item?id=46104396)

### 275 🔥🔥 [It’s been a very hard year](https://bell.bz/its-been-a-very-hard-year/)
* **Author:** [surprisetalk](https://news.ycombinator.com/user?id=surprisetalk) | **Comments:** [363](https://news.ycombinator.com/item?id=46103858)

### 391 🔥🔥 [A Love Letter to FreeBSD](https://www.tara.sh/posts/2025/2025-11-25_freebsd_letter/)
* **Author:** [rbanffy](https://news.ycombinator.com/user?id=rbanffy) | **Comments:** [256](https://news.ycombinator.com/item?id=46100892)

### 664 🔥🔥🔥 [Writing a good Claude.md](https://www.humanlayer.dev/blog/writing-a-good-claude-md)
* **Author:** [objcts](https://news.ycombinator.com/user?id=objcts) | **Comments:** [260](https://news.ycombinator.com/item?id=46098838)

### 86  [Detection of triboelectric discharges during dust events on Mars](https://gizmodo.com/weve-detected-lightning-on-mars-for-the-first-time-2000691996)
* **Author:** [domofutu](https://news.ycombinator.com/user?id=domofutu) | **Comments:** [45](https://news.ycombinator.com/item?id=46061390)
* This text provides a link to a research paper published in the scientific journal *Nature*.

### 79  [Trifold is a tool to quickly and cheaply host static websites using a CDN](https://www.jpt.sh/projects/trifold/)
* **Author:** [birdculture](https://news.ycombinator.com/user?id=birdculture) | **Comments:** [30](https://news.ycombinator.com/item?id=46031608)

### 314 🔥🔥 [Advent of Sysadmin 2025](https://sadservers.com/advent)
* **Author:** [lazyant](https://news.ycombinator.com/user?id=lazyant) | **Comments:** [99](https://news.ycombinator.com/item?id=46102347)

### 79  [WordPress plugin quirk resulted in UK Gov OBR Budget leak [pdf]](https://obr.uk/docs/dlm_uploads/01122025-Investigation-into-November-2025-EFO-publication-error.pdf)
* **Author:** [robtaylor](https://news.ycombinator.com/user?id=robtaylor) | **Comments:** [75](https://news.ycombinator.com/item?id=46108243)

### 37  [Victorian-style lines for the web: Elements of identical width](https://jacobfilipp.com/victorian-line/)
* **Author:** [surprisetalk](https://news.ycombinator.com/user?id=surprisetalk) | **Comments:** [3](https://news.ycombinator.com/item?id=46035507)

### 132 🔥 [SmartTube Compromised](https://www.aftvnews.com/smarttubes-official-apk-was-compromised-with-malware-what-you-should-do-if-you-use-it/)
* **Author:** [akersten](https://news.ycombinator.com/user?id=akersten) | **Comments:** [107](https://news.ycombinator.com/item?id=46103657)

### 157 🔥 [X210Ai is a new motherboard to upgrade ThinkPad X201/200](https://www.tpart.net/about-x210ai/)
* **Author:** [walterbell](https://news.ycombinator.com/user?id=walterbell) | **Comments:** [67](https://news.ycombinator.com/item?id=46103097)



