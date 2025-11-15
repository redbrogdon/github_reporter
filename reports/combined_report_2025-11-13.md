# Overall Summary
Here are the highlights from this period's updates:

*   This is a high-level tracking issue for the "Native Assets" feature, which introduces a standardized way to build, bundle, and use native libraries in Dart packages for both Dart standalone and Flutter.
*   This is a high-level tracking issue for implementing native assets and build hooks in Flutter, a feature that allows packages to build and bundle native libraries using a `build.dart` script and is now available in stable releases.
*   The `toImageSync` method appears to retain its display list, causing a severe memory leak that is only visible in the operating system's memory monitor, not in DevTools, and can eventually lead to a system crash.
*   This change allows animated GIFs in the `Image` widget to be paused via `MediaQueryData.disableAnimations` and ensures the first frame is always displayed, even if animations are disabled when the image first loads.
*   Adds support in Impeller for decoding images into the high-precision R32G32B32A32_SFLOAT format. A new `targetFormat` parameter on `decodeImageFromPixels` allows developers to request this format, enabling advanced graphics techniques like signed distance fields that benefit from higher precision textures.
*   The Flutter 3.38 release was incorrectly packaged with a beta version of Dart instead of a stable channel version.


# GitHub PR Report for dart-lang/ai
## From 2025-11-13

