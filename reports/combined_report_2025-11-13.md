# Overall Summary
This period marked the culmination of a major, long-running effort to enhance Dart's native interoperability with the closure of the highly anticipated tracking issues for FFI build hooks and code assets in both the Dart SDK ([Issue #50565](https://github.com/dart-lang/sdk/issues/50565)) and Flutter ([Issue #129757](https://github.com/flutter/flutter/issues/129757)). Complementing this, the `ffigen` tool received bug fixes to improve the correctness of generated bindings ([PR #2787](https://github.com/dart-lang/native/pull/2787), [PR #2786](https://github.com/dart-lang/native/pull/2786)). On the API front, the SDK completed work on `ScopedThreadLocal` as a new mechanism for managing state with isolate group callbacks ([Issue #61523](https://github.com/dart-lang/sdk/issues/61523)). In the Flutter framework, the Impeller rendering engine saw significant advancements, including a critical memory optimization to prevent bloat by discarding display lists after use, resolving a long-standing issue with over 180 community reactions ([PR #178259](https://github.com/flutter/flutter/pull/178259), [Issue #138627](https://github.com/flutter/flutter/issues/138627)). Impeller also gained support for high-precision floating-point textures via a new API on `decodeImageFromPixels` ([PR #177959](https://github.com/flutter/flutter/pull/177959)). Finally, a highly-requested accessibility improvement landed, allowing animated images like GIFs to automatically pause when system animations are disabled ([PR #176492](https://github.com/flutter/flutter/pull/176492)).


# GitHub PR Report for dart-lang/ai
## From 2025-11-13

