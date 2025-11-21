# Overall Summary
**🔥🔥🔥 [PR #9762](https://github.com/flutter/packages/pull/9762) (flutter/packages): [path_provider] Convert iOS/macOS to FFI package**
  * **Comments:** 14
  * Converts the iOS and macOS implementation of `path_provider` from a standard plugin to a Dart-only package that uses FFI to call directly into the native Foundation framework.

**🔥 [PR #12534](https://github.com/flutter/website/pull/12534) (flutter/website): Add Flutter Linux merged threads migration annoucement**
  * **Comments:** 6
  * Adds a breaking change announcement that the UI and platform threads are now merged by default on Linux, aligning the platform with other Flutter targets.

**🔥 [PR #178869](https://github.com/flutter/flutter/pull/178869) (flutter/flutter): Bump dart to 3.10.1**
  * **Comments:** 6
  * This PR bumps the Dart SDK version to 3.10.1, which helps resolve an issue where the Flutter engine and framework reported mismatched versions.

**[PR #178418](https://github.com/flutter/flutter/pull/178418) (flutter/flutter): [Impeller] Adds support for r32float textures**
  * **Comments:** 4
  * This pull request adds support for single-channel 32-bit float (`r32float`) textures to the Impeller rendering engine. The change is exposed in the framework via a new `PixelFormat.rFloat32`, allowing for more memory-efficient handling of single-channel image data.

**[Issue #4557](https://github.com/dart-lang/language/issues/4557) (dart-lang/language): No duplicate name for primary constructor initializer block header.**
  * **Reactions:** **3** -- 👍 3
  * This issue proposes that the syntax for named primary constructors should not require the constructor's name to be repeated in the initializer block, arguing that a consistent `this { ... }` should be used for all primary constructors to reduce redundancy and confusion.

**[Issue #111033](https://github.com/flutter/flutter/issues/111033) (flutter/flutter): Consider rewriting a macOS/iOS plugin using ObjC interop**
  * **Reactions:** **3** -- 👍 3
  * A long-standing issue proposing to rewrite plugins like `path_provider` using Objective-C FFI to unify code for iOS and macOS was closed, marking the conclusion of that investigation.

**[Issue #61870](https://github.com/dart-lang/sdk/issues/61870) (dart-lang/sdk): [analyzer] Error: Exception: Missing implementation of visitDotShorthandPropertyAccess**
  * **Reactions:** **2** -- 👍 2
  * The `AstBinaryWriter` in the analyzer is missing an implementation for `visitDotShorthandPropertyAccess`, causing an exception to be thrown when writing AST summaries.

**[Issue #62022](https://github.com/dart-lang/sdk/issues/62022) (dart-lang/sdk): Error compiling to WASM `switch` statement with `case null:`**
  * The WASM compiler fails with a type cast error when compiling a `switch` statement on a nullable type (e.g., `int?`) that includes a `case null:` clause.


# GitHub PR Report for dart-lang/ai
## From 2025-11-20

There were no pull requests merged or issues closed during this period. Consequently, there were no code changes, feature additions, or bug fixes to report.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2025-11-20

This period focused on improving the stability and tooling around new language features and the WebAssembly compiler. Several fixes landed for `dart2wasm`, addressing a regression that caused "Too few arguments passed" errors at higher optimization levels ([#61985](https://github.com/dart-lang/sdk/issues/61985)), a compilation failure on `switch` statements with `case null:` clauses ([#62022](https://github.com/dart-lang/sdk/issues/62022)), and runtime errors introduced by a recent performance fix ([#62006](https://github.com/dart-lang/sdk/issues/62006)). The analyzer's support for new language features was also enhanced; multiple issues were resolved where visitors were missing implementations for dot shorthand syntax, which caused crashes in `dart fix` and AST serialization ([#62051](https://github.com/dart-lang/sdk/issues/62051), [#61870](https://github.com/dart-lang/sdk/issues/61870)). Finally, linting support for primary constructors was improved for rules like `avoid_final_parameters` and `library_private_types_in_public_api` ([#62033](https://github.com/dart-lang/sdk/issues/62033), [#61989](https://github.com/dart-lang/sdk/issues/61989)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62051](https://github.com/dart-lang/sdk/issues/62051): "dart fix --apply" error: Missing a visit method for a node of type DotShorthandPropertyAccessImpl
* **Author:** [Peetee06](https://github.com/Peetee06)
* Running `dart fix --apply` on code containing dot shorthand syntax fails with a `Bad state: Missing a visit method for a node of type DotShorthandPropertyAccessImpl` error, as a visitor in the analyzer does not yet support this AST node.

### [Issue #62043](https://github.com/dart-lang/sdk/issues/62043): Inlining the method did not properly include the package in the modified files of the project
* **Author:** [stephane-archer](https://github.com/stephane-archer)
* Refactoring a method by inlining it fails to add the method's required package import to the modified files.

### [Issue #62033](https://github.com/dart-lang/sdk/issues/62033): [Primary Constructors] support for `avoid_final_parameters`
* **Author:** [pq](https://github.com/pq)

### [Issue #62022](https://github.com/dart-lang/sdk/issues/62022): Error compiling to WASM `switch` statement with `case null:`
* **Author:** [gmpassos](https://github.com/gmpassos)
* The WASM compiler fails with a type cast error when compiling a `switch` statement on a nullable type (e.g., `int?`) that includes a `case null:` clause.

### [Issue #62006](https://github.com/dart-lang/sdk/issues/62006): Failures on [dart2wasm] Fix exponential compile time in dynamic closure calls
* **Author:** [biggs0125](https://github.com/biggs0125)
* A commit intended to fix exponential compile time in `dart2wasm` dynamic closure calls has introduced several new runtime errors in language tests on the `dart2wasm-linux-optimized-jsc` configuration.

### [Issue #61989](https://github.com/dart-lang/sdk/issues/61989): [Primary Constructors] support for `library_private_types_in_public_api` [recommended]
* **Author:** [pq](https://github.com/pq)

### [Issue #61985](https://github.com/dart-lang/sdk/issues/61985): [dart2wasm] "Too few arguments passed" with `-O1` and above
* **Author:** [parlough](https://github.com/parlough)
* **Reactions:** **1** -- 👍 1
* When compiling with `dart2wasm` in Dart 3.11, a "Too few arguments passed" error occurs at optimization levels `-O1` and higher, a regression that is not present with `-O0` or in Dart 3.10.

### [Issue #61870](https://github.com/dart-lang/sdk/issues/61870): [analyzer] Error: Exception: Missing implementation of visitDotShorthandPropertyAccess
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Reactions:** **2** -- 👍 2
* The `AstBinaryWriter` in the analyzer is missing an implementation for `visitDotShorthandPropertyAccess`, causing an exception to be thrown when writing AST summaries.

### [Issue #61812](https://github.com/dart-lang/sdk/issues/61812): Missing fix for `avoid_final_parameters`
* **Author:** [FMorschel](https://github.com/FMorschel)
* The `avoid_final_parameters` lint is missing an automatic quick fix to remove the `final` keyword, a feature that could be easily implemented by reusing logic from an existing fix.


# GitHub PR Report for dart-lang/language
## From 2025-11-20

While no code changes were merged, discussions continued around the evolution of the Dart language. A notable proposal in issue [#4557](https://github.com/dart-lang/language/issues/4557) suggests a refinement to the primary constructor feature. The proposal advocates for simplifying the syntax of named primary constructors by removing the requirement to repeat the constructor's name in the initializer block, instead favoring a consistent `this { ... }` syntax to reduce redundancy and improve clarity.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #4557](https://github.com/dart-lang/language/issues/4557): No duplicate name for primary constructor initializer block header.
* **Author:** [lrhn](https://github.com/lrhn)
* **Reactions:** **3** -- 👍 3
* This issue proposes that the syntax for named primary constructors should not require the constructor's name to be repeated in the initializer block, arguing that a consistent `this { ... }` should be used for all primary constructors to reduce redundancy and confusion.


# GitHub PR Report for dart-lang/native
## From 2025-11-20

During this period, no pull requests were merged and no issues were closed, resulting in no changes to the repository's codebase, public API, or language features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/ai
## From 2025-11-20

There were no pull requests merged or issues closed in the repository during this period. Consequently, there were no changes to the codebase, public API, or language features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-11-20

There were no pull requests merged or issues closed during this period, resulting in no changes to the repository's codebase or public API.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-11-20

This period saw significant advancements in Flutter's rendering engine and core dependencies. Work on Impeller continued with the addition of a new feature that adds support for single-channel 32-bit float textures ([PR #178418](https://github.com/flutter/flutter/pull/178418)), exposing a new `PixelFormat.rFloat32` in the framework API to address use cases like Signed Distance Fields as requested in issue [#178420](https://github.com/flutter/flutter/issues/178420). To improve stability, a change was also landed to deny-list specific Adreno GPUs from using the Vulkan backend to work around rendering artifacts ([PR #178833](https://github.com/flutter/flutter/pull/178833)). In a highly-commented pull request, the Dart SDK was bumped to version 3.10.1 ([PR #178869](https://github.com/flutter/flutter/pull/178869)), resolving an issue with mismatched engine and framework versions. Finally, a long-standing and popular issue ([#111033](https://github.com/flutter/flutter/issues/111033)) proposing the exploration of Objective-C FFI for unifying plugin code across macOS and iOS was closed, marking a conclusion to that investigation.

## Merged Pull Requests

### [PR #178884](https://github.com/flutter/flutter/pull/178884): 3.38.3 bump engine sha
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2025-11-20 02:53 PM
* **Comments:** 2
* Updates the engine commit hash for the 3.38.3 release.

### 🔥 [PR #178869](https://github.com/flutter/flutter/pull/178869): Bump dart to 3.10.1
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2025-11-20 12:19 PM
* **Comments:** 6
* This PR bumps the Dart SDK version to 3.10.1, which helps resolve an issue where the Flutter engine and framework reported mismatched versions.

### [PR #178833](https://github.com/flutter/flutter/pull/178833): [Impeller] Deny-list Adreno 640 and 650 for Vulkan eligibility.
* **Author:** [chinmaygarde](https://github.com/chinmaygarde)
* **Merged At:** 2025-11-19 04:56 PM
* **Comments:** 0
* This PR adds the Adreno 640 and 650 GPUs to the Impeller deny-list, causing devices with these chipsets to fall back to the OpenGL ES backend instead of using Vulkan to work around graphics issues.

### [PR #178799](https://github.com/flutter/flutter/pull/178799): Use WidgetsBinding.instance.platformDispatcher in windowing instead of PlatformDispatcher.instance
* **Author:** [mattkae](https://github.com/mattkae)
* **Merged At:** 2025-11-19 07:30 PM
* **Comments:** 1
* Refactors the desktop windowing code for Linux, macOS, and Windows to use `WidgetsBinding.instance.platformDispatcher` instead of the static `PlatformDispatcher.instance`, which is the recommended approach as it allows the dispatcher to be overridden in tests.

### [PR #178418](https://github.com/flutter/flutter/pull/178418): [Impeller] Adds support for r32float textures
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2025-11-19 06:05 PM
* **Comments:** 4
* This pull request adds support for single-channel 32-bit float (`r32float`) textures to the Impeller rendering engine. The change is implemented across the Metal, Vulkan, and OpenGL backends and is exposed in the framework via a new `PixelFormat.rFloat32`, allowing for more memory-efficient handling of single-channel image data.


## Closed Issues

### [Issue #178877](https://github.com/flutter/flutter/issues/178877): linux-14 is dead.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The build agent `linux-14` is reported as offline and unresponsive.

### [Issue #178876](https://github.com/flutter/flutter/issues/178876): linux-17 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The machine `linux-17` has lost its external connection from an attached phone device.

### [Issue #178872](https://github.com/flutter/flutter/issues/178872): git hooks failing on 3.38 in presubmit.
* **Author:** [reidbaker](https://github.com/reidbaker)
* Presubmit git hooks are failing for versions 3.38 and 3.39 because a script running `pub get` is unable to resolve the `pub_formats` package from its specified path.

### [Issue #178843](https://github.com/flutter/flutter/issues/178843): Can anyone explain this post about `runAppAsync`?
* **Author:** [KDCinfo](https://github.com/KDCinfo)
* **Reactions:** **1** -- 👀 1
* A user is asking for clarification about a LinkedIn post referencing a new `runAppAsync` function in Flutter, as they are unable to find any official documentation to support its existence.

### [Issue #178803](https://github.com/flutter/flutter/issues/178803): [SearchBar] Inconsistent inheritance of local InputDecorationTheme
* **Author:** [M-Ahal](https://github.com/M-Ahal)
* The `SearchBar` widget is not correctly inheriting properties like `disabledBorder` from a locally defined `InputDecorationTheme`, instead falling back to the global theme.

### [Issue #178498](https://github.com/flutter/flutter/issues/178498): AnimatedSampler VRAM leak
* **Author:** [daniel1414](https://github.com/daniel1414)
* The `AnimatedSampler` widget causes a rapid VRAM leak and subsequent crash with out-of-memory errors on Android, but the issue is not reproducible on Linux.

### [Issue #178420](https://github.com/flutter/flutter/issues/178420): Add support for r32 float texture
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* This issue requests the addition of support for r32 float textures, intended for use cases such as generating Signed Distance Fields (SDFs).

### [Issue #178285](https://github.com/flutter/flutter/issues/178285): Android 10 system phone showDialog pop-up rendering issue using Vulkan.
* **Author:** [YaKun-SH](https://github.com/YaKun-SH)
* On Android 10, the Vulkan backend causes rendering artifacts (black blocks) on widgets with clipped rounded corners when they are displayed inside a transparent `showDialog`.

### [Issue #178104](https://github.com/flutter/flutter/issues/178104): [tool_crash] FileSystemException: Cannot open file, OS Error: No such file or directory, errno = 2
* **Author:** [starlinker28-spec](https://github.com/starlinker28-spec)
* The `flutter run` command crashes with a `FileSystemException: No such file or directory` when the tool attempts to read a file during an internal package configuration process.

### [Issue #177714](https://github.com/flutter/flutter/issues/177714): Issue: `queryParameters` not passed in nested StatefulShellBranch on Chrome, GoRouter
* **Author:** [thq919](https://github.com/thq919)
* **Reactions:** **2** -- 👍 2
* Query parameters are not being passed when navigating with `goNamed` between two sibling routes that are nested within the same `StatefulShellBranch`.

### [Issue #177631](https://github.com/flutter/flutter/issues/177631): [Impeller] [Android] [Webview] [lottie]When playing multiple lottie animations, the webview may not load completely
* **Author:** [dhc-jiangsongwen](https://github.com/dhc-jiangsongwen)
* On Android devices, particularly older versions, enabling the Impeller rendering engine causes an InAppWebView to fail to load completely when Lottie animations are playing on other pages.

### [Issue #158766](https://github.com/flutter/flutter/issues/158766): [flutter_svg] [v2.0.5] Svg not properly resized when passed to vg.loadPicture()
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Reactions:** **1** -- 👍 1
* When using `vg.loadPicture()` with a `SvgPicture.bytesLoader`, the specified width and height are ignored, causing the SVG to be rendered at its intrinsic size rather than the desired dimensions.

### [Issue #111033](https://github.com/flutter/flutter/issues/111033): Consider rewriting a macOS/iOS plugin using ObjC interop
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Reactions:** **3** -- 👍 3
* This issue proposes rewriting a simple plugin for iOS and macOS, such as `shared_preferences` or `path_provider`, using Objective-C FFI to test the FFI implementation and unify the code for both platforms.


# GitHub PR Report for flutter/genui
## From 2025-11-20

This release focused on improving project documentation for developers. A key update in [PR #561](https://github.com/flutter/genui/pull/561) refreshed the documentation within the `.gemini` directory, adding details on new packages and examples, and documenting the new `commands/` directory for the Gemini CLI. As part of this effort, a broken link to the project's design document was corrected, addressing an issue that was reported in [#560](https://github.com/flutter/genui/issues/560).

## Merged Pull Requests

### [PR #561](https://github.com/flutter/genui/pull/561): Update GEMINI.md and README.md for the .gemini directory
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-11-19 04:07 PM
* **Comments:** 0
* This PR updates project documentation in the `.gemini` directory, adding new packages and examples, correcting a link to the design document, and documenting the new `commands/` directory used by the Gemini CLI.


## Closed Issues

### [Issue #560](https://github.com/flutter/genui/issues/560): Gemini docs refers to nonexistent docs
* **Author:** [gterzian](https://github.com/gterzian)
* The `Gemini.md` documentation contains a broken link to `IMPLEMENTATION.md`, which should be updated to point to the correctly named `DESIGN.md` file.


# GitHub PR Report for flutter/packages
## From 2025-11-20

This period saw a significant architectural evolution for the `path_provider` package. In a highly-discussed change, the iOS and macOS implementations were converted to a Dart-only package that uses FFI to call directly into native APIs, removing the need for a traditional platform channel implementation ([PR #9762](https://github.com/flutter/packages/pull/9762)). Additionally, a fix was made in the `pigeon` tool to resolve a compilation error in the generated Kotlin code for older Kotlin versions by adding a non-nullable constraint to a generic type parameter ([PR #10483](https://github.com/flutter/packages/pull/10483)). Finally, general maintenance work was completed across several packages, such as `webview_flutter` ([PR #10480](https://github.com/flutter/packages/pull/10480)) and `google_maps_flutter` ([PR #10477](https://github.com/flutter/packages/pull/10477)), to replace deprecated color APIs with their modern equivalents.

## Merged Pull Requests

### [PR #10483](https://github.com/flutter/packages/pull/10483): [pigeon] Fixes compilation error with unbounded type parameter for InstanceManager
* **Author:** [bparrishMines](https://github.com/bparrishMines)
* **Merged At:** 2025-11-20 03:44 PM
* **Comments:** 0
* This PR fixes a compilation error in Pigeon's generated Kotlin code by adding a non-nullable constraint to the generic type parameter of the `InstanceManager.getInstance` method, which resolves an issue on older Kotlin versions.

### [PR #10480](https://github.com/flutter/packages/pull/10480): [webview_flutter] Replace deprecated Color.value
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-20 12:05 PM
* **Comments:** 0
* This PR replaces the deprecated `Color.value` with its `toARGB32()` equivalent in the Android and iOS implementations of `webview_flutter` and adds a `TODO` in the iOS implementation to find a better long-term solution for color representation.

### [PR #10477](https://github.com/flutter/packages/pull/10477): [google_maps_flutter] Replace deprecated color APIs in platform interface
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-20 12:03 PM
* **Comments:** 0
* This PR updates the `google_maps_flutter_platform_interface` by replacing the deprecated `Color.value` with `toARGB32()` for color serialization.

### 🔥🔥🔥 [PR #9762](https://github.com/flutter/packages/pull/9762): [path_provider] Convert iOS/macOS to FFI package
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-20 04:44 AM
* **Comments:** 14
* Converts the iOS and macOS implementation of `path_provider` from a standard plugin to a Dart-only package that uses FFI to call directly into the native Foundation framework.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-11-20

There were no pull requests merged or issues closed in the repository during this period. As a result, there have been no new features, bug fixes, or other changes to the codebase.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-11-20

This cycle saw several impactful updates to the Flutter documentation and website infrastructure. A key update for developers on Linux is a breaking change announcement that the UI and platform threads are now merged by default, a change that aligns the platform with other Flutter targets and generated significant discussion ([PR #12534](https://github.com/flutter/website/pull/12534)). The website codebase underwent a major refactor to use more idiomatic Jaspr patterns, introducing a new `ComponentRef` system and reusable components like `PageNav` and `Tooltip` to simplify the architecture ([PR #12726](https://github.com/flutter/website/pull/12726)). This migration was further completed by replacing remaining Liquid tags with their Jaspr equivalents ([PR #12708](https://github.com/flutter/website/pull/12708)). Finally, new documentation was added with instructions on how to configure the Antigravity AI tool with Dart and Flutter ([PR #12730](https://github.com/flutter/website/pull/12730)).

## Merged Pull Requests

### [PR #12730](https://github.com/flutter/website/pull/12730): Add Antigravity configuration instructions
* **Author:** [mit-mit](https://github.com/mit-mit)
* **Merged At:** 2025-11-20 11:02 AM
* **Comments:** 3
* Adds documentation with instructions on how to configure the Antigravity AI tool with the Dart and Flutter MCP server and install the necessary extensions.

### [PR #12726](https://github.com/flutter/website/pull/12726): Refactor to more idiomatic Jaspr code
* **Author:** [schultek](https://github.com/schultek)
* **Merged At:** 2025-11-20 08:15 AM
* **Comments:** 2
* This PR refactors the codebase to use more idiomatic Jaspr patterns by introducing a new `ComponentRef` system that allows server-rendered components to be passed to client-side components. This change simplifies the `Dropdown` component, refactors the top table of contents into a new `PageNav` component, and adds a reusable `Tooltip` component, all of which helps to reduce manual logic in `global_scripts.dart`.

### [PR #12708](https://github.com/flutter/website/pull/12708): Fix a few unmigrated Liquid usages
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-11-20 01:40 PM
* **Comments:** 2
* This PR updates the accessibility documentation by replacing a few remaining Liquid tags for tabs and YouTube embeds with their new Jaspr component equivalents.

### 🔥 [PR #12534](https://github.com/flutter/website/pull/12534): Add Flutter Linux merged threads migration annoucement
* **Author:** [robert-ancell](https://github.com/robert-ancell)
* **Merged At:** 2025-11-20 12:29 PM
* **Comments:** 6
* Adds a breaking change announcement that the UI and platform threads are now merged by default on Linux, aligning the platform with other Flutter targets.


## Closed Issues

### [Issue #12469](https://github.com/flutter/website/issues/12469): Value of **jsonString** in the whole document and output of jsonDecode in every usage in this page
* **Author:** [Sanal567](https://github.com/Sanal567)
* The documentation on JSON serialization uses a `jsonString` variable in its code examples without ever defining its value, which makes the snippets confusing and incomplete.



## Top Hacker News Stories

### 232 🔥 [Olmo 3: Charting a path through the model flow to lead open-source AI](https://allenai.org/blog/olmo3)
* **Author:** [mseri](https://news.ycombinator.com/user?id=mseri) | **Comments:** [43](https://news.ycombinator.com/item?id=46001889)

### 17  [Building a Minimal Viable Armv7 Emulator from Scratch](https://xnacly.me/posts/2025/building-a-minimal-viable-armv7-emulator/)
* **Author:** [xnacly](https://news.ycombinator.com/user?id=xnacly) | **Comments:** [2](https://news.ycombinator.com/item?id=46004386)

### 130 🔥 [It's hard to build an oscillator](https://lcamtuf.substack.com/p/its-hard-to-build-an-oscillator)
* **Author:** [chmaynard](https://news.ycombinator.com/user?id=chmaynard) | **Comments:** [49](https://news.ycombinator.com/item?id=46002161)

### 118 🔥 [FAWK: LLMs can write a language interpreter](https://martin.janiczek.cz/2025/11/21/fawk-llms-can-write-a-language-interpreter.html)
* **Author:** [todsacerdoti](https://news.ycombinator.com/user?id=todsacerdoti) | **Comments:** [95](https://news.ycombinator.com/item?id=46003144)

### 21  [EXIF orientation info in PNGs isn't used for image-orientation](https://bugzilla.mozilla.org/show_bug.cgi?id=1627423)
* **Author:** [justin-reeves](https://news.ycombinator.com/user?id=justin-reeves) | **Comments:** [17](https://news.ycombinator.com/item?id=46004364)

### 81  [I converted a rotary phone into a meeting handset](https://www.stavros.io/posts/i-converted-a-rotary-phone-into-a-meeting-handset/)
* **Author:** [todsacerdoti](https://news.ycombinator.com/user?id=todsacerdoti) | **Comments:** [35](https://news.ycombinator.com/item?id=45898185)

### 1131 🔥🔥🔥 [Nano Banana Pro](https://blog.google/technology/ai/nano-banana-pro/)
* **Author:** [meetpateltech](https://news.ycombinator.com/user?id=meetpateltech) | **Comments:** [633](https://news.ycombinator.com/item?id=45993296)

### 747 🔥🔥🔥 [Android and iPhone users can now share files, starting with the Pixel 10](https://blog.google/products/android/quick-share-airdrop/)
* **Author:** [abraham](https://news.ycombinator.com/user?id=abraham) | **Comments:** [445](https://news.ycombinator.com/item?id=45994854)

### 34  [Open Source and Local Code Mode MCP in Deno Sandboxes](https://portofcontext.com)
* **Author:** [pmkelly4444](https://news.ycombinator.com/user?id=pmkelly4444) | **Comments:** [13](https://news.ycombinator.com/item?id=45917182)

### 68  [Scientists now know that bees can process time, a first in insects](https://www.cnn.com/2025/11/12/science/bees-visual-stimulus-study-scli-intl)
* **Author:** [Brajeshwar](https://news.ycombinator.com/user?id=Brajeshwar) | **Comments:** [37](https://news.ycombinator.com/item?id=45937350)

### 1  [Roundtable (YC S23) Is Hiring Two Sales Development Representatives (SDRs)](https://www.ycombinator.com/companies/roundtable/jobs/irJTEsg-sales-development-representative)
* **Author:** [timshell](https://news.ycombinator.com/user?id=timshell) | **Comments:** [null](https://news.ycombinator.com/item?id=46003686)

### 180 🔥 [WebAssembly from the Ground Up](https://wasmgroundup.com/)
* **Author:** [gurjeet](https://news.ycombinator.com/user?id=gurjeet) | **Comments:** [39](https://news.ycombinator.com/item?id=45937183)

### 239 🔥 [FEX-emu – Run x86 applications on ARM64 Linux devices](https://fex-emu.com/)
* **Author:** [open-paren](https://news.ycombinator.com/user?id=open-paren) | **Comments:** [90](https://news.ycombinator.com/item?id=45905850)

### 8  [Ancient Roman Glass Reveals a Hidden "Language"](https://nautil.us/ancient-roman-glass-reveals-a-hidden-language-1247932/)
* **Author:** [DrierCycle](https://news.ycombinator.com/user?id=DrierCycle) | **Comments:** [1](https://news.ycombinator.com/item?id=45937830)

### 3  [Making a Small RPG](https://jslegenddev.substack.com/p/making-a-small-rpg)
* **Author:** [ibobev](https://news.ycombinator.com/user?id=ibobev) | **Comments:** [0](https://news.ycombinator.com/item?id=46004293)

### 45  [Show HN: 32V TENS device from built from scratch under $100](https://littlemountainman.github.io/2025/11/17/tens/)
* **Author:** [autonomydriver](https://news.ycombinator.com/user?id=autonomydriver) | **Comments:** [8](https://news.ycombinator.com/item?id=45954228)

### 34  [The Qtile Window Manager: A Python-Powered Tiling Experience](https://tech.stonecharioteer.com/posts/2025/qtile-window-manager/)
* **Author:** [stonecharioteer](https://news.ycombinator.com/user?id=stonecharioteer) | **Comments:** [6](https://news.ycombinator.com/item?id=46002138)

### 269 🔥🔥 [Over-regulation is doubling the cost](https://rein.pk/over-regulation-is-doubling-the-cost)
* **Author:** [bilsbie](https://news.ycombinator.com/user?id=bilsbie) | **Comments:** [484](https://news.ycombinator.com/item?id=45999038)

### 273 🔥🔥 [New OS aims to provide (some) compatibility with macOS](https://github.com/ravynsoft/ravynos)
* **Author:** [kasajian](https://news.ycombinator.com/user?id=kasajian) | **Comments:** [129](https://news.ycombinator.com/item?id=45997212)

### 143 🔥 [HP and Dell disable HEVC support built into their laptops' CPUs](https://arstechnica.com/gadgets/2025/11/hp-and-dell-disable-hevc-support-built-into-their-laptops-cpus/)
* **Author:** [latexr](https://news.ycombinator.com/user?id=latexr) | **Comments:** [86](https://news.ycombinator.com/item?id=46002989)

### 338 🔥🔥 [Okta's NextJS-0auth troubles](https://joshua.hu/ai-slop-okta-nextjs-0auth-security-vulnerability)
* **Author:** [ramimac](https://news.ycombinator.com/user?id=ramimac) | **Comments:** [127](https://news.ycombinator.com/item?id=45963350)

### 97  [Hilbert space: Treating functions as vectors](https://eli.thegreenplace.net/2025/hilbert-space-treating-functions-as-vectors/)
* **Author:** [signa11](https://news.ycombinator.com/user?id=signa11) | **Comments:** [38](https://news.ycombinator.com/item?id=45913281)

### 198 🔥 [Data-at-Rest Encryption in DuckDB](https://duckdb.org/2025/11/19/encryption-in-duckdb)
* **Author:** [chmaynard](https://news.ycombinator.com/user?id=chmaynard) | **Comments:** [22](https://news.ycombinator.com/item?id=45996585)

### 241 🔥 [Free interactive tool that shows you how PCIe lanes work on motherboards](https://mobomaps.com)
* **Author:** [tagyro](https://news.ycombinator.com/user?id=tagyro) | **Comments:** [56](https://news.ycombinator.com/item?id=45976693)

### 188 🔥 [NTSB Preliminary Report – UPS Boeing MD-11F Crash [pdf]](https://www.ntsb.gov/Documents/Prelimiary%20Report%20DCA26MA024.pdf)
* **Author:** [gregsadetsky](https://news.ycombinator.com/user?id=gregsadetsky) | **Comments:** [201](https://news.ycombinator.com/item?id=45995834)



