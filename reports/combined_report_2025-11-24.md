# Overall Summary
Here is the highlights section for the provided reports:

🔥🔥🔥 **[PR #170000](https://github.com/flutter/flutter/pull/170000) (flutter/flutter): Manually roll material_color_utilities**
  * **Comments:** 12
  * Updates the `material_color_utilities` package to its latest version, which includes code cleanup to improve compiled size and performance. This change also updates the color generation logic for Material 3's primary, secondary, tertiary, and error colors, completing a previous token migration.

🔥 **[PR #177410](https://github.com/flutter/flutter/pull/177410) (flutter/flutter): [ios] Dynamic Content Resizing**
  * **Comments:** 4
  * Adds an `isAutoResizable` property to `FlutterViewController` on iOS, allowing an embedded Flutter view in Add-to-App scenarios to automatically resize based on its content. This feature was temporarily reverted in [PR #178958](https://github.com/flutter/flutter/pull/178958) due to CI failures.

**[PR #9965](https://github.com/flutter/packages/pull/9965) (flutter/packages): [file_selector] Add parameter to control whether the new folders button is visible in the file dialog**
  * **Comments:** 3
  * Adds a `canCreateDirectories` parameter to `getSaveLocation`, `getDirectoryPath`, and `getDirectoryPaths` that allows developers to control whether users can create new directories from within the native file dialog on supported platforms like Linux and macOS.

**[Issue #61588](https://github.com/dart-lang/sdk/issues/61588) (dart-lang/sdk): [cli] `dart run pub.dev/...` to replace `dart pub global run`**
  * **Reactions:** **2** -- 👍 2
  * This issue proposes replacing `dart pub global run` with a new command, similar to `npx` or `pnpm dlx`, that would download and execute the latest version of a package for a single use without permanently installing it.

**[PR #2811](https://github.com/dart-lang/native/pull/2811) (dart-lang/native): [native_toolchain_c] Include missing errors output using Level.INFO when running CL**
  * **Comments:** 5
  * This change ensures build errors from the Windows C compiler (CL) are displayed by logging its standard output at the `INFO` level, as CL writes errors to stdout instead of stderr.

**[Issue #62041](https://github.com/dart-lang/sdk/issues/62041) (dart-lang/sdk): `Go to Type Definition` doesn't work on pattern matching**
  * The "Go to Type Definition" feature fails to resolve types for variables declared or referenced within Dart pattern matching constructs like `if-case` statements and destructuring declarations.

**[PR #12731](https://github.com/flutter/website/pull/12731) (flutter/website): Add CodePreview component**
  * **Comments:** 2
  * This PR introduces a new `CodePreview` component to display a code sample alongside a visual preview in either a row or column layout, replacing the existing `code_and_image` partial.


# GitHub PR Report for dart-lang/ai
## From 2025-11-21 to 2025-11-23

This release includes an improvement to the tool-calling schemas and a bug fix for the test server. To provide better error feedback and more effectively guide language models, tool schemas have been made stricter by disallowing additional properties ([#321](https://github.com/dart-lang/ai/pull/321)). Additionally, a bug was fixed in the Dart MCP server that caused it to ignore the `paths` parameter and run all tests instead of a targeted subset, which improves the developer experience for targeted testing in larger projects ([#320](https://github.com/dart-lang/ai/issues/320)).

## Merged Pull Requests

### [PR #321](https://github.com/dart-lang/ai/pull/321): add 'additionalProperties: false' to most schemas
* **Author:** [jakemac53](https://github.com/jakemac53)
* **Merged At:** 2025-11-21 12:45 PM
* **Comments:** 1
* Adds `additionalProperties: false` to most tool schemas, making them stricter to provide better error feedback and guide language models to supply correct arguments.


## Closed Issues

### [Issue #320](https://github.com/dart-lang/ai/issues/320): [dart_mcp_server] Always runs all tests in Cursor
* **Author:** [Peetee06](https://github.com/Peetee06)
* The Dart MCP server ignores the `paths` parameter and runs the entire test suite, even when a valid or invalid path is specified, making targeted testing unusable for large projects.


# GitHub PR Report for dart-lang/sdk
## From 2025-11-21 to 2025-11-23

This period focused on bug fixes and stability improvements, particularly within the Dart analyzer and core tooling. Several issues affecting the developer experience were resolved, including a fix for the "Go to Type Definition" feature which was failing on pattern matching constructs ([Issue #62041](https://github.com/dart-lang/sdk/issues/62041)). The analyzer also received fixes for a crash in the `use_build_context_synchronously` lint ([Issue #62068](https://github.com/dart-lang/sdk/issues/62068)), a false-negative for invalid constructor invocations ([Issue #61978](https://github.com/dart-lang/sdk/issues/61978)), and incorrect code completion suggestions for `super()` calls ([Issue #61930](https://github.com/dart-lang/sdk/issues/61930)). On the command-line front, a notable issue was closed proposing a new `dart run pub.dev/...` command to replace `dart pub global run` for single-use package execution ([Issue #61588](https://github.com/dart-lang/sdk/issues/61588)). Finally, a number of platform-specific build and test failures were addressed, improving the reliability of the test infrastructure on Windows ([Issue #62065](https://github.com/dart-lang/sdk/issues/62065), [Issue #62056](https://github.com/dart-lang/sdk/issues/62056)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62068](https://github.com/dart-lang/sdk/issues/62068): Internal error: Exception while using a UseBuildContextSynchronously
* **Author:** [karelklic](https://github.com/karelklic)
* Running `dart analyze` causes a crash due to an internal error in the `use_build_context_synchronously` lint rule, which is missing a visitor method for nodes of type `NullAwareElementImpl`.

### [Issue #62065](https://github.com/dart-lang/sdk/issues/62065): pkg/vm/test/transformations/mixin_deduplication_test failures on pkg-win bots
* **Author:** [aam](https://github.com/aam)
* The `pkg/vm/test/transformations/mixin_deduplication_test` is failing on Windows bots with a `RuntimeError` because the actual file path URI in the test's output differs from the expected format.

### [Issue #62056](https://github.com/dart-lang/sdk/issues/62056): pkg-win-release build failed
* **Author:** [aam](https://github.com/aam)
* The `pkg-win-release` build is failing with a compilation error in `runtime/bin/snapshot_utils.cc` due to the use of the undeclared identifier `realpath`, starting with commit `a37d042e`.

### [Issue #62041](https://github.com/dart-lang/sdk/issues/62041): `Go to Type Definition` doesn't work on pattern matching
* **Author:** [FMorschel](https://github.com/FMorschel)
* The "Go to Type Definition" feature fails to resolve types for variables declared or referenced within Dart pattern matching constructs like `if-case` statements and destructuring declarations.

### [Issue #61980](https://github.com/dart-lang/sdk/issues/61980): [windows] [build-hook] Logging is incomplete/inaccurate when running with CBuilder
* **Author:** [poirierlouis](https://github.com/poirierlouis)
* On Windows, when a build hook using `CBuilder` fails during compilation, the specific error output from the C compiler (`cl.exe`) is not logged, and only a generic `ProcessException` is reported, making it difficult to debug the failure.

### [Issue #61978](https://github.com/dart-lang/sdk/issues/61978): Analyzer false-negative for invalid type arguments on dot-shorthand constructors
* **Author:** [Pante](https://github.com/Pante)
* The analyzer fails to report an error for the invalid use of type arguments on a dot-shorthand constructor invocation, resulting in a false-negative where code passes analysis but fails to compile.

### [Issue #61930](https://github.com/dart-lang/sdk/issues/61930): Completion inside super constructor invocation shows existing super parameters as options
* **Author:** [FMorschel](https://github.com/FMorschel)
* Code completion for a `super()` constructor invocation incorrectly suggests named parameters that have already been provided using super-initializer syntax.

### [Issue #61827](https://github.com/dart-lang/sdk/issues/61827): Null check error in analyzer in LibraryManifestBuilder._getInterfaceElementMemberId
* **Author:** [johnniwinther](https://github.com/johnniwinther)
* A null check error is occurring in the analyzer within the `LibraryManifestBuilder._getInterfaceElementMemberId` method.

### [Issue #61588](https://github.com/dart-lang/sdk/issues/61588): [cli] `dart run pub.dev/...` to replace `dart pub global run`
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Reactions:** **2** -- 👍 2
* This issue proposes replacing `dart pub global run` with a new command, similar to `npx` or `pnpm dlx`, that would download and execute the latest version of a package for a single use without permanently installing it.

### [Issue #60916](https://github.com/dart-lang/sdk/issues/60916): Renaming constructor that shares name with instance member results in invalid code
* **Author:** [FMorschel](https://github.com/FMorschel)
* Renaming a named constructor that shares a name with an instance method incorrectly renames calls to that method from within the constructor's body, resulting in invalid code.

### [Issue #55612](https://github.com/dart-lang/sdk/issues/55612): flaky vm/dart/use_dwarf_stack_traces_flag_deferred_test turns RuntimeError on vm-aot-mac-release-x64
* **Author:** [aam](https://github.com/aam)
* The test `vm/dart/use_dwarf_stack_traces_flag_deferred_test` is flaky on the `vm-aot-mac-release-x64` builder, failing with a `RuntimeError` due to a clang linker error, "invalid function target for dwarf unwind".


# GitHub PR Report for dart-lang/language
## From 2025-11-21 to 2025-11-23

During this period, there were no pull requests merged or issues closed, resulting in no changes to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2025-11-21 to 2025-11-23

This release focused on improving the developer experience and build diagnostics for Windows users. A key fix landed in [#2811](https://github.com/dart-lang/native/pull/2811) to address incomplete error logging from the Windows C compiler (`cl.exe`), which was making it difficult to debug build failures as described in [#2809](https://github.com/dart-lang/native/issues/2809). This change ensures that compiler errors, which are sent to standard output, are now properly logged. Additionally, a user-reported issue was closed regarding a `java.lang.UnsupportedClassVersionError` when running `jnigen` ([#2810](https://github.com/dart-lang/native/issues/2810)), which stemmed from an incompatible Java runtime version.

## Merged Pull Requests

### [PR #2811](https://github.com/dart-lang/native/pull/2811): [native_toolchain_c] Include missing errors output using Level.INFO when running CL
* **Author:** [poirierlouis](https://github.com/poirierlouis)
* **Merged At:** 2025-11-21 05:55 AM
* **Comments:** 5
* This change ensures build errors from the Windows C compiler (CL) are displayed by logging its standard output at the `INFO` level, as CL writes errors to stdout instead of stderr.


## Closed Issues

### [Issue #2810](https://github.com/dart-lang/native/issues/2810): UnsupportedClassVersionError when trying to run ffigen
* **Author:** [deminearchiver](https://github.com/deminearchiver)
* A user on Windows receives a `java.lang.UnsupportedClassVersionError` when running `jnigen`, indicating that the tool, compiled with Java 11 (class file version 55.0), is being executed by an older Java 8 runtime (version 52.0), and setting the `JAVA_HOME` variable did not resolve the issue.

### [Issue #2809](https://github.com/dart-lang/native/issues/2809): [windows] [build-hook] Logging is incomplete/inaccurate when running with CBuilder
* **Author:** [poirierlouis](https://github.com/poirierlouis)
* On Windows, the `CBuilder` build hook does not log the complete error output from the underlying compiler (`cl.exe`) when a build fails, making it difficult to debug the root cause of the failure.


# GitHub PR Report for flutter/ai
## From 2025-11-21 to 2025-11-23

This was a quiet period for the repository, with no pull requests merged and no issues closed. Consequently, there were no changes to the codebase, public API, or language features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-11-21 to 2025-11-23

During this period, there were no pull requests merged or issues closed, resulting in no code changes, bug fixes, or feature additions to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-11-21 to 2025-11-23

This period saw significant work on framework stability and feature development. A major update to the `material_color_utilities` dependency in [PR #170000](https://github.com/flutter/flutter/pull/170000) refined Material 3 color generation and improved performance. For iOS add-to-app developers, a new dynamic content resizing feature was introduced in [PR #177410](https://github.com/flutter/flutter/pull/177410) to allow an embedded Flutter view to size itself based on its content, addressing a long-standing request in [Issue #169147](https://github.com/flutter/flutter/issues/169147); however, this change was temporarily reverted in [PR #178958](https://github.com/flutter/flutter/pull/178958) due to CI failures. A large number of stability improvements landed, with a series of pull requests preventing crashes in various widgets—such as `SearchAnchor` in [PR #177749](https://github.com/flutter/flutter/pull/177749) and `CupertinoSpellCheckSuggestionsToolbar` in [PR #177978](https://github.com/flutter/flutter/pull/177978)—when rendered in a zero-sized environment. Other notable changes include the addition of a new macrobenchmark to test `Canvas.drawArc` performance in [PR #178690](https://github.com/flutter/flutter/pull/178690) and a fix for dropped key presses on Windows after focus loss in [PR #178523](https://github.com/flutter/flutter/pull/178523).

## Merged Pull Requests

### [PR #178958](https://github.com/flutter/flutter/pull/178958): Revert "[ios] Dynamic Content Resizing"
* **Author:** [flar](https://github.com/flar)
* **Merged At:** 2025-11-22 08:12 AM
* **Comments:** 2
* This PR reverts the "Dynamic Content Resizing" feature for iOS, which was causing the `wide_gamut_ios` CI task to hang.

### [PR #178939](https://github.com/flutter/flutter/pull/178939): Sort entries in TESTOWNERS
* **Author:** [b-luk](https://github.com/b-luk)
* **Merged At:** 2025-11-21 05:31 PM
* **Comments:** 0
* This pull request sorts the entries in the `TESTOWNERS` file alphabetically within each section to improve readability and maintainability.

### [PR #178891](https://github.com/flutter/flutter/pull/178891): Update .ci.yaml and TESTOWNERS for arc macrobenchmark tests
* **Author:** [b-luk](https://github.com/b-luk)
* **Merged At:** 2025-11-21 10:35 AM
* **Comments:** 1
* This PR updates the `.ci.yaml` and `TESTOWNERS` files to enable and assign ownership for the recently added `draw_arcs` macrobenchmark tests.

### [PR #178840](https://github.com/flutter/flutter/pull/178840): [ Tool ] Use a separate output directory when the native hooks run the build system
* **Author:** [jason-simmons](https://github.com/jason-simmons)
* **Merged At:** 2025-11-21 08:16 AM
* **Comments:** 0
* This change configures the native hooks build to use a separate output directory, which prevents the build system from incorrectly deleting files from the main build that previously shared the same directory.

### [PR #178796](https://github.com/flutter/flutter/pull/178796): Add changelog for 3.38.2
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2025-11-21 03:29 AM
* **Comments:** 0
* This PR adds the changelog for the Flutter 3.38.2 hotfix release, which includes several bug fixes for the widget previewer, iOS builds, and Visual Studio support.

### [PR #178722](https://github.com/flutter/flutter/pull/178722): Make sure that a CupertinoContextMenu doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-11-21 05:44 PM
* **Comments:** 0
* This PR adds a test to prevent `CupertinoContextMenu` from crashing when rendered in a zero-sized environment.

### [PR #178690](https://github.com/flutter/flutter/pull/178690): Add macrobenchmark perf test for drawing arcs
* **Author:** [b-luk](https://github.com/b-luk)
* **Merged At:** 2025-11-20 04:21 PM
* **Comments:** 1
* Adds a new macrobenchmark to measure the performance of `Canvas.drawArc`, covering a wide variety of parameters for both fill and stroke styles.

### [PR #178666](https://github.com/flutter/flutter/pull/178666): Update .ci.yaml in flutter/flutter to use either macOS 15.5 or macOS …
* **Author:** [okorohelijah](https://github.com/okorohelijah)
* **Merged At:** 2025-11-21 09:52 AM
* **Comments:** 2
* This PR updates various CI configuration files to allow macOS jobs to run on either macOS 15.5 or macOS 15.7, increasing the flexibility of the CI runner pool.

### [PR #178613](https://github.com/flutter/flutter/pull/178613): Make sure that a CupertinoTabBar doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-11-21 05:55 PM
* **Comments:** 1
* This PR adds a regression test to prevent `CupertinoTabBar` from crashing when rendered in a zero-sized container.

### [PR #178566](https://github.com/flutter/flutter/pull/178566): Make sure that a CupertinoLinearActivityIndicator doesn't crash in 0x…
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-11-21 06:07 PM
* **Comments:** 1
* Adds a regression test for the `CupertinoLinearActivityIndicator` to ensure it does not crash when rendered in a zero-sized area.

### [PR #178523](https://github.com/flutter/flutter/pull/178523): Fix Windows Enter key after focus loss
* **Author:** [letrungdo](https://github.com/letrungdo)
* **Merged At:** 2025-11-21 07:02 AM
* **Comments:** 2
* Fixes an issue on Windows where a key press after regaining focus could be dropped by synthesizing a key-up event when a new key-down is received for a key the embedder still believes is pressed.

### [PR #178516](https://github.com/flutter/flutter/pull/178516): Make sure that a UserAccountsDrawerHeader doesn't crash in 0x0 enviro…
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-11-21 06:33 PM
* **Comments:** 1
* This PR adds a regression test to ensure that the `UserAccountsDrawerHeader` widget does not crash when rendered in a zero-sized area.

### [PR #178454](https://github.com/flutter/flutter/pull/178454): Make sure that a ToggleButtons doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-11-20 04:47 PM
* **Comments:** 1
* This PR adds a regression test to ensure the `ToggleButtons` widget does not crash when rendered in a zero-sized container.

### [PR #178451](https://github.com/flutter/flutter/pull/178451): Make sure that a TimePickerDialog doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-11-21 06:20 PM
* **Comments:** 2
* This PR adds a regression test to ensure that `TimePickerDialog` does not crash when rendered in a zero-size container.

### [PR #178405](https://github.com/flutter/flutter/pull/178405): Use interactive mode with `devicectl` to redirect stdout
* **Author:** [vashworth](https://github.com/vashworth)
* **Merged At:** 2025-11-21 10:11 AM
* **Comments:** 0
* This PR fixes an issue with capturing logs from `devicectl` by running the command in interactive mode, which allows its standard output to be correctly redirected by the tool.

### [PR #178374](https://github.com/flutter/flutter/pull/178374): Make sure that a TextSelectionToolbarTextButton doesn't crash in 0x0 …
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-11-20 05:27 PM
* **Comments:** 1
* This PR prevents a crash in the `TextSelectionToolbarTextButton` widget when it is rendered with a size of zero, adding a new test to verify the fix.

### [PR #178293](https://github.com/flutter/flutter/pull/178293): Remove deprecated `activeColor` in `switch.0.dart` example
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-21 06:43 PM
* **Comments:** 1
* This PR updates the `Switch` widget's code example to replace the deprecated `activeColor` property with `activeThumbColor`.

### [PR #178201](https://github.com/flutter/flutter/pull/178201): Make sure that a TabBar doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-11-20 04:55 PM
* **Comments:** 0
* This PR prevents the `TabBar` widget from crashing when it is animated while rendered in a zero-size environment.

### [PR #178068](https://github.com/flutter/flutter/pull/178068): Make sure that a Stepper doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-11-21 06:58 PM
* **Comments:** 2
* Adds a regression test to ensure the `Stepper` widget does not crash when rendered in a zero-sized environment.

### [PR #177978](https://github.com/flutter/flutter/pull/177978): Make sure that a CupertinoSpellCheckSuggestionsToolbar doesn't crash …
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-11-20 05:09 PM
* **Comments:** 3
* This PR fixes a crash in `CupertinoSpellCheckSuggestionsToolbar` that occurred when the widget was rendered with a size of zero, adding a regression test to verify the fix.

### [PR #177749](https://github.com/flutter/flutter/pull/177749): Make sure that a SearchAnchor doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-11-21 07:12 PM
* **Comments:** 4
* This pull request adds a regression test to ensure the `SearchAnchor` widget does not crash when rendered in a zero-sized environment.

### [PR #177410](https://github.com/flutter/flutter/pull/177410): [ios] Dynamic Content Resizing
* **Author:** [LouiseHsu](https://github.com/LouiseHsu)
* **Merged At:** 2025-11-21 05:06 PM
* **Comments:** 4
* Adds an `isAutoResizable` property to `FlutterViewController` on iOS, allowing an embedded Flutter view in Add-to-App scenarios to automatically resize based on its content, which removes the need to manually calculate and set the view's frame size.

### 🔥🔥🔥 [PR #170000](https://github.com/flutter/flutter/pull/170000): Manually roll material_color_utilities
* **Author:** [kevmoo](https://github.com/kevmoo)
* **Merged At:** 2025-11-21 01:03 PM
* **Comments:** 12
* Updates the `material_color_utilities` package to its latest version, which includes code cleanup to improve compiled size and performance. This change also updates the color generation logic for Material 3's primary, secondary, tertiary, and error colors, completing a previous token migration.


## Closed Issues

### [Issue #178943](https://github.com/flutter/flutter/issues/178943): mac-37 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* A phone device connected to the build agent mac-37 has lost its external network connection.

### [Issue #178918](https://github.com/flutter/flutter/issues/178918): Windows --profile run fails with "copy_pdbs.rule exited with code 1"
* **Author:** [filiph](https://github.com/filiph)
* Running a Flutter for Windows application in profile mode fails with a build error, `MSB8066: Custom build for '...copy_pdbs.rule' exited with code 1`, during the step that copies PDB files.

### [Issue #178885](https://github.com/flutter/flutter/issues/178885): win-5 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The Windows host `win-5` has lost its external network connection and is inaccessible from a phone device.

### [Issue #178879](https://github.com/flutter/flutter/issues/178879): flutter_archives_v2 font and Gradle assets should not be deleted from cloud storage by the TTL policy
* **Author:** [jason-simmons](https://github.com/jason-simmons)
* **Reactions:** **1** -- 👍 1
* A recently implemented 90-day time-to-live (TTL) policy on the `flutter_archives_v2` cloud storage bucket is unintentionally deleting essential font and Gradle wrapper assets, requiring the policy to be adjusted to exclude these specific directories.

### [Issue #178804](https://github.com/flutter/flutter/issues/178804): Release a new patch version with Dart 3.10.1 (or later) bundled
* **Author:** [VladislavGlushko](https://github.com/VladislavGlushko)
* **Reactions:** **3** -- 👍 2 👀 1
* This issue requests a new Flutter patch release to update the bundled Dart SDK to version 3.10.1 or later, which would resolve a critical bug in Dart 3.10.0 that is breaking production CI pipelines.

### [Issue #178772](https://github.com/flutter/flutter/issues/178772): [Bug][3.38.2]: flutter reports incorrect version number after flutter upgrade on Windows, but framework revision is updated
* **Author:** [Predidit](https://github.com/Predidit)
* **Reactions:** **6** -- 👍 6
* On Windows, running `flutter upgrade` fails to update the version number and framework revision reported by `flutter doctor -v`, though the timestamp for the revision is updated to the time of the new release.

### [Issue #178756](https://github.com/flutter/flutter/issues/178756): webview_flutter_android fails compilation on Kotlin 1.8
* **Author:** [fuzzybinary](https://github.com/fuzzybinary)
* The `webview_flutter_android` package fails to compile on Android when using Kotlin 1.8, throwing a "Type argument is not within its bounds" error in the generated `AndroidWebkitLibrary.g.kt` file.

### [Issue #177771](https://github.com/flutter/flutter/issues/177771): The page failed to exit completely.
* **Author:** [gghh0408](https://github.com/gghh0408)
* On iPhones, an intermittent and hard-to-reproduce issue occurs where using a back gesture results in an incomplete page transition, leaving a portion of the previous page's content visible on the screen.

### [Issue #177285](https://github.com/flutter/flutter/issues/177285): update the material_color_utilities dependency version
* **Author:** [Hanibachi](https://github.com/Hanibachi)
* This issue proposes updating the `material_color_utilities` dependency from version `0.11.1` to `0.13.0` to resolve dependency conflicts for other Dart projects that also use Flutter.

### [Issue #177085](https://github.com/flutter/flutter/issues/177085): [image_picker]After selecting a GIF image of about 78M in size, the iOS device crashed.
* **Author:** [FanYuanBo888](https://github.com/FanYuanBo888)
* On iOS, the application crashes when a user selects a large GIF file (~78MB), with logs showing a `com.apple.FileProvider` connection error.

### [Issue #176930](https://github.com/flutter/flutter/issues/176930): Update .ci.yaml in flutter/flutter to use either macOS 15.5 or macOS 15.7
* **Author:** [vashworth](https://github.com/vashworth)
* This issue tracks the required updates to CI configuration files to allow jobs to run on either macOS 15.5 or macOS 15.7.

### [Issue #174895](https://github.com/flutter/flutter/issues/174895): Web platform completion and stabilization
* **Author:** [kevmoo](https://github.com/kevmoo)
* This issue tracks the remaining work to complete and stabilize the web platform, focusing on accessibility, text input, native scrolling, and finishing the Dart2wasm implementation.

### [Issue #169147](https://github.com/flutter/flutter/issues/169147): Allow an embedded Flutter View on iOS to size itself, implement content-sized views
* **Author:** [jmagman](https://github.com/jmagman)
* This issue requests the ability for an embedded Flutter view on iOS to automatically size itself based on its content, enabling its use within native scrollable views without requiring a fixed height.

### [Issue #160622](https://github.com/flutter/flutter/issues/160622): Unable To Run Flutter App With Apple Watch Extension After Upgrading 3.27.0
* **Author:** [bahadirarslan](https://github.com/bahadirarslan)
* **Reactions:** **8** -- 👍 6 👀 2
* After upgrading to Flutter 3.27.0, a user reports that their app with an Apple Watch extension fails to build from VSCode due to Swift compiler errors related to an incorrect OS deployment target, although it still builds and runs correctly from Xcode.

### [Issue #141339](https://github.com/flutter/flutter/issues/141339): [file_selector] Do not have create directory button at bottom
* **Author:** [Yann-Qiu](https://github.com/Yann-Qiu)
* This feature request proposes adding a button to the `file_selector` dialog that would allow users to create a new directory.


# GitHub PR Report for flutter/genui
## From 2025-11-21 to 2025-11-23

This period saw improvements focused on developer tooling and local testing. A new sample browser was added to the `catalog_gallery` application in [PR #567](https://github.com/flutter/genui/pull/567), enabling developers to load and render UI definitions from local files. This provides a valuable way to test UI parsing and rendering without needing a connection to an LLM. Additionally, the internal testing infrastructure was improved in [PR #568](https://github.com/flutter/genui/pull/568) by updating the `test_and_fix` tool to avoid traversing into `.dart_tool` directories, which resolves issues with symlinks and enables CI for the `tool` directory.

## Merged Pull Requests

### [PR #568](https://github.com/flutter/genui/pull/568): Modify `test_and_fix` to avoid traversing into `.dart_tool` directories
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-11-21 03:17 PM
* **Comments:** 0
* This pull request modifies the `test_and_fix` tool to prevent it from traversing into `.dart_tool` directories, which resolves failures caused by symlinks found within them, and also enables CI for the `tool` directory.

### [PR #567](https://github.com/flutter/genui/pull/567): Add sample browser to `catalog_gallery` app
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-11-21 06:21 PM
* **Comments:** 3
* This PR adds an optional sample browser to the `catalog_gallery` app that loads and renders UI definitions from local files, allowing for the testing of UI parsing and rendering without requiring a connection to an LLM.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2025-11-21 to 2025-11-23

This release cycle focused on enhancing the `file_selector` plugin and performing key dependency and API updates. A significant new feature was added to the `file_selector` plugin, introducing a `canCreateDirectories` parameter that allows developers to control whether the "new folder" button is visible within the native file dialogs on macOS and Linux ([#9965](https://github.com/flutter/packages/pull/9965), [#10443](https://github.com/flutter/packages/pull/10443)). Additionally, the `webview_flutter_android` package was updated to ensure compatibility with Kotlin 1.8 ([#10486](https://github.com/flutter/packages/pull/10486)), and several SVG-related packages were modernized by replacing the deprecated `Color.value` property with its recommended alternative ([#10482](https://github.com/flutter/packages/pull/10482)).

## Merged Pull Requests

### [PR #10486](https://github.com/flutter/packages/pull/10486): [webview_flutter] Update Pigeon for Kotlin 1.8 compat
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-21 12:17 PM
* **Comments:** 1
* This PR updates the `pigeon` dependency in the `webview_flutter_android` package to version 26.1.2, which resolves a compatibility issue with Kotlin 1.8.

### [PR #10482](https://github.com/flutter/packages/pull/10482): [various] Replace deprecated Color.value in SVG packages
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-21 05:13 AM
* **Comments:** 0
* This PR replaces the deprecated `Color.value` property with `toARGB32()` in the `vector_graphics` and `flutter_svg` packages to align with current API recommendations.

### [PR #10443](https://github.com/flutter/packages/pull/10443): [file_selector] Implement canCreateDirectories on macos and linux
* **Author:** [danferreira](https://github.com/danferreira)
* **Merged At:** 2025-11-21 06:23 AM
* **Comments:** 3
* This PR implements the `canCreateDirectories` parameter for the `file_selector` plugin on macOS and Linux, allowing developers to control whether users can create new directories from within the native file and directory dialogs.

### [PR #9965](https://github.com/flutter/packages/pull/9965): [file_selector] Add parameter to control whether the new folders button is visible in the file dialog
* **Author:** [danferreira](https://github.com/danferreira)
* **Merged At:** 2025-11-21 10:35 AM
* **Comments:** 3
* Adds a `canCreateDirectories` parameter to `getSaveLocation`, `getDirectoryPath`, and `getDirectoryPaths` that allows developers to control whether users can create new directories from within the native file dialog on supported platforms like Linux and macOS.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-11-21 to 2025-11-23

During this period, no pull requests were merged and no issues were closed. Consequently, there were no changes to the repository's codebase or public API.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-11-21 to 2025-11-23

This period saw a significant effort to modernize the documentation website's user experience with the introduction of several new components. A new `CodePreview` component was introduced in [PR #12731](https://github.com/flutter/website/pull/12731) to display code samples alongside a visual preview, resolving a proposal in [Issue #12727](https://github.com/flutter/website/issues/12727) to replace the older `code_and_image` partial. To further enhance code examples, a `DownloadableSnippet` component ([PR #12733](https://github.com/flutter/website/pull/12733)) was added to provide copy and download functionality. Additionally, a new `SummaryCard` component ([PR #12714](https://github.com/flutter/website/pull/12714)) was created to display tutorial outlines. On the content side, a new page was published for the Flutter extension for Gemini CLI ([PR #12734](https://github.com/flutter/website/pull/12734)). Several important clarifications were also made, including a correction that `EdgeInsets` is a property value, not a widget ([PR #12735](https://github.com/flutter/website/pull/12735)), and an update to the `UISceneDelegate` breaking change documentation ([PR #12737](https://github.com/flutter/website/pull/12737)) that organizes code examples into language-specific tabs.

## Merged Pull Requests

### [PR #12738](https://github.com/flutter/website/pull/12738): Fix typo in ListView.builder reference
* **Author:** [loic-sharma](https://github.com/loic-sharma)
* **Merged At:** 2025-11-23 02:17 PM
* **Comments:** 2
* Fixes a typo in a `ListView.builder` API link in the performance best practices documentation.

### [PR #12737](https://github.com/flutter/website/pull/12737): Nest code in tabs, publish change as available on stable
* **Author:** [vashworth](https://github.com/vashworth)
* **Merged At:** 2025-11-22 06:06 PM
* **Comments:** 2
* This PR updates the documentation for the `UISceneDelegate` breaking change, marking it as available in the Flutter 3.38 stable release and reorganizing the code examples into language-specific tabs for Swift and Objective-C.

### [PR #12735](https://github.com/flutter/website/pull/12735): Correct EdgeInsets mislabeled as widget in Flutter example
* **Author:** [Daniel-BD](https://github.com/Daniel-BD)
* **Merged At:** 2025-11-21 09:04 AM
* **Comments:** 4
* This PR corrects an error in the "Flutter for Compose developers" documentation that incorrectly identified `EdgeInsets` as a widget, clarifying that it is a property value passed to a widget's constructor.

### [PR #12734](https://github.com/flutter/website/pull/12734): Adding a page on the Flutter extension for Gemini CLI
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2025-11-21 09:05 AM
* **Comments:** 2
* Adds a new documentation page for the Flutter extension for Gemini CLI, which helps developers use AI to create and modify apps from the command line.

### [PR #12733](https://github.com/flutter/website/pull/12733): Add DownloadableSnippet component
* **Author:** [schultek](https://github.com/schultek)
* **Merged At:** 2025-11-22 05:44 PM
* **Comments:** 3
* Adds a `DownloadableSnippet` component that displays code in a collapsed block with options to download it as a file, copy it to the clipboard, or expand to view the full snippet. This change also updates the `CopyButton` to read content directly from the DOM, which avoids duplicating code in the generated HTML.

### [PR #12731](https://github.com/flutter/website/pull/12731): Add CodePreview component
* **Author:** [schultek](https://github.com/schultek)
* **Merged At:** 2025-11-21 03:51 AM
* **Comments:** 2
* This PR introduces a new `CodePreview` component to display a code sample alongside a visual preview in either a row or column layout, replacing the existing `code_and_image` partial.

### [PR #12714](https://github.com/flutter/website/pull/12714): Add SummaryCard component for FWE
* **Author:** [schultek](https://github.com/schultek)
* **Merged At:** 2025-11-21 03:21 AM
* **Comments:** 3
* Adds a `SummaryCard` component for previewing and reviewing the outline of a tutorial, with support for both a simple list view and a detailed, expandable summary view.


## Closed Issues

### [Issue #12727](https://github.com/flutter/website/issues/12727): Migrate code-and-image include to Jaspr
* **Author:** [parlough](https://github.com/parlough)
* This issue proposes migrating the current "code-and-image" include to a new Jaspr component, exploring several potential UI implementations such as a split view, tabs, or a floating preview.



## Top Hacker News Stories

### 183 🔥 [NSA and IETF, part 3: Dodging the issues at hand](https://blog.cr.yp.to/20251123-dodging.html)
* **Author:** [upofadown](https://news.ycombinator.com/user?id=upofadown) | **Comments:** [55](https://news.ycombinator.com/item?id=46033151)

### 53  [Fast Lua runtime written in Rust](https://astra.arkforge.net/)
* **Author:** [akagusu](https://news.ycombinator.com/user?id=akagusu) | **Comments:** [25](https://news.ycombinator.com/item?id=46034142)

### 39  [Show HN: Cynthia – Reliably play MIDI music files – MIT / Portable / Windows](https://www.blaizenterprises.com/cynthia.html)
* **Author:** [blaiz2025](https://news.ycombinator.com/user?id=blaiz2025) | **Comments:** [12](https://news.ycombinator.com/item?id=46034145)
* *Cynthia* is a portable, open-source MIDI music player for Windows built to address the slow startup times and unreliability of the operating system's native MIDI support. It features a custom playback engine for high stability, supports multiple MIDI file formats, and can also run on Linux/Mac via Wine.

### 66  [Chrome Jpegxl Issue Reopened](https://issues.chromium.org/issues/40168998)
* **Author:** [markdog12](https://news.ycombinator.com/user?id=markdog12) | **Comments:** [12](https://news.ycombinator.com/item?id=46033330)

### 489 🔥🔥 [Shai-Hulud Returns: Over 300 NPM Packages Infected](https://helixguard.ai/blog/malicious-sha1hulud-2025-11-24)
* **Author:** [mrdosija](https://news.ycombinator.com/user?id=mrdosija) | **Comments:** [395](https://news.ycombinator.com/item?id=46032539)

### 55  [Serflings is a remake of The Settlers 1](https://www.simpleguide.net/serflings.xhtml)
* **Author:** [doener](https://news.ycombinator.com/user?id=doener) | **Comments:** [9](https://news.ycombinator.com/item?id=46013132)

### 59  [Slicing Is All You Need: Towards a Universal One-Sided Distributed MatMul](https://arxiv.org/abs/2510.08874)
* **Author:** [matt_d](https://news.ycombinator.com/user?id=matt_d) | **Comments:** [4](https://news.ycombinator.com/item?id=45981441)

### 138 🔥 [We stopped roadmap work for a week and fixed bugs](https://lalitm.com/fixits-are-good-for-the-soul/)
* **Author:** [lalitmaganti](https://news.ycombinator.com/user?id=lalitmaganti) | **Comments:** [230](https://news.ycombinator.com/item?id=46024541)

### 20  [Show HN: Virtual SLURM HPC cluster in a Docker Compose](https://github.com/exactlab/vhpc)
* **Author:** [ciclotrone](https://news.ycombinator.com/user?id=ciclotrone) | **Comments:** [4](https://news.ycombinator.com/item?id=45982280)
* The author has open-sourced `vHPC`, a project that creates a virtual SLURM HPC cluster using Docker Compose. It was built to provide a simple local environment for developing software that interacts with large production clusters, avoiding the long feedback loops of testing on production systems.

### 343 🔥🔥 [Disney Lost Roger Rabbit](https://pluralistic.net/2025/11/18/im-not-bad/)
* **Author:** [leephillips](https://news.ycombinator.com/user?id=leephillips) | **Comments:** [145](https://news.ycombinator.com/item?id=45968827)

### 293 🔥🔥 [RuBee](https://computer.rip/2025-11-22-RuBee.html)
* **Author:** [Sniffnoy](https://news.ycombinator.com/user?id=Sniffnoy) | **Comments:** [51](https://news.ycombinator.com/item?id=46029932)

### 198 🔥 [Japan's gamble to turn island of Hokkaido into global chip hub](https://www.bbc.com/news/articles/c8676qpxgnqo)
* **Author:** [1659447091](https://news.ycombinator.com/user?id=1659447091) | **Comments:** [343](https://news.ycombinator.com/item?id=46029929)

### 4  [Inside Rust's std and parking_lot mutexes – who wins?](https://blog.cuongle.dev/p/inside-rusts-std-and-parking-lot-mutexes-who-win)
* **Author:** [signa11](https://news.ycombinator.com/user?id=signa11) | **Comments:** [0](https://news.ycombinator.com/item?id=45989284)

### 273 🔥🔥 [Ask HN: Hearing aid wearers, what's hot?]()
* **Author:** [pugworthy](https://news.ycombinator.com/user?id=pugworthy) | **Comments:** [143](https://news.ycombinator.com/item?id=46029699)
* A user with moderate hearing loss is seeking recommendations for a new, high-quality hearing aid after their five-year-old model failed. They are looking for a device that performs well with music and in noisy environments, noting that cost is not a primary concern.

### 320 🔥🔥 [µcad: New open source programming language that can generate 2D sketches and 3D](https://microcad.xyz/)
* **Author:** [todsacerdoti](https://news.ycombinator.com/user?id=todsacerdoti) | **Comments:** [104](https://news.ycombinator.com/item?id=46027216)

### 62  [Building the largest known Kubernetes cluster, with 130k nodes](https://cloud.google.com/blog/products/containers-kubernetes/how-we-built-a-130000-node-gke-cluster/)
* **Author:** [TangerineDream](https://news.ycombinator.com/user?id=TangerineDream) | **Comments:** [45](https://news.ycombinator.com/item?id=46006891)

### 111 🔥 [Lambda Calculus – Animated Beta Reduction of Lambda Diagrams](https://cruzgodar.com/applets/lambda-calculus)
* **Author:** [perryprog](https://news.ycombinator.com/user?id=perryprog) | **Comments:** [7](https://news.ycombinator.com/item?id=46030613)

### 432 🔥🔥 [Native Secure Enclave backed SSH keys on macOS](https://gist.github.com/arianvp/5f59f1783e3eaf1a2d4cd8e952bb4acf)
* **Author:** [arianvanp](https://news.ycombinator.com/user?id=arianvanp) | **Comments:** [177](https://news.ycombinator.com/item?id=46025721)

### 173 🔥 [The Rust Performance Book (2020)](https://nnethercote.github.io/perf-book/)
* **Author:** [vinhnx](https://news.ycombinator.com/user?id=vinhnx) | **Comments:** [25](https://news.ycombinator.com/item?id=45977386)

### 175 🔥 [New magnetic component discovered in the Faraday effect](https://phys.org/news/2025-11-magnetic-component-faraday-effect-centuries.html)
* **Author:** [rbanffy](https://news.ycombinator.com/user?id=rbanffy) | **Comments:** [65](https://news.ycombinator.com/item?id=45985008)

### 156 🔥 [Show HN: Stun LLMs with thousands of invisible Unicode characters](https://gibberifier.com)
* **Author:** [wdpatti](https://news.ycombinator.com/user?id=wdpatti) | **Comments:** [70](https://news.ycombinator.com/item?id=46029889)
* This free tool uses invisible Unicode characters to "stun" Large Language Models, causing them to fail to respond coherently. The technique can be used for anti-plagiarism or to obfuscate text from LLM-based scrapers.

### 1034 🔥🔥🔥 [Fran Sans – font inspired by San Francisco light rail displays](https://emilysneddon.com/fran-sans-essay)
* **Author:** [ChrisArchitect](https://news.ycombinator.com/user?id=ChrisArchitect) | **Comments:** [128](https://news.ycombinator.com/item?id=46025942)

### 88  [I built an faster Notion in Rust](https://imedadel.com/outcrop/)
* **Author:** [PaulHoule](https://news.ycombinator.com/user?id=PaulHoule) | **Comments:** [49](https://news.ycombinator.com/item?id=45985306)

### 107 🔥 [Ego, empathy, and humility at work](https://matthogg.fyi/a-unified-theory-of-ego-empathy-and-humility-at-work/)
* **Author:** [mrmatthogg](https://news.ycombinator.com/user?id=mrmatthogg) | **Comments:** [34](https://news.ycombinator.com/item?id=46029534)

### 88  [Set theory with types](https://lawrencecpaulson.github.io//2025/11/21/Typed_Set_Theory.html)
* **Author:** [baruchel](https://news.ycombinator.com/user?id=baruchel) | **Comments:** [13](https://news.ycombinator.com/item?id=46012846)