This period saw the addition of a new `read_package_uris` tool for the MCP server, introduced in pull request [#318](https://github.com/dart-lang/ai/pull/318). This new utility enables reading files or listing directories using `package:` URIs, returning file contents as embedded resources and directory listings as resource links. The change also bundled several bug fixes for the `EmbeddedResource` API.

## Merged Pull Requests

### [PR #318](https://github.com/dart-lang/ai/pull/318): Adds a tool for reading package uris
* **Author:** [jakemac53](https://github.com/jakemac53)
* **Merged At:** 2025-11-13 02:54 PM
* **Comments:** 1
* **Summary:** Adds a `read_package_uris` tool to the MCP server that can read files or list directories using `package:` URIs, returning file contents as embedded resources and directory listings as resource links. This change also includes several bug fixes for the `EmbeddedResource` API.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2025-11-13

This period saw the conclusion of significant, long-running work, most notably the closure of the highly anticipated tracking issue for FFI build hooks and code assets ([Issue #50565](https://github.com/dart-lang/sdk/issues/50565)). This effort, which garnered over 200 community reactions, represents a major step forward for Dart's native interop capabilities. On the API front, work was completed to implement `ScopedThreadLocal` as a new mechanism for managing state associated with isolate group callbacks ([Issue #61523](https://github.com/dart-lang/sdk/issues/61523)). Additionally, several proposals were closed that improve the experience for authors of custom analyzer rules, including adding built-in logging and error reporting ([Issue #61956](https://github.com/dart-lang/sdk/issues/61956)) and simplifying the `registerNodeProcessors` API ([Issue #61955](https://github.com/dart-lang/sdk/issues/61955)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #61966](https://github.com/dart-lang/sdk/issues/61966): TSAN data race accessing Isolate::mutator_thread_ between profiler and shutdown
* **Author:** [alexmarkov](https://github.com/alexmarkov)
* **Closed At:** 2025-11-13 12:16 PM

### [Issue #61956](https://github.com/dart-lang/sdk/issues/61956): Proposal to offer built-in log and error reporting for custom Analyzer Rules
* **Author:** [rrousselGit](https://github.com/rrousselGit)
* **Closed At:** 2025-11-13 09:27 AM
* **Reactions:** **1** -- 👍 1

### [Issue #61955](https://github.com/dart-lang/sdk/issues/61955): registerNodeProcessors: Simplify its API by offering a closure-based API
* **Author:** [rrousselGit](https://github.com/rrousselGit)
* **Closed At:** 2025-11-13 09:59 AM
* **Reactions:** **1** -- 👍 1

### [Issue #61892](https://github.com/dart-lang/sdk/issues/61892): `ignore_for_file` fix bug
* **Author:** [FMorschel](https://github.com/FMorschel)
* **Closed At:** 2025-11-13 03:13 PM
* **Reactions:** **1** -- 👍 1

### [Issue #61872](https://github.com/dart-lang/sdk/issues/61872): Auto completion of dot-shorthands missing cases
* **Author:** [FMorschel](https://github.com/FMorschel)
* **Closed At:** 2025-11-13 02:09 PM

### [Issue #61523](https://github.com/dart-lang/sdk/issues/61523): Implement ScopedThreadLocal as a mechanism to keep dart user state associated with isolate group callbacks
* **Author:** [aam](https://github.com/aam)
* **Closed At:** 2025-11-13 09:52 AM

### [Issue #61080](https://github.com/dart-lang/sdk/issues/61080): pub-cache in home directory inhibits gemini cli
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Closed At:** 2025-11-13 02:54 PM

### [Issue #50565](https://github.com/dart-lang/sdk/issues/50565): ☂️ [vm/ffi] Build hooks & Code assets
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Closed At:** 2025-11-13 01:00 PM
* **Reactions:** **225** -- 👍 122 🎉 10 ❤️ 65 🚀 11 👀 17


# GitHub PR Report for dart-lang/language
## From 2025-11-13

There were no significant changes, bug fixes, or new features added to the repository during this period, as no pull requests were merged and no issues were closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2025-11-13

This period saw several bug fixes for the `ffigen` tool, improving the correctness of the generated FFI bindings. A naming conflict was resolved where an internally generated variable could clash with an actual function binding, which is fixed by moving variable creation to the root scope for proper collision detection ([PR #2787](https://github.com/dart-lang/native/pull/2787)). Additionally, a bug was fixed to ensure that imported enums using the `intConstants` style are correctly assigned the Dart type `int` in the generated code ([PR #2786](https://github.com/dart-lang/native/pull/2786)).

## Merged Pull Requests

### [PR #2787](https://github.com/dart-lang/native/pull/2787): [ffigen] Fix a naming conflict in function internal variables
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-13 02:57 PM
* **Comments:** 2
* **Summary:** This PR resolves a naming conflict in `ffigen` that occurred when an internally generated variable for a function, like `_fooPtr`, clashed with an actual function binding of the same name. The fix moves the creation of these internal variables to the root scope, enabling proper name collision detection and resolution.

### [PR #2786](https://github.com/dart-lang/native/pull/2786): [ffigen] Fix bug in imported enums
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-13 03:32 PM
* **Comments:** 2
* **Summary:** This PR fixes a bug in `ffigen` where imported enums using the `intConstants` style were not correctly assigned the Dart type `int`, by reordering the type-checking logic to prioritize the `intConstants` style over whether the enum is imported.


## Closed Issues

### [Issue #2761](https://github.com/dart-lang/native/issues/2761): [ffigen] [objc] Incorrect code generation for NSArray differenceFromArray
* **Author:** [brianquinlan](https://github.com/brianquinlan)
* **Closed At:** 2025-11-13 03:32 PM

### [Issue #2760](https://github.com/dart-lang/native/issues/2760): [ffigen] [objc] Incorrect code generation for CFStringGetPascalStringPtr
* **Author:** [brianquinlan](https://github.com/brianquinlan)
* **Closed At:** 2025-11-13 02:57 PM


# GitHub PR Report for flutter/ai
## From 2025-11-13

During this period, no pull requests were merged and no issues were closed, so there were no changes to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-11-13

This was a quiet period for the project, as no pull requests were merged and no issues were closed. Consequently, there were no functional or API changes to the repository during this time.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-11-13

This period saw significant advancements in Flutter's rendering and widget capabilities, coinciding with the 3.38 stable release ([PR #178487](https://github.com/flutter/flutter/pull/178487)). On the UI front, a highly-requested accessibility improvement landed in [PR #176492](https://github.com/flutter/flutter/pull/176492), allowing animated images like GIFs in the `Image` widget to automatically pause when `MediaQueryData.disableAnimations` is true. The Impeller rendering engine received major updates, including a significant memory optimization in [PR #178259](https://github.com/flutter/flutter/pull/178259) that prevents memory bloat by discarding display lists after use, resolving a long-standing issue with over 180 reactions ([Issue #138627](https://github.com/flutter/flutter/issues/138627)). Impeller also gained support for high-precision floating-point textures via a new `targetFormat` parameter on `decodeImageFromPixels`, enabling advanced rendering techniques ([PR #177959](https://github.com/flutter/flutter/pull/177959)). Additionally, work continued on build system stability, with a new workaround introduced to manage Gradle lockfile updates ([PR #178485](https://github.com/flutter/flutter/pull/178485)) after a series of reverts. Finally, a major tracking issue for build hooks and code assets with over 100 reactions was closed ([Issue #129757](https://github.com/flutter/flutter/issues/129757)), marking a milestone for the project's future build capabilities.

## Merged Pull Requests

### [PR #178487](https://github.com/flutter/flutter/pull/178487): Add 3.38 stable release section to `CHANGELOG`
* **Author:** [camsim99](https://github.com/camsim99)
* **Merged At:** 2025-11-13 01:50 PM
* **Comments:** 1
* **Summary:** Updates `CHANGELOG.md` to add a new section for the Flutter 3.38 stable release, covering versions 3.38.0 and 3.38.1.

### [PR #178485](https://github.com/flutter/flutter/pull/178485): [Reland] Gradle Lockfile workaround
* **Author:** [mboetger](https://github.com/mboetger)
* **Merged At:** 2025-11-13 03:56 PM
* **Comments:** 2
* **Summary:** This PR introduces a workaround to temporarily disable Gradle dependency locking by checking for the existence of a new `.ignore-locking.md` file. This allows Android embedder dependencies to be updated in an initial pull request, with the lockfiles being regenerated in a separate, follow-up PR.

### [PR #178467](https://github.com/flutter/flutter/pull/178467): Adding proxy dependency to fuchsia
* **Author:** [Rusino](https://github.com/Rusino)
* **Merged At:** 2025-11-13 12:25 PM
* **Comments:** 2
* **Summary:** This PR adds the `typeface_proxy` dependency to the Fuchsia font manager's build configuration, which is a required dependency for Skia.

### [PR #178456](https://github.com/flutter/flutter/pull/178456): Reverts "Update gradle lockfiles for new exifinterface dep (#178417)"
* **Author:** [auto-submit[bot]](https://github.com/apps/auto-submit)
* **Merged At:** 2025-11-13 07:10 AM
* **Comments:** 0
* **Summary:** This PR reverts a recent update to the Gradle lockfiles that added a new `exifinterface` dependency, as the original change caused CI failures.

### [PR #178430](https://github.com/flutter/flutter/pull/178430): Bump `engine.version`
* **Author:** [camsim99](https://github.com/camsim99)
* **Merged At:** 2025-11-12 08:09 PM
* **Comments:** 2
* **Summary:** This PR updates the `engine.version` file to point to a newer Flutter engine commit, which is required by recent dependency changes.

### [PR #178428](https://github.com/flutter/flutter/pull/178428): Reverts "Gradle Lockfile workaround and Android Embedder dependency change for ExifInterface (#177508)"
* **Author:** [auto-submit[bot]](https://github.com/apps/auto-submit)
* **Merged At:** 2025-11-12 07:44 PM
* **Comments:** 1
* **Summary:** This PR reverts a recent change that introduced a workaround for Gradle lockfiles and updated the Android `ExifInterface` dependency, as the original change caused build failures.

### [PR #178417](https://github.com/flutter/flutter/pull/178417): Update gradle lockfiles for new exifinterface dep
* **Author:** [mboetger](https://github.com/mboetger)
* **Merged At:** 2025-11-12 09:16 PM
* **Comments:** 1
* **Summary:** Updates Gradle lockfiles to incorporate the new `androidx.exifinterface` dependency, which was introduced in a recent engine artifact update.

### [PR #178398](https://github.com/flutter/flutter/pull/178398): [ Widget Preview ] Ignore modifications to files in ephemeral directories
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-11-13 11:06 AM
* **Comments:** 0
* **Summary:** This PR updates the widget previewer to ignore file modifications within ephemeral directories, such as the `build` directory, preventing exceptions when these files are changed by commands like `flutter pub get`.

### [PR #178259](https://github.com/flutter/flutter/pull/178259): impeller: makes deferred display list images trash their display lists after they are realized
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2025-11-13 11:42 AM
* **Comments:** 4
* **Summary:** To prevent memory bloat during animations, deferred images in Impeller now discard their source `DisplayList` after being realized as a texture, aligning the behavior of synchronous and asynchronous image creation.

### [PR #178139](https://github.com/flutter/flutter/pull/178139): [tool] clean up https cert configuration handling
* **Author:** [kevmoo](https://github.com/kevmoo)
* **Merged At:** 2025-11-12 08:49 PM
* **Comments:** 3
* **Summary:** This pull request refactors the web server's HTTPS certificate configuration to enforce that both the certificate path and the key path must be provided together. This change centralizes the validation logic into a new `HttpsConfig.parse` method, simplifying the surrounding code and making the configuration less error-prone.

### 🔥 [PR #177959](https://github.com/flutter/flutter/pull/177959): Impeller: Allows R32G32B32A32_SFLOAT images
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2025-11-13 02:58 PM
* **Comments:** 9
* **Summary:** This PR adds support in Impeller for decoding images into the high-precision `R32G32B32A32_SFLOAT` format, exposed via a new `targetFormat` parameter on `decodeImageFromPixels`, which enables the use of floating-point texture data for advanced rendering techniques like Signed Distance Fields.

### [PR #177852](https://github.com/flutter/flutter/pull/177852): flutter_tools: correct iOS signing log for manual code signing (CODE_SIGN_STYLE=Manual)
* **Author:** [MohammedTarigg](https://github.com/MohammedTarigg)
* **Merged At:** 2025-11-13 12:45 PM
* **Comments:** 4
* **Summary:** This PR corrects a misleading log message in `flutter_tools` by suppressing the "Automatically signing iOS..." output when a project is configured for manual code signing (`CODE_SIGN_STYLE=Manual`), avoiding developer confusion that their signing settings were being overridden.

### [PR #177460](https://github.com/flutter/flutter/pull/177460): Fixing zoom, dropping subpixel shift
* **Author:** [Rusino](https://github.com/Rusino)
* **Merged At:** 2025-11-13 11:52 AM
* **Comments:** 1
* **Summary:** This pull request refactors web text painting to correctly handle browser zoom by scaling an offscreen canvas based on the device pixel ratio, which prevents pixelation. As part of this change, subpixel font shifting is removed in favor of pixel-snapped rendering, and fixes are included for text decoration color and cursor positioning.

### 🔥🔥🔥 [PR #176492](https://github.com/flutter/flutter/pull/176492): Image GIF pausing
* **Author:** [justinmc](https://github.com/justinmc)
* **Merged At:** 2025-11-13 12:12 PM
* **Comments:** 11
* **Summary:** This PR updates the `Image` widget to pause animated images like GIFs when `MediaQueryData.disableAnimations` is true, improving accessibility. The change also ensures that the first frame of an animation is displayed even when it is paused on initial load.


## Closed Issues

### [Issue #178490](https://github.com/flutter/flutter/issues/178490): geolocator_android plugin fails to build due to v1 embedding references on Flutter 3.x / Dart 3.x
* **Author:** [Amit231999](https://github.com/Amit231999)
* **Closed At:** 2025-11-13 01:46 PM

### [Issue #178489](https://github.com/flutter/flutter/issues/178489): Add ability to pipe output of FragmentShader to another FragmentShader
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Closed At:** 2025-11-13 11:24 AM

### [Issue #178482](https://github.com/flutter/flutter/issues/178482): mac-20, mac-31 and mac-25 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* **Closed At:** 2025-11-13 10:23 AM

### [Issue #178481](https://github.com/flutter/flutter/issues/178481): linux-37 and linux-8 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* **Closed At:** 2025-11-13 10:26 AM

### [Issue #178480](https://github.com/flutter/flutter/issues/178480): mac-21, mac-18 and mac-22 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* **Closed At:** 2025-11-13 10:24 AM

### [Issue #178479](https://github.com/flutter/flutter/issues/178479): win-10 in quarantined state because the local Temp directory exceeded 1024 files.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* **Closed At:** 2025-11-13 10:27 AM

### [Issue #178478](https://github.com/flutter/flutter/issues/178478): List of Windows Bots lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* **Closed At:** 2025-11-13 10:25 AM

### [Issue #178475](https://github.com/flutter/flutter/issues/178475): dart roll blocked on java dependency resolution in `:app:mergeReleaseNativeLibs`
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Closed At:** 2025-11-13 10:14 AM

### [Issue #178458](https://github.com/flutter/flutter/issues/178458): devicelab: missing windows and mac x86 bots
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* **Closed At:** 2025-11-13 10:10 AM

### [Issue #178457](https://github.com/flutter/flutter/issues/178457): Add Built-in Support for Biometric Authentication Widget
* **Author:** [saikirankanakala](https://github.com/saikirankanakala)
* **Closed At:** 2025-11-13 07:27 AM

### [Issue #178448](https://github.com/flutter/flutter/issues/178448): Flutter 3.38.0 is incompatible with Dart 3.10.0.
* **Author:** [kjxbyz](https://github.com/kjxbyz)
* **Closed At:** 2025-11-13 04:39 AM

### [Issue #178432](https://github.com/flutter/flutter/issues/178432): Screen reader does not scroll a list when using `Localizations.override`
* **Author:** [jiahaog](https://github.com/jiahaog)
* **Closed At:** 2025-11-13 10:57 AM

### [Issue #178431](https://github.com/flutter/flutter/issues/178431): Keyboard dismissal doesn't restore viewport height on mobile web (Android) - Flutter 3.38.0
* **Author:** [lcw99](https://github.com/lcw99)
* **Closed At:** 2025-11-13 01:59 AM

### [Issue #178426](https://github.com/flutter/flutter/issues/178426): Implement Consolidated Check-Run configuration
* **Author:** [ievdokdm](https://github.com/ievdokdm)
* **Closed At:** 2025-11-13 03:01 PM

### [Issue #178424](https://github.com/flutter/flutter/issues/178424): win-2 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* **Closed At:** 2025-11-12 05:26 PM

### [Issue #178423](https://github.com/flutter/flutter/issues/178423): win-1 and win-4 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* **Closed At:** 2025-11-12 05:26 PM

### [Issue #178422](https://github.com/flutter/flutter/issues/178422): mac-21, mac-20 and mac-18 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* **Closed At:** 2025-11-12 05:28 PM

### [Issue #178400](https://github.com/flutter/flutter/issues/178400): Flutter 3.38 was released with Dart 3.10.0-290.4.beta instead of Dart stable channel
* **Author:** [pintusingh28](https://github.com/pintusingh28)
* **Closed At:** 2025-11-13 10:15 AM
* **Reactions:** **123** -- 👍 88 😄 16 🎉 3 😕 7 ❤️ 2 🚀 2 👀 5

### [Issue #178373](https://github.com/flutter/flutter/issues/178373): [in_app_purchase] Google Play In-App Products are now "One-Time Products"
* **Author:** [SergoFrost](https://github.com/SergoFrost)
* **Closed At:** 2025-11-12 10:41 PM

### [Issue #178317](https://github.com/flutter/flutter/issues/178317): [ Widget Preview ] Running `flutter pub get` after adding a plugin dependency causes the previewer to crash
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Closed At:** 2025-11-13 11:06 AM
* **Reactions:** **1** -- 👍 1

### [Issue #178004](https://github.com/flutter/flutter/issues/178004): devicelab: try-pool: upgrade Linux Focal to Jammy
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* **Closed At:** 2025-11-13 06:40 AM

### [Issue #177789](https://github.com/flutter/flutter/issues/177789): Update Android Accessibility Testing
* **Author:** [ash2moon](https://github.com/ash2moon)
* **Closed At:** 2025-11-13 01:28 PM

### [Issue #177066](https://github.com/flutter/flutter/issues/177066): generate_gradle_lockfiles needs to work with local engine changes
* **Author:** [mboetger](https://github.com/mboetger)
* **Closed At:** 2025-11-13 03:56 PM

### [Issue #176005](https://github.com/flutter/flutter/issues/176005): Suggest final keyword for new Widget classes by default
* **Author:** [loveoverflowcom](https://github.com/loveoverflowcom)
* **Closed At:** 2025-11-13 09:50 AM

### [Issue #175516](https://github.com/flutter/flutter/issues/175516): [Google3 Bug]: ImageStream & ImageProvider provide no way to pause GIF animations
* **Author:** [evantea](https://github.com/evantea)
* **Closed At:** 2025-11-13 12:12 PM
* **Reactions:** **1** -- 👍 1

### [Issue #168529](https://github.com/flutter/flutter/issues/168529): [google_maps_flutter] Send internal usage attribution Id
* **Author:** [aednlaxer](https://github.com/aednlaxer)
* **Closed At:** 2025-11-13 01:54 PM

### [Issue #143570](https://github.com/flutter/flutter/issues/143570): [google_maps_flutter] Polygons flash blue on iOS
* **Author:** [Colman](https://github.com/Colman)
* **Closed At:** 2025-11-13 01:53 PM

### [Issue #141289](https://github.com/flutter/flutter/issues/141289): Support for floating point textures
* **Author:** [anlumo](https://github.com/anlumo)
* **Closed At:** 2025-11-13 02:58 PM

### [Issue #138627](https://github.com/flutter/flutter/issues/138627): toImageSync retains display list which can lead to surprising memory retention.
* **Author:** [alnitak](https://github.com/alnitak)
* **Closed At:** 2025-11-13 11:42 AM
* **Reactions:** **184** -- 👍 183 🚀 1

### [Issue #129757](https://github.com/flutter/flutter/issues/129757): ☂️ Build hooks & Code assets
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Closed At:** 2025-11-13 12:59 PM
* **Reactions:** **102** -- 👍 72 🎉 8 ❤️ 9 🚀 6 👀 7


# GitHub PR Report for flutter/packages
## From 2025-11-13

This period saw improvements to user-facing packages and internal repository tooling. For developers using the `google_maps_flutter` package, a visual flickering issue on iOS that could occur when adding map objects has been resolved. This fix ensures a smoother user experience by configuring all object properties before adding the object to the map ([PR #10347](https://github.com/flutter/packages/pull/10347)). Additionally, internal tooling was enhanced to enable bulk updates of the Android Gradle Plugin version, streamlining repository maintenance ([PR #10394](https://github.com/flutter/packages/pull/10394)).

## Merged Pull Requests

### [PR #10394](https://github.com/flutter/packages/pull/10394): Added Tooling For AGP Bulk Update
* **Author:** [jesswrd](https://github.com/jesswrd)
* **Merged At:** 2025-11-12 05:09 PM
* **Comments:** 0
* **Summary:** This PR adds tooling to the `update-dependency` command to enable bulk updates of the Android Gradle Plugin (AGP) version in the `settings.gradle` file of plugin examples.

### [PR #10347](https://github.com/flutter/packages/pull/10347): [google_maps_flutter] Set properties before adding maps objects
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-13 01:53 PM
* **Comments:** 0
* **Summary:** Fixes a potential flicker issue on iOS when adding map objects by ensuring all properties are configured on the native object before it is added to the map. This change reorders the update logic so that an object's `map` property is set last, preventing it from briefly rendering with default values.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-11-13

This was a quiet period for the repository, with no pull requests merged and no issues closed. Consequently, there were no changes to the codebase, public API, or language features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-11-13

This period saw several documentation improvements, with a particular focus on the Android development experience. Android developers can now learn how to disable Flutter's default ABI filtering using the new `-Pdisable-abi-filtering` flag, as documented in [PR #12670](https://github.com/flutter/website/pull/12670). Additionally, a new guide, added in [PR #12668](https://github.com/flutter/website/pull/12668), explains how to programmatically determine if an application is built with Flutter. General site maintenance also continued with the correction of broken links, as addressed in [PR #12683](https://github.com/flutter/website/pull/12683) and [Issue #12672](https://github.com/flutter/website/issues/12672).

## Merged Pull Requests

### [PR #12683](https://github.com/flutter/website/pull/12683): Remove old link that no longer works
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2025-11-13 02:16 PM
* **Comments:** 2
* **Summary:** Removes a broken link to an article on Semantics and updates the link to the UN's page on accessibility in the documentation.

### [PR #12670](https://github.com/flutter/website/pull/12670): Update abiFiltering documentation with new flag to disable
* **Author:** [mboetger](https://github.com/mboetger)
* **Merged At:** 2025-11-13 09:40 AM
* **Comments:** 1
* **Summary:** This PR updates the documentation to include the new `-Pdisable-abi-filtering` flag, which allows Android developers to disable Flutter's default ABI filtering when they need to configure it in product flavors.

### [PR #12668](https://github.com/flutter/website/pull/12668): Document how to determine if an app is a flutter app
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2025-11-13 09:37 AM
* **Comments:** 4
* **Summary:** Adds documentation to the Android deployment guide explaining how to determine if an app is built with Flutter, primarily by checking for the `libflutter.so` library within the APK.


## Closed Issues

### [Issue #12681](https://github.com/flutter/website/issues/12681): Fix the Buttons on the Code Example
* **Author:** [mukcodes](https://github.com/mukcodes)
* **Closed At:** 2025-11-13 02:07 PM

### [Issue #12672](https://github.com/flutter/website/issues/12672): Broken HTTPS link
* **Author:** [asher-stern](https://github.com/asher-stern)
* **Closed At:** 2025-11-13 02:16 PM



## Top Hacker News Stories

### 🔥 [I think nobody wants AI in Firefox, Mozilla](https://manualdousuario.net/en/mozilla-firefox-window-ai/)
* **Author:** [rpgbr](https://news.ycombinator.com/user?id=rpgbr) | **Score:** 244 | **Comments:** [132](https://news.ycombinator.com/item?id=45926779)

### 🔥 [AGI fantasy is a blocker to actual engineering](https://www.tomwphillips.co.uk/2025/11/agi-fantasy-is-a-blocker-to-actual-engineering/)
* **Author:** [tomwphillips](https://news.ycombinator.com/user?id=tomwphillips) | **Score:** 149 | **Comments:** [114](https://news.ycombinator.com/item?id=45926469)

### 🔥 [Honda: 2 years of ml vs 1 month of prompting - heres what we learned](https://www.levs.fyi/blog/2-years-of-ml-vs-1-month-of-prompting/)
* **Author:** [Ostatnigrosh](https://news.ycombinator.com/user?id=Ostatnigrosh) | **Score:** 103 | **Comments:** [38](https://news.ycombinator.com/item?id=45875618)

### [EDE: Small and Fast Desktop Environment](https://edeproject.org/)
* **Author:** [bradley_taunt](https://news.ycombinator.com/user?id=bradley_taunt) | **Score:** 36 | **Comments:** [12](https://news.ycombinator.com/item?id=45926263)

### [Magit manuals are available online again](https://github.com/magit/magit/issues/5472)
* **Author:** [vetronauta](https://news.ycombinator.com/user?id=vetronauta) | **Score:** 27 | **Comments:** [1](https://news.ycombinator.com/item?id=45926037)

### 🔥 [Operating Margins](https://fi-le.net/margin/)
* **Author:** [fi-le](https://news.ycombinator.com/user?id=fi-le) | **Score:** 178 | **Comments:** [56](https://news.ycombinator.com/item?id=45866366)

### [Show HN: Encore – Type-safe back end framework that generates infra from code](https://github.com/encoredev/encore)
* **Author:** [andout_](https://news.ycombinator.com/user?id=andout_) | **Score:** 48 | **Comments:** [36](https://news.ycombinator.com/item?id=45925890)

### [Writerdeck.org](http://www.writerdeck.org/)
* **Author:** [surprisetalk](https://news.ycombinator.com/user?id=surprisetalk) | **Score:** 13 | **Comments:** [2](https://news.ycombinator.com/item?id=45846534)

### [Nvidia is gearing up to sell servers instead of just GPUs and components](https://www.tomshardware.com/tech-industry/artificial-intelligence/jp-morgan-says-nvidia-is-gearing-up-to-sell-entire-ai-servers-instead-of-just-ai-gpus-and-componentry-jensens-master-plan-of-vertical-integration-will-boost-profits-purportedly-starting-with-vera-rubin)
* **Author:** [giuliomagnifico](https://news.ycombinator.com/user?id=giuliomagnifico) | **Score:** 49 | **Comments:** [25](https://news.ycombinator.com/item?id=45926439)

### 🔥🔥🔥 [Nano Banana can be prompt engineered for nuanced AI image generation](https://minimaxir.com/2025/11/nano-banana-prompts/)
* **Author:** [minimaxir](https://news.ycombinator.com/user?id=minimaxir) | **Score:** 793 | **Comments:** [201](https://news.ycombinator.com/item?id=45917875)

### [Backblaze Drive Stats for Q3 2025](https://www.backblaze.com/blog/backblaze-drive-stats-for-q3-2025/)
* **Author:** [woliveirajr](https://news.ycombinator.com/user?id=woliveirajr) | **Score:** 61 | **Comments:** [1](https://news.ycombinator.com/item?id=45926383)

### [Winamp for OS/X](https://github.com/mgreenwood1001/winamp)
* **Author:** [hyperbole](https://news.ycombinator.com/user?id=hyperbole) | **Score:** 55 | **Comments:** [40](https://news.ycombinator.com/item?id=45926224)

### [Scientists Produce Powerhouse Pigment Behind Octopus Camouflage](https://today.ucsd.edu/story/scientists-produce-powerhouse-pigment-behind-octopus-camouflage)
* **Author:** [gmays](https://news.ycombinator.com/user?id=gmays) | **Score:** 24 | **Comments:** [1](https://news.ycombinator.com/item?id=45872066)

### 🔥 [RegreSQL: Regression Testing for PostgreSQL Queries](https://boringsql.com/posts/regresql-testing-queries/)
* **Author:** [radimm](https://news.ycombinator.com/user?id=radimm) | **Score:** 108 | **Comments:** [25](https://news.ycombinator.com/item?id=45924619)

### 🔥 [What Happened with the CIA and The Paris Review?](https://www.theparisreview.org/blog/2025/11/11/what-really-happened-with-the-cia-and-the-paris-review-a-conversation-with-lance-richardson/)
* **Author:** [benbreen](https://news.ycombinator.com/user?id=benbreen) | **Score:** 136 | **Comments:** [60](https://news.ycombinator.com/item?id=45922420)

### [A Common Semiconductor Just Became a Superconductor](https://www.sciencedaily.com/releases/2025/10/251030075105.htm)
* **Author:** [tsenturk](https://news.ycombinator.com/user?id=tsenturk) | **Score:** 39 | **Comments:** [19](https://news.ycombinator.com/item?id=45819556)

### 🔥🔥 [Launch HN: Tweeks (YC W25) – Browser extension to deshittify the web](https://www.tweeks.io/onboarding)
* **Author:** [jmadeano](https://news.ycombinator.com/user?id=jmadeano) | **Score:** 295 | **Comments:** [175](https://news.ycombinator.com/item?id=45916525)
* [Tweeks](https://tweeks.io) is a browser extension that lets you modify any website using natural language prompts instead of writing custom code. The tool uses an AI to interpret your request and generate the necessary edits to declutter pages, add functionality, or change themes.

### 🔥🔥 [Disrupting the first reported AI-orchestrated cyber espionage campaign](https://www.anthropic.com/news/disrupting-AI-espionage)
* **Author:** [koakuma-chan](https://news.ycombinator.com/user?id=koakuma-chan) | **Score:** 318 | **Comments:** [247](https://news.ycombinator.com/item?id=45918638)

### [Don't turn your brain off](https://computingeducationthings.substack.com/p/22-dont-turn-your-brain-off)
* **Author:** [azhenley](https://news.ycombinator.com/user?id=azhenley) | **Score:** 4 | **Comments:** [0](https://news.ycombinator.com/item?id=45926395)

### [Arrival Radar](https://entropicthoughts.com/arrival-radar)
* **Author:** [ibobev](https://news.ycombinator.com/user?id=ibobev) | **Score:** 7 | **Comments:** [2](https://news.ycombinator.com/item?id=45926105)

### [V8 Garbage Collector](https://wingolog.org/archives/2025/11/13/the-last-couple-years-in-v8s-garbage-collector)
* **Author:** [swah](https://news.ycombinator.com/user?id=swah) | **Score:** 73 | **Comments:** [19](https://news.ycombinator.com/item?id=45925431)

### 🔥 [650GB of Data (Delta Lake on S3). Polars vs. DuckDB vs. Daft vs. Spark](https://dataengineeringcentral.substack.com/p/650gb-of-data-delta-lake-on-s3-polars)
* **Author:** [tanelpoder](https://news.ycombinator.com/user?id=tanelpoder) | **Score:** 218 | **Comments:** [89](https://news.ycombinator.com/item?id=45920881)

### 🔥 [How to Get a North Korea / Antarctica VPS](https://blog.lyc8503.net/en/post/asn-5-worldwide-servers/)
* **Author:** [uneven9434](https://news.ycombinator.com/user?id=uneven9434) | **Score:** 162 | **Comments:** [62](https://news.ycombinator.com/item?id=45922850)

### 🔥 [OpenMANET Wi-Fi HaLow open-source project for Raspberry Pi–based MANET radios](https://openmanet.net/)
* **Author:** [hexmiles](https://news.ycombinator.com/user?id=hexmiles) | **Score:** 132 | **Comments:** [33](https://news.ycombinator.com/item?id=45920677)

### [Hooked on Sonics: Experimenting with Sound in 19th-Century Popular Science](https://publicdomainreview.org/essay/science-of-sound/)
* **Author:** [Hooke](https://news.ycombinator.com/user?id=Hooke) | **Score:** 28 | **Comments:** [0](https://news.ycombinator.com/item?id=45924345)



