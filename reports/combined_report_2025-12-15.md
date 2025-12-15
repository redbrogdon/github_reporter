# Overall Summary
Here are the highlights from the pull requests and closed issues across the repositories.

### Highlights

**🔥🔥🔥 [Issue #357](https://github.com/dart-lang/language/issues/357) (dart-lang/language): Dot shorthands: Allow for shorter dot syntax to access enum values**
  * **Reactions:** **1104** -- 👍 729 👎 34 😄 59 🎉 28 😕 9 ❤️ 125 🚀 98 👀 22
  * This issue proposes a shorthand dot syntax to access enum values, allowing a developer to write `.value` instead of `EnumName.value` when the type can be inferred by the compiler.

**🔥🔥🔥 [PR #179426](https://github.com/flutter/flutter/pull/179426) (flutter/flutter): Use depth buffer to implement geometry overdraw protection**
  * **Comments:** 12
  * This pull request refactors Impeller's geometry overdraw protection mechanism to use the depth buffer instead of the stencil buffer, which simplifies the rendering logic.

**🔥 [PR #178737](https://github.com/flutter/flutter/pull/178737) (flutter/flutter): [ Tool ] Assemble: "Improper" validation error when dealing with base64 encoded dart-define value**
  * **Comments:** 7
  * Fixes a regression in the `flutter assemble` command that caused a validation failure when `dart-define` values were passed in base64 encoding by ensuring they are decoded before being parsed.

**🔥 [PR #2854](https://github.com/dart-lang/native/pull/2854) (dart-lang/native): [ffigen] Generate Dart constants for static const C variables**
  * **Comments:** 6
  * This PR updates `ffigen` to generate Dart `const` values for `static const` C variables. This fixes an issue where these compile-time constants were incorrectly generated as symbol lookups, which would often lead to runtime failures.

**🔥 [PR #179659](https://github.com/flutter/flutter/pull/179659) (flutter/flutter): [ios][pv] accept/reject gesture based on hitTest (with new widget API)**
  * **Comments:** 6
  * Introduces a `gestureBlockingPolicy` property on `UiKitView` for iOS to control how touch events are handled, fixing issues where embedded native views were untappable.

**[PR #179519](https://github.com/flutter/flutter/pull/179519) (flutter/flutter): Implements decodeImageFromPixelsSync**
  * Adds the synchronous `decodeImageFromPixelsSync` function to `dart:ui` for creating an `Image` from a raw pixel buffer without blocking the UI thread during the upload.

**[PR #179760](https://github.com/flutter/flutter/pull/179760) (flutter/flutter): Add FilterQuality parameter to FragmentShader.setImageSampler**
  * Adds an optional `filterQuality` parameter to `FragmentShader.setImageSampler`, allowing developers to control the sampling quality for image textures used in custom shaders.

**[PR #175](https://github.com/flutter/ai/pull/175) (flutter/ai): v1 release**
  * This PR finalizes the v1.0.0 release of the `flutter_ai_toolkit` package, solidifying its public API for stable use.


# GitHub PR Report for dart-lang/ai
## From 2025-12-12 to 2025-12-14

During this period, there were no new changes merged into the repository. No pull requests were merged and no issues were closed, resulting in no modifications to the codebase or its public API.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2025-12-12 to 2025-12-14

This period focused on maintenance and developer experience improvements. While no pull requests were merged, work was done to enhance the clarity of analyzer error messages. Specifically, the "Missing concrete implementation of..." error message was updated to be less verbose and easier to read ([Issue #62224](https://github.com/dart-lang/sdk/issues/62224)). Additionally, an incorrect relative import path was fixed in the `perf_witness` package to resolve a build integration issue ([Issue #62233](https://github.com/dart-lang/sdk/issues/62233)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62233](https://github.com/dart-lang/sdk/issues/62233): perf_witness pkg/perf_witness/lib/src/async_span.dart imports from ../..
* **Author:** [srawlins](https://github.com/srawlins)
* A relative import in `pkg/perf_witness/lib/src/async_span.dart` uses an incorrect path (`../../`) that breaks the Dart roll into google3.

### [Issue #62224](https://github.com/dart-lang/sdk/issues/62224): Analyzer "Missing concrete implementation of ..." error messages have poor argument text.
* **Author:** [srawlins](https://github.com/srawlins)
* The analyzer's "Missing concrete implementation of..." error message is difficult to read because the argument text for the unimplemented member is too verbose.


# GitHub PR Report for dart-lang/language
## From 2025-12-12 to 2025-12-14

While no code was merged in this period, a significant language evolution discussion was concluded with the closing of a highly popular issue. The proposal in issue [#357](https://github.com/dart-lang/language/issues/357), which garnered over 1,100 community reactions, introduces a shorthand syntax for accessing enum values. This change would allow developers to use a shorter dot syntax, like `.value` instead of `EnumName.value`, in contexts where the compiler can infer the enum type, leading to more concise and readable code.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #357](https://github.com/dart-lang/language/issues/357): Dot shorthands: Allow for shorter dot syntax to access enum values
* **Author:** [rami-a](https://github.com/rami-a)
* **Reactions:** **1104** -- 👍 729 👎 34 😄 59 🎉 28 😕 9 ❤️ 125 🚀 98 👀 22
* This issue proposes a shorthand dot syntax to access enum values, allowing a developer to write `.value` instead of `EnumName.value` when the type can be inferred by the compiler.


# GitHub PR Report for dart-lang/native
## From 2025-12-12 to 2025-12-14

This release includes a significant improvement to the `ffigen` tool's handling of C constants. Addressing a problem outlined in issue [#2816](https://github.com/dart-lang/native/issues/2816), pull request [#2854](https://github.com/dart-lang/native/pull/2854) updates `ffigen` to generate proper Dart `const` values for `static const` C variables, including integers, doubles, and string literals. This change corrects a flaw in the public API of generated bindings where these compile-time constants were incorrectly treated as runtime symbol lookups, a behavior that often led to application failures.

## Merged Pull Requests

### 🔥 [PR #2854](https://github.com/dart-lang/native/pull/2854): [ffigen] Generate Dart constants for static const C variables
* **Author:** [jacksonrl](https://github.com/jacksonrl)
* **Merged At:** 2025-12-14 02:25 PM
* **Comments:** 6
* This PR updates `ffigen` to generate Dart `const` values for `static const` C variables, including integers, doubles, and string literals. This fixes an issue where these compile-time constants were incorrectly generated as symbol lookups, which would often lead to runtime failures.


## Closed Issues

### [Issue #2816](https://github.com/dart-lang/native/issues/2816): [ffigen] const globals should be proxied in dart(?)
* **Author:** [jacksonrl](https://github.com/jacksonrl)
* The `ffigen` tool incorrectly generates setters for `const` and `static const` C global variables; the user suggests these should be proxied as `const` Dart values, similar to `#define` macros, to correctly reflect their immutability and avoid potential runtime lookup failures.


# GitHub PR Report for flutter/ai
## From 2025-12-12 to 2025-12-14

This period was marked by a significant milestone for the project: the official v1.0.0 release of the `flutter_ai_toolkit` package. This release was prepared and finalized in pull request [#175](https://github.com/flutter/ai/pull/175), which updated the package's `pubspec.yaml` and `CHANGELOG.md` to solidify the public API for its stable release.

## Merged Pull Requests

### [PR #175](https://github.com/flutter/ai/pull/175): v1 release
* **Author:** [csells](https://github.com/csells)
* **Merged At:** 2025-12-12 07:33 AM
* **Comments:** 0
* This PR updates the `pubspec.yaml` and `CHANGELOG.md` files in preparation for the v1.0.0 release of the `flutter_ai_toolkit` package.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-12-12 to 2025-12-14

During this period, no pull requests were merged and no issues were closed, resulting in no changes to the repository's codebase or issue tracker.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-12-12 to 2025-12-14

This cycle introduced significant enhancements to Flutter's rendering pipeline and developer APIs. A notable, highly-discussed refactor in the Impeller rendering engine ([PR #179426](https://github.com/flutter/flutter/pull/179426)) now uses the depth buffer for geometry overdraw protection, simplifying the rendering logic as suggested in issue [#179107](https://github.com/flutter/flutter/issues/179107). The public API surface was expanded with several new features. In response to a long-standing request ([#133944](https://github.com/flutter/flutter/issues/133944)), `FragmentShader.setImageSampler` now accepts a `filterQuality` parameter to control texture sampling ([PR #179760](https://github.com/flutter/flutter/pull/179760)). A new synchronous `decodeImageFromPixelsSync` function was added ([PR #179519](https://github.com/flutter/flutter/pull/179519)), allowing for the creation of an `Image` from a raw pixel buffer without blocking the UI thread. For iOS developers, a new `gestureBlockingPolicy` property on `UiKitView` provides finer control over touch events, resolving gesture conflicts with embedded native views ([PR #179659](https://github.com/flutter/flutter/pull/179659)). Finally, key tooling improvements were made, including a fix for a regression affecting base64-encoded `dart-define` values ([PR #178737](https://github.com/flutter/flutter/pull/178737)) and an update to the `flutter build` command to correctly exit with an error code when run without arguments, addressing a very old issue ([#5797](https://github.com/flutter/flutter/issues/5797)).

## Merged Pull Requests

### [PR #179795](https://github.com/flutter/flutter/pull/179795): Add documentation for what to do when bumping the minimum sdk version supported by flutter
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2025-12-12 09:02 AM
* **Comments:** 0
* This pull request adds a new document that outlines the process and provides a checklist for increasing the minimum supported Android SDK version in Flutter.

### [PR #179766](https://github.com/flutter/flutter/pull/179766): Reverts "[ Analysis ] Added initial implementation of the `flutter_analyzer_plugin` (#175679)"
* **Author:** [auto-submit[bot]](https://github.com/apps/auto-submit)
* **Merged At:** 2025-12-11 04:52 PM
* **Comments:** 0
* This PR reverts the initial implementation of the `flutter_analyzer_plugin`, which was intended to provide earlier feedback on custom lint violations, because it was causing timeouts in post-submit CI tests.

### [PR #179760](https://github.com/flutter/flutter/pull/179760): Add FilterQuality parameter to FragmentShader.setImageSampler
* **Author:** [b-luk](https://github.com/b-luk)
* **Merged At:** 2025-12-12 05:33 PM
* **Comments:** 2
* Adds an optional `filterQuality` parameter to `FragmentShader.setImageSampler`, allowing developers to control the sampling quality for image textures used in custom shaders.

### [PR #179756](https://github.com/flutter/flutter/pull/179756): Update Skwasm to engine style guidelines.
* **Author:** [eyebrowsoffire](https://github.com/eyebrowsoffire)
* **Merged At:** 2025-12-12 03:25 PM
* **Comments:** 2
* This pull request refactors the Skwasm library to align with the Flutter engine's coding style guidelines, which includes moving it to the `engine/src/flutter/skwasm` directory, changing file extensions to `.cc`, and updating naming conventions for variables, functions, and members.

### [PR #179747](https://github.com/flutter/flutter/pull/179747): [fuchsia] temporarily disable touch-input-test due to the flakiness
* **Author:** [zijiehe-google-com](https://github.com/zijiehe-google-com)
* **Merged At:** 2025-12-11 09:16 PM
* **Comments:** 1
* This PR temporarily disables the `touch-input-test` suite on Fuchsia due to recent test flakiness, which will allow the CI builder to proceed while the root cause is investigated.

### [PR #179718](https://github.com/flutter/flutter/pull/179718): Remove obsolete windowing channel
* **Author:** [robert-ancell](https://github.com/robert-ancell)
* **Merged At:** 2025-12-14 12:58 PM
* **Comments:** 0
* Removes the obsolete `flutter/windowing` method channel from the Linux shell, as this older method for multi-window support has been replaced by an FFI-based implementation.

### 🔥 [PR #179659](https://github.com/flutter/flutter/pull/179659): [ios][pv] accept/reject gesture based on hitTest (with new widget API)
* **Author:** [hellohuanlin](https://github.com/hellohuanlin)
* **Merged At:** 2025-12-11 10:00 PM
* **Comments:** 6
* Introduces a `gestureBlockingPolicy` property on `UiKitView` for iOS to control how touch events are handled. A new `touchBlockingOnly` policy uses hit-testing to decide whether the native view or a Flutter widget should receive a gesture, fixing issues where embedded views like `WKWebView` were untappable.

### [PR #179538](https://github.com/flutter/flutter/pull/179538): [win32] Do not flood message loop with wake up messages
* **Author:** [knopp](https://github.com/knopp)
* **Merged At:** 2025-12-12 10:12 AM
* **Comments:** 4
* Optimizes the Windows `TaskRunnerWindow` to prevent flooding the message loop by coalescing multiple `WakeUp()` calls into a single posted message, which avoids potential application unresponsiveness.

### [PR #179519](https://github.com/flutter/flutter/pull/179519): Implements decodeImageFromPixelsSync
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* **Merged At:** 2025-12-12 10:32 AM
* **Comments:** 2
* Adds the synchronous `decodeImageFromPixelsSync` function to `dart:ui` for creating an `Image` from a raw pixel buffer when using the Impeller rendering backend. This function returns a deferred image that uploads the pixel data to a GPU texture on the raster thread, preventing the UI thread from being blocked during the upload.

### 🔥🔥🔥 [PR #179426](https://github.com/flutter/flutter/pull/179426): Use depth buffer to implement geometry overdraw protection
* **Author:** [b-luk](https://github.com/b-luk)
* **Merged At:** 2025-12-12 12:57 PM
* **Comments:** 12
* This pull request refactors the geometry overdraw protection mechanism to use the depth buffer instead of the stencil buffer, which simplifies the rendering logic and allows for the removal of the old stencil-based implementation.

### [PR #179419](https://github.com/flutter/flutter/pull/179419): [flutter_tool] Force UTF-8 character set for dev
* **Author:** [nshahan](https://github.com/nshahan)
* **Merged At:** 2025-12-12 11:51 AM
* **Comments:** 2
* This PR configures the `flutter_tool` web asset server to explicitly set the character encoding to UTF-8 when serving `index.html`, ensuring correct character rendering in the browser during development.

### [PR #179374](https://github.com/flutter/flutter/pull/179374): Add profiling counts to pipeline uses
* **Author:** [walley892](https://github.com/walley892)
* **Merged At:** 2025-12-12 05:21 PM
* **Comments:** 1
* This change introduces profiling for Impeller by counting the usage of pipeline variants during render passes across all backends. These usage statistics are exposed for debugging and performance analysis through a new `_flutter.getPipelineUsage` engine service protocol method.

### [PR #179179](https://github.com/flutter/flutter/pull/179179): Fix draggable scrollable sheet example drag speed is off 
* **Author:** [huycozy](https://github.com/huycozy)
* **Merged At:** 2025-12-11 10:58 PM
* **Comments:** 1
* Fixes an issue in the `DraggableScrollableSheet` example where the sheet's drag speed did not match the pointer's movement by updating the drag calculation to be proportional to the viewport height, ensuring the sheet follows the pointer accurately.

### 🔥 [PR #178737](https://github.com/flutter/flutter/pull/178737): [ Tool ] Assemble: "Improper" validation error when dealing with base64 encoded dart-define value 
* **Author:** [yshamass9](https://github.com/yshamass9)
* **Merged At:** 2025-12-11 07:05 PM
* **Comments:** 7
* Fixes a regression in the `flutter assemble` command that caused a validation failure when `dart-define` values were passed in base64 encoding by ensuring they are decoded before being parsed.

### [PR #175900](https://github.com/flutter/flutter/pull/175900): Exit with code 1 when calling `flutter build` without arguments
* **Author:** [Mr-Pepe](https://github.com/Mr-Pepe)
* **Merged At:** 2025-12-11 07:07 PM
* **Comments:** 3
* This PR changes the `flutter build` command to exit with a status code of 1 when called without any arguments, correctly signaling an incomplete command for scripting purposes instead of exiting successfully.


## Closed Issues

### [Issue #179846](https://github.com/flutter/flutter/issues/179846): [video_player_android] Cannot play videos with metadata track recorded by vivo/iQOO camera
* **Author:** [badboy-tian](https://github.com/badboy-tian)
* Videos recorded on vivo/iQOO cameras are unplayable because they contain a metadata track that causes the underlying ExoPlayer to fail, and the proposed solution is to configure the player's `TrackSelector` to ignore metadata tracks.

### [Issue #179839](https://github.com/flutter/flutter/issues/179839): Change Java binary location
* **Author:** [TheCarpetMerchant](https://github.com/TheCarpetMerchant)
* A user is asking how to configure a Flutter project to use a specific Java binary, as `flutter doctor` is automatically detecting an incompatible Java 21 version bundled with Android Studio instead of their installed OpenJDK 17.

### [Issue #179813](https://github.com/flutter/flutter/issues/179813): mac-37 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The host `mac-37` is reporting that the connected phone device has lost its external connection.

### [Issue #179800](https://github.com/flutter/flutter/issues/179800): [video_player] Video playback fails on Huawei HarmonyOS/EMUI devices with BT.709 color space
* **Author:** [badboy-tian](https://github.com/badboy-tian)
* Video playback fails on Huawei devices running HarmonyOS or EMUI for videos using the BT.709 color space, throwing a `MediaCodecVideoRenderer` error that suggests an issue with the device's hardware decoder.

### [Issue #179692](https://github.com/flutter/flutter/issues/179692): [web][wasm] FlutterLoader cannot start when using renderer:"canvaskit" because Flutter does not generate a wasm+canvaskit build entry
* **Author:** [AlexeyKuznetsovGit](https://github.com/AlexeyKuznetsovGit)
* When building a Flutter web app with Wasm, the `FlutterLoader` fails to start if the renderer is explicitly set to "canvaskit" because the build process only generates a configuration for the "skwasm" renderer.

### [Issue #179394](https://github.com/flutter/flutter/issues/179394): Linux_mokey new_gallery_impeller__transition_perf is 2.02% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* The `Linux_mokey new_gallery_impeller__transition_perf` post-submit test is exhibiting a flakiness ratio of 2.02%, which is above the 2.00% threshold.

### [Issue #179107](https://github.com/flutter/flutter/issues/179107): [Impeller] Geometry overdraw protection can be handled by the depth compare function
* **Author:** [flar](https://github.com/flar)
* This issue proposes replacing the current multi-pass, stencil-based overdraw protection with a more efficient single-pass method by changing the depth compare function from `kGreaterEqual` to `kGreater`, which would prevent a primitive from drawing over its own pixels.

### [Issue #179102](https://github.com/flutter/flutter/issues/179102): DraggableScrollableSheet drag speed is off
* **Author:** [chunhtai](https://github.com/chunhtai)
* On web and desktop, the `DraggableScrollableSheet` moves faster than the mouse pointer when dragged, with the discrepancy increasing in taller windows.

### [Issue #178920](https://github.com/flutter/flutter/issues/178920): Image Picker Error
* **Author:** [Aruljebaraj](https://github.com/Aruljebaraj)
* **Reactions:** **1** -- 👍 1
* When picking a JPEG image from the gallery on iOS, a `loadAssetsPlatformException` is thrown with the error "Cannot load representation of type public.jpeg".

### [Issue #178488](https://github.com/flutter/flutter/issues/178488): Add `Image.decodeImageFromPixelsSync`
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* This issue proposes adding a new synchronous method, `Image.decodeImageFromPixelsSync`, to allow developers to create an `Image` from raw pixel data for immediate use in the same frame, similar to the existing `Picture.toImageSync`.

### [Issue #176941](https://github.com/flutter/flutter/issues/176941): CP macOS 15.7.1 fixes for beta and stable
* **Author:** [vashworth](https://github.com/vashworth)
* This issue tracks the cherry-picking of fixes related to macOS 15.7.1 from issue #167681 into the beta and stable branches.

### [Issue #176660](https://github.com/flutter/flutter/issues/176660): [Impeller] Allow profiling pipeline use counts.
* **Author:** [chinmaygarde](https://github.com/chinmaygarde)
* This feature request proposes tracking the usage counts of Impeller pipeline variants to help prioritize Pipeline State Object (PSO) setup tasks and for performance tracing.

### [Issue #173843](https://github.com/flutter/flutter/issues/173843): [Windows] Windows tasks aren't processed if the Dart event loop is never drained
* **Author:** [krll-kov](https://github.com/krll-kov)
* On Windows with merged threads enabled, a continuously busy Dart event loop can starve the native event loop, preventing it from processing tasks and causing the application to become unresponsive.

### [Issue #170807](https://github.com/flutter/flutter/issues/170807): Update the minimum supported android version from 21 to 24
* **Author:** [reidbaker](https://github.com/reidbaker)
* This issue tracks the work to raise the minimum supported Android version from 21 to 24, a breaking change that requires updates to the engine, project templates, plugins, and documentation.

### [Issue #167681](https://github.com/flutter/flutter/issues/167681): Tracking issue for any infra or test failures with macOS 15
* **Author:** [vashworth](https://github.com/vashworth)
* This is a tracking issue to consolidate and monitor all test and infrastructure failures related to macOS 15.

### [Issue #166445](https://github.com/flutter/flutter/issues/166445): Use theming from `package:devtools_app_shared`
* **Author:** [bkonyi](https://github.com/bkonyi)
* To ensure visual consistency with DevTools, the widget previewer should be updated to use the shared widgets and theming from the `devtools_app_shared` package.

### [Issue #157125](https://github.com/flutter/flutter/issues/157125): Voice Control number labels on iOS are not displaying consistently on first build
* **Author:** [franciscojma86](https://github.com/franciscojma86)
* On iOS, Voice Control number labels are not appearing on widgets during the initial build, only showing up after a rebuild, and the affected widgets are also isolated from VoiceOver navigation.

### [Issue #143162](https://github.com/flutter/flutter/issues/143162): [reporting] GitHub check doesn't display special characters correctly
* **Author:** [guidezpl](https://github.com/guidezpl)
* A bug in the reporting integration is causing special characters from LUCI error output to display incorrectly within GitHub checks, making the logs difficult to read.

### [Issue #133944](https://github.com/flutter/flutter/issues/133944): FragmentShader setImageSampler doesn't support FilterQuality
* **Author:** [pshc](https://github.com/pshc)
* **Reactions:** **5** -- 👍 5
* The `FragmentShader.setImageSampler` method lacks a parameter to control `FilterQuality`, which results in textures being rendered with nearest-neighbor sampling and appearing pixelated when scaled.

### [Issue #5797](https://github.com/flutter/flutter/issues/5797): `flutter build` is returning zero, should return not zero ?
* **Author:** [sethladd](https://github.com/sethladd)
* **Reactions:** **1** -- 👍 1
* The `flutter build` command incorrectly returns a zero exit code when run without a subcommand, which can cause chained commands in a script to execute unexpectedly.


# GitHub PR Report for flutter/genui
## From 2025-12-12 to 2025-12-14

This cycle included a key fix to improve widget robustness and general dependency maintenance. A bug was addressed in the `MultipleChoice` widget, which could previously fail to render if the `maxAllowedSelections` property was provided as a floating-point number instead of an integer, as described in issue [#575](https://github.com/flutter/genui/issues/575). The fix in [#585](https://github.com/flutter/genui/pull/585) makes the widget more resilient to varied LLM outputs by correctly handling non-integer values. Additionally, a dependency update in [#601](https://github.com/flutter/genui/pull/601) brought the repository in line with the latest Flutter stable release, which included code adjustments to accommodate stricter null safety rules in the updated packages.

## Merged Pull Requests

### [PR #601](https://github.com/flutter/genui/pull/601): Bump dependent package versions to the latest that work with Flutter stable
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Merged At:** 2025-12-11 08:44 PM
* **Comments:** 0
* This PR upgrades several dependencies, including the Google AI generative language and protobuf packages, to align with the latest Flutter stable release, requiring code adjustments to accommodate stricter null safety rules in the updated APIs.

### [PR #585](https://github.com/flutter/genui/pull/585): fix(genui): handle non-integer values provided for `maxAllowedSelections` in `MultipleChoice`
* **Author:** [andrewkolos](https://github.com/andrewkolos)
* **Merged At:** 2025-12-11 04:02 PM
* **Comments:** 0
* This pull request fixes a type cast error in the `MultipleChoice` widget by updating the parsing logic for `maxAllowedSelections` to correctly handle non-integer values, making it more robust against LLM outputs that may provide a floating-point number.


## Closed Issues

### [Issue #575](https://github.com/flutter/genui/issues/575): maxAllowedSelections read as double in multiple_choice widget
* **Author:** [mwk24](https://github.com/mwk24)
* The `multiple_choice` widget fails to render due to a type cast error because the `maxAllowedSelections` property is read from JSON as a `double` but is directly cast to an `int`, and should instead be read as a `num` and then converted.


# GitHub PR Report for flutter/packages
## From 2025-12-12 to 2025-12-14

There were no pull requests merged or issues closed in the repository during this period.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-12-12 to 2025-12-14

During this period, there were no merged pull requests or closed issues, resulting in no changes to the repository's codebase or features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-12-12 to 2025-12-14

This cycle focused heavily on improving the website's structure and user experience. Major navigation updates were introduced, including top navigation buttons to segment the site into sections like 'Learn' and 'Reference' ([PR #12804](https://github.com/flutter/website/pull/12804)). To address a long-standing request to improve scannability ([Issue #11217](https://github.com/flutter/website/issues/11217)), the side navigation now supports Material Symbols icons for top-level sections ([PR #12813](https://github.com/flutter/website/pull/12813)). In a significant content reorganization, all tutorial content was centralized into a new `/learn/tutorial` directory ([PR #12811](https://github.com/flutter/website/pull/12811)). To improve consistency, the term 'Learning resources' was standardized across the site, resolving [Issue #12619](https://github.com/flutter/website/issues/12619) via the changes in [PR #12812](https://github.com/flutter/website/pull/12812). Other updates include new short links for the [Code of Conduct](https://github.com/flutter/website/pull/12815) and the [Automatic PointerInterceptor design doc](https://github.com/flutter/website/pull/12816).

## Merged Pull Requests

### [PR #12816](https://github.com/flutter/website/pull/12816): Update firebase.json with Automatic PointerInterceptor doc
* **Author:** [harryterkelsen](https://github.com/harryterkelsen)
* **Merged At:** 2025-12-12 01:51 PM
* **Comments:** 2
* Adds a 'go' link that redirects to the design document for the Automatic PointerInterceptor feature on Flutter Web.

### [PR #12815](https://github.com/flutter/website/pull/12815): Add code of conduct short link
* **Author:** [Piinks](https://github.com/Piinks)
* **Merged At:** 2025-12-12 01:49 PM
* **Comments:** 2
* This PR adds a `/code-of-conduct` short link that redirects to the project's Code of Conduct document on GitHub, intended for use in character-limited contexts such as the Discord onboarding flow.

### [PR #12814](https://github.com/flutter/website/pull/12814): sync changes from dart-lang/site-www
* **Author:** [schultek](https://github.com/schultek)
* **Merged At:** 2025-12-12 07:24 AM
* **Comments:** 2
* This PR syncs changes from the Dart website, adding an option to disable CSS hash generation for development builds and renaming the `Button` component's `ref` property to `key`.

### [PR #12813](https://github.com/flutter/website/pull/12813): Add icon support to top-level sidenav sections
* **Author:** [guidezpl](https://github.com/guidezpl)
* **Merged At:** 2025-12-12 06:48 AM
* **Comments:** 3
* This PR adds an optional `icon` field to top-level sidenav sections and links, allowing Material Symbols icons to be displayed before section titles for improved visual navigation.

### [PR #12812](https://github.com/flutter/website/pull/12812): Update learning resources links and descriptions
* **Author:** [guidezpl](https://github.com/guidezpl)
* **Merged At:** 2025-12-12 07:29 AM
* **Comments:** 2
* This PR standardizes the term 'Learning resources' across the website's navigation, landing page, and setup guide, replacing the previous 'Samples & tutorials' title, and updates descriptions to accurately reflect the available content types.

### [PR #12811](https://github.com/flutter/website/pull/12811): Move fwe content into new learn/tutorial directory
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-12-12 07:45 AM
* **Comments:** 3
* This PR reorganizes the Flutter tutorial by moving all content into a new, flattened `/learn/tutorial` directory, simplifying file paths and centralizing the structure in `tutorial.yml` to make future changes easier.

### [PR #12804](https://github.com/flutter/website/pull/12804): Add support for top nav buttons for segmenting site
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-12-12 06:19 AM
* **Comments:** 3
* This PR adds top navigation buttons to segment the website into sections like 'Home', 'Learn', and 'Reference', a feature inspired by dart.dev that is currently only enabled on the tutorial pages.


## Closed Issues

### [Issue #12807](https://github.com/flutter/website/issues/12807): thddn
* **Author:** [jeronimo726](https://github.com/jeronimo726)
* This placeholder issue targets the "Get Started" documentation page but lacks any description of the problem or the expected fix.

### [Issue #12619](https://github.com/flutter/website/issues/12619): Refer consistently to learning resources page
* **Author:** [guidezpl](https://github.com/guidezpl)
* The learning resources page is inconsistently named across the documentation, appearing as "Flutter learning resources," "Samples & tutorials," and "Guides and tutorials," and should be standardized to a single, consistent name.

### [Issue #11217](https://github.com/flutter/website/issues/11217): [redesign] Improve left-nav scan-ability
* **Author:** [guidezpl](https://github.com/guidezpl)
* This issue suggests improving the scannability of the left navigation menu by making category headers and subheaders more distinct with styling or icons, and by nesting the 'Reference' section under 'Resources' so it is collapsed by default.



## Top Hacker News Stories

### 100 🔥 [Carrier Landing in Top Gun for the NES](https://relaxing.run/blag/posts/top-gun-landing/)
* **Author:** [todsacerdoti](https://news.ycombinator.com/user?id=todsacerdoti) | **Comments:** [33](https://news.ycombinator.com/item?id=46274822)

### 36  [It seems that OpenAI is scraping [certificate transparency] logs](https://benjojo.co.uk/u/benjojo/h/Gxy2qrCkn1Y327Y6D3)
* **Author:** [pavel_lishin](https://news.ycombinator.com/user?id=pavel_lishin) | **Comments:** [20](https://news.ycombinator.com/item?id=46274478)

### 89  [Thousands of U.S. farmers have Parkinson's. They blame a deadly pesticide](https://www.mlive.com/news/2025/12/thousands-of-us-farmers-have-parkinsons-they-blame-a-deadly-pesticide.html)
* **Author:** [bikenaga](https://news.ycombinator.com/user?id=bikenaga) | **Comments:** [41](https://news.ycombinator.com/item?id=46275079)

### 157 🔥 [Avoid UUIDv4 Primary Keys](https://andyatkinson.com/avoid-uuid-version-4-primary-keys)
* **Author:** [pil0u](https://news.ycombinator.com/user?id=pil0u) | **Comments:** [169](https://news.ycombinator.com/item?id=46272487)

### 51  [DNA Learning Center: Mechanism of Replication 3D Animation](https://dnalc.cshl.edu/resources/3d/04-mechanism-of-replication-advanced.html)
* **Author:** [timschmidt](https://news.ycombinator.com/user?id=timschmidt) | **Comments:** [15](https://news.ycombinator.com/item?id=46181628)

### 332 🔥🔥 [Adafruit: Arduino’s Rules Are ‘Incompatible With Open Source’](https://thenewstack.io/adafruit-arduinos-rules-are-incompatible-with-open-source/)
* **Author:** [MilnerRoute](https://news.ycombinator.com/user?id=MilnerRoute) | **Comments:** [183](https://news.ycombinator.com/item?id=46265362)

### 420 🔥🔥 [Roomba maker goes bankrupt, Chinese owner emerges](https://news.bloomberglaw.com/bankruptcy-law/robot-vacuum-roomba-maker-files-for-bankruptcy-after-35-years)
* **Author:** [nreece](https://news.ycombinator.com/user?id=nreece) | **Comments:** [484](https://news.ycombinator.com/item?id=46268854)

### 25  [Largest U.S. recycling project to extend landfill life for Virginia residents](https://ampsortation.com/articles/largest-us-recycling-project-spsa)
* **Author:** [mooreds](https://news.ycombinator.com/user?id=mooreds) | **Comments:** [24](https://news.ycombinator.com/item?id=46273344)

### 231 🔥 [Unscii](http://viznut.fi/unscii/)
* **Author:** [Levitating](https://news.ycombinator.com/user?id=Levitating) | **Comments:** [29](https://news.ycombinator.com/item?id=46270282)

### 7  [Speech and Language Processing (3rd ed. draft)](https://web.stanford.edu/~jurafsky/slp3/)
* **Author:** [atomicnature](https://news.ycombinator.com/user?id=atomicnature) | **Comments:** [0](https://news.ycombinator.com/item?id=46189205)

### 314 🔥🔥 [If AI replaces workers, should it also pay taxes?](https://english.elpais.com/technology/2025-11-30/if-ai-replaces-workers-should-it-also-pay-taxes.html)
* **Author:** [PaulHoule](https://news.ycombinator.com/user?id=PaulHoule) | **Comments:** [517](https://news.ycombinator.com/item?id=46268709)

### 171 🔥 [Arborium: Tree-sitter code highlighting with Native and WASM targets](https://arborium.bearcove.eu/)
* **Author:** [zdw](https://news.ycombinator.com/user?id=zdw) | **Comments:** [29](https://news.ycombinator.com/item?id=46270298)

### 39  [Invader: Where to Spot the 8-Bit Street Art in London](https://londonist.com/london/art-and-photography/invader-where-to-spot-the-8-bit-street-art-in-london)
* **Author:** [zeristor](https://news.ycombinator.com/user?id=zeristor) | **Comments:** [16](https://news.ycombinator.com/item?id=46177013)

### 1  [Optery (YC W22) Hiring CISO, Release Manager, Tech Lead (Node), Full Stack Eng](https://www.optery.com/careers/)
* **Author:** [beyondd](https://news.ycombinator.com/user?id=beyondd) | **Comments:** [null](https://news.ycombinator.com/item?id=46273372)

### 340 🔥🔥 [Ask HN: What Are You Working On? (December 2025)]()
* **Author:** [david927](https://news.ycombinator.com/user?id=david927) | **Comments:** [1087](https://news.ycombinator.com/item?id=46264491)
* This is a community prompt asking users to share what projects and new ideas they are currently working on.

### 17  [MIT Missing Semester 2026](https://missing.csail.mit.edu/2026/)
* **Author:** [vismit2000](https://news.ycombinator.com/user?id=vismit2000) | **Comments:** [7](https://news.ycombinator.com/item?id=46273762)

### 71  [$5 whale listening hydrophone making workshop](https://exclav.es/2025/08/03/dinacon-2025-passive-acoustic-listening/)
* **Author:** [gsf_emergency_6](https://news.ycombinator.com/user?id=gsf_emergency_6) | **Comments:** [25](https://news.ycombinator.com/item?id=46229030)

### 232 🔥 [Rob Reiner has died](https://www.hollywoodreporter.com/movies/movie-news/rob-reiner-dead-harry-met-sally-princess-bride-all-in-family-1236450387/)
* **Author:** [RickJWagner](https://news.ycombinator.com/user?id=RickJWagner) | **Comments:** [117](https://news.ycombinator.com/item?id=46270273)

### 146 🔥 [SoundCloud has banned VPN access](https://old.reddit.com/r/SoundCloudMusic/comments/1pltd19/soundcloud_just_banned_vpn_access/)
* **Author:** [empressplay](https://news.ycombinator.com/user?id=empressplay) | **Comments:** [105](https://news.ycombinator.com/item?id=46269891)

### 249 🔥 [AI agents are starting to eat SaaS](https://martinalderson.com/posts/ai-agents-are-starting-to-eat-saas/)
* **Author:** [jnord](https://news.ycombinator.com/user?id=jnord) | **Comments:** [265](https://news.ycombinator.com/item?id=46268452)

### 119 🔥 [The Whole App is a Blob](https://drobinin.com/posts/the-whole-app-is-a-blob/)
* **Author:** [valzevul](https://news.ycombinator.com/user?id=valzevul) | **Comments:** [68](https://news.ycombinator.com/item?id=46270386)

### 128 🔥 [John Varley has died](http://floggingbabel.blogspot.com/2025/12/john-varley-1947-2025.html)
* **Author:** [decimalenough](https://news.ycombinator.com/user?id=decimalenough) | **Comments:** [51](https://news.ycombinator.com/item?id=46269991)

### 30  [The Java Ring: A Wearable Computer (1998)](https://www.nngroup.com/articles/javaring-wearable-computer/)
* **Author:** [cromulent](https://news.ycombinator.com/user?id=cromulent) | **Comments:** [26](https://news.ycombinator.com/item?id=46216938)

### 39  [Show HN: I wrote a book – Debugging TypeScript Applications (in beta)](https://pragprog.com/titles/aodjs/debugging-typescript-applications/)
* **Author:** [ozornin](https://news.ycombinator.com/user?id=ozornin) | **Comments:** [15](https://news.ycombinator.com/item?id=46192348)

### 11  [We Put Flock Under Surveillance: Go Make Them Behave Differently [video]](https://www.youtube.com/watch?v=W420BOqga_s)
* **Author:** [huvarda](https://news.ycombinator.com/user?id=huvarda) | **Comments:** [1](https://news.ycombinator.com/item?id=46275328)



