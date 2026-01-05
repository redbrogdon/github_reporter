# Overall Summary
Here are the highlights from the merged pull requests and closed issues.

**🔥🔥🔥 [PR #619](https://github.com/flutter/genui/pull/619) (flutter/genui): initial port of dartantic_interface types**
  * **Comments:** 19
  * This PR introduces the new `genai_primitives` package by porting core types from `dartantic_interface` and migrating them to use `json_schema_builder`. The new primitives include `ChatMessage` for conversation history, a hierarchy of `Part` classes for multimodal content, and `ToolDefinition` for defining tools.

**🔥🔥🔥 [PR #2736](https://github.com/dart-lang/native/pull/2736) (dart-lang/native): [native_toolchain_c] Consider `ANDROID_HOME` environment variable**
  * **Comments:** 12
  * Improves Android NDK discovery by searching in the `$ANDROID_HOME/ndk/` directory and considering other common environment variables such as `ANDROID_NDK_HOME`.

**🔥 [PR #2857](https://github.com/dart-lang/native/pull/2857) (dart-lang/native): [jnigen] Kotlin interfaces with suspend methods**
  * **Comments:** 6
  * This PR adds support for implementing Kotlin interfaces with `suspend` functions in Dart. These suspend functions are mapped to Dart functions that return a `Future`, with a new `KotlinContinuation` helper class bridging the Dart `Future` to the Kotlin coroutine.

**[Issue #61969](https://github.com/dart-lang/sdk/issues/61969) (dart-lang/sdk): [Dot shorthands] Dot shorthands break constructor references and completions**
  * **Reactions:** **14** -- 👍 14
  * Using dot shorthands for constructors breaks "go to declaration" functionality and prevents code completion from suggesting the correct constructor parameters.

**[PR #12845](https://github.com/flutter/website/pull/12845) (flutter/website): [hooks] Document `flutter create --template=package_ffi`**
  * **Comments:** 5
  * This PR updates the documentation to recommend `flutter create --template=package_ffi` with build hooks as the standard for native interop, adding a new guide for this modern approach while marking the older `plugin_ffi` template as legacy.

**[PR #10440](https://github.com/flutter/packages/pull/10440) (flutter/packages): [camera_avfoundation] Wrappers swift migration - part 4**
  * **Comments:** 5
  * This PR migrates several classes in the `camera_avfoundation` plugin from Objective-C to Swift, removing the 'FLT' prefix and replacing wrapper classes with protocol conformance on the base AVFoundation types.

**[PR #12825](https://github.com/flutter/website/pull/12825) (flutter/website): Added Docs for AGP 9**
  * **Comments:** 5
  * Adds a breaking change document that outlines the necessary migration steps for developers to build Flutter Android apps successfully with Android Gradle Plugin (AGP) version 9.0.0 and newer.

**[PR #12853](https://github.com/flutter/website/pull/12853) (flutter/website): Add AI best practices and Crossword Companion docs**
  * **Comments:** 4
  * Adds a new multi-page "AI Best Practices" documentation section covering prompting, structured output, and tool calls, using a new "Crossword Companion" sample app as a practical example.

# GitHub PR Report for dart-lang/ai
## From 2025-12-18 to 2026-01-04

This release addresses a bug in the `flutter_driver` tool where finder-based commands like `tap` and `waitFor` would fail with a type cast error, as reported in issue [#330](https://github.com/dart-lang/ai/issues/330). The problem was caused by a type mismatch in the schema for the `timeout` parameter. A fix was landed in pull request [#331](https://github.com/dart-lang/ai/pull/331), which changes the `timeout` parameter's type from an integer to a string, matching the type expected by the underlying driver extension and resolving the crashes.

## Merged Pull Requests

### [PR #331](https://github.com/dart-lang/ai/pull/331): fix the timeout parameter for flutter_driver to be of type String
* **Author:** [jakemac53](https://github.com/jakemac53)
* **Merged At:** 2026-01-02 01:28 PM
* **Comments:** 1
* This PR fixes the `timeout` parameter for the `flutter_driver` tool by changing its type in the schema from an integer to a string, which matches the underlying expected type.


## Closed Issues

### [Issue #330](https://github.com/dart-lang/ai/issues/330): [dart mcp-server] Flutter Driver finder commands fail with type cast error
* **Author:** [nannantown](https://github.com/nannantown)
* When using `dart mcp-server`, all Flutter Driver finder-based commands (e.g., `tap`, `waitFor`) fail with a `type 'int' is not a subtype of type 'String?'` error, which appears to be caused by a type mismatch when parsing the response from the driver extension.


# GitHub PR Report for dart-lang/sdk
## From 2025-12-18 to 2026-01-04

While no pull requests were merged, progress was made through the closure of numerous issues, with a strong focus on improving developer tooling and compiler features. A popular issue was addressed regarding dot shorthands for constructors, which were breaking IDE functionality like "go to declaration" and code completion ([#61969](https://github.com/dart-lang/sdk/issues/61969)). On the compiler front, a significant proposal for `dart2wasm` aims to add support for relocatable object files, which would enable static linking with other WebAssembly modules and improve interoperability ([#62322](https://github.com/dart-lang/sdk/issues/62322)). Additionally, several fixes were made to the analyzer and related tools, including a correction for the spec parser's handling of metadata on augmenting methods ([#62329](https://github.com/dart-lang/sdk/issues/62329)) and a fix for the analysis server plugin generating incorrect `// ignore:` comments ([#62325](https://github.com/dart-lang/sdk/issues/62325)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62344](https://github.com/dart-lang/sdk/issues/62344): auth
* **Author:** [samay-trigya](https://github.com/samay-trigya)
* This issue, titled 'auth', was created with the default issue template and lacks a specific description of the problem.

### [Issue #62329](https://github.com/dart-lang/sdk/issues/62329): [spac_parser] Error when adding an augmenting metadata
* **Author:** [sgrekhov](https://github.com/sgrekhov)
* The spec parser incorrectly reports a syntax error when metadata is added to an augmenting method declaration, which should be valid according to the language specification.

### [Issue #62325](https://github.com/dart-lang/sdk/issues/62325): [analysis_server_plugin] ]Ignoring a lint inserts an incorrect ignore comment
* **Author:** [alex-medinsh](https://github.com/alex-medinsh)
* When using the "Ignore for this line" quick fix for a lint provided by an `analysis_server_plugin`, the generated `// ignore:` comment omits the required plugin name prefix, which prevents the lint from being ignored.

### [Issue #62322](https://github.com/dart-lang/sdk/issues/62322): [dart2wasm] Support emitting relocatable object files
* **Author:** [simolus3](https://github.com/simolus3)
* This issue proposes that `dart2wasm` should support emitting relocatable WebAssembly object files to enable static linking with other Wasm modules (e.g., from C libraries) using tools like `wasm-ld`, which would improve interoperability and support for non-JS runtimes.

### [Issue #62317](https://github.com/dart-lang/sdk/issues/62317): useless null check undetected
* **Author:** [stephane-archer](https://github.com/stephane-archer)
* The analyzer fails to detect an unnecessary null check on a variable of a generic type `T` which could be non-nullable.

### [Issue #62313](https://github.com/dart-lang/sdk/issues/62313): [unused import][linter] undetected unused import?
* **Author:** [stephane-archer](https://github.com/stephane-archer)
* The linter fails to flag `import 'dart:async';` as an unused import in code where it can be removed without error, likely because the `Future` type used is available from `dart:core`.

### [Issue #62312](https://github.com/dart-lang/sdk/issues/62312): the signature of dart function
* **Author:** [XX-Official](https://github.com/XX-Official)
* The `analyze_snapshot` tool incorrectly reports the `FunctionType` of an AOT-compiled Dart function as `Null`, rather than reflecting its source-level signature.

### [Issue #62303](https://github.com/dart-lang/sdk/issues/62303): Remove built_value dependency from ServiceExtensionResponse
* **Author:** [jyameo](https://github.com/jyameo)

### [Issue #62302](https://github.com/dart-lang/sdk/issues/62302): Remove built_value dependency from ServiceExtensionRequest
* **Author:** [jyameo](https://github.com/jyameo)

### [Issue #62291](https://github.com/dart-lang/sdk/issues/62291): Remove built_value dependency from HotRestartResponse
* **Author:** [jyameo](https://github.com/jyameo)

### [Issue #62290](https://github.com/dart-lang/sdk/issues/62290): Remove built_value dependency from HotRestartRequest
* **Author:** [jyameo](https://github.com/jyameo)

### [Issue #62289](https://github.com/dart-lang/sdk/issues/62289): Remove built_value dependency from HotReloadResponse
* **Author:** [jyameo](https://github.com/jyameo)

### [Issue #62288](https://github.com/dart-lang/sdk/issues/62288): Remove built_value dependency from HotReloadRequest
* **Author:** [jyameo](https://github.com/jyameo)

### [Issue #62278](https://github.com/dart-lang/sdk/issues/62278): is there a way to make `HSLColor.fromAHSL(1.0, 282, 0.5, 0.5).toColor();` const?
* **Author:** [stephane-archer](https://github.com/stephane-archer)
* A user is requesting support for creating a `const Color` using the `HSLColor.fromAHSL` constructor and `toColor` method, as this is not currently possible.

### [Issue #62276](https://github.com/dart-lang/sdk/issues/62276): DateTime.fromMillisecondsSinceEpoch confuses and doesn't follow convention
* **Author:** [busslina](https://github.com/busslina)
* The `DateTime.fromMillisecondsSinceEpoch` method's default `isUtc = false` parameter is confusing and error-prone, as it interprets the conventionally UTC-based epoch timestamp in the local timezone.

### [Issue #62272](https://github.com/dart-lang/sdk/issues/62272): dart fix is failing
* **Author:** [bh-oussama](https://github.com/bh-oussama)
* Running `dart fix --apply` throws a Stack Overflow exception when attempting to apply the `specify_nonobvious_local_variable_types` fix, which appears to be caused by a recursive loop when handling generic types.

### [Issue #62259](https://github.com/dart-lang/sdk/issues/62259): Import with prefix doesn't show on annotations
* **Author:** [FMorschel](https://github.com/FMorschel)
* When an annotation from a prefixed import is used, such as `@a.immutable`, the prefix is not displayed in the IDE's UI.

### [Issue #62258](https://github.com/dart-lang/sdk/issues/62258): `Go to imports` doesn't work on annotations constructors
* **Author:** [FMorschel](https://github.com/FMorschel)
* The "Go to imports" command fails for unprefixed annotation constructors but works correctly when the annotation is prefixed.

### [Issue #62235](https://github.com/dart-lang/sdk/issues/62235): [Analyzer Plugin] Unable to enable/disable diagnostics on published packages.
* **Author:** [KlausJokisuo](https://github.com/KlausJokisuo)
* A user reports that the configuration to enable or disable specific diagnostics for a Dart analyzer plugin in `analysis_options.yaml` is not working when the plugin is consumed as a published package, but it functions correctly when referenced via a local path.

### [Issue #62218](https://github.com/dart-lang/sdk/issues/62218): [wasm] Improve the output of JavaScriptError
* **Author:** [kevmoo](https://github.com/kevmoo)
* The output for `JavaScriptError` in Wasm is uninformative and should be improved to provide more helpful details for debugging.

### [Issue #61969](https://github.com/dart-lang/sdk/issues/61969): [Dot shorthands] Dot shorthands break constructor references and completions
* **Author:** [PiotrRogulski](https://github.com/PiotrRogulski)
* **Reactions:** **14** -- 👍 14
* Using dot shorthands for constructors breaks "go to declaration" functionality and prevents code completion from suggesting the correct constructor parameters.

### [Issue #59967](https://github.com/dart-lang/sdk/issues/59967): Proposal: Add @BestPractice annotation to encourage best practices for optional parameters
* **Author:** [stan-at-work](https://github.com/stan-at-work)
* This proposal suggests adding a new `@BestPractice` annotation to the Dart SDK to mark optional parameters that are highly recommended for certain use cases, guiding developers towards better coding practices directly within the IDE without making the parameter mandatory.

### [Issue #54440](https://github.com/dart-lang/sdk/issues/54440): Doc comments could feel more "first class" if auto-complete/checking worked in IDEs
* **Author:** [matanlurey](https://github.com/matanlurey)
* **Reactions:** **1** -- 👍 1
* This issue requests that code references within documentation comments (`[...]`) receive IDE support for auto-completion and built-in diagnostics for typos, making them function more like first-class code symbols.

### [Issue #49431](https://github.com/dart-lang/sdk/issues/49431): There are targets in google3 that link summaries with dart:ui, but try to consume without it
* **Author:** [scheglov](https://github.com/scheglov)
* A temporary workaround is being implemented to address an issue where build targets in google3 consume summaries that are linked with `dart:ui` without having `dart:ui` as a dependency themselves.

### [Issue #37318](https://github.com/dart-lang/sdk/issues/37318): Clean up legacy test configurations
* **Author:** [natebosch](https://github.com/natebosch)
* This issue proposes cleaning up legacy test configurations by removing the `preview-dart-2` and `checked` arguments, as well as the now-replaced `Compiler.appJit` and `Compiler.precompiled` options.

### [Issue #32956](https://github.com/dart-lang/sdk/issues/32956): js_runtime: clean up _SyncStarIterator after removing legacy mode
* **Author:** [rakudrama](https://github.com/rakudrama)

### [Issue #57301](https://github.com/dart-lang/sdk/issues/57301): constant_identifier_names needs a class/enum-level override
* **Author:** [Hixie](https://github.com/Hixie)
* **Reactions:** **4** -- 👍 4
* This issue requests a class-level or enum-level override for the `constant_identifier_names` lint to avoid having to individually ignore warnings for constants that must follow external, non-camelCase naming conventions.


# GitHub PR Report for dart-lang/language
## From 2025-12-18 to 2026-01-04

This period saw a minor but important correction to the language specification. A spurious `const` keyword was removed from the grammar rule for augmenting extension type declarations in [#4593](https://github.com/dart-lang/language/pull/4593). This cleanup clarifies that the keyword is only applicable when augmenting declarations that include a primary constructor, ensuring the specification's accuracy.

## Merged Pull Requests

### [PR #4593](https://github.com/dart-lang/language/pull/4593): Remove spurious `const` in extension type grammar rule
* **Author:** [eernstg](https://github.com/eernstg)
* **Merged At:** 2025-12-30 09:46 AM
* **Comments:** 0
* Removes a spurious `const` keyword from the grammar rule for augmenting extension type declarations in the feature specification, as the keyword is only applicable to declarations that include a primary constructor.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2025-12-18 to 2026-01-04

This period saw significant enhancements to the Kotlin and Android interop experience. A major new feature in `jnigen` adds support for implementing Kotlin interfaces with `suspend` functions, mapping them to Dart functions that return a `Future` ([#2857](https://github.com/dart-lang/native/pull/2857)), which resolves a popular feature request ([#558](https://github.com/dart-lang/native/issues/558)). Another `jnigen` improvement fixes a compilation bug ([#2903](https://github.com/dart-lang/native/issues/2903)) where Java methods named after Dart primitive types like `bool` would cause name collisions ([#2913](https://github.com/dart-lang/native/pull/2913)). For developers targeting Android, a highly-discussed pull request ([#2736](https://github.com/dart-lang/native/pull/2736)) improved Android NDK discovery by checking the standard `$ANDROID_HOME` environment variable, a long-requested enhancement ([#2632](https://github.com/dart-lang/native/issues/2632)). Lastly, the internal `record_use` package was refactored to use a generated JSON syntax for improved maintainability and correctness ([#2868](https://github.com/dart-lang/native/pull/2868)), addressing proposals for a more formal and stable schema ([#1093](https://github.com/dart-lang/native/issues/1093), [#2681](https://github.com/dart-lang/native/issues/2681)).

## Merged Pull Requests

### [PR #2913](https://github.com/dart-lang/native/pull/2913): [jnigen] Namespace primitive types
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2026-01-01 07:28 PM
* **Comments:** 2
* Fixes a `jnigen` issue where generated code would fail to compile if a Java method was named after a Dart primitive type, such as `bool`, by prefixing all such types with `core$_` to avoid name collisions.

### [PR #2909](https://github.com/dart-lang/native/pull/2909): [native_toolchain_c] Increase test timeout
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-12-29 02:28 AM
* **Comments:** 3
* Increases the timeout for the `native_toolchain_c` NDK smoke test to five minutes to resolve a timeout failure on CI.

### [PR #2868](https://github.com/dart-lang/native/pull/2868): [record_use] Generate syntax
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-12-19 12:54 AM
* **Comments:** 3
* This PR replaces the handwritten JSON parsing and serialization logic in the `record_use` package with a generated syntax derived from a newly introduced formal JSON schema. This change automates serialization, improves maintainability, and includes enhancements to the syntax generator to support more complex types.

### 🔥 [PR #2857](https://github.com/dart-lang/native/pull/2857): [jnigen] Kotlin interfaces with suspend methods
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-12-29 02:26 PM
* **Comments:** 6
* This PR adds support for implementing Kotlin interfaces with `suspend` functions in Dart. These suspend functions are mapped to Dart functions that return a `Future`, with a new `KotlinContinuation` helper class bridging the Dart `Future` to the Kotlin coroutine.

### 🔥🔥🔥 [PR #2736](https://github.com/dart-lang/native/pull/2736): [native_toolchain_c] Consider `ANDROID_HOME` environment variable
* **Author:** [simolus3](https://github.com/simolus3)
* **Merged At:** 2025-12-29 02:03 AM
* **Comments:** 12
* Improves Android NDK discovery by searching in the `$ANDROID_HOME/ndk/` directory and considering other common environment variables such as `ANDROID_NDK_HOME`. This change also refactors tool resolvers to accept a `ToolResolvingContext`, making them easier to test with mocked environment variables.


## Closed Issues

### [Issue #2903](https://github.com/dart-lang/native/issues/2903): [Interop EAP] Generating bindings for a Java function named `bool` causes compile issues.
* **Author:** [josxha](https://github.com/josxha)
* A compilation error occurs when jnigen generates bindings for a Java method named `bool`, as the resulting Dart method name conflicts with the built-in `bool` type.

### [Issue #2871](https://github.com/dart-lang/native/issues/2871): Swiftgen code crashing after return of class in method that returns NSObject
* **Author:** [tarrinneal](https://github.com/tarrinneal)
* Code generated by ffigen crashes with an "unrecognized selector" error when a Swift method returns an instance of a custom class that is upcast to `NSObject`.

### [Issue #2717](https://github.com/dart-lang/native/issues/2717): [record_use] Completeness: dart2js: Migrate dart2js to use it
* **Author:** [dcharkes](https://github.com/dcharkes)
* This issue tracks the tasks required to complete the migration of dart2js to use the `@RecordUse` feature, including input changes and achieving feature parity with the VM.

### [Issue #2681](https://github.com/dart-lang/native/issues/2681): [record_use] Implementation: Use `package:json_syntax_generator`
* **Author:** [dcharkes](https://github.com/dcharkes)
* This issue proposes to improve JSON handling in two phases: first, by replacing manual serialization/deserialization methods with `package:json_syntax_generator` for improved maintainability and correctness, and second, by implementing a lazy deserialization view to increase performance and allow for more flexible schema evolution.

### [Issue #2632](https://github.com/dart-lang/native/issues/2632): Could the Android NDK Resolver also check for ANDROID_HOME?
* **Author:** [icnahom](https://github.com/icnahom)
* This issue proposes enhancing the Android NDK resolver to also check for the `ANDROID_HOME` environment variable, a standard and useful variable for locating Android development tools.

### [Issue #1093](https://github.com/dart-lang/native/issues/1093): [record_use] Correctness: JSON format
* **Author:** [dcharkes](https://github.com/dcharkes)
* The current JSON format for recording resource usage is flawed, with an underspecified schema and stability issues for caching due to the inclusion of volatile data like line numbers, so a revised, versioned schema is proposed to address these problems by properly scoping identifiers and making unstable information optional.

### [Issue #558](https://github.com/dart-lang/native/issues/558): Implement a Kotlin interface which includes a `suspend fun`
* **Author:** [HosseinYousefi](https://github.com/HosseinYousefi)
* **Reactions:** **1** -- 👍 1
* This issue requests the ability to implement a Kotlin interface that contains a `suspend fun` by providing an `async` Dart method.


# GitHub PR Report for flutter/ai
## From 2025-12-18 to 2026-01-04

There were no pull requests merged or issues closed during this period, resulting in no direct changes to the repository's codebase.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-12-18 to 2026-01-04

During this period, there were no pull requests merged or issues closed. This indicates a period of stability with no new features, bug fixes, or other code changes integrated into the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-12-18 to 2026-01-04

This period focused on enhancing developer experience, framework stability, and platform-specific functionality. For tooling, a new `--cross-origin-isolation` flag was added to `flutter run` to give web developers explicit control over COOP/COEP headers ([PR #180026](https://github.com/flutter/flutter/pull/180026)), and new error handlers were introduced to guide developers migrating to Android Gradle Plugin 9 ([PR #180038](https://github.com/flutter/flutter/pull/180038)). Framework stability was improved through a series of fixes preventing crashes in widgets like `DecoratedBox` ([PR #180329](https://github.com/flutter/flutter/pull/180329)) and `AnimatedGrid` ([PR #180159](https://github.com/flutter/flutter/pull/180159)) when rendered in a zero-sized environment. Key rendering bugs were also addressed, including a crash during shader hot reload when uniforms were renamed ([PR #180138](https://github.com/flutter/flutter/pull/180138)), which resolves a user-reported issue ([Issue #180101](https://github.com/flutter/flutter/issues/180101)), and a fix for incorrectly rendered rotated `ImageFilter`s ([PR #180027](https://github.com/flutter/flutter/pull/180027)). Finally, platform-specific improvements include correctly mapping `TextInputType` on Linux to show appropriate virtual keyboards ([PR #180013](https://github.com/flutter/flutter/pull/180013)) and fixing a bug with semantics announcements on Windows ([PR #180071](https://github.com/flutter/flutter/pull/180071)).

## Merged Pull Requests

### [PR #180443](https://github.com/flutter/flutter/pull/180443): Add SK_SUPPORT_LEGACY_UNSPANNED_GRADIENTS to SkUserConfig.h
* **Author:** [bungeman](https://github.com/bungeman)
* **Merged At:** 2026-01-02 12:43 PM
* **Comments:** 1
* This PR adds the `SK_SUPPORT_LEGACY_UNSPANNED_GRADIENTS` build flag for Skia, which allows Flutter to continue using deprecated gradient factory methods that are scheduled for removal upstream.

### [PR #180417](https://github.com/flutter/flutter/pull/180417): Remove @override annotations from things which are not overrides
* **Author:** [srawlins](https://github.com/srawlins)
* **Merged At:** 2025-12-31 03:53 PM
* **Comments:** 0
* Removes several incorrect `@override` annotations from top-level elements, which do not override anything, to address a new warning from the Dart Analyzer.

### [PR #180329](https://github.com/flutter/flutter/pull/180329): Make sure that a DecoratedBox doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-30 06:20 PM
* **Comments:** 0
* This PR prevents a crash in the `DecoratedBox` widget when it is rendered with a zero size and adds a regression test to verify the fix.

### [PR #180280](https://github.com/flutter/flutter/pull/180280): Make sure that a CheckedModeBanner doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-30 03:52 PM
* **Comments:** 0
* This pull request adds a test to ensure the `CheckedModeBanner` widget does not crash when rendered in a zero-sized environment.

### [PR #180263](https://github.com/flutter/flutter/pull/180263): Marks Mac_arm64_mokey native_assets_android to be unflaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* **Merged At:** 2025-12-24 02:34 AM
* **Comments:** 0
* Removes the `bringup: true` flag from the `Mac_arm64_mokey native_assets_android` test in the CI configuration, indicating that the test is now considered stable.

### [PR #180224](https://github.com/flutter/flutter/pull/180224): Make sure that a WidgetsApp doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-26 05:42 PM
* **Comments:** 1
* This PR adds a regression test to ensure that `WidgetsApp` does not crash when rendered in a zero-sized environment.

### [PR #180174](https://github.com/flutter/flutter/pull/180174): Make sure that an AnimatedSize doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-26 05:16 PM
* **Comments:** 0
* Adds a regression test for the `AnimatedSize` widget to ensure it does not crash when constrained to a zero size.

### [PR #180159](https://github.com/flutter/flutter/pull/180159): Make sure that an AnimatedGrid doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-26 05:07 PM
* **Comments:** 0
* This change prevents a crash in the `AnimatedGrid` widget that could occur when it is rendered in a zero-sized environment, and adds a regression test to verify the fix.

### [PR #180152](https://github.com/flutter/flutter/pull/180152): Reverts "[reland] Unify canvas creation and Surface code in Skwasm and CanvasKit (#179473)"
* **Author:** [auto-submit[bot]](https://github.com/apps/auto-submit)
* **Merged At:** 2025-12-19 05:37 PM
* **Comments:** 0
* This change reverts a recent refactoring that unified canvas and `Surface` code for the CanvasKit and Skwasm web renderers, as the original change is suspected of causing flaky framework tests.

### [PR #180146](https://github.com/flutter/flutter/pull/180146): Roll pub packages
* **Author:** [flutter-pub-roller-bot](https://github.com/flutter-pub-roller-bot)
* **Merged At:** 2025-12-19 04:15 PM
* **Comments:** 0
* This PR updates the `dwds` dependency in the `flutter_tools` package to version 26.2.3.

### [PR #180138](https://github.com/flutter/flutter/pull/180138): Fix issue with getUniformFloat crashing with hot reload
* **Author:** [walley892](https://github.com/walley892)
* **Merged At:** 2025-12-30 02:08 PM
* **Comments:** 2
* This PR fixes a crash during shader hot reload that would occur if a uniform was renamed or deleted after a handle to it had been acquired via `getUniformFloat`, by adding a check to verify the uniform still exists before updating it.

### [PR #180133](https://github.com/flutter/flutter/pull/180133): Partial update for `CHANGELOG` for 3.38.6 release
* **Author:** [camsim99](https://github.com/camsim99)
* **Merged At:** 2025-12-19 11:17 AM
* **Comments:** 3
* This PR updates the changelog to document several fixes and updates scheduled for the upcoming 3.38.6 release.

### [PR #180127](https://github.com/flutter/flutter/pull/180127): [ Web ] Pass `--enable-experimental-ffi` when compiling WASM tests
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-12-19 12:09 PM
* **Comments:** 3
* This change passes the `--enable-experimental-ffi` flag when compiling WASM tests to prepare for an upcoming Dart SDK change that will treat unsupported library imports as errors.

### [PR #180123](https://github.com/flutter/flutter/pull/180123): Make sure that an AnimatedList doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-26 04:48 PM
* **Comments:** 0
* Adds a regression test to ensure that an `AnimatedList` does not crash when it has a size of zero and a scroll animation is triggered.

### [PR #180108](https://github.com/flutter/flutter/pull/180108): Pass canaryFeatures to BuildSettings
* **Author:** [srujzs](https://github.com/srujzs)
* **Merged At:** 2025-12-19 10:47 AM
* **Comments:** 1
* This change passes the `canaryFeatures` flag to `BuildSettings` to correctly support diverging load strategies in the Dart Web Development Server (DWDS) and prevent issues with future versions.

### [PR #180105](https://github.com/flutter/flutter/pull/180105): Remove unnecessary RadioGroup migration TODOs
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* **Merged At:** 2025-12-19 06:04 PM
* **Comments:** 0
* This PR removes several unnecessary TODO comments related to the `RadioGroup` migration from an example test and a doc comment.

### [PR #180097](https://github.com/flutter/flutter/pull/180097): Roll pub packages
* **Author:** [flutter-pub-roller-bot](https://github.com/flutter-pub-roller-bot)
* **Merged At:** 2025-12-18 04:15 PM
* **Comments:** 1
* This automated PR updates the `video_player_android` dependency to version 2.9.1.

### [PR #180088](https://github.com/flutter/flutter/pull/180088): Make sure that an AnimatedCrossFade does not crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-12-26 04:48 PM
* **Comments:** 0
* This PR adds a regression test to ensure that the `AnimatedCrossFade` widget does not crash when rendered in a zero-sized area.

### [PR #180082](https://github.com/flutter/flutter/pull/180082): Roll pub packages
* **Author:** [flutter-pub-roller-bot](https://github.com/flutter-pub-roller-bot)
* **Merged At:** 2025-12-18 01:29 PM
* **Comments:** 1
* This PR is an automated dependency roll generated by the `flutter update-packages --force-upgrade` command.

### [PR #180071](https://github.com/flutter/flutter/pull/180071): Fix an issue where the semantics announce event may be encoded as either an int32_t or an int64_t depending on its value
* **Author:** [mattkae](https://github.com/mattkae)
* **Merged At:** 2025-12-19 12:20 PM
* **Comments:** 2
* This change fixes a bug on the Windows platform where a semantics "announce" event could fail if its `viewId` was encoded as either an `int32_t` or `int64_t`. The accessibility plugin now correctly parses the `viewId` regardless of its encoded integer size.

### [PR #180066](https://github.com/flutter/flutter/pull/180066): fix: Enable mouse drag for RefreshIndicator.noSpinner example
* **Author:** [Franklyn-R-Silva](https://github.com/Franklyn-R-Silva)
* **Merged At:** 2025-12-18 02:24 PM
* **Comments:** 2
* This PR adds a `scrollBehavior` to the `RefreshIndicator.noSpinner` sample to allow the refresh action to be triggered by a mouse drag on desktop platforms.

### [PR #180053](https://github.com/flutter/flutter/pull/180053): Small clean up in `LocalizationPlugin`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-12-22 12:08 PM
* **Comments:** 1
* This PR refactors the Android `LocalizationPlugin` by removing an unused local variable and consolidating duplicate return statements.

### [PR #180051](https://github.com/flutter/flutter/pull/180051): Remove unnecessary @RequiresApi annotations in `FlutterView.java`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-12-18 09:11 AM
* **Comments:** 0
* Removes several unnecessary `@RequiresApi` annotations in `FlutterView.java` to resolve new lint warnings that appeared after a recent change.

### [PR #180050](https://github.com/flutter/flutter/pull/180050): Remove usages of Android's `AsyncTask` in favor of `java.util.concurrent`
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-12-22 09:41 AM
* **Comments:** 2
* This PR replaces the deprecated Android `AsyncTask` with a `java.util.concurrent.ExecutorService` for handling background resource extraction in the Android embedding.

### [PR #180039](https://github.com/flutter/flutter/pull/180039): [CP-Stable] Add Flutter Errors for Migrating to AGP 9 (#179765 and #180018)
* **Author:** [jesswrd](https://github.com/jesswrd)
* **Merged At:** 2025-12-18 08:10 AM
* **Comments:** 1
* This PR adds new Gradle error handlers to guide developers through the migration to Android Gradle Plugin (AGP) 9 by detecting common build failures and providing a link to the relevant documentation.

### [PR #180038](https://github.com/flutter/flutter/pull/180038): [CP-Beta] Add Flutter Errors for Migrating to AGP 9 (#179765 and #180018)
* **Author:** [jesswrd](https://github.com/jesswrd)
* **Merged At:** 2025-12-18 08:10 AM
* **Comments:** 2
* This PR adds two new error handlers to `flutter_tools` to detect common build failures when upgrading to Android Gradle Plugin 9.0, providing developers with specific error messages and a link to the migration guide.

### [PR #180033](https://github.com/flutter/flutter/pull/180033): Remove an obsolete TODO in DataTable
* **Author:** [dkwingsmt](https://github.com/dkwingsmt)
* **Merged At:** 2025-12-18 02:13 PM
* **Comments:** 0
* Removes an obsolete `TODO` comment in `DataTable`, as the `InkWell` it refers to is now a mandatory part of the widget's implementation and no longer needs to be conditionally added.

### [PR #180027](https://github.com/flutter/flutter/pull/180027): Fix rotated image filter shader
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2025-12-18 03:37 PM
* **Comments:** 1
* This PR fixes an issue where a rotated `ImageFilter` would render incorrectly by updating the logic to prevent rerasterization when a rotation is present, which was causing the rotation information to be lost.

### [PR #180026](https://github.com/flutter/flutter/pull/180026): Add explicit `--cross-origin-isolation` flag to `flutter run`.
* **Author:** [eyebrowsoffire](https://github.com/eyebrowsoffire)
* **Merged At:** 2025-12-18 01:37 PM
* **Comments:** 0
* This change adds a `--cross-origin-isolation` flag to `flutter run`, `drive`, and `test`, allowing developers to explicitly control whether the web server serves files with COOP/COEP headers; by default, isolation is enabled when WebAssembly is used.

### [PR #180013](https://github.com/flutter/flutter/pull/180013): Set text input purpose and hints on Linux platform
* **Author:** [richardexfo](https://github.com/richardexfo)
* **Merged At:** 2025-12-19 07:50 AM
* **Comments:** 1
* This change maps Flutter's `TextInputType` to GTK's input purpose and hints on the Linux platform, allowing virtual keyboards to display appropriate layouts for different kinds of text fields, such as showing a number pad for numeric input.


## Closed Issues

### [Issue #180475](https://github.com/flutter/flutter/issues/180475): Visual Studio Icon
* **Author:** [dustinlaroche](https://github.com/dustinlaroche)
* This issue requests adding icons to the Flutter commands in the Command Palette to improve the user experience and help new users get started.

### [Issue #180430](https://github.com/flutter/flutter/issues/180430): iOS: White screen after returning from extended background when using background isolate (background_fetch)
* **Author:** [motamman](https://github.com/motamman)
* On iOS, using a background isolate via the `background_fetch` package can corrupt the Metal rendering state, causing a persistent white screen when the app is resumed after being in the background for an extended period.

### [Issue #180397](https://github.com/flutter/flutter/issues/180397): mac-37 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The host `mac-37` has lost its external network connection as observed from the connected phone device.

### [Issue #180392](https://github.com/flutter/flutter/issues/180392): win-5 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The win-5 host has lost its external network connection for the attached phone device.

### [Issue #180370](https://github.com/flutter/flutter/issues/180370): mac-13 is dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The `mac-13` build machine is offline, causing continuous integration (CI) failures.

### [Issue #180369](https://github.com/flutter/flutter/issues/180369): mac-50 and mac-12 are dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The Mac hosts `mac-50` and `mac-12` are reported as offline and unresponsive.

### [Issue #180368](https://github.com/flutter/flutter/issues/180368): mac-3 and mac-20 are dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The Mac build agents `mac-3` and `mac-20` are reported as offline and unresponsive.

### [Issue #180336](https://github.com/flutter/flutter/issues/180336): [tool_crash] DartDevelopmentServiceException
* **Author:** [jeepwashington22](https://github.com/jeepwashington22)
* A user on Windows running Flutter stable 3.38.5 is experiencing a `DartDevelopmentServiceException` tool crash when executing `flutter run -d chrome`.

### [Issue #180334](https://github.com/flutter/flutter/issues/180334): flutter fail to run project in debug mode in web
* **Author:** [MorganOphishas](https://github.com/MorganOphishas)
* When running a Flutter web project in debug mode on Windows with `flutter run -d chrome` or `flutter run -d edge`, the command fails after timing out while waiting for a connection from the browser's debug service.

### [Issue #180313](https://github.com/flutter/flutter/issues/180313): mac-17 is dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The build agent `mac-17` is offline or unresponsive, causing builds to fail.

### [Issue #180312](https://github.com/flutter/flutter/issues/180312): win-3 is dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The `win-3` Windows build agent is reported as unresponsive and needs to be investigated.

### [Issue #180286](https://github.com/flutter/flutter/issues/180286): [tool_crash] LateError: (#0      LateError._throwLocalNotInitialized (dart:_internal-patch/internal_patch.dart:214:5))
* **Author:** [firedotguy](https://github.com/firedotguy)
* A `LateError` crash occurs in the Flutter tool when performing a hot restart ('r') on a web application compiled with Wasm.

### [Issue #180278](https://github.com/flutter/flutter/issues/180278): [Web] MenuAnchor children Semantic is not reachable by Web Element inspector or Testing framework when inside a Horizontal Scrollable widget
* **Author:** [minhhoangtn](https://github.com/minhhoangtn)
* **Reactions:** **1** -- 👀 1
* When a `MenuAnchor` is used within a horizontal `ListView` on the web, its pop-up menu items are not semantically reachable, making them unselectable by browser element inspectors and testing frameworks.

### [Issue #180270](https://github.com/flutter/flutter/issues/180270): iOS App display 2 times in listview but Android app work fine
* **Author:** [dickensng](https://github.com/dickensng)
* List view items are being displayed twice on iOS, while the Android version works correctly; the bug is reproducible on both simulators and physical devices.

### [Issue #180249](https://github.com/flutter/flutter/issues/180249): win-5 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The host win-5 has lost its external network connection, as observed from a connected phone device.

### [Issue #180248](https://github.com/flutter/flutter/issues/180248): linux-52 is dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The `linux-52` host is reported to be offline and unresponsive.

### [Issue #180226](https://github.com/flutter/flutter/issues/180226): Is libjpeg-turbo SIMD disabled in Flutter engine builds?
* **Author:** [bufffun](https://github.com/bufffun)
* A user is questioning whether libjpeg-turbo's SIMD optimizations are disabled in Flutter engine builds, citing slow JPEG decoding performance and a `BUILD.gn` file that appears to turn them off.

### [Issue #180225](https://github.com/flutter/flutter/issues/180225): ReorderableLIstView in FittedBox: "Drag target size is larger than scrollable size"
* **Author:** [ronw98](https://github.com/ronw98)
* An assertion error, "Drag target size is larger than scrollable size," occurs when reordering items in a `ReorderableListView` nested within a `FittedBox` because the drag target's size is calculated using the pre-scaled constraints instead of the transformed ones.

### [Issue #180218](https://github.com/flutter/flutter/issues/180218): What is the minimum Flutter version officially required to target Android SDK 35 (Android 15)?
* **Author:** [ganeshgodase4594](https://github.com/ganeshgodase4594)
* A user is asking what the minimum required Flutter version is to target Android SDK 35 (Android 15).

### [Issue #180213](https://github.com/flutter/flutter/issues/180213): mac-26 is dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The macOS build agent `mac-26` is reported as dead or unresponsive.

### [Issue #180208](https://github.com/flutter/flutter/issues/180208): linux-82 is in quarantined state because the phone device has issue.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The machine `linux-82` has been quarantined due to an issue with its connected phone device.

### [Issue #180201](https://github.com/flutter/flutter/issues/180201): linux-14 is dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The `linux-14` machine is reported as dead and requires investigation.

### [Issue #180200](https://github.com/flutter/flutter/issues/180200): linux-51 is dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* All builds associated with the `linux-51` configuration are failing.

### [Issue #180183](https://github.com/flutter/flutter/issues/180183): [tool_crash] FileSystemException: writeFrom failed, OS Error: Operation timed out, errno = 60
* **Author:** [Takahiro-Tsuji](https://github.com/Takahiro-Tsuji)
* The `flutter pub get` command is crashing with a `FileSystemException` because a file write operation is timing out with "OS Error: Operation timed out, errno = 60".

### [Issue #180178](https://github.com/flutter/flutter/issues/180178): Assertion in navigating between pages
* **Author:** [lucorn](https://github.com/lucorn)
* Navigating between pages triggers a `_userGesturesInProgress > 0` assertion failure in `NavigatorState.didStopUserGesture` when an animation's status listeners are notified.

### [Issue #180103](https://github.com/flutter/flutter/issues/180103): test issue
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* This test issue should be ignored and left open for the time being.

### [Issue #180101](https://github.com/flutter/flutter/issues/180101): Application crashed on hotreload when renaming uniforms and using `getUniformFloat`
* **Author:** [walley892](https://github.com/walley892)
* A hot reload causes the application to crash when a shader uniform, accessed via `getUniformFloat`, is renamed in both the Dart and GLSL code.

### [Issue #180086](https://github.com/flutter/flutter/issues/180086): linux-37 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The host `linux-37` is reporting that its connected phone device has lost its external network connection.

### [Issue #180084](https://github.com/flutter/flutter/issues/180084): mac-5 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The host `mac-5` has lost its external network connection from the attached phone device.

### [Issue #180079](https://github.com/flutter/flutter/issues/180079): win-20 is dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The `win-20` build agent is reported as offline.


# GitHub PR Report for flutter/genui
## From 2025-12-18 to 2026-01-04

This period saw significant foundational changes, highlighted by the introduction of the new `genai_primitives` package in a heavily discussed pull request ([PR #619](https://github.com/flutter/genui/pull/619)). This new package establishes core public API types such as `ChatMessage` for conversation history, a hierarchy of `Part` classes for multimodal content, and `ToolDefinition` for defining tools. On the component front, the `DateTimeInput` received a major update ([PR #622](https://github.com/flutter/genui/pull/622)) that resolves several behavioral issues noted in [Issue #543](https://github.com/flutter/genui/issues/543) and adds new `firstDate` and `lastDate` properties to its API. To improve stability, a critical web compilation failure ([Issue #625](https://github.com/flutter/genui/issues/625)) was addressed by replacing an external dependency with a temporary local A2A client library ([PR #627](https://github.com/flutter/genui/pull/627)). Other maintenance work included pinning dependencies to fix CI ([PR #636](https://github.com/flutter/genui/pull/636)) and improving the release tooling ([PR #630](https://github.com/flutter/genui/pull/630)).

## Merged Pull Requests

### [PR #642](https://github.com/flutter/genui/pull/642): Minor doc cleanup.
* **Author:** [polina-c](https://github.com/polina-c)
* **Merged At:** 2025-12-23 05:19 PM
* **Comments:** 0
* This PR updates the `CONTRIBUTING.md` file to clarify package release schedules, adding `genai_primitives` to the independently released list, reformatting the lock-step release list, and including a link to internal documentation.

### [PR #641](https://github.com/flutter/genui/pull/641): Run CI every hour.
* **Author:** [polina-c](https://github.com/polina-c)
* **Merged At:** 2025-12-23 05:26 PM
* **Comments:** 0
* This PR updates the CI workflow to run hourly, which will allow for the early detection of regressions introduced by new dependency releases.

### [PR #636](https://github.com/flutter/genui/pull/636): fix(deps): pin dartantic_ai to 2.0.3, remove unused dependency on a2a in verdure/client
* **Author:** [andrewkolos](https://github.com/andrewkolos)
* **Merged At:** 2025-12-22 11:27 AM
* **Comments:** 2
* This PR pins the `dartantic_ai` dependency to version 2.0.3 to fix a CI failure caused by an incompatibility with its transitive dependencies, and also removes an unused `a2a` dependency from the `verdure/client` package.

### [PR #631](https://github.com/flutter/genui/pull/631): Update CHANGELOG entries and bump version with a patch update in prep for publishing
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-12-22 12:59 PM
* **Comments:** 0
* Prepares several packages in the `genui` monorepo for publishing version 0.6.1 by bumping their version numbers and updating their changelogs with recent fixes, features, and refactors.

### [PR #630](https://github.com/flutter/genui/pull/630): Add help, more readme info, and exclude genai_primitives from release tool
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-12-22 07:06 AM
* **Comments:** 1
* This pull request improves the usability and robustness of the command-line release tool by adding help options, fixing an issue that suppressed authentication links during publishing, excluding the `genai_primitives` package, and adding new tests and updated documentation.

### [PR #627](https://github.com/flutter/genui/pull/627): Switch to local A2A Dart client library
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-12-19 05:35 PM
* **Comments:** 4
* Replaces the external `a2a` package with a temporary, local implementation of the A2A client library to work around web compilation issues. The new library is implemented from scratch based on the A2A spec, simplifying dependencies by only including the features currently in use.

### [PR #624](https://github.com/flutter/genui/pull/624): Return dartantic to monorepo, update changelogs.
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-12-18 04:07 PM
* **Comments:** 0
* This PR brings the `genui_dartantic` package back into the monorepo, adds "in progress" sections to the changelogs for the next release, and updates several dependencies.

### [PR #622](https://github.com/flutter/genui/pull/622): fix(genui): fix `DateTimeInput` core catalog item
* **Author:** [andrewkolos](https://github.com/andrewkolos)
* **Merged At:** 2025-12-18 01:41 PM
* **Comments:** 1
* This PR fixes several issues in the `DateTimeInput` component by clarifying its placeholder text, ensuring date and time updates are atomic, and correcting the output format for date-only mode. It also adds `firstDate` and `lastDate` properties to configure the selectable date range.

### [PR #621](https://github.com/flutter/genui/pull/621): Update diagram and table.
* **Author:** [polina-c](https://github.com/polina-c)
* **Merged At:** 2025-12-18 10:52 AM
* **Comments:** 0
* Updates the README to include the new `genui_dartantic` integration package in the package list and dependency diagram.

### [PR #620](https://github.com/flutter/genui/pull/620): Update diagram and table.
* **Author:** [polina-c](https://github.com/polina-c)
* **Merged At:** 2025-12-18 10:25 AM
* **Comments:** 0
* This pull request adds the `genui_dartantic` package to the dependency diagram in the project's README file.

### 🔥🔥🔥 [PR #619](https://github.com/flutter/genui/pull/619): initial port of dartantic_interface types
* **Author:** [csells](https://github.com/csells)
* **Merged At:** 2025-12-22 05:54 PM
* **Comments:** 19
* This PR introduces the new `genai_primitives` package by porting core types from `dartantic_interface` and migrating them to use `json_schema_builder`. The new primitives include `ChatMessage` for conversation history, a hierarchy of `Part` classes for multimodal content, and `ToolDefinition` for defining tools.


## Closed Issues

### [Issue #635](https://github.com/flutter/genui/issues/635): Bots are failing at main.
* **Author:** [polina-c](https://github.com/polina-c)
* The automated bots are failing on the `main` branch, with the specific failure detailed in pull request #634.

### [Issue #626](https://github.com/flutter/genui/issues/626): Create initial package genai_primitives
* **Author:** [polina-c](https://github.com/polina-c)

### [Issue #625](https://github.com/flutter/genui/issues/625): mcp_dart 1.1.1 causes compiler crashes on Flutter Web.
* **Author:** [fedetreu](https://github.com/fedetreu)
* The `mcp_dart` package version 1.1.1 contains a syntax error that crashes the Flutter Web compiler, while older versions lack a required API, making it impossible to find a compatible version for dependent packages like `a2a`.

### [Issue #543](https://github.com/flutter/genui/issues/543): date_time_input in Core Catalog looks and behaves poorly
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* The Core Catalog's combined date and time picker loses the selected date if the flow is dismissed before a time is chosen, and its output format is overly complex and should be made configurable.

### [Issue #426](https://github.com/flutter/genui/issues/426): Support URIs associated with Catalogs as part of A2UI
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* This issue proposes associating URIs with Catalogs within A2UI to be used for schema negotiation.

### [Issue #358](https://github.com/flutter/genui/issues/358): Use centralized constant declarations for JSON schema keys, rather than literals
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* To improve maintainability and reduce typos, this issue proposes replacing hardcoded string literals for JSON schema keys with centralized constants, distinguishing between private constants and public ones for client applications.


# GitHub PR Report for flutter/packages
## From 2025-12-18 to 2026-01-04

This period focused on code modernization and general maintenance across several packages. The most significant effort was the continued migration of the `camera_avfoundation` plugin from Objective-C to Swift. This included two large pull requests ([#10440](https://github.com/flutter/packages/pull/10440), [#10641](https://github.com/flutter/packages/pull/10641)), with the more commented-on of the two ([#10440](https://github.com/flutter/packages/pull/10440)) notably replacing Objective-C wrapper classes with direct protocol conformance on the base AVFoundation types. Additional maintenance work included fixing Xcode analyzer warnings in `in_app_purchase_storekit` ([#10649](https://github.com/flutter/packages/pull/10649)) and addressing a Kotlin compiler warning in the `pigeon` code generator ([#10632](https://github.com/flutter/packages/pull/10632)).

## Merged Pull Requests

### [PR #10649](https://github.com/flutter/packages/pull/10649): [in_app_purchase_storekit] Fix Xcode 26.2 analyzer warnings
* **Author:** [jmagman](https://github.com/jmagman)
* **Merged At:** 2025-12-19 11:09 AM
* **Comments:** 0
* Fixes several analyzer warnings from Xcode 26.2 in the native test code for the `in_app_purchase_storekit` plugin.

### [PR #10644](https://github.com/flutter/packages/pull/10644): [video_player_android] update pigeon to 26.1.5
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2025-12-18 10:46 AM
* **Comments:** 1
* This PR updates the `pigeon` dependency in the `video_player_android` package to version 26.1.5.

### [PR #10641](https://github.com/flutter/packages/pull/10641): [camera_avfoundation] Wrappers swift migration - part 5
* **Author:** [RobertOdrowaz](https://github.com/RobertOdrowaz)
* **Merged At:** 2025-12-23 09:12 AM
* **Comments:** 1
* As part of an ongoing migration, this PR converts the `FLTCameraPermissionManager` and `FLTPermissionServicing` classes in the `camera_avfoundation` plugin from Objective-C to Swift.

### [PR #10632](https://github.com/flutter/packages/pull/10632): [pigeon] Fix kotlin warning about calling bridge method
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2025-12-18 06:50 AM
* **Comments:** 0
* This PR modifies the Pigeon Kotlin generator to add empty `onListen` and `onCancel` method implementations to generated event stream handlers, which resolves a "bridge method" compiler warning.

### [PR #10440](https://github.com/flutter/packages/pull/10440): [camera_avfoundation] Wrappers swift migration - part 4
* **Author:** [RobertOdrowaz](https://github.com/RobertOdrowaz)
* **Merged At:** 2025-12-17 10:34 PM
* **Comments:** 5
* This PR migrates the `FLTCaptureConnection`, `FLTCaptureDeviceFormat`, and `FLTAssetWriter` classes in the `camera_avfoundation` plugin from Objective-C to Swift, removing the 'FLT' prefix and replacing wrapper classes with protocol conformance on the base AVFoundation types.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-12-18 to 2026-01-04

During this period, there were no code changes merged or issues closed. As a result, the repository saw no new features, bug fixes, or modifications to its public API.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-12-18 to 2026-01-04

This period saw significant updates to documentation, focusing on modern development practices and tooling. A major highlight is the new multi-page guide on **AI Best Practices**, which uses a "Crossword Companion" sample app to demonstrate prompting, structured output, and tool calls ([#12853](https://github.com/flutter/website/pull/12853)). For native interop, the documentation was updated to recommend the modern `flutter create --template=package_ffi` with build hooks as the standard approach, marking the older `plugin_ffi` template as legacy ([#12845](https://github.com/flutter/website/pull/12845)). In response to ecosystem changes, a new breaking change document was added to guide developers through the necessary migration steps for Android Gradle Plugin (AGP) 9 ([#12825](https://github.com/flutter/website/pull/12825)). Several other clarifications were made based on community feedback, including clarifying the full Flutter SDK requirement for Android setup to resolve user confusion ([#12848](https://github.com/flutter/website/pull/12848), [#12837](https://github.com/flutter/website/issues/12837)), and standardizing terminology to the more inclusive "Code OSS-based editor" as suggested in issue [#12851](https://github.com/flutter/website/issues/12851) ([#12850](https://github.com/flutter/website/pull/12850)).

## Merged Pull Requests

### [PR #12877](https://github.com/flutter/website/pull/12877): Fix unclosed parentheses error on "Create a widget to make buttons" code excerpt
* **Author:** [autorejecttop](https://github.com/autorejecttop)
* **Merged At:** 2026-01-03 01:16 PM
* **Comments:** 3
* This PR fixes a syntax error in a code sample in the layout tutorial by adding a missing closing brace to a class definition.

### [PR #12875](https://github.com/flutter/website/pull/12875): Update link for Activity UI design article
* **Author:** [MoritzMessner](https://github.com/MoritzMessner)
* **Merged At:** 2026-01-03 11:52 AM
* **Comments:** 3
* This PR updates a broken link in the "Flutter for Android developers" guide to a community article on designing an Activity UI.

### [PR #12874](https://github.com/flutter/website/pull/12874): Fix broken link
* **Author:** [MoritzMessner](https://github.com/MoritzMessner)
* **Merged At:** 2026-01-03 11:53 AM
* **Comments:** 3
* This PR fixes a broken link to the `async_weather.dart` example file on the "Dart and Swift concurrency" documentation page.

### [PR #12864](https://github.com/flutter/website/pull/12864): Update FlutterLogo link to correct documentation
* **Author:** [autorejecttop](https://github.com/autorejecttop)
* **Merged At:** 2025-12-27 01:23 PM
* **Comments:** 2
* Fixes a broken link in the widget catalog for the FlutterLogo widget, updating the URL to point to the correct API documentation page.

### [PR #12855](https://github.com/flutter/website/pull/12855): Remove unused import in widgets.md
* **Author:** [sabuncu](https://github.com/sabuncu)
* **Merged At:** 2025-12-24 06:27 AM
* **Comments:** 5
* Removes an unused import of `package:flutter/services.dart` from a code example in the widgets documentation.

### [PR #12854](https://github.com/flutter/website/pull/12854): Updating the banner
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2025-12-22 07:07 AM
* **Comments:** 2
* This PR updates the site banner's text for the December livestream to link to the recording, as the event has now passed.

### [PR #12853](https://github.com/flutter/website/pull/12853): Add AI best practices and Crossword Companion docs
* **Author:** [csells](https://github.com/csells)
* **Merged At:** 2025-12-22 07:08 AM
* **Comments:** 4
* Adds a new multi-page "AI Best Practices" documentation section covering prompting, structured output, and tool calls, using a new "Crossword Companion" sample app as a practical example.

### [PR #12850](https://github.com/flutter/website/pull/12850): Fix mention to Code OSS editors
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-12-20 02:19 PM
* **Comments:** 2
* This PR corrects references to "OSS-based editor" to the more precise "Code OSS-based editor" in the quick start documentation.

### [PR #12849](https://github.com/flutter/website/pull/12849): Minor updates and fixes to MCP server page
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-12-20 02:21 PM
* **Comments:** 2
* This PR updates the MCP server documentation with corrected installation instructions for Antigravity, additional cross-links to related Firebase Studio and VS Code pages, and a standardized experimental alert component.

### [PR #12848](https://github.com/flutter/website/pull/12848): Clarify Flutter SDK requirement in Android setup
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2025-12-19 11:16 AM
* **Comments:** 2
* Clarifies in the Android setup documentation that developers must install the full Flutter SDK, as the Android Studio plugin by itself is not sufficient.

### [PR #12847](https://github.com/flutter/website/pull/12847): Fix inconsistent naming of view_models directory
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2025-12-19 09:51 AM
* **Comments:** 2
* This PR corrects an inconsistent directory name in the app architecture case study documentation, changing `view_model` to `view_models`.

### [PR #12845](https://github.com/flutter/website/pull/12845): [hooks] Document `flutter create --template=package_ffi`
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-12-22 05:21 PM
* **Comments:** 5
* This PR updates the documentation to recommend `flutter create --template=package_ffi` with build hooks as the standard for native interop, adding a new guide for this modern approach while marking the older `plugin_ffi` template as legacy.

### [PR #12843](https://github.com/flutter/website/pull/12843): Revert "Update Flutter docs to reflect Hooks changes in Dart. (#12830)"
* **Author:** [antfitch](https://github.com/antfitch)
* **Merged At:** 2025-12-19 01:35 AM
* **Comments:** 2
* This PR reverts a documentation update for FFI packages that described changes related to Dart Hooks, as the original change was submitted by mistake.

### [PR #12838](https://github.com/flutter/website/pull/12838): Update header in `using-packages` for better readability
* **Author:** [ultraslayyy](https://github.com/ultraslayyy)
* **Merged At:** 2025-12-18 07:01 AM
* **Comments:** 4
* Improves the readability of a header in the `using-packages` documentation by changing the preposition from "to" to "from".

### [PR #12825](https://github.com/flutter/website/pull/12825): Added Docs for AGP 9
* **Author:** [jesswrd](https://github.com/jesswrd)
* **Merged At:** 2025-12-22 12:06 PM
* **Comments:** 5
* Adds a breaking change document that outlines the necessary migration steps for developers to build Flutter Android apps successfully with Android Gradle Plugin (AGP) version 9.0.0 and newer.


## Closed Issues

### [Issue #12858](https://github.com/flutter/website/issues/12858): Error while using flutter_soloud in flutter flame game
* **Author:** [irfanhaider205](https://github.com/irfanhaider205)
* A user is encountering a `SoLoudFileLoadFailedException` when using the `flutter_soloud` package in a Flame game, suggesting an audio file was found but could not be loaded due to a potential permission error or file corruption.

### [Issue #12857](https://github.com/flutter/website/issues/12857): Bil
* **Author:** [Billionz1](https://github.com/Billionz1)

### [Issue #12851](https://github.com/flutter/website/issues/12851): Standardize discussion of Code OSS-based editors
* **Author:** [parlough](https://github.com/parlough)
* **Reactions:** **1** -- ❤️ 1
* This issue proposes standardizing documentation to use a more inclusive term like "Code OSS-based editors" instead of just "VS Code" to better reflect the growing number of editors that support the Dart and Flutter extensions.

### [Issue #12846](https://github.com/flutter/website/issues/12846): Luckywin
* **Author:** [officialsumitsalunke-glitch](https://github.com/officialsumitsalunke-glitch)

### [Issue #12844](https://github.com/flutter/website/issues/12844): Inconsistent naming between view_model and view_models in Flutter package structure docs vs sample app
* **Author:** [akurnaz](https://github.com/akurnaz)
* An inconsistency exists between the Flutter app architecture documentation, which recommends the singular directory name `view_model`, and the official `compass_app` sample, which uses the plural `view_models`, potentially causing confusion for developers.

### [Issue #12842](https://github.com/flutter/website/issues/12842): Barkamol
* **Author:** [barkamolsaloydinv-dotcom](https://github.com/barkamolsaloydinv-dotcom)
* This issue appears to be an invalid report, as it contains a large collection of seemingly unrelated code snippets and does not describe a specific problem with the documentation.

### [Issue #12841](https://github.com/flutter/website/issues/12841): Barkamol  batl
* **Author:** [barkamolsaloydinv-dotcom](https://github.com/barkamolsaloydinv-dotcom)
* This issue, filed against the "Get Started" documentation, contains a title and body with various code snippets that appear to be unrelated to Flutter.

### [Issue #12840](https://github.com/flutter/website/issues/12840): Calf batl
* **Author:** [barkamolsaloydinv-dotcom](https://github.com/barkamolsaloydinv-dotcom)
* This issue appears to be malformed, containing a collection of unrelated code snippets from various languages and frameworks without describing a specific problem.

### [Issue #12837](https://github.com/flutter/website/issues/12837): Trouble setting up Android Studio
* **Author:** [craigappfoundry](https://github.com/craigappfoundry)
* A user reports that the Flutter setup documentation for Android Studio is confusing, as creating a new project requires an SDK path, but the documentation implies that creating a project is the way to install the SDK, creating a circular dependency that blocks setup.



## Top Hacker News Stories

### 138 🔥 [Show HN: Tailsnitch – A security auditor for Tailscale](https://github.com/Adversis/tailsnitch)
* **Author:** [thesubtlety](https://news.ycombinator.com/user?id=thesubtlety) | **Comments:** [16](https://news.ycombinator.com/item?id=46501137)

### 43  [Try to take my position: The best promotion advice I ever got](https://andrew.grahamyooll.com/blog/Try-to-Take-My-Position/)
* **Author:** [yuppiepuppie](https://news.ycombinator.com/user?id=yuppiepuppie) | **Comments:** [14](https://news.ycombinator.com/item?id=46466027)

### 1798 🔥🔥🔥 [It's hard to justify Tahoe icons](https://tonsky.me/blog/tahoe-icons/)
* **Author:** [lylejantzi3rd](https://news.ycombinator.com/user?id=lylejantzi3rd) | **Comments:** [714](https://news.ycombinator.com/item?id=46497712)

### 22  [Pipe Dreams – The life and times of Yahoo Pipes (2023)](https://retool.com/pipes)
* **Author:** [twalichiewicz](https://news.ycombinator.com/user?id=twalichiewicz) | **Comments:** [2](https://news.ycombinator.com/item?id=46503006)

### 49  [Sega co-founder David Rosen has died](https://www.theguardian.com/games/2026/jan/05/sega-co-founder-david-rosen-dies)
* **Author:** [n1b0m](https://news.ycombinator.com/user?id=n1b0m) | **Comments:** [6](https://news.ycombinator.com/item?id=46502239)

### 37  [Gatekeepers of Law: Inside the Westlaw and LexisNexis Duopoly](https://www.thebignewsletter.com/p/gatekeepers-of-law-inside-the-westlaw)
* **Author:** [toomuchtodo](https://news.ycombinator.com/user?id=toomuchtodo) | **Comments:** [6](https://news.ycombinator.com/item?id=46502736)

### 57  [So, you want to chunk really fast?](https://minha.sh/posts/so,-you-want-to-chunk-really-fast)
* **Author:** [snyy](https://news.ycombinator.com/user?id=snyy) | **Comments:** [15](https://news.ycombinator.com/item?id=46501665)

### 21  [Refactoring – Not on the backlog (2014)](https://ronjeffries.com/xprog/articles/refactoring-not-on-the-backlog/)
* **Author:** [dhorthy](https://news.ycombinator.com/user?id=dhorthy) | **Comments:** [10](https://news.ycombinator.com/item?id=46503439)

### 16  [Utopian Scholastic](https://wol.fm/blog/utopian-scholastic.html)
* **Author:** [birdculture](https://news.ycombinator.com/user?id=birdculture) | **Comments:** [3](https://news.ycombinator.com/item?id=46502652)

### 33  [Show HN: Open-Source 8-Ch BCI Board (ESP32 and ADS1299 and OpenBCI GUI)](https://github.com/Cerelog-ESP-EEG/ESP-EEG)
* **Author:** [simontheHWguy](https://news.ycombinator.com/user?id=simontheHWguy) | **Comments:** [13](https://news.ycombinator.com/item?id=46502051)
* The author has developed the Cerelog ESP-EEG, an open-source Brain-Computer Interface (BCI) board designed as an affordable alternative to expensive research gear. The project focuses on providing superior signal integrity and is compatible with popular software like the OpenBCI GUI and BrainFlow API, with all schematics and firmware available on GitHub.

### 465 🔥🔥 [Databases in 2025: A Year in Review](https://www.cs.cmu.edu/~pavlo/blog/2026/01/2025-databases-retrospective.html)
* **Author:** [viveknathani_](https://news.ycombinator.com/user?id=viveknathani_) | **Comments:** [141](https://news.ycombinator.com/item?id=46496103)

### 217 🔥 [Show HN: DoNotNotify – log and intelligently block notifications on Android](https://donotnotify.com/)
* **Author:** [awaaz](https://news.ycombinator.com/user?id=awaaz) | **Comments:** [101](https://news.ycombinator.com/item?id=46499646)
* `DoNotNotify` is a free, privacy-focused Android app that lets you block unwanted notifications by creating content-based filtering rules, including regex. It logs all incoming notifications and runs completely on-device to combat apps that abuse essential notification channels with ads.

### 7  [O-Ring Automation](https://www.nber.org/papers/w34639)
* **Author:** [jandrewrogers](https://news.ycombinator.com/user?id=jandrewrogers) | **Comments:** [4](https://news.ycombinator.com/item?id=46503685)

### 309 🔥🔥 [Murder-suicide case shows OpenAI selectively hides data after users die](https://arstechnica.com/tech-policy/2025/12/openai-refuses-to-say-where-chatgpt-logs-go-when-users-die/)
* **Author:** [randycupertino](https://news.ycombinator.com/user?id=randycupertino) | **Comments:** [162](https://news.ycombinator.com/item?id=46499983)

### 7  [The meek did inherit the Earth, at least among ants](https://www.nytimes.com/2025/12/19/science/ants-exoskeletons-weak.html)
* **Author:** [marojejian](https://news.ycombinator.com/user?id=marojejian) | **Comments:** [3](https://news.ycombinator.com/item?id=46502709)
* This text provides a link to a *New York Times* article and a second link to an archived version of the same page.

### 6  [Show HN: Agentastic.dev is Ghostty and Git worktrees = multi-agent CC/Codex IDE](https://www.agentastic.dev/index)
* **Author:** [ahmadyan](https://news.ycombinator.com/user?id=ahmadyan) | **Comments:** [0](https://news.ycombinator.com/item?id=46501758)
* **Agentastic.dev** is a native Mac IDE designed for developers who use multiple AI coding agents in a terminal-based workflow. It simplifies managing parallel tasks by isolating each agent in its own Git worktree with a dedicated, high-performance terminal session.

### 63  [How Y Combinator made it smart to trust founders](https://elbowgreasegames.substack.com/p/when-good-actors-can-trust-each-other)
* **Author:** [spacemarine1](https://news.ycombinator.com/user?id=spacemarine1) | **Comments:** [47](https://news.ycombinator.com/item?id=46501677)

### 19  [Darwin the Man of His Times](https://aethermug.com/posts/darwin-the-man-of-his-times)
* **Author:** [mrcgnc](https://news.ycombinator.com/user?id=mrcgnc) | **Comments:** [0](https://news.ycombinator.com/item?id=46454488)

### 60  [Singularity Rootkit: SELinux bypass and netlink filter (ss/conntrack hidden)](https://github.com/MatheuZSecurity/Singularity)
* **Author:** [matheuzsec](https://news.ycombinator.com/user?id=matheuzsec) | **Comments:** [20](https://news.ycombinator.com/item?id=46498658)

### 9  [5 Years, 12 Pivots](https://boundaryml.com/blog/5-years-12-pivots)
* **Author:** [dhorthy](https://news.ycombinator.com/user?id=dhorthy) | **Comments:** [1](https://news.ycombinator.com/item?id=46436857)

### 337 🔥🔥 [RevisionDojo, a YC startup, is running astroturfing campaigns targeting kids]()
* **Author:** [red-polygon](https://news.ycombinator.com/user?id=red-polygon) | **Comments:** [57](https://news.ycombinator.com/item?id=46499976)
* YC-backed test prep company RevisionDojo is being accused by Reddit users of a sustained campaign of unethical marketing practices, including astroturfing, paying for fake posts, and pressuring critics. These same manipulation tactics are now reportedly being used to promote its newly acquired service, OnePrep, on other subreddits.

### 30  [Observability's past, present, and future](https://blog.sherwoodcallaway.com/observability-s-past-present-and-future/)
* **Author:** [shcallaway](https://news.ycombinator.com/user?id=shcallaway) | **Comments:** [5](https://news.ycombinator.com/item?id=46500900)

### 19  [Shock Wave Formation Simulator](https://kousen.github.io/shockwaves/)
* **Author:** [saikatsg](https://news.ycombinator.com/user?id=saikatsg) | **Comments:** [2](https://news.ycombinator.com/item?id=46430829)

### 243 🔥 [A spider web unlike any seen before](https://www.nytimes.com/2025/11/08/science/biggest-spiderweb-sulfur-cave.html)
* **Author:** [juanplusjuan](https://news.ycombinator.com/user?id=juanplusjuan) | **Comments:** [120](https://news.ycombinator.com/item?id=46496054)

### 148 🔥 [X blames users for Grok-generated CSAM; no fixes announced](https://arstechnica.com/tech-policy/2026/01/x-blames-users-for-grok-generated-csam-no-fixes-announced/)
* **Author:** [voxadam](https://news.ycombinator.com/user?id=voxadam) | **Comments:** [244](https://news.ycombinator.com/item?id=46503199)



