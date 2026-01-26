# Overall Summary
Here are the highlights from the recent pull request and issue closures:

**🔥🔥🔥 [PR #161803](https://github.com/flutter/flutter/pull/161803) (flutter/flutter): revert removing Twitter, retain BlueSky**
  * **Comments:** 19
  * This PR reverts the removal of the Twitter (now X) link and badge from the `README.md` to acknowledge the significant Flutter community on X and address community feedback regarding the project's social environments.

**🔥 [PR #8456](https://github.com/flutter/packages/pull/8456) (flutter/packages): [pigeon] Update analyzer and formatter**
  * **Comments:** 6
  * Updates Pigeon's dependencies to support `analyzer` 7.x and `dart_style` 3.x, with the `dart_style` update requiring the formatter to explicitly target Dart language version 3.6, which impacts code generation and styling.

**🔥 [PR #159506](https://github.com/flutter/flutter/pull/159506) (flutter/flutter): [CP-stable]Report usage of `deferred-components` to analytics.**
  * **Comments:** 6
  * This PR adds analytics tracking to `flutter_tools` to report usage of the Dart AOT Android "Deferred Components" feature by sending `flutterBuildInfo` events when the `assemble` and `build appbundle` commands are used with deferred components.

**🔥 [PR #161740](https://github.com/flutter/flutter/pull/161740) (flutter/flutter): [Impeller] remove Adreno denylist entries.**
  * **Comments:** 5
  * Removes the Impeller denylist for older Adreno GPUs (below the 630 series), enabling Impeller to run on these devices like the Adreno 500 and early 600 series thanks to recent Adreno-specific workarounds.

**🔥 [PR #11596](https://github.com/flutter/website/pull/11596) (flutter/website): Fix more engine links after monorepo**
  * **Comments:** 5
  * This PR updates numerous broken links in the Flutter documentation, correcting paths to engine source code following the monorepo merge and updating references from the `master` branch to the `main` branch.

**🔥 [Issue #10221](https://github.com/flutter/website/issues/10221) (flutter/website): iOS Localization: Missing step leads to app store entry only showing EN locale**
  * **Reactions:** **4** -- 👍 4
  * The Flutter documentation for iOS localization is missing a step, causing apps submitted to the Apple App Store to only show the English locale; the fix is to update the docs to include adding supported languages under the project's Info tab in `ios/Runner.xcodeproj` to properly declare them to the App Store.

**[Issue #59933](https://github.com/dart-lang/sdk/issues/59933) (dart-lang/sdk): Analyzer doesn't properly implement horizontal inference when record types are involved**
  * **Reactions:** **3** -- 👍 3
  * The analyzer incorrectly reports a nullability error for `s.length` when analyzing a record type in a generic function `f`, because it fails to perform horizontal inference due to `T` appearing free in the record type `(T,)`.

**[PR #1893](https://github.com/dart-lang/native/pull/1893) (dart-lang/native): [native_toolchain_c] Support Clang on Windows**
  * **Comments:** 3
  * Adds comprehensive support for Clang on Windows in `native_toolchain_c`, allowing it to discover Clang from standalone LLVM or MSVC installations and configure builds with correct target flags for x64 and ia32 architectures.

**🔥 [Issue #59901](https://github.com/dart-lang/sdk/issues/59901) (dart-lang/sdk): `dart2wasm` compiler generates Wasm code with an invalid cast when calling a function with generics.**
  * The `dart2wasm` compiler generates invalid WebAssembly code when calling functions with generics, leading to a WebAssembly VM freeze or crash in Chrome.

**🔥 [PR #161781](https://github.com/flutter/flutter/pull/161781) (flutter/flutter): Roll Dart to Version 3.8.0-1.0.dev**
  * Rolls the Dart SDK to version 3.8.0-1.0.dev, incorporating numerous upstream changes across the Dart analyzer, linter, dart2wasm compiler, and tooling, along with updates to several Dart package dependencies.


# GitHub PR Report for dart-lang/ai
## From 2025-01-16 to 2025-01-18

During this period, there were no merged pull requests or closed issues, indicating a quiet development cycle with no changes introduced to the repository's codebase, public API surface, or language features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2025-01-16 to 2025-01-18

This period saw a significant focus on refining the Dart analyzer's type inference capabilities, particularly for newer language features, and improving the robustness of the WebAssembly (Wasm) compilation pipeline. Key analyzer improvements addressed issues with horizontal inference involving record types in generic functions, where the analyzer previously reported incorrect nullability errors ([Issue #59933]), and resolved cases of incorrect generic parameter inference when record types were involved ([Issue #59918]). For `dart2wasm`, critical bugs were fixed, including the generation of invalid Wasm code when compiling functions with generics, which could lead to VM crashes ([Issue #59901]), and an examination into the compilation strategy for Dart's `int` type to Wasm's native integer or float types ([Issue #59936]). A foundational fix was also landed in the Common Front End (CFE) to correctly handle covariant fields without implicit setters, preventing crashes during AOT and dart2wasm compilation ([Issue #59692]). Additionally, issues were addressed regarding missing extension methods in the `analyzer` package ([Issue #59925]) and a perplexing "Invalid vm isolate snapshot seen" error affecting `webdev` on Windows ([Issue #59784]).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #59936](https://github.com/dart-lang/sdk/issues/59936): Wasm compilation of `int`
* **Author:** [lukehutch](https://github.com/lukehutch)
* This issue asks why Dart's Wasm compilation of `int` uses `JSNumber` instead of native Wasm `i64` or `f64` types, especially since `int` compiles to a 64-bit integer in native code.

### [Issue #59933](https://github.com/dart-lang/sdk/issues/59933): Analyzer doesn't properly implement horizontal inference when record types are involved
* **Author:** [stereotype441](https://github.com/stereotype441)
* **Reactions:** **3** -- 👍 3
* The analyzer incorrectly reports a nullability error for `s.length` when analyzing a record type in a generic function `f`, because it fails to perform horizontal inference due to `T` appearing free in the record type `(T,)`.

### [Issue #59925](https://github.com/dart-lang/sdk/issues/59925): 'flattenedToList' isn't defined for the class 'Iterable<List<Folder>>'
* **Author:** [RazorSai](https://github.com/RazorSai)
* Running `dart run build_runner build` fails with multiple "The getter 'flattenedToList' isn't defined" and "The getter 'flattenedToSet' isn't defined" errors within the `analyzer-7.2.0` package, indicating missing extension methods.

### [Issue #59921](https://github.com/dart-lang/sdk/issues/59921): Constructor colouring on DartDocs is not working
* **Author:** [FMorschel](https://github.com/FMorschel)
* Dartdoc is failing to apply syntax highlighting or coloring to constructor references like `A.foo()` within generated documentation, even though the references are correctly identified.

### [Issue #59918](https://github.com/dart-lang/sdk/issues/59918): analyzer issue with inference involving record types
* **Author:** [mraleph](https://github.com/mraleph)
* The analyzer incorrectly infers `T` as `Object?` instead of `String` for a generic parameter involved in a record type `('',)`, causing a Dart program to be rejected, while the CFE correctly infers `String` and accepts the program.

### [Issue #59914](https://github.com/dart-lang/sdk/issues/59914): Failures on pkg/compiler/test/end_to_end/dart2js_batch2_test
* **Author:** [jyameo](https://github.com/jyameo)
* New test failures are occurring for `pkg/compiler/test/end_to_end/dart2js_batch2_test` on `web-unittest-asserts-linux` configurations, possibly due to recent `analysis_server` changes.

### [Issue #59901](https://github.com/dart-lang/sdk/issues/59901): `dart2wasm` compiler generates Wasm code with an invalid cast when calling a function with generics.
* **Author:** [gmpassos](https://github.com/gmpassos)
* The `dart2wasm` compiler generates invalid WebAssembly code when calling functions with generics, leading to a WebAssembly VM freeze or crash in Chrome, while `dart2js` compiles the same code successfully.

### [Issue #59786](https://github.com/dart-lang/sdk/issues/59786): Conditional import for server/console only
* **Author:** [jodinathan](https://github.com/jodinathan)
* The user wants to implement platform-specific logic for a Dart function, `getUsers`, where clients (web/mobile) make HTTP requests and server-side console apps access the database directly, all while maintaining the same function signature using conditional imports. They are asking if this approach is feasible as their attempts with `dart.library` configurations have been unsuccessful.

### [Issue #59784](https://github.com/dart-lang/sdk/issues/59784): `Invalid vm isolate snapshot seen` when running `webdev` `e2e_test.dart` on Windows
* **Author:** [bkonyi](https://github.com/bkonyi)
* After commit `08252fc9e91cea505d1f65353675206b24ff8b85`, `webdev`'s `e2e_test.dart` on Windows is failing with an "`Invalid vm isolate snapshot seen`" error, seemingly due to the VM isolate missing its magic number.

### [Issue #59692](https://github.com/dart-lang/sdk/issues/59692): [CP] [cfe] Fix Field.isCovariantByClass for fields without implicit setters
* **Author:** [alexmarkov](https://github.com/alexmarkov)
* This cherry-pick fixes a CFE bug where final fields in constants were incorrectly marked as covariant, causing crashes during AOT and dart2wasm compilation, by ensuring fields without implicit setters are no longer marked as covariant.


# GitHub PR Report for dart-lang/language
## From 2025-01-16 to 2025-01-18

During this period, the repository primarily focused on refining the Dart language's type system and inference capabilities. Key improvements addressed the accuracy and robustness of static analysis. Specifically, a significant issue regarding missing function parameter type detection was resolved, which previously prevented Dart utility functions from providing development-time type error warnings, pushing those errors to runtime, as detailed in [Issue #4230](https://github.com/dart-lang/language/issues/4230). Furthermore, efforts were made to correct type inference in complex scenarios, particularly where it previously failed when using lists of records with generic classes and callback functions, leading to `Object?` inference instead of the expected specific type, as described in [Issue #3162](https://github.com/dart-lang/language/issues/3162). These closures collectively enhance the predictability and safety of Dart's type checking and inference mechanisms.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #4230](https://github.com/dart-lang/language/issues/4230): Missing function parameter type detection.
* **Author:** [Xekin97](https://github.com/Xekin97)
* This issue reports that function parameters are not type-checked when they are not assigned to any variable within the function, preventing Dart utility functions from providing accurate type error warnings at development time and only reporting errors at runtime.

### [Issue #3162](https://github.com/dart-lang/language/issues/3162): Type inference breaks(?) when using a list of records and a callback function
* **Author:** [ktkk](https://github.com/ktkk)
* Type inference for a generic class's callback fails, inferring `Object?` instead of `int?`, when a `List` of typedeffed records is used for one of its fields, whereas using a `List` of custom classes for the same field correctly infers `int?`.


# GitHub PR Report for dart-lang/native
## From 2025-01-16 to 2025-01-18

Recent updates to the repository have significantly enhanced both tooling capabilities and the accuracy of generated Dart APIs. A major new feature is the comprehensive support for Clang on Windows within the `native_toolchain_c` package, which now allows discovery from standalone LLVM or MSVC installations and configures builds with correct target flags for x64 and ia32 architectures, a change introduced by [PR #1893](https://github.com/dart-lang/native/pull/1893) and further refined by [PR #1910](https://github.com/dart-lang/native/pull/1910) to fully resolve [Issue #1892](https://github.com/dart-lang/native/issues/1892). The `jnigen` package received critical fixes improving the public API surface by ensuring generated enum values are consistently non-nullable, addressing [Issue #1816](https://github.com/dart-lang/native/issues/1816) through [PR #1902](https://github.com/dart-lang/native/pull/1902), and correctly respecting top-type nullability for type arguments, especially concerning Kotlin wildcards, as implemented in [PR #1909](https://github.com/dart-lang/native/pull/1909) to close [Issue #1906](https://github.com/dart-lang/native/issues/1906). For `ffigen`, improvements were made to its binding renaming logic to prevent conflicts with built-in library prefixes like `dart:ffi`, resolving [Issue #1889](https://github.com/dart-lang/native/issues/1889) with [PR #1899](https://github.com/dart-lang/native/pull/1899). Additionally, compatibility issues where `jnigen` failed to run in Flutter projects using pub workspaces have been addressed, as noted in the closure of [Issue #1900](https://github.com/dart-lang/native/issues/1900).

## Merged Pull Requests

### [PR #1910](https://github.com/dart-lang/native/pull/1910): [native_toolchain_c] Support Clang on Windows 2
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-01-17 04:14 AM
* **Comments:** 2
* Adds support for using Clang on Windows within `native_toolchain_c` by explicitly resolving and passing the necessary MSVC developer environment to Clang's compilation and linking steps, addressing an issue where Clang could not locate the required environment.

### [PR #1909](https://github.com/dart-lang/native/pull/1909): [jnigen] Respect top-type nullability of type arguments
* **Author:** [HosseinYousefi](https://github.com/HosseinYousefi)
* **Merged At:** 2025-01-17 08:22 AM
* **Comments:** 2
* This PR fixes a bug in jnigen where generated type arguments could have incorrect nullability when the original type's nullability was implicit or a Kotlin wildcard, ensuring that the nullability of type arguments properly respects the constraints of their top-level type parameters.

### [PR #1902](https://github.com/dart-lang/native/pull/1902): [jnigen] Generate enum values non-nullable
* **Author:** [HosseinYousefi](https://github.com/HosseinYousefi)
* **Merged At:** 2025-01-16 02:54 AM
* **Comments:** 2
* Fixes a bug in `jnigen` where generated enum values were incorrectly marked as nullable by adding a synthetic `NonNull` annotation during API summarization, ensuring enum constants are always non-nullable in the generated Dart bindings.

### [PR #1899](https://github.com/dart-lang/native/pull/1899): [ffigen] Fix decl_decl_collision_test.dart
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-01-16 03:12 PM
* **Comments:** 2
* This PR fixes two issues in `ffigen` by extending the binding renaming logic to resolve conflicts with built-in library prefixes such as `dart:ffi`, which ensures generated code avoids name collisions, and by updating `decl_decl_collision_test.dart` to correctly apply transformations for validation.

### [PR #1893](https://github.com/dart-lang/native/pull/1893): [native_toolchain_c] Support Clang on Windows
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-01-17 02:46 AM
* **Comments:** 3
* Adds comprehensive support for Clang on Windows in `native_toolchain_c`, allowing it to discover Clang from standalone LLVM or MSVC installations and configure builds with correct target flags for x64 and ia32 architectures. This enables developers to use Clang for Windows-based native code compilation, supported by new tests across various build modes and link types, though arm64 support is not yet included.


## Closed Issues

### [Issue #1906](https://github.com/dart-lang/native/issues/1906): Kotlin wildcards should be generated as the class top-type
* **Author:** [HosseinYousefi](https://github.com/HosseinYousefi)
* Kotlin wildcards are currently generated as `JObject?`, which causes issues when the top-type is non-nullable or has an `extends T` constraint, and should instead be generated as the class top-type.

### [Issue #1900](https://github.com/dart-lang/native/issues/1900): flutter run jnigen fails in project using pub workspaces
* **Author:** [orestesgaolin](https://github.com/orestesgaolin)
* `jnigen` fails to run in a Flutter project that uses pub workspaces because `dart run` fails due to requiring the Flutter SDK, and `flutter pub run` fails because `jnigen` is not an immediate dependency and `flutter pub run` is deprecated in favor of `dart run` which has the initial issue.

### [Issue #1892](https://github.com/dart-lang/native/issues/1892): [native_toolchain_c] Support clang on Windows
* **Author:** [dcharkes](https://github.com/dcharkes)
* This issue requests adding support for using Clang on Windows within the `native_toolchain_c` package, which will require configuring `sysroot` and informing `CCompilerConfig`.

### [Issue #1889](https://github.com/dart-lang/native/issues/1889): [ffigen] decl_decl_collision_test.dart is broken
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* The `decl_decl_collision_test.dart` in `ffigen` is broken since PR #625, with `dart analyze` reporting a conflict between an imported library and a struct name.

### [Issue #1816](https://github.com/dart-lang/native/issues/1816): `enum` generates nullable values
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* The user reports that Java `enum` declarations are generating nullable Dart values, and questions why they are represented as classes instead of Dart `enum` types.


# GitHub PR Report for flutter/ai
## From 2025-01-16 to 2025-01-18

There were no pull requests merged or issues closed during this period, indicating no changes were made to the repository's codebase or outstanding issues addressed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-01-16 to 2025-01-18

No pull requests were merged, and no issues were closed during this period, indicating no changes were introduced to the repository's codebase or outstanding issues addressed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-01-16 to 2025-01-18

This period saw a significant update to the Flutter repository, marked by a roll of the Dart SDK to version 3.8.0-1.0.dev ([PR #161781]), incorporating numerous upstream language and tooling enhancements. Community engagement was a focus, with a notable decision to revert the removal of Twitter (now X) links from the `README.md` ([PR #161803]) to better acknowledge the platform's active Flutter community, following extensive feedback. Public API and widget behavior were refined through several updates, including fixes for `Cupertino` and `Material` routes to suppress previous route transitions when a fullscreen dialog appears ([PR #161784]), and an improvement to the `TabBar`'s elastic indicator animation for smoother visual transitions ([PR #161783]). The `Autocomplete` and `RawAutocomplete` widgets saw a reland of changes that dynamically match the options view width to the input field and adapt to screen constraints ([PR #161695]). User interaction with `CupertinoSheetRoute` was enhanced by preventing it from blocking vertical drag gestures in nested scrollable content, improving scrolling in sheet bodies ([PR #161696], addressing [Issue #161623]).

Significant work continued on the Impeller rendering engine, notably expanding its compatibility to older Adreno GPUs by removing denylist entries ([PR #161740], related to [Issue #161209]) and fixing rendering artifacts on these devices with a three-fence synchronization scheme for AHB swapchains ([PR #161767]). The `Impellerc` compiler also addressed a critical issue by correctly padding `vec3` arrays in shader uniform data, preventing data corruption ([PR #161697], resolving [Issue #161645]). Web development saw improvements in debugging and rendering, including initialization of `dartLoader.rootDirectories` to enable accurate web stack trace mapping for package source paths ([PR #160383]) and embedding the `meta charset='utf-8'` tag directly in the default HTML index to ensure correct character parsing ([PR #161493]). Finally, tooling and build system stability were addressed with efforts to support newer `analyzer` versions for `pigeon` ([Issue #161820]) and the addition of analytics tracking for the Dart AOT Android "Deferred Components" feature ([PR #159506]), alongside other various cleanups and process updates.

## Merged Pull Requests

### [PR #161836](https://github.com/flutter/flutter/pull/161836): fix reorderable_list_test.dart
* **Author:** [yjbanov](https://github.com/yjbanov)
* **Merged At:** 2025-01-17 03:55 PM
* **Comments:** 1
* Fixes `reorderable_list_test.dart` by explicitly calling `drag.up()` to properly terminate a simulated drag gesture within a test, ensuring correct test execution.

### 🔥🔥🔥 [PR #161803](https://github.com/flutter/flutter/pull/161803): revert removing Twitter, retain BlueSky
* **Author:** [lukepighetti](https://github.com/lukepighetti)
* **Merged At:** 2025-01-17 04:48 PM
* **Comments:** 19
* This PR reverts the removal of the Twitter (now X) link and badge from the `README.md` to acknowledge the significant Flutter community on X and address community feedback regarding the project's social environments.

### [PR #161786](https://github.com/flutter/flutter/pull/161786): Remove tests, GLFW examples, and non-artifact builds from `linux_host_engine`.
* **Author:** [matanlurey](https://github.com/matanlurey)
* **Merged At:** 2025-01-17 06:18 PM
* **Comments:** 2
* This PR removes the `host_profile` builder, eliminates the `--build-embedder-examples` flag, and separates unit tests and benchmarks from the `linux_host_engine` CI configuration. This streamlines the builder to focus on producing host-side tooling artifacts, with tests now handled by a dedicated `linux_host_engine_test.json` configuration.

### [PR #161784](https://github.com/flutter/flutter/pull/161784): [CP-stable] Suppress previous route transition if current route is fullscreenDialog
* **Author:** [eyebrowsoffire](https://github.com/eyebrowsoffire)
* **Merged At:** 2025-01-17 10:28 AM
* **Comments:** 0
* This PR fixes an issue in Cupertino and Material routes where fullscreen dialogs would incorrectly cause the previous route to transition, by overriding `canTransitionFrom` in `CupertinoRouteTransitionMixin` and `MaterialRouteTransitionMixin` to suppress the previous route's transition when the current route is a fullscreen dialog.

### [PR #161783](https://github.com/flutter/flutter/pull/161783): [CP-stable] Fix `TabBar` glitchy elastic `Tab`  animation
* **Author:** [eyebrowsoffire](https://github.com/eyebrowsoffire)
* **Merged At:** 2025-01-17 08:11 AM
* **Comments:** 0
* This PR fixes a glitch in the `TabBar`'s elastic indicator animation, ensuring smooth transitions during both swipe and tap-driven tab changes. The animation logic has been refactored to correctly apply the elastic effect, accounting for `TextDirection` and is verified by new golden file tests.

### [PR #161781](https://github.com/flutter/flutter/pull/161781): Roll Dart to Version 3.8.0-1.0.dev
* **Author:** [a-siva](https://github.com/a-siva)
* **Merged At:** 2025-01-16 09:20 PM
* **Comments:** 0
* Rolls the Dart SDK to version 3.8.0-1.0.dev, incorporating numerous upstream changes across the Dart analyzer, linter, dart2wasm compiler, and tooling, along with updates to several Dart package dependencies.

### [PR #161778](https://github.com/flutter/flutter/pull/161778): Update social links in readme
* **Author:** [kevmoo](https://github.com/kevmoo)
* **Merged At:** 2025-01-16 03:49 PM
* **Comments:** 2
* Updates the social links in the `README.md` file by replacing the Twitter badge and handle with a BlueSky badge and handle.

### [PR #161771](https://github.com/flutter/flutter/pull/161771): [Release] Update the cherry-pick process.
* **Author:** [itsjustkevin](https://github.com/itsjustkevin)
* **Merged At:** 2025-01-17 08:57 AM
* **Comments:** 0
* This PR updates the Flutter cherry-pick process to default to automated cherry-picks, removing the need to create separate cherry-pick issues, and now requires cherry-pick authors to update the CHANGELOG.md file.

### [PR #161767](https://github.com/flutter/flutter/pull/161767): [Impeller] use 3 fences to synchronize AHB swapchains (like we do for KHR).
* **Author:** [jonahwilliams](https://github.com/jonahwilliams)
* **Merged At:** 2025-01-16 07:47 PM
* **Comments:** 2
* This PR updates Impeller's AHB swapchain synchronization to use a three-primitive synchronization scheme per frame (an acquire fence, a render-ready semaphore, and a present-ready semaphore) similar to KHR swapchains, which fixes rendering artifacts observed on Adreno GPUs.

### [PR #161765](https://github.com/flutter/flutter/pull/161765): [Impeller] when mips are disabled, also disable from sampler options.
* **Author:** [jonahwilliams](https://github.com/jonahwilliams)
* **Merged At:** 2025-01-17 05:01 PM
* **Comments:** 1
* When mipmap generation is disabled in Impeller's Vulkan backend due to GPU driver bugs, this change ensures that all samplers automatically default to reading only the base mip level, preventing issues from sampling unpopulated mip levels.

### [PR #161740](https://github.com/flutter/flutter/pull/161740): [Impeller] remove Adreno denylist entries.
* **Author:** [jonahwilliams](https://github.com/jonahwilliams)
* **Merged At:** 2025-01-16 07:47 PM
* **Comments:** 5
* Removes the Impeller denylist for older Adreno GPUs (below the 630 series), enabling Impeller to run on these devices like the Adreno 500 and early 600 series thanks to recent Adreno-specific workarounds.

### [PR #161706](https://github.com/flutter/flutter/pull/161706): Remove some stray printf debugging
* **Author:** [robert-ancell](https://github.com/robert-ancell)
* **Merged At:** 2025-01-16 03:39 PM
* **Comments:** 0
* Removes a stray `g_printerr` debugging statement from `fl_texture_registrar_test.cc`, cleaning up the test code.

### [PR #161701](https://github.com/flutter/flutter/pull/161701): Refactor event redispatching
* **Author:** [robert-ancell](https://github.com/robert-ancell)
* **Merged At:** 2025-01-16 05:37 PM
* **Comments:** 1
* This PR refactors keyboard event redispatching by removing the `FlKeyboardPendingEvent` mechanism from `FlKeyboardManager` and instead asynchronously returning events to the calling `FlView` for redispatching, which simplifies the manager and provides more context for multi-view scenarios.

### [PR #161699](https://github.com/flutter/flutter/pull/161699): Fix link to Linux custom embedder artifacts
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* **Merged At:** 2025-01-17 07:01 PM
* **Comments:** 1
* This PR fixes the download link for Linux custom embedder artifacts by adding a missing `.zip` extension, updates other documentation links to reflect the monorepo merge, and refreshes example commit hashes to the latest stable Flutter engine.

### [PR #161697](https://github.com/flutter/flutter/pull/161697): [Impellerc] correctly pad arrays of vec3s in reflector.
* **Author:** [jonahwilliams](https://github.com/jonahwilliams)
* **Merged At:** 2025-01-16 05:28 PM
* **Comments:** 1
* Fixes an Impellerc reflector issue where arrays of `vec3`s were not correctly padded in memory layout, leading to data corruption when uploading shader uniform data. This change ensures proper padding is inserted between array elements and is validated by a new test for `vec3` uniform arrays.

### [PR #161696](https://github.com/flutter/flutter/pull/161696): Do not block vertical drag gestures in CupertinoSheetRoute body
* **Author:** [MitchellGoodwin](https://github.com/MitchellGoodwin)
* **Merged At:** 2025-01-16 02:57 PM
* **Comments:** 1
* This PR refactors `_CupertinoDownGestureDetectorState` to wrap its child with a `Listener`, which fixes an issue where vertical drag gestures were blocked in `CupertinoSheetRoute` bodies, preventing scrolling in nested scrollable content.

### [PR #161695](https://github.com/flutter/flutter/pull/161695): Reland "#143249 Autocomplete options width"
* **Author:** [victorsanni](https://github.com/victorsanni)
* **Merged At:** 2025-01-17 12:51 AM
* **Comments:** 0
* Relands changes to `Autocomplete` and `RawAutocomplete` that ensure the options view dynamically matches the width of the input field, adapts its position and size to various screen constraints including when the field and options are separated, and handles options visibility when the field scrolls off-screen with platform-specific behavior.

### [PR #161637](https://github.com/flutter/flutter/pull/161637): Make fl_keyboard_manager_handle_event async
* **Author:** [robert-ancell](https://github.com/robert-ancell)
* **Merged At:** 2025-01-16 04:21 PM
* **Comments:** 0
* Makes `fl_keyboard_manager_handle_event` asynchronous, allowing callers to track when keyboard event processing completes, which improves testability and simplifies refactoring. The change also extracts the redispatch check into a new `fl_keyboard_manager_is_redispatched` function.

### [PR #161626](https://github.com/flutter/flutter/pull/161626): [Impeller] Update partial repaint to use a fullsize onscreen.
* **Author:** [jonahwilliams](https://github.com/jonahwilliams)
* **Merged At:** 2025-01-16 01:15 PM
* **Comments:** 0
* Updates Impeller's partial repaint on Metal to render to a full-sized offscreen texture instead of a smaller offset one, using a new `SwapchainTransientsMTL` cache to reuse textures, which fixes rendering bugs and improves performance by reducing re-allocations at the cost of higher peak memory.

### [PR #161613](https://github.com/flutter/flutter/pull/161613): Enable duplicate `linux_host_engine_test`.
* **Author:** [matanlurey](https://github.com/matanlurey)
* **Merged At:** 2025-01-16 02:57 PM
* **Comments:** 2
* This PR fully enables the `linux_host_engine_test` CI job for presubmit by removing its `bringup` status and updating its configuration to build essential targets and explicitly run host tests across debug, profile, and release configurations, thereby consolidating test execution.

### [PR #161533](https://github.com/flutter/flutter/pull/161533): route CLI command usage information through the logger instead of using `print`
* **Author:** [andrewkolos](https://github.com/andrewkolos)
* **Merged At:** 2025-01-16 02:57 PM
* **Comments:** 0
* This PR routes CLI command usage information through `globals.logger.printStatus` within the base `FlutterCommand` class, standardizing how help messages are displayed for all commands and removing direct `print` calls or custom `PrintFn` parameters from subclasses.

### [PR #161493](https://github.com/flutter/flutter/pull/161493): Set meta tag in default index
* **Author:** [srujzs](https://github.com/srujzs)
* **Merged At:** 2025-01-16 03:39 PM
* **Comments:** 3
* Moves the `meta charset='utf-8'` tag from dynamic JavaScript insertion to direct embedding in the default HTML index for web applications. This change ensures correct UTF-8 parsing for DDC and library bundle module formats, resolving an issue where the dynamic tag insertion occurred too late.

### [PR #160663](https://github.com/flutter/flutter/pull/160663): remove usage of `Usage` from build system
* **Author:** [andrewkolos](https://github.com/andrewkolos)
* **Merged At:** 2025-01-16 03:39 PM
* **Comments:** 0
* This PR removes the `Usage` object as a dependency from the `Environment` class within the build system, simplifying its dependencies and streamlining analytics reporting by eliminating all `Usage` imports and related event calls.

### [PR #160383](https://github.com/flutter/flutter/pull/160383): Initialize dartLoader.rootDirectories so the Web stack trace mapper can convert package source paths
* **Author:** [jason-simmons](https://github.com/jason-simmons)
* **Merged At:** 2025-01-16 05:16 PM
* **Comments:** 2
* Initializes `window.$dartLoader.rootDirectories` in the web bootstrap with the application's base URI. This enables the web stack trace mapper to correctly convert package source paths, resolving issue #158109 related to inaccurate web stack traces.

### 🔥 [PR #159506](https://github.com/flutter/flutter/pull/159506): [CP-stable]Report usage of `deferred-components` to analytics.
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-01-16 04:37 PM
* **Comments:** 6
* This PR adds analytics tracking to `flutter_tools` to report usage of the Dart AOT Android "Deferred Components" feature by sending `flutterBuildInfo` events when the `assemble` and `build appbundle` commands are used with deferred components.


## Closed Issues

### [Issue #161852](https://github.com/flutter/flutter/issues/161852): Prevent Tracking of ._* Files on exFAT Volumes in Repository
* **Author:** [Satsrag](https://github.com/Satsrag)
* Git is tracking macOS-generated `._*` resource fork files on exFAT volumes, which should not be version controlled; the proposed solution is to update `.gitignore` to ignore all `._*` files while ensuring the `.git` directory remains tracked.

### [Issue #161845](https://github.com/flutter/flutter/issues/161845): mac-8 lost external connection from phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The mac-8 device, running in the LUCI/Cocoon infrastructure, lost its external connection to a phone device.

### [Issue #161831](https://github.com/flutter/flutter/issues/161831): mac-2 lost external connection from phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The mac-2 device lost its external connection from a phone device, identified as a bug within the LUCI, Github, Cocoon scheduler, and Autosubmit infrastructure environment.

### [Issue #161820](https://github.com/flutter/flutter/issues/161820): [pigeon] Support Analyzer 7.x
* **Author:** [JaseElder](https://github.com/JaseElder)
* Users are unable to install `pigeon` alongside `riverpod_lint` (or similar packages) due to an incompatibility with `analyzer` versions, where `pigeon` requires `<7.0.0` while `riverpod_lint` requires `^7.0.0`.

### [Issue #161817](https://github.com/flutter/flutter/issues/161817): mac-7, mac-29 and mac-25 lost external connection from phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* Devices mac-7, mac-29, and mac-25 are experiencing a loss of external connection from phone devices, identified as a bug occurring within the LUCI, Github, Cocoon scheduler, and Autosubmit infrastructure environment.

### [Issue #161782](https://github.com/flutter/flutter/issues/161782): Flutter release builder should schedule engine builds for all platforms from monorepo
* **Author:** [christopherfujino](https://github.com/christopherfujino)
* The Flutter release builder script `release_builder.py` currently filters engine build targets based on the current platform, but it should be updated to schedule engine builds for all platforms from the monorepo.

### [Issue #161779](https://github.com/flutter/flutter/issues/161779): Presubmits get blocked on Merge Queue Guard if non-engine tests fail
* **Author:** [jtmcdole](https://github.com/jtmcdole)

### [Issue #161772](https://github.com/flutter/flutter/issues/161772): Monorepo engine builds on a release branch fail to locate .ci.yaml
* **Author:** [christopherfujino](https://github.com/christopherfujino)
* Monorepo engine builds on a release branch are failing because they cannot locate the `.ci.yaml` file, with a specific CI example provided.

### [Issue #161770](https://github.com/flutter/flutter/issues/161770): Get Flutter release eng rotation access to create recipes branches
* **Author:** [christopherfujino](https://github.com/christopherfujino)

### [Issue #161769](https://github.com/flutter/flutter/issues/161769): mac-1 lost external connection from phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* A bug is reported where mac-1 lost its external connection to a phone device within the LUCI/Github/Cocoon infrastructure.

### [Issue #161761](https://github.com/flutter/flutter/issues/161761): mac-24 lost external connection from phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The mac-24 device lost its external connection to a phone device.

### [Issue #161753](https://github.com/flutter/flutter/issues/161753): mac-25 and mac-9 lost external connection from phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* Devices `mac-25` and `mac-9` lost their external connection to a phone device, which appears to be a bug within the LUCI, Github, and Cocoon scheduler infrastructure.

### [Issue #161728](https://github.com/flutter/flutter/issues/161728): [firebase_core] FAILURE: Build failed with an exception
* **Author:** [imadityacoder](https://github.com/imadityacoder)
* The user is encountering a `FAILURE: Build failed with an exception` when running `flutter run` after integrating Firebase, specifically reporting an `Unexpected lock protocol found in lock file` and `Could not get unknown property 'android' for project ':firebase_core'` error, despite `flutter doctor` showing no issues.

### [Issue #161725](https://github.com/flutter/flutter/issues/161725): setApplicationSwitcherDescription primaryColor issue
* **Author:** [robertnicjoo](https://github.com/robertnicjoo)
* **Reactions:** **1** -- 👍 1
* The user reports that `Theme.of(context).primaryColor.value` used in `SystemChrome.setApplicationSwitcherDescription` is deprecated in Flutter 3.27.2, causing application titles to become invisible in the switcher, and requests guidance on how to update the code and improve documentation for API changes.

### [Issue #161685](https://github.com/flutter/flutter/issues/161685): MethodChannel.invoke succeeds when not implemented
* **Author:** [justinmc](https://github.com/justinmc)
* `MethodChannel.invoke` incorrectly resolves to `null` instead of throwing a `MissingPluginException` when an unimplemented method is called, which contradicts the documented behavior.

### [Issue #161677](https://github.com/flutter/flutter/issues/161677): Adding `use_frameworks! :linkage => :static` to the `Podfile` makes Xcode building forever
* **Author:** [Tom3652](https://github.com/Tom3652)
* Adding `use_frameworks! :linkage => :static` to the `Podfile` in a Flutter project, specifically to resolve issues with transitive static dependencies from ad mediation frameworks, causes Xcode builds to hang indefinitely without error, and the user is seeking workarounds or clarification on the change.

### [Issue #161673](https://github.com/flutter/flutter/issues/161673): [tool_crash] StateError: Bad state: No running isolate (inspector is not set).
* **Author:** [alielhasan85](https://github.com/alielhasan85)
* A user encountered a `StateError: Bad state: No running isolate (inspector is not set)` when attempting to run a Flutter application on Chrome using `flutter run --machine --start-paused`.

### [Issue #161659](https://github.com/flutter/flutter/issues/161659): Occasional crashes occur when Flutter uses unity based on flutter_unity_widget
* **Author:** [lenzols](https://github.com/lenzols)
* A Flutter app crashes on Android with a `FATAL:flutter/shell/platform/android/image_external_texture_gl.cc(82)] Check failed: display != EGL_NO_DISPLAY.` error when frequently switching between a `UnityWidget` (from `flutter_unity_widget`) and a WebView-based page.

### [Issue #161645](https://github.com/flutter/flutter/issues/161645): [Impeller] Rendering error in blur hash shader due to uniform padding.
* **Author:** [xioxin](https://github.com/xioxin)
* A rendering error occurs in the `blurhash_shader` package when using Flutter 3.27.2 with the Impeller rendering engine and Vulkan backend on Android 15, resulting in incorrect blurhash display due to suspected uniform padding issues, particularly with shaders requiring more computational cost.

### [Issue #161623](https://github.com/flutter/flutter/issues/161623): CupertinoSheetRoute blocks nested scrolling
* **Author:** [MitchellGoodwin](https://github.com/MitchellGoodwin)
* The `CupertinoSheetRoute` currently prevents vertical scrolling within a nested `ListView` placed in the sheet's body, which should ideally prioritize the inner scrollable content over the sheet's own scroll gesture.

### [Issue #161583](https://github.com/flutter/flutter/issues/161583): [pigeon] Pigeon not working with dart_style version above 3.0.1
* **Author:** [chihuy105](https://github.com/chihuy105)
* `pigeon` version 22.7.2 fails `pub get` when used with `auto_route_generator` 9.3.1 due to an incompatible dependency on `dart_style`: `pigeon` requires `^2.3.4` while `auto_route_generator` requires `^3.0.1`, causing a version solving failure.

### [Issue #161579](https://github.com/flutter/flutter/issues/161579): Opening app from iOS Target Extension doesn't loading the dependencies (pods) needed for main App
* **Author:** [davidfranquet](https://github.com/davidfranquet)
* Opening a Flutter app from an iOS Share Extension when the app is in a terminated state prevents it from loading its CocoaPods dependencies, leading to `PlatformException` errors, though it functions correctly if the app is already running in the background.

### [Issue #161564](https://github.com/flutter/flutter/issues/161564): Issue Compiling Linux Desktop Project, Break in input widget after SDK 3.22 version
* **Author:** [B0yEditi0n](https://github.com/B0yEditi0n)
* A Flutter desktop application running on Linux Mint crashes when an input widget is clicked, occurring consistently after updating the Flutter SDK past version 3.22/3.24, and the terminal logs do not provide specific error details for the crash.

### [Issue #161517](https://github.com/flutter/flutter/issues/161517): Input fields not working in Flutter Web when opened inside the in-app browser on Android.
* **Author:** [LoadJulz](https://github.com/LoadJulz)
* Flutter Web input fields do not trigger the virtual keyboard when opened inside an in-app browser (e.g., Telegram) on Android, preventing text input, though they work correctly in a standard browser.

### [Issue #161454](https://github.com/flutter/flutter/issues/161454): System crash when launch Android project on API34 and API35
* **Author:** [vvlad-islavs](https://github.com/vvlad-islavs)
* A Windows 10/11 system with an RTX 2060 SUPER experiences a Blue Screen of Death (BSoD) when launching a Flutter Android project on an emulator targeting API 34 or API 35, though it functions correctly without a graphics card or when targeting APIs lower than 34.

### [Issue #161446](https://github.com/flutter/flutter/issues/161446): Requesting to re-image OS onto flutter-devicelab-mac-1 due machine failure during testing.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* Machine `flutter-devicelab-mac-1` requires an OS re-image due to a machine failure encountered during testing within the LUCI infrastructure.

### [Issue #161444](https://github.com/flutter/flutter/issues/161444): Requesting to re-image OS onto flutter-devicelab-mac-14 due machine failure during testing.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* A bug was reported where flutter-devicelab-mac-14 failed during testing, requiring an OS re-image.

### [Issue #161221](https://github.com/flutter/flutter/issues/161221): gclient sync report flutter/dart-sdk/windows-arm64@xxxxxx  no such tag
* **Author:** [NicholasHwang](https://github.com/NicholasHwang)
* `gclient sync` fails with a "no such tag" error for `flutter/dart-sdk/windows-arm64@xxxxxx` when trying to synchronize dependencies after setting the `flutter/engine` URL to a specific commit.

### [Issue #161209](https://github.com/flutter/flutter/issues/161209): [Impeller] re-enable 600 series Adreno
* **Author:** [jonahwilliams](https://github.com/jonahwilliams)
* This issue tracks re-enabling 600 series Adreno devices, which are currently disabled because PorterDuff and Conical Gradient shaders fail to compile, by implementing workarounds in the shader code.

### [Issue #161118](https://github.com/flutter/flutter/issues/161118): examples of SelectableText.contextMenuBuilder raise errors 
* **Author:** [seung-cha](https://github.com/seung-cha)
* **Reactions:** **1** -- 👍 1
* The `SelectableText.contextMenuBuilder` example in the official API documentation raises an assertion error "The targeted input element must be the active input element" when users attempt to drag text.


# GitHub PR Report for flutter/genui
## From 2025-01-16 to 2025-01-18

There were no pull requests merged or issues closed during this period, indicating no changes were made to the repository's codebase or outstanding tasks resolved.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2025-01-16 to 2025-01-18

This period focused on key tooling updates and refinement for existing plugins within the repository. A significant change involved updating [Pigeon](https://github.com/flutter/packages/tree/main/packages/pigeon)'s dependencies, as detailed in [PR #8456](https://github.com/flutter/packages/pull/8456), to support `analyzer` 7.x and `dart_style` 3.x. This update is crucial for maintaining compatibility with the latest Dart language features and development practices, specifically requiring the formatter to target Dart 3.6, which impacts code generation and styling. Additionally, the `local_auth_darwin` plugin saw an improvement in its biometrics handling, with [PR #8348](https://github.com/flutter/packages/pull/8348) ensuring it correctly differentiates between unavailable Face ID hardware and instances where app permissions have been denied.

## Merged Pull Requests

### 🔥 [PR #8456](https://github.com/flutter/packages/pull/8456): [pigeon] Update analyzer and formatter
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-01-18 07:24 AM
* **Comments:** 6
* Updates Pigeon's dependencies to support `analyzer` 7.x and `dart_style` 3.x, with the `dart_style` update requiring the formatter to explicitly target Dart language version 3.6.

### [PR #8348](https://github.com/flutter/packages/pull/8348): [local_auth_darwin] Handle when FaceID hardware is available but permissions have been denied for the app
* **Author:** [jmagman](https://github.com/jmagman)
* **Merged At:** 2025-01-17 11:51 AM
* **Comments:** 0
* The `local_auth_darwin` plugin now correctly handles scenarios where biometry hardware (like Face ID) is available but app permissions have been denied, ensuring that `deviceCanSupportBiometrics` returns `true` by checking `biometryType` alongside `LAErrorBiometryNotAvailable` to prevent misinterpreting a permission denial as a lack of hardware.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-01-16 to 2025-01-18

No pull requests were merged, and no issues were closed during this period, indicating no recent changes to the repository's codebase or resolution of pending items based on the provided summaries.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-01-16 to 2025-01-18

The recent updates to the repository primarily focused on significant documentation enhancements and critical link corrections. A major theme involved updating numerous broken links throughout the Flutter documentation, especially to reflect the monorepo merge and the change of the default branch from `master` to `main`, with prominent fixes seen in [PR #11596](https://github.com/flutter/website/pull/11596), which garnered multiple comments, and further general updates in [PR #11601](https://github.com/flutter/website/pull/11601). On the public API surface, the `WebGoldenComparator` was deprecated in favor of a unified `GoldenFileComparator` across all web rendering backends, streamlining golden file testing and removing the need for a web-specific API ([PR #11597](https://github.com/flutter/website/pull/11597)). Critical documentation fixes included resolving a long-standing issue with iOS localization where a missing step prevented apps from properly declaring supported languages to the Apple App Store, a fix that arose from [Issue #10221](https://github.com/flutter/website/issues/10221), which received significant community reactions. Additionally, the `add-to-app` documentation was clarified by elevating a note about Flutter 3.27 requirements for `include_flutter.groovy` to a more prominent warning ([PR #11593](https://github.com/flutter/website/pull/11593), closing [Issue #11485](https://github.com/flutter/website/issues/11485)), and a `ShimmerLoading` example was corrected to properly handle null safety, addressing [Issue #11545](https://github.com/flutter/website/issues/11545).

## Merged Pull Requests

### [PR #11601](https://github.com/flutter/website/pull/11601): Update links to 'main' branch
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* **Merged At:** 2025-01-17 01:40 PM
* **Comments:** 1
* This PR updates numerous links across documentation and configuration files to reflect the change of the default branch from 'master' to 'main' in the Flutter repository.

### [PR #11597](https://github.com/flutter/website/pull/11597): Mark `WebGoldenComparator` deprecated.
* **Author:** [matanlurey](https://github.com/matanlurey)
* **Merged At:** 2025-01-17 10:54 AM
* **Comments:** 1
* This PR adds documentation to the breaking changes section for the deprecation of `WebGoldenComparator` in favor of `GoldenFileComparator` across all web rendering backends, unifying golden file comparison APIs and removing the need for a web-specific comparator now that the HTML backend is being removed.

### [PR #11596](https://github.com/flutter/website/pull/11596): Fix more engine links after monorepo
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* **Merged At:** 2025-01-17 12:01 PM
* **Comments:** 5
* This PR updates numerous broken links in the Flutter documentation, correcting paths to engine source code following the monorepo merge and updating references from the `master` branch to the `main` branch.

### [PR #11593](https://github.com/flutter/website/pull/11593): Changing a note to a warning and changing master -> main
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2025-01-16 12:29 PM
* **Comments:** 2
* Updates the 'Add to App' documentation by promoting a note about Flutter 3.27 requirements for `include_flutter.groovy` to a warning, and consistently updating all `master` branch references to `main` across the files.


## Closed Issues

### [Issue #11545](https://github.com/flutter/website/issues/11545): Null Safety issue on the given example!
* **Author:** [kishan-dhankecha](https://github.com/kishan-dhankecha)
* The `ShimmerLoading` example code on the Flutter documentation website uses a null check operator (`!`) on `Shimmer.of(context)`, which can lead to a `Null check operator used on a null value` error if `Shimmer.of(context)` returns null; the proposed fix involves checking for null before accessing `shimmer` properties.

### [Issue #11485](https://github.com/flutter/website/issues/11485): Note: include_flutter.groovy from Kotlin code requires Flutter 3.27
* **Author:** [zzzjim](https://github.com/zzzjim)
* The user suggests changing a "Note" about Flutter 3.27 being required to invoke `include_flutter.groovy` from Kotlin to a "Warning" on the `add-to-app` documentation page, noting it applies to both `settings.gradle.kts` and `settings.gradle`.

### [Issue #10221](https://github.com/flutter/website/issues/10221): iOS Localization: Missing step leads to app store entry only showing EN locale
* **Author:** [heslegend](https://github.com/heslegend)
* **Reactions:** **4** -- 👍 4
* The Flutter documentation for iOS localization is missing a step, causing apps submitted to the Apple App Store to only show the English locale; the fix is to update the docs to include adding supported languages under the project's Info tab in `ios/Runner.xcodeproj` to properly declare them to the App Store.



## Top Hacker News Stories

### 37  [BirdyChat becomes first European chat app that is interoperable with WhatsApp](https://www.birdy.chat/blog/first-to-interoperate-with-whatsapp)
* **Author:** [joooscha](https://news.ycombinator.com/user?id=joooscha) | **Comments:** [0](https://news.ycombinator.com/item?id=46746476)

### 29  [Raspberry Pi Drag Race: Pi 1 to Pi 5 – Performance Comparison](https://the-diy-life.com/raspberry-pi-drag-race-pi-1-to-pi-5-performance-comparison/)
* **Author:** [verginer](https://news.ycombinator.com/user?id=verginer) | **Comments:** [11](https://news.ycombinator.com/item?id=46745922)

### 340 🔥🔥 [Doing gigabit Ethernet over my British phone wires](https://thehftguy.com/2026/01/22/doing-gigabit-ethernet-over-my-british-phone-wires/)
* **Author:** [user5994461](https://news.ycombinator.com/user?id=user5994461) | **Comments:** [187](https://news.ycombinator.com/item?id=46742362)

### 71  [How I Became a Quant (2007) [pdf]](https://engineering.nyu.edu/sites/default/files/2021-10/How_I_Became_a_Quant%20%281%29.pdf)
* **Author:** [sonabinu](https://news.ycombinator.com/user?id=sonabinu) | **Comments:** [37](https://news.ycombinator.com/item?id=46675030)

### 127 🔥 [Claude Code's new hidden feature: Swarms](https://twitter.com/NicerInPerson/status/2014989679796347375)
* **Author:** [AffableSpatula](https://news.ycombinator.com/user?id=AffableSpatula) | **Comments:** [97](https://news.ycombinator.com/item?id=46743908)
* The provided text links to a GitHub repository for "claude-sneakpeek," offering an early look or integration related to the Claude AI model. This project is also referenced in an accompanying social media post.

### 285 🔥🔥 [How I estimate work](https://www.seangoedecke.com/how-i-estimate-work/)
* **Author:** [mattjhall](https://news.ycombinator.com/user?id=mattjhall) | **Comments:** [159](https://news.ycombinator.com/item?id=46742389)

### 47  [Maze Algorithms (2017)](http://www.jamisbuck.org/mazes/)
* **Author:** [surprisetalk](https://news.ycombinator.com/user?id=surprisetalk) | **Comments:** [16](https://news.ycombinator.com/item?id=46737202)

### 101 🔥 [Tao Te Ching – Translated by Ursula K. Le Guin](https://github.com/nrrb/tao-te-ching/blob/master/Ursula%20K%20Le%20Guin.md)
* **Author:** [andsoitis](https://news.ycombinator.com/user?id=andsoitis) | **Comments:** [32](https://news.ycombinator.com/item?id=46745233)

### 78  [December in Servo: multiple windows, proxy support, better caching, and more](https://servo.org/blog/2026/01/23/december-in-servo/)
* **Author:** [t-3](https://news.ycombinator.com/user?id=t-3) | **Comments:** [5](https://news.ycombinator.com/item?id=46745259)

### 5  [Small Kafka: Tansu and SQLite on a free t3.micro](https://blog.tansu.io/articles/broker-aws-free-tier)
* **Author:** [rmoff](https://news.ycombinator.com/user?id=rmoff) | **Comments:** [0](https://news.ycombinator.com/item?id=46690779)

### 44  [Ask HN: Gmail spam filtering suddenly marking everything as spam?]()
* **Author:** [goopthink](https://news.ycombinator.com/user?id=goopthink) | **Comments:** [50](https://news.ycombinator.com/item?id=46744807)
* Transactional emails, despite having correct SPF/DKIM records and prior whitelisting, are now frequently being flagged as suspicious by Gmail. This issue has led users to question whether Google's spam filtering system has recently been altered or broken.

### 279 🔥🔥 [MS confirms it will give the FBI your Windows PC data encryption key if asked](https://www.windowscentral.com/microsoft/windows-11/microsoft-bitlocker-encryption-keys-give-fbi-legal-order-privacy-nightmare)
* **Author:** [blacktulip](https://news.ycombinator.com/user?id=blacktulip) | **Comments:** [208](https://news.ycombinator.com/item?id=46743154)

### 15  [C++26 Reflection loves QRangeModel](https://www.qt.io/blog/c26-reflection-qrangemodel)
* **Author:** [jandeboevrie](https://news.ycombinator.com/user?id=jandeboevrie) | **Comments:** [2](https://news.ycombinator.com/item?id=46688191)

### 258 🔥🔥 [Internet Archive's Storage](https://blog.dshr.org/2026/01/internet-archives-storage.html)
* **Author:** [zdw](https://news.ycombinator.com/user?id=zdw) | **Comments:** [73](https://news.ycombinator.com/item?id=46694618)

### 226 🔥 [When employees feel slighted, they work less](https://penntoday.upenn.edu/news/penn-wharton-when-employees-feel-slighted-they-work-less)
* **Author:** [consumer451](https://news.ycombinator.com/user?id=consumer451) | **Comments:** [186](https://news.ycombinator.com/item?id=46691108)

### 127 🔥 [Many Small Queries Are Efficient in SQLite](https://www.sqlite.org/np1queryprob.html)
* **Author:** [tosh](https://news.ycombinator.com/user?id=tosh) | **Comments:** [86](https://news.ycombinator.com/item?id=46742635)

### 43  [XHTML Club](https://xhtml.club/)
* **Author:** [bradley_taunt](https://news.ycombinator.com/user?id=bradley_taunt) | **Comments:** [99](https://news.ycombinator.com/item?id=46743219)

### 418 🔥🔥 [Unrolling the Codex agent loop](https://openai.com/index/unrolling-the-codex-agent-loop/)
* **Author:** [tosh](https://news.ycombinator.com/user?id=tosh) | **Comments:** [194](https://news.ycombinator.com/item?id=46737630)

### 157 🔥 [I Like GitLab](https://www.whileforloop.com/en/blog/2026/01/21/i-like-gitlab/)
* **Author:** [lukas346](https://news.ycombinator.com/user?id=lukas346) | **Comments:** [100](https://news.ycombinator.com/item?id=46742432)

### 453 🔥🔥 [Proof of Corn](https://proofofcorn.com/)
* **Author:** [rocauc](https://news.ycombinator.com/user?id=rocauc) | **Comments:** [298](https://news.ycombinator.com/item?id=46735511)

### 28  [JVIC: New web-based Commodore VIC 20 emulator](https://vic20.games/#/basic/24k)
* **Author:** [lance_ewing](https://news.ycombinator.com/user?id=lance_ewing) | **Comments:** [27](https://news.ycombinator.com/item?id=46742828)

### 83  [Are we all plagiarists now?](https://www.economist.com/culture/2026/01/22/are-we-all-plagiarists-now)
* **Author:** [pseudolus](https://news.ycombinator.com/user?id=pseudolus) | **Comments:** [95](https://news.ycombinator.com/item?id=46744968)
* The provided text is a URL to an archived webpage and contains no descriptive content for summarization.

### 53  [US Vaccine Panel Chair Says Polio and Other Shots Should Be Optional](https://www.nytimes.com/2026/01/23/health/milhoan-vaccines-optional-polio.html)
* **Author:** [throw0101c](https://news.ycombinator.com/user?id=throw0101c) | **Comments:** [39](https://news.ycombinator.com/item?id=46745998)

### 30  [6 Years Building Video Players. 9B Requests. Starting Over](https://www.mux.com/blog/6-years-building-video-players-9-billion-requests-starting-over)
* **Author:** [bolp](https://news.ycombinator.com/user?id=bolp) | **Comments:** [8](https://news.ycombinator.com/item?id=46689342)

### 172 🔥 [Show HN: Coi – A language that compiles to WASM, beats React/Vue]()
* **Author:** [io_eric](https://news.ycombinator.com/user?id=io_eric) | **Comments:** [59](https://news.ycombinator.com/item?id=46696283)
* The author developed a custom WASM stack and a component-based language called Coi to build high-performance web applications, leveraging shared memory for efficient JS/WASM interop and achieving superior frame rates compared to Emscripten. Coi features O(1) reactivity without a Virtual DOM, outperforming frameworks like React and Vue by minimizing bridge crossings and bundle size, and simplifies integration with new browser APIs.