This update introduces a new `read_package_uris` tool for the MCP server, detailed in pull request [#318](https://github.com/dart-lang/ai/pull/318). This new feature allows clients to read files and list directories using `package:` scheme URIs, returning the results as either embedded resources or resource links. The change also includes several bug fixes for the `EmbeddedResource` API to improve its reliability.

## Merged Pull Requests

### [PR #318](https://github.com/dart-lang/ai/pull/318): Adds a tool for reading package uris
* **Author:** [jakemac53](https://github.com/jakemac53)
* **Merged At:** 2025-11-13 02:54 PM
* **Comments:** 1
* Adds a `read_package_uris` tool to the MCP server that allows clients to read files and list directories using `package:` scheme URIs, returning results as embedded resources or resource links, and also includes several bug fixes for the `EmbeddedResource` API.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2025-11-13

While no pull requests were merged, several significant issues were closed, marking the completion of major initiatives. The most notable of these is the closure of the highly anticipated tracking issue for Native Assets ([Issue #50565](https://github.com/dart-lang/sdk/issues/50565)), which garnered over 200 community reactions. This feature introduces a standardized way to build, bundle, and use native libraries, representing a major milestone for the FFI ecosystem in both Dart and Flutter. Additionally, progress was made in improving the authoring experience for analyzer plugins through proposals for built-in logging ([Issue #61956](https://github.com/dart-lang/sdk/issues/61956)) and a simplified, closure-based API for `registerNodeProcessors` ([Issue #61955](https://github.com/dart-lang/sdk/issues/61955)). Other key closures include bug fixes for autocompletion in switch expressions ([Issue #61872](https://github.com/dart-lang/sdk/issues/61872)) and a ThreadSanitizer data race in the VM ([Issue #61966](https://github.com/dart-lang/sdk/issues/61966)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #61966](https://github.com/dart-lang/sdk/issues/61966): TSAN data race accessing Isolate::mutator_thread_ between profiler and shutdown
* **Author:** [alexmarkov](https://github.com/alexmarkov)
* A ThreadSanitizer (TSAN) data race has been detected on `Isolate::mutator_thread_` due to unsynchronized access between the profiler thread during sampling and the main thread during isolate shutdown.

### [Issue #61956](https://github.com/dart-lang/sdk/issues/61956): Proposal to offer built-in log and error reporting for custom Analyzer Rules
* **Author:** [rrousselGit](https://github.com/rrousselGit)
* **Reactions:** **1** -- 👍 1
* This proposal suggests adding built-in logging and error reporting for custom analyzer plugins, as `print` calls are ignored and exceptions are silently caught, by displaying this output in a new "plugins" tab in the Analyzer Diagnostics view.

### [Issue #61955](https://github.com/dart-lang/sdk/issues/61955): registerNodeProcessors: Simplify its API by offering a closure-based API
* **Author:** [rrousselGit](https://github.com/rrousselGit)
* **Reactions:** **1** -- 👍 1
* This issue proposes simplifying the `registerNodeProcessors` API by replacing the current, error-prone `AstVisitor` class pattern with a closure-based API that allows node processing logic to be defined directly within the registration call.

### [Issue #61892](https://github.com/dart-lang/sdk/issues/61892): `ignore_for_file` fix bug
* **Author:** [FMorschel](https://github.com/FMorschel)
* **Reactions:** **1** -- 👍 1
* A bug in the quick fix for adding an `ignore_for_file` comment incorrectly places the comment after a class or library's documentation comment instead of before it.

### [Issue #61872](https://github.com/dart-lang/sdk/issues/61872): Auto completion of dot-shorthands missing cases
* **Author:** [FMorschel](https://github.com/FMorschel)
* Autocompletion fails to suggest remaining unhandled enum members when using dot-shorthand syntax within a switch expression.

### [Issue #61523](https://github.com/dart-lang/sdk/issues/61523): Implement ScopedThreadLocal as a mechanism to keep dart user state associated with isolate group callbacks
* **Author:** [aam](https://github.com/aam)
* This issue tracks the implementation of `ScopedThreadLocal`, a new mechanism to associate user state with isolate group callbacks, which will replace the use of `static` fields for various internal data structures.

### [Issue #61080](https://github.com/dart-lang/sdk/issues/61080): pub-cache in home directory inhibits gemini cli
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* The Gemini CLI cannot read dependency source code because Dart's default pub-cache in the user's home directory is outside the tool's project-scoped file access permissions, forcing it to use Google searches as a fallback.

### [Issue #50565](https://github.com/dart-lang/sdk/issues/50565): ☂️ [vm/ffi] Build hooks & Code assets
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Reactions:** **225** -- 👍 122 🎉 10 ❤️ 65 🚀 11 👀 17
* This is a high-level tracking issue for the "Native Assets" feature, which introduces a standardized way to build, bundle, and use native libraries in Dart packages for both Dart standalone and Flutter.


# GitHub PR Report for dart-lang/language
## From 2025-11-13

During this period, there were no changes to the repository, as no pull requests were merged and no issues were closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2025-11-13

This period saw several bug fixes for the `ffigen` tool, enhancing the correctness of generated bindings. A notable fix resolves a naming conflict that could occur between user-defined functions and internal variables within generated function bindings ([PR #2787](https://github.com/dart-lang/native/pull/2787)). Another correction ensures that imported enums using the `intConstants` style are now consistently generated with the Dart `int` type ([PR #2786](https://github.com/dart-lang/native/pull/2786)). Additionally, work was done to address incorrect Objective-C code generation, including fixes for bindings related to `NSArray.differenceFromArray` ([Issue #2761](https://github.com/dart-lang/native/issues/2761)) and `CFStringGetPascalStringPtr` ([Issue #2760](https://github.com/dart-lang/native/issues/2760)).

## Merged Pull Requests

### [PR #2787](https://github.com/dart-lang/native/pull/2787): [ffigen] Fix a naming conflict in function internal variables
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-13 02:57 PM
* **Comments:** 2
* This PR fixes a naming collision in `ffigen` where an internal variable generated for a function binding, such as `_fooPtr`, could conflict with a user-defined function of the same name. The fix moves the creation of these variables to the root scope, allowing the existing name-collision resolution to function correctly.

### [PR #2786](https://github.com/dart-lang/native/pull/2786): [ffigen] Fix bug in imported enums
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-13 03:32 PM
* **Comments:** 2
* This PR fixes a bug in ffigen by ensuring that enums using the `intConstants` style are always generated with the Dart type `int`, even when they are imported.


## Closed Issues

### [Issue #2761](https://github.com/dart-lang/native/issues/2761): [ffigen] [objc] Incorrect code generation for NSArray differenceFromArray
* **Author:** [brianquinlan](https://github.com/brianquinlan)
* Ffigen is generating incorrect Objective-C bindings for `NSArray.differenceFromArray`, causing a type error by attempting to pass the `NSOrderedCollectionDifferenceCalculationOptions` enum directly where an `int` is expected.

### [Issue #2760](https://github.com/dart-lang/native/issues/2760): [ffigen] [objc] Incorrect code generation for CFStringGetPascalStringPtr
* **Author:** [brianquinlan](https://github.com/brianquinlan)
* The ffigen tool generates incorrect Objective-C bindings for `CFStringGetPascalStringPtr`, causing an error by looking up the wrong native function, `CFStringGetCString`.


# GitHub PR Report for flutter/ai
## From 2025-11-13

During this period, there were no notable changes to the repository, as no pull requests were merged and no issues were closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-11-13

During this period, there were no pull requests merged or issues closed, resulting in no direct changes to the repository's codebase or public API.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-11-13

This period saw significant advancements in Flutter's graphics capabilities, framework features, and developer tooling. In the rendering engine Impeller, a highly anticipated memory leak was addressed by ensuring display lists are properly discarded after use ([#178259](https://github.com/flutter/flutter/pull/178259)), resolving a critical issue with over 180 reactions ([#138627](https://github.com/flutter/flutter/issues/138627)). Impeller also gained support for high-precision floating-point textures via a new `targetFormat` parameter on `decodeImageFromPixels`, enabling more advanced graphical effects ([#177959](https://github.com/flutter/flutter/pull/177959)) and fulfilling a long-standing feature request ([#141289](https://github.com/flutter/flutter/issues/141289)). On the framework side, a popular enhancement now allows animated GIFs in the `Image` widget to be paused by respecting `MediaQueryData.disableAnimations` ([#176492](https://github.com/flutter/flutter/pull/176492)). A major tooling milestone was reached with the closure of the umbrella issue for native assets and build hooks ([#129757](https://github.com/flutter/flutter/issues/129757)), signaling the feature's stability. Finally, these changes coincide with the Flutter 3.38 release, which drew considerable community feedback for initially being packaged with a beta version of the Dart SDK ([#178400](https://github.com/flutter/flutter/issues/178400)).

## Merged Pull Requests

### [PR #178487](https://github.com/flutter/flutter/pull/178487): Add 3.38 stable release section to `CHANGELOG`
* **Author:** [camsim99](https://github.com/camsim99)
* **Merged At:** 2025-11-13 01:50 PM
* **Comments:** 1
* Updates `CHANGELOG.md` with a new section for the Flutter 3.38 stable release, including release notes for versions 3.38.0 and 3.38.1.

### [PR #178485](https://github.com/flutter/flutter/pull/178485): [Reland] Gradle Lockfile workaround
* **Author:** [mboetger](https://github.com/mboetger)
* **Merged At:** 2025-11-13 03:56 PM
* **Comments:** 2
* Introduces a workaround to temporarily disable Gradle dependency locking by checking for a new `.ignore-locking.md` file, enabling a two-step process for updating Android embedder dependencies and then regenerating the lockfiles in a follow-up change.

### [PR #178467](https://github.com/flutter/flutter/pull/178467): Adding proxy dependency to fuchsia
* **Author:** [Rusino](https://github.com/Rusino)
* **Merged At:** 2025-11-13 12:25 PM
* **Comments:** 2
* This PR adds the `:typeface_proxy` build dependency to the Fuchsia font manager, which is a required dependency for Skia.

### [PR #178456](https://github.com/flutter/flutter/pull/178456): Reverts "Update gradle lockfiles for new exifinterface dep (#178417)"
* **Author:** [auto-submit[bot]](https://github.com/apps/auto-submit)
* **Merged At:** 2025-11-13 07:10 AM
* **Comments:** 0
* This PR reverts a recent update to Gradle lockfiles that added a new `exifinterface` dependency, as the original change caused build failures.

### [PR #178430](https://github.com/flutter/flutter/pull/178430): Bump `engine.version`
* **Author:** [camsim99](https://github.com/camsim99)
* **Merged At:** 2025-11-12 08:09 PM
* **Comments:** 2
* This PR updates the pinned Flutter engine revision to a new commit hash to incorporate recent dependency changes.

### [PR #178428](https://github.com/flutter/flutter/pull/178428): Reverts "Gradle Lockfile workaround and Android Embedder dependency change for ExifInterface (#177508)"
* **Author:** [auto-submit[bot]](https://github.com/apps/auto-submit)
* **Merged At:** 2025-11-12 07:44 PM
* **Comments:** 1
* This PR reverts a recent change that introduced a workaround for Gradle dependency locking and updated the Android `ExifInterface` dependency, as the original commit was causing build failures.

### [PR #178417](https://github.com/flutter/flutter/pull/178417): Update gradle lockfiles for new exifinterface dep
* **Author:** [mboetger](https://github.com/mboetger)
* **Merged At:** 2025-11-12 09:16 PM
* **Comments:** 1
* Updates Gradle lockfiles to incorporate the new `androidx.exifinterface` dependency from a recent engine change, and removes the temporary file that was ignoring lockfile validation.

### [PR #178398](https://github.com/flutter/flutter/pull/178398): [ Widget Preview ] Ignore modifications to files in ephemeral directories
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-11-13 11:06 AM
* **Comments:** 0
* This PR updates the widget previewer to ignore file modifications within ephemeral directories, such as `build/`, and for any files that lack a valid analysis context. This prevents the directory watcher from crashing when attempting to analyze temporary files created by commands like `flutter pub get`.

### [PR #178259](https://github.com/flutter/flutter/pull/178259): impeller: makes deferred display list images trash their display lists after they are realized
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2025-11-13 11:42 AM
* **Comments:** 4
* This change optimizes memory usage in Impeller by ensuring that deferred images created from a `DisplayList` discard the `DisplayList` after it has been realized as a GPU texture. This prevents memory from ballooning, especially in animations, by not retaining the potentially large `DisplayList` data after it's no longer needed.

### [PR #178139](https://github.com/flutter/flutter/pull/178139): [tool] clean up https cert configuration handling
* **Author:** [kevmoo](https://github.com/kevmoo)
* **Merged At:** 2025-11-12 08:49 PM
* **Comments:** 3
* This PR refactors HTTPS certificate configuration handling to enforce that both the certificate and key paths must be provided together, centralizing validation logic and simplifying the code.

### 🔥 [PR #177959](https://github.com/flutter/flutter/pull/177959): Impeller: Allows R32G32B32A32_SFLOAT images
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2025-11-13 02:58 PM
* **Comments:** 9
* Adds support in Impeller for decoding images into the high-precision R32G32B32A32_SFLOAT format. A new `targetFormat` parameter on `decodeImageFromPixels` allows developers to request this format, enabling advanced graphics techniques like signed distance fields that benefit from higher precision textures.

### [PR #177852](https://github.com/flutter/flutter/pull/177852): flutter_tools: correct iOS signing log for manual code signing (CODE_SIGN_STYLE=Manual)
* **Author:** [MohammedTarigg](https://github.com/MohammedTarigg)
* **Merged At:** 2025-11-13 12:45 PM
* **Comments:** 4
* This change corrects a misleading log message in `flutter_tools` by suppressing the "Automatically signing iOS..." output when a project is configured for manual code signing, preventing developer confusion about whether their signing settings are being overridden.

### [PR #177460](https://github.com/flutter/flutter/pull/177460): Fixing zoom, dropping subpixel shift
* **Author:** [Rusino](https://github.com/Rusino)
* **Merged At:** 2025-11-13 11:52 AM
* **Comments:** 1
* This PR improves web text rendering by accounting for the device pixel ratio to prevent pixelation on zoomed displays and by removing subpixel shifting for sharper text alignment. The changes also include fixes for text decoration color and cursor positioning.

### 🔥🔥🔥 [PR #176492](https://github.com/flutter/flutter/pull/176492): Image GIF pausing
* **Author:** [justinmc](https://github.com/justinmc)
* **Merged At:** 2025-11-13 12:12 PM
* **Comments:** 11
* This change allows animated GIFs in the `Image` widget to be paused via `MediaQueryData.disableAnimations` and ensures the first frame is always displayed, even if animations are disabled when the image first loads.


## Closed Issues

### [Issue #178490](https://github.com/flutter/flutter/issues/178490): geolocator_android plugin fails to build due to v1 embedding references on Flutter 3.x / Dart 3.x
* **Author:** [Amit231999](https://github.com/Amit231999)
* The geolocator_android plugin is failing to build on Flutter 3.x due to containing references to the deprecated v1 Android embedding API, causing `cannot find symbol` errors for `PluginRegistry.Registrar` in projects that use the modern v2 embedding.

### [Issue #178489](https://github.com/flutter/flutter/issues/178489): Add ability to pipe output of FragmentShader to another FragmentShader
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* This issue proposes a feature to allow the output of one FragmentShader to be used as a texture input for another, enabling multi-pass effects like generating a signed distance field (SDF) in one shader and then consuming it in a second shader.

### [Issue #178482](https://github.com/flutter/flutter/issues/178482): mac-20, mac-31 and mac-25 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The Mac hosts mac-20, mac-31, and mac-25 have lost external network connectivity from their attached phone devices.

### [Issue #178481](https://github.com/flutter/flutter/issues/178481): linux-37 and linux-8 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The linux-37 and linux-8 machines have lost their external connection from an attached phone device.

### [Issue #178480](https://github.com/flutter/flutter/issues/178480): mac-21, mac-18 and mac-22 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The phone devices connected to Mac hosts mac-18, mac-21, and mac-22 have lost their external network connections.

### [Issue #178479](https://github.com/flutter/flutter/issues/178479): win-10 in quarantined state because the local Temp directory exceeded 1024 files.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* A Windows 10 host is in a quarantined state because its local Temp directory has exceeded the 1024 file limit.

### [Issue #178478](https://github.com/flutter/flutter/issues/178478): List of Windows Bots lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* Multiple Windows bots have lost their external connection from the attached phone device.

### [Issue #178475](https://github.com/flutter/flutter/issues/178475): dart roll blocked on java dependency resolution in `:app:mergeReleaseNativeLibs`
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* The Dart SDK autoroller is blocked by a build failure in the `:app:mergeReleaseNativeLibs` Gradle task, which is unable to resolve Java dependencies defined in the dependency lock state.

### [Issue #178458](https://github.com/flutter/flutter/issues/178458): devicelab: missing windows and mac x86 bots
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* The devicelab is missing Windows and Mac x86 bots, causing tasks to fail with a "no resource" error.

### [Issue #178457](https://github.com/flutter/flutter/issues/178457): Add Built-in Support for Biometric Authentication Widget
* **Author:** [saikirankanakala](https://github.com/saikirankanakala)
* This issue proposes adding a built-in biometric authentication widget to Flutter to provide a standardized, platform-aware UI component, reducing boilerplate and eliminating the need for developers to rely on third-party packages like `local_auth`.

### [Issue #178448](https://github.com/flutter/flutter/issues/178448): Flutter 3.38.0 is incompatible with Dart 3.10.0.
* **Author:** [kjxbyz](https://github.com/kjxbyz)
* Flutter 3.38.0 is incompatible with the Dart 3.10.0 SDK, causing dependency resolution to fail when a project's `pubspec.yaml` environment is configured to require Dart version `'>=3.10.0'`.

### [Issue #178432](https://github.com/flutter/flutter/issues/178432): Screen reader does not scroll a list when using `Localizations.override`
* **Author:** [jiahaog](https://github.com/jiahaog)
* Screen readers are unable to scroll through a list of items within a `CustomScrollView` if the entire list is wrapped in a `Localizations.override` widget.

### [Issue #178431](https://github.com/flutter/flutter/issues/178431): Keyboard dismissal doesn't restore viewport height on mobile web (Android) - Flutter 3.38.0
* **Author:** [lcw99](https://github.com/lcw99)
* On Android mobile web, dismissing the on-screen keyboard with its built-in hide button fails to restore the viewport's full height, leaving the app layout compressed with empty space at the bottom.

### [Issue #178426](https://github.com/flutter/flutter/issues/178426): Implement Consolidated Check-Run configuration
* **Author:** [ievdokdm](https://github.com/ievdokdm)

### [Issue #178424](https://github.com/flutter/flutter/issues/178424): win-2 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The machine `win-2` has lost its external network connection, preventing phone devices from connecting to it.

### [Issue #178423](https://github.com/flutter/flutter/issues/178423): win-1 and win-4 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The `win-1` and `win-4` hosts have lost their external connection from a connected phone device.

### [Issue #178422](https://github.com/flutter/flutter/issues/178422): mac-21, mac-20 and mac-18 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The Mac hosts mac-21, mac-20, and mac-18 have lost their external connection from an attached phone device.

### [Issue #178400](https://github.com/flutter/flutter/issues/178400): Flutter 3.38 was released with Dart 3.10.0-290.4.beta instead of Dart stable channel
* **Author:** [pintusingh28](https://github.com/pintusingh28)
* **Reactions:** **123** -- 👍 88 😄 16 🎉 3 😕 7 ❤️ 2 🚀 2 👀 5
* The Flutter 3.38 release was incorrectly packaged with a beta version of Dart instead of a stable channel version.

### [Issue #178373](https://github.com/flutter/flutter/issues/178373): [in_app_purchase] Google Play In-App Products are now "One-Time Products"
* **Author:** [SergoFrost](https://github.com/SergoFrost)
* A user is asking if the `in_app_purchase` package is compatible with Google Play's new "One-Time Products" system, as they are being forced to migrate from the old "In-App Products" to change an item's price.

### [Issue #178317](https://github.com/flutter/flutter/issues/178317): [ Widget Preview ] Running `flutter pub get` after adding a plugin dependency causes the previewer to crash
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Reactions:** **1** -- 👍 1
* The widget previewer crashes repeatedly after running `flutter pub get` to add a new plugin dependency, as the file system watcher is unable to find the analysis context for the newly created plugin symlinks.

### [Issue #178004](https://github.com/flutter/flutter/issues/178004): devicelab: try-pool: upgrade Linux Focal to Jammy
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* This issue tracks the task of upgrading the devicelab try-pool Linux bots from Ubuntu 20.04 (Focal) to Ubuntu 22.04 (Jammy).

### [Issue #177789](https://github.com/flutter/flutter/issues/177789): Update Android Accessibility Testing
* **Author:** [ash2moon](https://github.com/ash2moon)
* This issue proposes an update to Android accessibility testing, with details available in an internal changelist.

### [Issue #177066](https://github.com/flutter/flutter/issues/177066): generate_gradle_lockfiles needs to work with local engine changes
* **Author:** [mboetger](https://github.com/mboetger)
* The `generate_gradle_lockfiles.dart` script needs to be updated to account for local engine changes, as it currently blocks pull requests that add new Android dependencies by failing to generate the required lockfile updates in the same commit as required by the monorepo structure.

### [Issue #176005](https://github.com/flutter/flutter/issues/176005): Suggest final keyword for new Widget classes by default
* **Author:** [loveoverflowcom](https://github.com/loveoverflowcom)
* This issue proposes updating Flutter development tools and IDEs to suggest or automatically add the `final` keyword to new Widget classes by default to prevent accidental subclassing and improve code safety.

### [Issue #175516](https://github.com/flutter/flutter/issues/175516): [Google3 Bug]: ImageStream & ImageProvider provide no way to pause GIF animations
* **Author:** [evantea](https://github.com/evantea)
* **Reactions:** **1** -- 👍 1
* The `ImageProvider` and `ImageStream` classes do not provide a way to pause or disable GIF animations, nor do they respect the `MediaQuery.disableAnimations` setting.

### [Issue #168529](https://github.com/flutter/flutter/issues/168529): [google_maps_flutter] Send internal usage attribution Id
* **Author:** [aednlaxer](https://github.com/aednlaxer)
* This issue proposes sending a platform-specific internal usage attribution ID from the native implementation, with a new CI job to verify that the version in the ID matches the native code.

### [Issue #143570](https://github.com/flutter/flutter/issues/143570): [google_maps_flutter] Polygons flash blue on iOS
* **Author:** [Colman](https://github.com/Colman)
* On iOS, polygons in the `google_maps_flutter` plugin briefly flash blue before rendering with their specified color.

### [Issue #141289](https://github.com/flutter/flutter/issues/141289): Support for floating point textures
* **Author:** [anlumo](https://github.com/anlumo)
* This feature request proposes adding support for floating point textures to enable fragment shaders to use lookup tables for operations like color transformations, aligning with capabilities found in graphics APIs like OpenGL.

### [Issue #138627](https://github.com/flutter/flutter/issues/138627): toImageSync retains display list which can lead to surprising memory retention.
* **Author:** [alnitak](https://github.com/alnitak)
* **Reactions:** **184** -- 👍 183 🚀 1
* The `toImageSync` method appears to retain its display list, causing a severe memory leak that is only visible in the operating system's memory monitor, not in DevTools, and can eventually lead to a system crash.

### [Issue #129757](https://github.com/flutter/flutter/issues/129757): ☂️ Build hooks & Code assets
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Reactions:** **102** -- 👍 72 🎉 8 ❤️ 9 🚀 6 👀 7
* This is a high-level tracking issue for implementing native assets and build hooks in Flutter, a feature that allows packages to build and bundle native libraries using a `build.dart` script and is now available in stable releases.


# GitHub PR Report for flutter/genui
## From 2025-11-13

This period's updates focused on improving the internal release and versioning process for the repository. A new `release` command-line tool was introduced to automate package versioning and publishing workflows ([#515](https://github.com/flutter/genui/pull/515)). In preparation for the next version, the package changelogs were also updated to include an in-progress section for the upcoming release ([#518](https://github.com/flutter/genui/pull/518)).

## Merged Pull Requests

### [PR #518](https://github.com/flutter/genui/pull/518): Update changelogs for next version
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-11-12 05:18 PM
* **Comments:** 0
* This pull request adds a new "in progress" section to the changelogs for several packages in preparation for the v0.5.2 release.

### [PR #515](https://github.com/flutter/genui/pull/515): Add a release tool to bump versions
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-11-12 05:52 PM
* **Comments:** 0
* This PR introduces a new `release` command-line tool to automate the package release process with a two-phase workflow: a `bump` command to update version numbers and changelogs, and a `publish` command to handle publishing packages, creating git tags, and preparing for the next development cycle.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2025-11-13

This period saw improvements to both user-facing behavior and internal developer tooling. For `google_maps_flutter` users, a flickering issue on iOS was resolved by ensuring that all properties of a map object are set before the object is added to the map, preventing it from briefly appearing with default values ([#10347](https://github.com/flutter/packages/pull/10347)). Additionally, new tooling was added to streamline repository maintenance, providing a command for bulk updates of the Android Gradle Plugin version across all plugin examples ([#10394](https://github.com/flutter/packages/pull/10394)).

## Merged Pull Requests

### [PR #10394](https://github.com/flutter/packages/pull/10394): Added Tooling For AGP Bulk Update
* **Author:** [jesswrd](https://github.com/jesswrd)
* **Merged At:** 2025-11-12 05:09 PM
* **Comments:** 0
* This PR adds a new `androidGradlePlugin` option to the `update-dependency` command, providing a way to bulk update the Android Gradle Plugin version in the `settings.gradle` files of plugin examples.

### [PR #10347](https://github.com/flutter/packages/pull/10347): [google_maps_flutter] Set properties before adding maps objects
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-13 01:53 PM
* **Comments:** 0
* Fixes a flickering issue on iOS by ensuring all properties of a map object are set before it is added to the map, which prevents the object from briefly rendering with default values.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-11-13

During this period, there were no merged pull requests or closed issues, resulting in no changes to the repository's codebase or feature set.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-11-13

This period saw a focus on improving documentation for Android developers and maintaining documentation quality. For developers targeting Android, new documentation was added for the `-Pdisable-abi-filtering` build flag, which gives developers more control over setting `abiFilters` in their projects ([PR #12670](https://github.com/flutter/website/pull/12670)). In a discussed change, a new guide explains how to programmatically identify if an app is built with Flutter by checking for the presence of `libflutter.so` ([PR #12668](https://github.com/flutter/website/pull/12668)). Additionally, the accessibility documentation was updated by removing a broken community link ([PR #12683](https://github.com/flutter/website/pull/12683)), directly addressing a problem reported by the community in [Issue #12672](https://github.com/flutter/website/issues/12672).

## Merged Pull Requests

### [PR #12683](https://github.com/flutter/website/pull/12683): Remove old link that no longer works
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2025-11-13 02:16 PM
* **Comments:** 2
* This PR updates the accessibility documentation by removing a broken link to a community article on Semantics and updating the URL for the Convention on the Rights of Persons with Disabilities (CRPD).

### [PR #12670](https://github.com/flutter/website/pull/12670): Update abiFiltering documentation with new flag to disable
* **Author:** [mboetger](https://github.com/mboetger)
* **Merged At:** 2025-11-13 09:40 AM
* **Comments:** 1
* Updates Android documentation with the new `-Pdisable-abi-filtering` flag, which allows developers to opt-out of Flutter's default ABI filtering logic, enabling them to set `abiFilters` in product flavors.

### [PR #12668](https://github.com/flutter/website/pull/12668): Document how to determine if an app is a flutter app
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2025-11-13 09:37 AM
* **Comments:** 4
* Adds documentation explaining how to determine if an Android app is built with Flutter, with the recommended method being to check for the `libflutter.so` library within the APK.


## Closed Issues

### [Issue #12681](https://github.com/flutter/website/issues/12681): Fix the Buttons on the Code Example
* **Author:** [mukcodes](https://github.com/mukcodes)
* The action buttons on documentation code examples are overlapping and obscuring the code text, and it is suggested that they be moved to a menu bar or be made hideable.

### [Issue #12672](https://github.com/flutter/website/issues/12672): Broken HTTPS link
* **Author:** [asher-stern](https://github.com/asher-stern)
* On the accessibility documentation page, a link to the external "Semantics in Flutter" article points to a site with a broken HTTPS certificate, causing a browser security warning.



## Top Hacker News Stories

### 🔥🔥 \[374\] [AI World Clocks](https://clocks.brianmoore.com/)
* **Author:** [waxpancake](https://news.ycombinator.com/user?id=waxpancake) | **Comments:** [181](https://news.ycombinator.com/item?id=45930151)
* This project uses nine different AI models to render a new clock image every minute.

### 🔥 \[155\] [A race condition in Aurora RDS](https://hightouch.com/blog/uncovering-a-race-condition-in-aurora-rds)
* **Author:** [theanomaly](https://news.ycombinator.com/user?id=theanomaly) | **Comments:** [48](https://news.ycombinator.com/item?id=45929921)

###  \[68\] [All Praise to the Lunch Ladies](https://bittersoutherner.com/issue-no-12/all-praise-to-the-lunch-ladies)
* **Author:** [gmays](https://news.ycombinator.com/user?id=gmays) | **Comments:** [16](https://news.ycombinator.com/item?id=45931403)

###  \[46\] [Structured Outputs on the Claude Developer Platform (API)](https://www.claude.com/blog/structured-outputs-on-the-claude-developer-platform)
* **Author:** [adocomplete](https://news.ycombinator.com/user?id=adocomplete) | **Comments:** [23](https://news.ycombinator.com/item?id=45930598)

###  \[92\] [Manganese is Lyme disease's double-edge sword](https://news.northwestern.edu/stories/2025/11/manganese-is-lyme-diseases-double-edge-sword)
* **Author:** [gmays](https://news.ycombinator.com/user?id=gmays) | **Comments:** [48](https://news.ycombinator.com/item?id=45928709)

###  \[57\] [Show HN: Tiny Diffusion – A character-level text diffusion model from scratch](https://github.com/nathan-barry/tiny-diffusion)
* **Author:** [nathan-barry](https://news.ycombinator.com/user?id=nathan-barry) | **Comments:** [6](https://news.ycombinator.com/item?id=45876742)
* This is a small, 10.7 million parameter character-level language diffusion model for text generation that can be run locally. The model is a modified version of Nanochat's GPT implementation and is trained on the Tiny Shakespeare dataset.

###  \[26\] [Houston, We Have a Problem: Anthropic Rides an Artificial Wave – BIML](https://berryvilleiml.com/2025/11/14/houston-we-have-a-problem-anthropic-rides-an-artificial-wave/)
* **Author:** [cratermoon](https://news.ycombinator.com/user?id=cratermoon) | **Comments:** [10](https://news.ycombinator.com/item?id=45931552)

###  \[1\] [Mentra (YC W25) Is Hiring: Head of Growth to Make Smart Glasses Mainstream](https://www.ycombinator.com/companies/mentra/jobs/2YbQCRw-make-smart-glasses-mainstream-head-of-growth)
* **Author:** [caydenpiercehax](https://news.ycombinator.com/user?id=caydenpiercehax) | **Comments:** [null](https://news.ycombinator.com/item?id=45932131)

###  \[65\] [Awk Technical Notes (2023)](https://maximullaris.com/awk_tech_notes.html)
* **Author:** [signa11](https://news.ycombinator.com/user?id=signa11) | **Comments:** [19](https://news.ycombinator.com/item?id=45797689)

### 🔥🔥 \[361\] [The disguised return of EU Chat Control](https://reclaimthenet.org/the-disguised-return-of-the-eus-private-message-scanning-plot)
* **Author:** [egorfine](https://news.ycombinator.com/user?id=egorfine) | **Comments:** [181](https://news.ycombinator.com/item?id=45929511)
* MEP Patrick Breyer warns that the EU is deceptively advancing a "Chat Control 2.0" proposal to scan private communications and place new restrictions on teenagers.

###  \[44\] [Minisforum Stuffs Entire Arm Homelab in the MS-R1](https://www.jeffgeerling.com/blog/2025/minisforum-stuffs-entire-arm-homelab-ms-r1)
* **Author:** [kencausey](https://news.ycombinator.com/user?id=kencausey) | **Comments:** [24](https://news.ycombinator.com/item?id=45930284)

###  \[74\] [US Tech Market Treemap](https://caplocus.com/)
* **Author:** [gwintrob](https://news.ycombinator.com/user?id=gwintrob) | **Comments:** [31](https://news.ycombinator.com/item?id=45928620)

###  \[12\] [Xqerl – Erlang XQuery 3.1 Processor](https://zadean.github.io/xqerl/)
* **Author:** [smartmic](https://news.ycombinator.com/user?id=smartmic) | **Comments:** [0](https://news.ycombinator.com/item?id=45885677)

###  \[5\] [HipKittens: Fast and furious AMD kernels](https://hazyresearch.stanford.edu/blog/2025-11-09-hk)
* **Author:** [dataminer](https://news.ycombinator.com/user?id=dataminer) | **Comments:** [0](https://news.ycombinator.com/item?id=45923188)

### 🔥 \[248\] [Bitchat for Gaza – messaging without internet](https://updates.techforpalestine.org/bitchat-for-gaza-messaging-without-internet/)
* **Author:** [ciconia](https://news.ycombinator.com/user?id=ciconia) | **Comments:** [124](https://news.ycombinator.com/item?id=45929358)
* **BitChat** is an open-source, peer-to-peer chat application that uses the BitTorrent protocol to enable serverless and anonymous communication.

### 128 🔥 [Incus-OS: Immutable Linux OS to run Incus as a hypervisor](https://linuxcontainers.org/incus-os/)
* **Author:** [_kb](https://news.ycombinator.com/user?id=_kb) | **Comments:** [41](https://news.ycombinator.com/item?id=45821154)

### 🔥🔥 \[264\] [Honda: 2 years of ml vs 1 month of prompting - heres what we learned](https://www.levs.fyi/blog/2-years-of-ml-vs-1-month-of-prompting/)
* **Author:** [Ostatnigrosh](https://news.ycombinator.com/user?id=Ostatnigrosh) | **Comments:** [94](https://news.ycombinator.com/item?id=45875618)

### 9  [An Italian Company Builds the First Known Propellantless Space-Propulsion System](https://www.satcom.digital/news/genergo-an-italian-company-builds-the-worlds-first-known-propellantless-space-propulsion-system-flight-tested-and-validated-on-orbit)
* **Author:** [maremmano](https://news.ycombinator.com/user?id=maremmano) | **Comments:** [0](https://news.ycombinator.com/item?id=45931224)

### 🔥 \[145\] [Germany to ban Huawei from future 6G network](https://www.bloomberg.com/news/articles/2025-11-13/germany-to-ban-huawei-from-future-6g-network-in-sovereignty-push)
* **Author:** [teleforce](https://news.ycombinator.com/user?id=teleforce) | **Comments:** [108](https://news.ycombinator.com/item?id=45929052)

### 🔥 \[105\] [Magit manuals are available online again](https://github.com/magit/magit/issues/5472)
* **Author:** [vetronauta](https://news.ycombinator.com/user?id=vetronauta) | **Comments:** [38](https://news.ycombinator.com/item?id=45926037)

### 🔥🔥 \[493\] [AGI fantasy is a blocker to actual engineering](https://www.tomwphillips.co.uk/2025/11/agi-fantasy-is-a-blocker-to-actual-engineering/)
* **Author:** [tomwphillips](https://news.ycombinator.com/user?id=tomwphillips) | **Comments:** [474](https://news.ycombinator.com/item?id=45926469)

###  \[82\] [Meeting notes between Forgejo and the Dutch government via Git commits](https://codeberg.org/forgejo/sustainability/pulls/137/files)
* **Author:** [speckx](https://news.ycombinator.com/user?id=speckx) | **Comments:** [33](https://news.ycombinator.com/item?id=45929247)

###  \[70\] [Show HN: Epstein Files Organized and Searchable](https://searchepsteinfiles.com/)
* **Author:** [searchepstein](https://news.ycombinator.com/user?id=searchepstein) | **Comments:** [5](https://news.ycombinator.com/item?id=45931331)
* The author has organized the Epstein files to improve transparency and aid researchers. This is a work-in-progress, but it is being shared to be helpful in the interim.

###  \[17\] [Show HN: Chirp – Local Windows dictation with ParakeetV3 no executable required](https://github.com/Whamp/chirp)
* **Author:** [whamp](https://news.ycombinator.com/user?id=whamp) | **Comments:** [6](https://news.ycombinator.com/item?id=45930659)
* *Chirp* is a local-only, CPU-based speech-to-text application for Windows that provides fast and accurate dictation without needing a GPU or cloud services. It is designed for locked-down environments where Python is permitted but installing new executables is not.

###  \[3\] [First Microprocessor – 50th Anniversary 2020](https://firstmicroprocessor.com/)
* **Author:** [rbanffy](https://news.ycombinator.com/user?id=rbanffy) | **Comments:** [0](https://news.ycombinator.com/item?id=45932051)



