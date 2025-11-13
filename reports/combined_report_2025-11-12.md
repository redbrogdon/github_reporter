# Overall Summary
This period was dominated by the launch of Flutter 3.38, which brought significant enhancements to the Flutter framework and introduced new Dart language features. A highly anticipated change in the framework gives developers more granular control over animations, with a new `forceFrames` property on the `TickerMode` widget that allows specific animations to continue running even when the app is backgrounded ([PR #173862](https://github.com/flutter/flutter/pull/173862)). To help reduce application size, developers can now use a new `platforms` key in `pubspec.yaml` to specify which platforms an asset should be bundled for ([PR #176393](https://github.com/flutter/flutter/pull/176393)). Accessibility was also a focus, with `CupertinoActionSheetAction` gaining keyboard focus support ([PR #167119](https://github.com/flutter/flutter/pull/167119)) and Flutter web apps receiving a new API to customize screen reader messages ([PR #178309](https://github.com/flutter/flutter/pull/178309)). On the language front, the release was accompanied by documentation for the new **Dart dot shorthands** feature ([PR #12656](https://github.com/flutter/website/pull/12656)), and an important clarification was made to the language specification to confirm that compile-time errors are evaluated after all `augment` declarations have been applied ([PR #4545](https://github.com/dart-lang/language/pull/4545)). Tooling for AI development was also improved with the release of `dart_mcp` version 0.4.0 ([PR #312](https://github.com/dart-lang/ai/pull/312)), which includes a fix that provides a more helpful error when a VM Service URI is used instead of a Dart Tooling Daemon URI, resolving a highly-reacted issue ([PR #316](https://github.com/dart-lang/ai/pull/316), [Issue #256](https://github.com/dart-lang/ai/issues/256)).


# GitHub PR Report for dart-lang/ai
## From 2025-11-12

This period's updates centered on enhancing the stability and user experience of the `dart_mcp` package, culminating in the release of version 0.4.0 ([PR #312](https://github.com/dart-lang/ai/pull/312)). This release introduces a breaking API change by accepting nullable parameters for optional values. A significant effort was made to improve error handling in the `dart_mcp_server`. A key fix, detailed in [PR #316](https://github.com/dart-lang/ai/pull/316), now correctly detects when a VM Service URI is used instead of a Dart Tooling Daemon (DTD) URI, providing a more helpful error. This resolves a highly-reacted issue where users would see a misleading SDK version error ([Issue #256](https://github.com/dart-lang/ai/issues/256)). Additional stability improvements include fixing a crash when handling invalid analysis roots ([PR #315](https://github.com/dart-lang/ai/pull/315)) and adding retry logic to resolve a flaky test ([PR #313](https://github.com/dart-lang/ai/pull/313)).

## Merged Pull Requests

### [PR #316](https://github.com/dart-lang/ai/pull/316): detect VM service connections and return a nicer error
* **Author:** [jakemac53](https://github.com/jakemac53)
* **Merged At:** 2025-11-12 10:37 AM
* **Comments:** 1
* **Summary:** This change improves the error message in `dart_mcp_server` when a user incorrectly provides a VM Service URI instead of a Dart Tooling Daemon (DTD) URI. The server now detects this misconfiguration by calling the `getVM` method and returns a more helpful error message, replacing a previously misleading SDK version error.

### [PR #315](https://github.com/dart-lang/ai/pull/315): fix analyze command roots validation
* **Author:** [jakemac53](https://github.com/jakemac53)
* **Merged At:** 2025-11-12 11:01 AM
* **Comments:** 2
* **Summary:** This PR fixes a bug in the `analyze` command of `dart_mcp_server` where a non-null assertion on the wrong variable caused a crash when handling invalid analysis roots, and adds a new test to verify the correct error-handling behavior.

### [PR #313](https://github.com/dart-lang/ai/pull/313): add retry logic to the analyze test
* **Author:** [jakemac53](https://github.com/jakemac53)
* **Merged At:** 2025-11-12 10:07 AM
* **Comments:** 1
* **Summary:** Fixes a flaky analyzer test by introducing retry logic with a back-off, resolving a race condition where the test could check for analysis errors before the analyzer had time to detect them after a file change.

### [PR #312](https://github.com/dart-lang/ai/pull/312): release version 0.4.0 of dart_mcp
* **Author:** [jakemac53](https://github.com/jakemac53)
* **Merged At:** 2025-11-12 09:51 AM
* **Comments:** 2
* **Summary:** This PR releases version 0.4.0 of the `dart_mcp` package, which includes a breaking change to accept nullable parameters for optional values and an updated tool-calling example that shows progress notifications.


## Closed Issues

### [Issue #287](https://github.com/dart-lang/ai/issues/287): A Dart SDK of version 3.9.0-163.0.dev or greater is required to connect to Dart and Flutter applications.
* **Author:** [hatemragab](https://github.com/hatemragab)
* **Closed At:** 2025-11-11 04:08 PM
* **Reactions:** **1** -- 👍 1

### [Issue #284](https://github.com/dart-lang/ai/issues/284): MCP server claims that hot_reload succeeded when it actually failed
* **Author:** [athomas](https://github.com/athomas)
* **Closed At:** 2025-11-12 12:18 AM

### [Issue #282](https://github.com/dart-lang/ai/issues/282): `analyze_files` should have better error when encountering a missing path.
* **Author:** [gspencergoog](https://github.com/gspencergoog)
* **Closed At:** 2025-11-12 11:01 AM

### [Issue #256](https://github.com/dart-lang/ai/issues/256): Multiple DTD tools fail with misleading SDK version error
* **Author:** [goodbbai](https://github.com/goodbbai)
* **Closed At:** 2025-11-12 10:37 AM
* **Reactions:** **7** -- 👍 7

### [Issue #199](https://github.com/dart-lang/ai/issues/199): Ensure Dart MCP server works well with Gemini in Android Studio
* **Author:** [kenzieschmoll](https://github.com/kenzieschmoll)
* **Closed At:** 2025-11-12 11:10 AM
* **Reactions:** **4** -- 👍 4

### [Issue #197](https://github.com/dart-lang/ai/issues/197): Errors when calling tools from Gemini in Android Studio
* **Author:** [kenzieschmoll](https://github.com/kenzieschmoll)
* **Closed At:** 2025-11-12 11:09 AM

### [Issue #182](https://github.com/dart-lang/ai/issues/182): Cursor Connection failed: WebSocketChannelException: Invalid argument (url): only ws: and wss: schemes are supported: Instance of '_SimpleUri'
* **Author:** [csells](https://github.com/csells)
* **Closed At:** 2025-11-12 11:11 AM

### [Issue #67](https://github.com/dart-lang/ai/issues/67): No error if passing a VM service URI instead of a DTD uri
* **Author:** [jakemac53](https://github.com/jakemac53)
* **Closed At:** 2025-11-12 11:13 AM
* **Reactions:** **1** -- 👍 1


# GitHub PR Report for dart-lang/sdk
## From 2025-11-12

This was a quiet period with no pull requests merged into the repository. However, work continued on closing out issues, including an internal improvement to the Ahead-Of-Time (AOT) compiler to better track the length of constant fields ([#61951](https://github.com/dart-lang/sdk/issues/61951)). Additionally, an issue was closed to improve the developer experience by better documenting how to write lint rules with parameterized diagnostic messages ([#61921](https://github.com/dart-lang/sdk/issues/61921)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #61951](https://github.com/dart-lang/sdk/issues/61951): Constant field length tracking for AOT
* **Author:** [rmacnak-google](https://github.com/rmacnak-google)
* **Closed At:** 2025-11-12 12:32 PM

### [Issue #61921](https://github.com/dart-lang/sdk/issues/61921): Document writing lint rules with parameterized diagnostic messages
* **Author:** [FMorschel](https://github.com/FMorschel)
* **Closed At:** 2025-11-12 01:14 PM


# GitHub PR Report for dart-lang/language
## From 2025-11-12

This period saw an important clarification to the Dart language specification regarding the `augment` feature. In response to [Issue #3690](https://github.com/dart-lang/language/issues/3690), [PR #4545](https://github.com/dart-lang/language/pull/4545) updates the spec to confirm that compile-time errors are evaluated on the final semantic definition of a type *after* all augmentations have been applied, rather than on the individual syntactic declarations.

## Merged Pull Requests

### [PR #4545](https://github.com/dart-lang/language/pull/4545): Clarify how augmentations affect existing compile-time errors.
* **Author:** [munificent](https://github.com/munificent)
* **Merged At:** 2025-11-12 03:30 PM
* **Comments:** 1
* **Summary:** Updates the augmentations feature specification to clarify that compile-time errors apply to the final semantic definition of a type after all augmentations are applied, rather than to the individual syntactic declarations.


## Closed Issues

### [Issue #3690](https://github.com/dart-lang/language/issues/3690): Specify which errors are reported before and which after augmentations are applied
* **Author:** [lrhn](https://github.com/lrhn)
* **Closed At:** 2025-11-12 03:30 PM
* **Reactions:** **1** -- 👍 1


# GitHub PR Report for dart-lang/native
## From 2025-11-12

This week, improvements focused on enhancing API usability and code quality for native interop. For developers using the `jni` package, the API for retrieving the Android application context has been simplified; `Jni.androidApplicationContext` is now a getter and no longer requires an `engineId` since the context is global ([PR #2777](https://github.com/dart-lang/native/pull/2777)). On the tooling and quality front, a new CI step was added to run the Xcode static analyzer on Objective-C code, which helped uncover and fix several existing compiler warnings ([PR #2779](https://github.com/dart-lang/native/pull/2779), [Issue #2776](https://github.com/dart-lang/native/issues/2776)).

## Merged Pull Requests

### [PR #2779](https://github.com/dart-lang/native/pull/2779): [objective_c] CI to check for xcode analyser errors
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-12 01:47 PM
* **Comments:** 2
* **Summary:** This PR introduces a new CI step to run the Xcode static analyzer on Objective-C code, treating warnings as errors. It also includes several fixes for issues uncovered by the new analyzer, such as adding explicit type casts and correcting the declaration of no-argument Objective-C blocks.

### [PR #2777](https://github.com/dart-lang/native/pull/2777): [jni] Do not require engineId for android app context
* **Author:** [HosseinYousefi](https://github.com/HosseinYousefi)
* **Merged At:** 2025-11-12 12:42 AM
* **Comments:** 3
* **Summary:** In the `jni` package, the `Jni.androidApplicationContext` method has been converted to a getter, removing the need to pass an `engineId` since the Android application context is global and not engine-specific.


## Closed Issues

### [Issue #2776](https://github.com/dart-lang/native/issues/2776): Compiler warnings in objective_c.m
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Closed At:** 2025-11-12 01:47 PM


# GitHub PR Report for flutter/ai
## From 2025-11-12

During this period, there were no merged pull requests or closed issues, resulting in no changes to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-11-12

This was a quiet period focused on maintenance. The primary change was an update to the codebase to ensure compatibility with the upcoming Flutter 3.38 release, as detailed in pull request [#2361](https://github.com/flutter/codelabs/pull/2361). No other significant feature additions or issue resolutions occurred during this time.

## Merged Pull Requests

### [PR #2361](https://github.com/flutter/codelabs/pull/2361): Update for Flutter 3.38
* **Author:** [domesticmouse](https://github.com/domesticmouse)
* **Merged At:** 2025-11-12 12:55 PM
* **Comments:** 0
* **Summary:** This PR updates the codebase for compatibility with the Flutter 3.38 release.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-11-12

This period saw significant enhancements to Flutter's animation and asset management systems, alongside key improvements in accessibility and developer experience. A highly anticipated change ([PR #173862](https://github.com/flutter/flutter/pull/173862)) introduces a `forceFrames` property to the `TickerMode` widget, allowing developers to opt-in specific animation subtrees to continue running even when the app is backgrounded. To help reduce application size, developers can now use a new `platforms` key in `pubspec.yaml` to specify which platforms an asset should be bundled for, enabling platform-specific asset filtering ([PR #176393](https://github.com/flutter/flutter/pull/176393)). On the accessibility front, `CupertinoActionSheetAction` now supports focus for keyboard navigation, introducing a new `CupertinoFocusHalo` widget to render an iOS-style focus border ([PR #167119](https://github.com/flutter/flutter/pull/167119)), while Flutter web apps gain a new `ui_web.accessibilityPlaceholderMessage` API to customize screen reader messages ([PR #178309](https://github.com/flutter/flutter/pull/178309)). For Android developers, plugin templates have been migrated to the Gradle Kotlin DSL ([PR #173993](https://github.com/flutter/flutter/pull/173993)), and a notable build-system change ([PR #177508](https://github.com/flutter/flutter/pull/177508)) helps modernize a core Android dependency. Other changes include an update to the latest stable Dart SDK ([PR #178401](https://github.com/flutter/flutter/pull/178401)), a performance boost in Impeller to support more complex paths ([PR #178088](https://github.com/flutter/flutter/pull/178088)), and a revert of new accessibility roles for loading indicators to resolve test failures ([PR #178316](https://github.com/flutter/flutter/pull/178316)).

## Merged Pull Requests

### [PR #178401](https://github.com/flutter/flutter/pull/178401): Update DEPS with stable dart version
* **Author:** [camsim99](https://github.com/camsim99)
* **Merged At:** 2025-11-12 01:08 PM
* **Comments:** 3
* **Summary:** This PR updates the version of the Dart SDK used by the Flutter framework by changing the `dart_revision` in the `DEPS` file to a new stable release.

### [PR #178396](https://github.com/flutter/flutter/pull/178396): Preserve whitelisted files when removed from build system outputs
* **Author:** [vashworth](https://github.com/vashworth)
* **Merged At:** 2025-11-12 03:07 PM
* **Comments:** 0
* **Summary:** Modifies the build system to preserve whitelisted files, such as the iOS and macOS Flutter frameworks, preventing them from being deleted when removed from the build outputs to avoid a race condition with Xcode.

### [PR #178392](https://github.com/flutter/flutter/pull/178392): [CP-beta]fix: infra out of resources
* **Author:** [flutteractionsbot](https://github.com/flutteractionsbot)
* **Merged At:** 2025-11-12 11:42 AM
* **Comments:** 3
* **Summary:** Updates the CI configuration to allow devicelab tests to run on newly available macOS 15.7 x86 machines, resolving a test infrastructure resource shortage.

### [PR #178387](https://github.com/flutter/flutter/pull/178387): fix: infra out of resources
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* **Merged At:** 2025-11-12 09:28 AM
* **Comments:** 1
* **Summary:** Updates the CI configuration to include macOS 15.7, resolving an "infra out of resources" error caused by a mismatch with the upgraded Mac bots in the device lab.

### [PR #178335](https://github.com/flutter/flutter/pull/178335): [ Tool ] Only process a single unhandled tool exception
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-11-12 10:55 AM
* **Comments:** 2
* **Summary:** Updates the Flutter tool's exception handling logic to ensure only a single unhandled exception is processed per run, which prevents multiple analytics events from being sent for a single crash involving asynchronous errors.

### [PR #178327](https://github.com/flutter/flutter/pull/178327): Pin package:dwds to 26.1.0
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-11-11 04:31 PM
* **Comments:** 1
* **Summary:** This change pins the `dwds` package to version 26.1.0 to work around failures caused by bugs in a more recent version.

### [PR #178316](https://github.com/flutter/flutter/pull/178316): Reverts "Feat: Add a11y for loading indicators (#165173)"
* **Author:** [auto-submit[bot]](https://github.com/apps/auto-submit)
* **Merged At:** 2025-11-11 04:18 PM
* **Comments:** 0
* **Summary:** This PR reverts a recent change that added accessibility support for loading indicators, including the `SemanticsRole.progressBar` and `SemanticsRole.loadingSpinner` roles, after the original change was found to cause test failures in Google's internal CI.

### [PR #178309](https://github.com/flutter/flutter/pull/178309): [web] API to customize semantics placeholder message
* **Author:** [mdebbar](https://github.com/mdebbar)
* **Merged At:** 2025-11-12 11:37 AM
* **Comments:** 0
* **Summary:** Introduces the `ui_web.accessibilityPlaceholderMessage` property, allowing developers to customize the message announced by screen readers to prompt users to enable accessibility on Flutter web applications.

### [PR #178214](https://github.com/flutter/flutter/pull/178214): Replace deprecated `withOpacity` in `reorderable_list_view.reorderable_list_view_builder.0.dart‎` example
* **Author:** [AbdeMohlbi](https://github.com/AbdeMohlbi)
* **Merged At:** 2025-11-11 04:48 PM
* **Comments:** 0
* **Summary:** Updates the `ReorderableListView.builder` example to replace the deprecated `Color.withOpacity` method with the recommended `Color.withValues`.

### [PR #178203](https://github.com/flutter/flutter/pull/178203): fix #178045: update expansible documentation for default  maintainSta…
* **Author:** [koukibadr](https://github.com/koukibadr)
* **Merged At:** 2025-11-11 05:10 PM
* **Comments:** 0
* **Summary:** This PR corrects the documentation for the `maintainState` property of the `Expansible` widget to accurately reflect that its default value is `true`, not `false`.

### [PR #178202](https://github.com/flutter/flutter/pull/178202): Make sure that a TabBarView doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-11-12 01:06 PM
* **Comments:** 2
* **Summary:** Fixes a crash that could occur in `TabBarView` when the widget is laid out in a zero-sized area.

### [PR #178117](https://github.com/flutter/flutter/pull/178117): Make sure that a DefaultTabController doesn't crash in 0x0 environment
* **Author:** [ahmedsameha1](https://github.com/ahmedsameha1)
* **Merged At:** 2025-11-11 04:31 PM
* **Comments:** 2
* **Summary:** Adds a regression test to ensure `DefaultTabController` does not crash when it is rendered in a zero-sized area.

### [PR #178088](https://github.com/flutter/flutter/pull/178088): [Impeller] Use 32-bit index values in the tessellator if the platform supports it
* **Author:** [jason-simmons](https://github.com/jason-simmons)
* **Merged At:** 2025-11-12 03:34 PM
* **Comments:** 0
* **Summary:** Updates the Impeller tessellator to use 32-bit indices on supported platforms, preventing rendering failures on complex paths whose vertex count exceeds the previous 16-bit limit. The tessellator falls back to 16-bit indices on platforms that lack support, such as OpenGL ES implementations without the required extension.

### [PR #177671](https://github.com/flutter/flutter/pull/177671): Clean before building when framework headers change
* **Author:** [vashworth](https://github.com/vashworth)
* **Merged At:** 2025-11-11 04:31 PM
* **Comments:** 3
* **Summary:** This PR fixes a build failure with Xcode 26 and newer by detecting when Flutter framework headers have changed and automatically performing a clean build to prevent errors caused by outdated pre-compiled headers.

### 🔥 [PR #177508](https://github.com/flutter/flutter/pull/177508): Gradle Lockfile workaround and Android Embedder dependency change for ExifInterface
* **Author:** [mboetger](https://github.com/mboetger)
* **Merged At:** 2025-11-12 03:34 PM
* **Comments:** 10
* **Summary:** This PR introduces a build-system workaround to temporarily disable Gradle dependency locking, which facilitates switching the Android embedder from the platform `ExifInterface` to the `androidx.exifinterface` library, with lockfiles to be updated in a subsequent change.

### [PR #177385](https://github.com/flutter/flutter/pull/177385): Marks Mac_arm64_mokey run_debug_test_android to be flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* **Merged At:** 2025-11-12 11:01 AM
* **Comments:** 1
* **Summary:** Marks the `Mac_arm64_mokey run_debug_test_android` CI test as flaky by setting the `bringup: true` flag, preventing it from blocking the build.

### 🔥 [PR #176393](https://github.com/flutter/flutter/pull/176393): feat(assets): add platform-specific asset filtering in pubspec.yaml
* **Author:** [hm21](https://github.com/hm21)
* **Merged At:** 2025-11-11 04:18 PM
* **Comments:** 8
* **Summary:** This PR introduces a `platforms` key for asset declarations in `pubspec.yaml`, allowing developers to specify which platforms an asset should be bundled for. This enables platform-specific asset filtering, which helps reduce final application size by excluding unnecessary resources.

### [PR #175664](https://github.com/flutter/flutter/pull/175664): [ Tool ] Don't delete `.dart_tool/widget_preview_scaffold` during `flutter clean`
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-11-12 01:25 PM
* **Comments:** 0
* **Summary:** Updates the `flutter clean` command to preserve the `.dart_tool/widget_preview_scaffold` directory, preventing the widget previewer from crashing if it is active when the command is run.

### [PR #173993](https://github.com/flutter/flutter/pull/173993): Migrate `packages/flutter_tools/templates/plugin` templates to Kotlin DSL
* **Author:** [bc-lee](https://github.com/bc-lee)
* **Merged At:** 2025-11-12 11:27 AM
* **Comments:** 3
* **Summary:** Migrates the Android templates for new Flutter plugins to use the Gradle Kotlin DSL, replacing the traditional Groovy-based `build.gradle` files with `build.gradle.kts` for a more modern and type-safe build configuration.

### 🔥🔥🔥 [PR #173862](https://github.com/flutter/flutter/pull/173862): [Animation] Add granular frame forcing to animations
* **Author:** [tguerin](https://github.com/tguerin)
* **Merged At:** 2025-11-11 05:12 PM
* **Comments:** 19
* **Summary:** Introduces a `forceFrames` property to the `TickerMode` widget, allowing developers to opt-in specific animation subtrees to continue running even when the application would not normally be scheduling frames, such as when it is backgrounded.

### 🔥🔥🔥 [PR #167119](https://github.com/flutter/flutter/pull/167119): Add focus support for CupertinoActionSheetAction #166398
* **Author:** [O-Hannonen](https://github.com/O-Hannonen)
* **Merged At:** 2025-11-11 09:06 PM
* **Comments:** 17
* **Summary:** Adds focus support to `CupertinoActionSheetAction` to enable keyboard navigation and activation, introducing the new `CupertinoFocusHalo` widget to draw an iOS-style focus border around the action sheet's buttons when one has focus.


## Closed Issues

### [Issue #178403](https://github.com/flutter/flutter/issues/178403): Getting error when running tests: "Error: the Dart compiler exited unexpectedly"
* **Author:** [victorsanni](https://github.com/victorsanni)
* **Closed At:** 2025-11-12 11:52 AM

### [Issue #178391](https://github.com/flutter/flutter/issues/178391): win-7 in quarantined state because the local Temp directory exceeded 1024 files.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* **Closed At:** 2025-11-12 02:14 PM

### [Issue #178390](https://github.com/flutter/flutter/issues/178390): linux-54 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* **Closed At:** 2025-11-12 02:16 PM

### [Issue #178389](https://github.com/flutter/flutter/issues/178389): win-3 lost external connection from the phone device.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* **Closed At:** 2025-11-12 02:15 PM

### [Issue #178384](https://github.com/flutter/flutter/issues/178384): [infra] Out of resources to run certain tests
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* **Closed At:** 2025-11-12 09:28 AM

### [Issue #178365](https://github.com/flutter/flutter/issues/178365): Linux_pixel_7pro platform_views_scroll_perf__timeline_summary is 2.08% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* **Closed At:** 2025-11-12 08:23 AM

### [Issue #178355](https://github.com/flutter/flutter/issues/178355): Linux plugin_test_android_standard is 2.06% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* **Closed At:** 2025-11-12 07:28 AM

### [Issue #178354](https://github.com/flutter/flutter/issues/178354): Empty bottom padding on mobile web with text fields and bottom sheets
* **Author:** [ValentinVignal](https://github.com/ValentinVignal)
* **Closed At:** 2025-11-12 05:06 AM

### [Issue #178332](https://github.com/flutter/flutter/issues/178332): GoogleApiManager: Unknown calling package name 'com.google.android.gms' on Linux builds
* **Author:** [kingfin-tech](https://github.com/kingfin-tech)
* **Closed At:** 2025-11-12 02:50 AM

### [Issue #178330](https://github.com/flutter/flutter/issues/178330): Flutter web app always stops at a postEvent after hot-reload
* **Author:** [pedromassango](https://github.com/pedromassango)
* **Closed At:** 2025-11-12 01:55 AM
* **Reactions:** **1** -- 👍 1

### [Issue #178318](https://github.com/flutter/flutter/issues/178318): `flutter_tool` crash handler should not report multiple crashes for a single process
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Closed At:** 2025-11-12 10:55 AM

### [Issue #178311](https://github.com/flutter/flutter/issues/178311): [tool_crash] _Exception
* **Author:** [naeem-jtr](https://github.com/naeem-jtr)
* **Closed At:** 2025-11-12 12:26 AM

### [Issue #178301](https://github.com/flutter/flutter/issues/178301): [tool_crash] DartDevelopmentServiceException
* **Author:** [Clarkky1](https://github.com/Clarkky1)
* **Closed At:** 2025-11-11 11:45 PM

### [Issue #178292](https://github.com/flutter/flutter/issues/178292): [iOS] No event fired on purchase initiation and on cancellation
* **Author:** [MauroGentile](https://github.com/MauroGentile)
* **Closed At:** 2025-11-11 10:59 PM

### [Issue #178172](https://github.com/flutter/flutter/issues/178172): [web] No way to set the placeholderMessage value
* **Author:** [yjbanov](https://github.com/yjbanov)
* **Closed At:** 2025-11-12 11:37 AM

### [Issue #178154](https://github.com/flutter/flutter/issues/178154): Improve navigation order for Screenreaders when using Slivers to serve Material Guidelines
* **Author:** [CXgbw](https://github.com/CXgbw)
* **Closed At:** 2025-11-12 02:44 PM

### [Issue #178045](https://github.com/flutter/flutter/issues/178045): Expansible maintainState property's default value conflicts with its documentation
* **Author:** [Reprevise](https://github.com/Reprevise)
* **Closed At:** 2025-11-11 05:10 PM
* **Reactions:** **1** -- 👀 1

### [Issue #178022](https://github.com/flutter/flutter/issues/178022): Unexpectedly start and end point get connected when drawing smooth curve paths on iOS platform
* **Author:** [Yuvaraj-Gajaraj](https://github.com/Yuvaraj-Gajaraj)
* **Closed At:** 2025-11-12 03:34 PM

### [Issue #177709](https://github.com/flutter/flutter/issues/177709): Linux_galaxy_s24 new_gallery_impeller__transition_perf is 2.02% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* **Closed At:** 2025-11-12 08:22 AM

### [Issue #177382](https://github.com/flutter/flutter/issues/177382): Linux_pixel_7pro complex_layout_scroll_perf__timeline_summary is 2.06% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* **Closed At:** 2025-11-12 08:20 AM

### [Issue #177307](https://github.com/flutter/flutter/issues/177307): mDNS discovery works on iOS simulator but not on real device (SocketException errno = 65)
* **Author:** [superwebarmy](https://github.com/superwebarmy)
* **Closed At:** 2025-11-12 12:12 AM

### [Issue #177218](https://github.com/flutter/flutter/issues/177218): Android Pixel 9 XL Pro - Crazy screen artifacts, sometimes blinks and resolves after a few seconds
* **Author:** [corepuncher](https://github.com/corepuncher)
* **Closed At:** 2025-11-11 09:50 PM

### [Issue #177066](https://github.com/flutter/flutter/issues/177066): generate_gradle_lockfiles needs to work with local engine changes
* **Author:** [mboetger](https://github.com/mboetger)
* **Closed At:** 2025-11-12 03:34 PM

### [Issue #176537](https://github.com/flutter/flutter/issues/176537): Flutter Web Embedded Mode fails when refreshing browser
* **Author:** [henriquezanfa](https://github.com/henriquezanfa)
* **Closed At:** 2025-11-12 11:09 AM

### [Issue #175936](https://github.com/flutter/flutter/issues/175936): Mac builders fail with the "infra" reason 
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Closed At:** 2025-11-12 08:19 AM

### [Issue #175857](https://github.com/flutter/flutter/issues/175857): [google_maps_flutter] Map is rendered with glitches on Android 13
* **Author:** [matisiekpl](https://github.com/matisiekpl)
* **Closed At:** 2025-11-11 07:28 PM

### [Issue #175484](https://github.com/flutter/flutter/issues/175484): Mac tool_integration_tests_3_5 is 2.11% flaky
* **Author:** [fluttergithubbot](https://github.com/fluttergithubbot)
* **Closed At:** 2025-11-12 08:32 AM

### [Issue #175058](https://github.com/flutter/flutter/issues/175058): Flutter widget preview server crashes when running "flutter clean"
* **Author:** [DanTup](https://github.com/DanTup)
* **Closed At:** 2025-11-12 01:25 PM

### [Issue #175031](https://github.com/flutter/flutter/issues/175031): flutter_svg rendering issue on iOS in landscape mode
* **Author:** [Abu-Abdullah](https://github.com/Abu-Abdullah)
* **Closed At:** 2025-11-12 03:34 PM

### [Issue #174356](https://github.com/flutter/flutter/issues/174356): [Desktop] Allow applications to continue frame rendering when hidden for real-time games and animation-driven audio
* **Author:** [tguerin](https://github.com/tguerin)
* **Closed At:** 2025-11-11 05:12 PM
* **Reactions:** **1** -- 👍 1


# GitHub PR Report for flutter/packages
## From 2025-11-12

This period's updates focused on preparing the repository for the next stable release. A significant change in [PR #10405](https://github.com/flutter/packages/pull/10405) readies the packages for release 3.38 by updating the minimum required Dart SDK to 3.8, which resulted in widespread code reformatting across many packages. In an important API change for the `pigeon` package, the `dartHostTestHandler` and `dartTestOut` options were deprecated in favor of using standard mock or fake implementations for testing ([PR #10403](https://github.com/flutter/packages/pull/10403)). Finally, documentation for the `image_picker` plugin was updated to correctly reflect its multi-platform support beyond just Android and iOS ([PR #10385](https://github.com/flutter/packages/pull/10385)).

## Merged Pull Requests

### [PR #10405](https://github.com/flutter/packages/pull/10405): Update repo for 3.38
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-12 10:25 AM
* **Comments:** 1
* **Summary:** This PR prepares the packages repository for the 3.38 stable release, which includes widespread code reformatting as a result of updating the minimum supported Dart SDK to 3.8 for many packages.

### [PR #10403](https://github.com/flutter/packages/pull/10403): [pigeon] Deprecate dartHostTestHandler
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-11 08:36 PM
* **Comments:** 2
* **Summary:** Deprecates the `dartHostTestHandler` and `dartTestOut` options in the Pigeon package, encouraging developers to use standard mock or fake implementations of the generated Dart APIs for testing instead.

### [PR #10402](https://github.com/flutter/packages/pull/10402): [google_sign_in_android] Fix typos in README.md
* **Author:** [zhoda-lii](https://github.com/zhoda-lii)
* **Merged At:** 2025-11-12 04:39 AM
* **Comments:** 2
* **Summary:** Corrects minor typos in the `README.md` file for the `google_sign_in_android` package.

### [PR #10385](https://github.com/flutter/packages/pull/10385): [image_picker] Fixes README description of plugin suggesting that only Android and iOS is supported.
* **Author:** [bparrishMines](https://github.com/bparrishMines)
* **Merged At:** 2025-11-11 09:01 PM
* **Comments:** 0
* **Summary:** Updates the `image_picker` README to remove text that incorrectly implied support was limited to Android and iOS, clarifying the plugin's multi-platform capabilities.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-11-12

This period focused on proactive maintenance in preparation for upcoming language updates. Specifically, pull request [#2742](https://github.com/flutter/samples/pull/2742) updated the code formatting across several samples to align with the forthcoming Dart 3.10 SDK, ensuring that the samples remain compatible and continue to pass continuous integration checks.

## Merged Pull Requests

### [PR #2742](https://github.com/flutter/samples/pull/2742): 3.38 / 3.10
* **Author:** [ericwindmill](https://github.com/ericwindmill)
* **Merged At:** 2025-11-12 11:46 AM
* **Comments:** 0
* **Summary:** Updates code formatting across several samples to align with the upcoming Dart 3.10 SDK, ensuring they continue to pass CI checks.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-11-12

This period was dominated by preparations for and the launch of the Flutter 3.38 release. The official release notes were published in [PR #12621](https://github.com/flutter/website/pull/12621), and the "What's New" page was updated in [PR #12656](https://github.com/flutter/website/pull/12656) to highlight a site rewrite using the Jaspr framework and add documentation for new features, including the new **Dart dot shorthands** language feature. A significant breaking change was documented, updating the default page transition on Android to support the platform's predictive back gesture ([PR #12268](https://github.com/flutter/website/pull/12268)). In a highly commented pull request, an interactive quiz component was added to improve the First Week Experience ([PR #12648](https://github.com/flutter/website/pull/12648)). To support the release, the minimum Dart SDK constraint was bumped to `^3.10.0` ([PR #12669](https://github.com/flutter/website/pull/12669)), and other site improvements included a fix for theme flickering on page loads ([PR #12673](https://github.com/flutter/website/pull/12673)).

## Merged Pull Requests

### [PR #12676](https://github.com/flutter/website/pull/12676): Switch to a more flexible banner format
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-11-12 10:50 AM
* **Comments:** 2
* **Summary:** This PR refactors the site-wide banner configuration, replacing the structured `banner.yml` file with a more flexible `bannerHtml` field in `site.yml` that accepts a raw HTML string.

### [PR #12673](https://github.com/flutter/website/pull/12673): Fix: Theme flicker on page change
* **Author:** [dixita0607](https://github.com/dixita0607)
* **Merged At:** 2025-11-12 08:23 AM
* **Comments:** 3
* **Summary:** Fixes a theme flicker on page load by moving the theme-setting script to execute before the page body is rendered, ensuring the correct theme is applied immediately.

### [PR #12669](https://github.com/flutter/website/pull/12669): [3.38] Update SDK constraints and documented version
* **Author:** [parlough](https://github.com/parlough)
* **Merged At:** 2025-11-12 11:17 AM
* **Comments:** 2
* **Summary:** Updates the minimum Dart SDK constraint to `^3.10.0` across all example projects and internal tooling, and updates the documented Flutter version to 3.38.0.

### [PR #12656](https://github.com/flutter/website/pull/12656): Update what's new on the site since the 3.35 release
* **Author:** [sfshaza2](https://github.com/sfshaza2)
* **Merged At:** 2025-11-12 02:37 PM
* **Comments:** 2
* **Summary:** Updates the flutter.dev "What's New" page for the 3.38 release, announcing a site rewrite using the Jaspr framework and adding new documentation for features like Dart dot shorthands, a web development configuration file, the Widget Previewer tool, and Apple's `UIScene` lifecycle.

### [PR #12653](https://github.com/flutter/website/pull/12653): Update Cursor rules file and documentation link
* **Author:** [tatsuyafujisaki](https://github.com/tatsuyafujisaki)
* **Merged At:** 2025-11-12 09:12 AM
* **Comments:** 4
* **Summary:** Updates the AI rules documentation for the Cursor editor, changing the rules filename from `cursorrules.md` to `AGENTS.md` and updating the link to the official configuration guide.

### 🔥 [PR #12648](https://github.com/flutter/website/pull/12648): Add quiz component for FWE
* **Author:** [schultek](https://github.com/schultek)
* **Merged At:** 2025-11-12 09:29 AM
* **Comments:** 7
* **Summary:** Adds an interactive quiz component for the First Week Experience (FWE) initiative, allowing quizzes to be embedded directly into documentation using a `<quiz>` tag with questions and answers defined in YAML.

### [PR #12621](https://github.com/flutter/website/pull/12621): 3.38 release notes
* **Author:** [itsjustkevin](https://github.com/itsjustkevin)
* **Merged At:** 2025-11-12 09:28 AM
* **Comments:** 2
* **Summary:** Publishes the release notes for Flutter 3.38.0.

### [PR #12268](https://github.com/flutter/website/pull/12268): Predictive back transition breaking change announcement
* **Author:** [justinmc](https://github.com/justinmc)
* **Merged At:** 2025-11-12 02:46 PM
* **Comments:** 3
* **Summary:** This PR documents a breaking change that updates the default page transition on Android to `PredictiveBackPageTransitionsBuilder` to support the platform's predictive back gesture. The announcement also explains how to revert this change and how to update tests that may be affected by the new transition duration.


## Closed Issues

No issues were closed during this time.



## Top Hacker News Stories

### [Britain's railway privatization was an abject failure](https://www.rosalux.de/en/news/id/53917/britains-railway-privatization-was-an-abject-failure)
* **Author:** [robtherobber](https://news.ycombinator.com/user?id=robtherobber) | **Score:** 285 | **Comments:** [235](https://news.ycombinator.com/item?id=45914718)

### [GitHub Partial Outage](https://www.githubstatus.com/incidents/1jw8ltnr1qrj)
* **Author:** [danfritz](https://news.ycombinator.com/user?id=danfritz) | **Score:** 55 | **Comments:** [27](https://news.ycombinator.com/item?id=45915731)

### [Launch HN: Tweeks (YC W25) – Browser extension to de-enshittify the web](https://www.tweeks.io/onboarding)
* **Author:** [jmadeano](https://news.ycombinator.com/user?id=jmadeano) | **Score:** 11 | **Comments:** [2](https://news.ycombinator.com/item?id=45916525)

### [Checkout.com hacked, refuses ransom payment, donates to security labs](https://www.checkout.com/blog/protecting-our-merchants-standing-up-to-extortion)
* **Author:** [StrangeSound](https://news.ycombinator.com/user?id=StrangeSound) | **Score:** 351 | **Comments:** [185](https://news.ycombinator.com/item?id=45912698)

### [European Nations Decide Against Acquiring Boeing E-7 Awacs Aircraft](https://defensemirror.com/news/40527/European_Nations_Decide_Against_Acquiring_Boeing_E_7_AWACS_Aircraft)
* **Author:** [saubeidl](https://news.ycombinator.com/user?id=saubeidl) | **Score:** 40 | **Comments:** [23](https://news.ycombinator.com/item?id=45916044)

### [Blender Lab](https://www.blender.org/news/introducing-blender-lab/)
* **Author:** [radeeyate](https://news.ycombinator.com/user?id=radeeyate) | **Score:** 80 | **Comments:** [30](https://news.ycombinator.com/item?id=45914761)

### [Android developer verification: Early access starts](https://android-developers.googleblog.com/2025/11/android-developer-verification-early.html)
* **Author:** [erohead](https://news.ycombinator.com/user?id=erohead) | **Score:** 1208 | **Comments:** [545](https://news.ycombinator.com/item?id=45908938)

### [Denx (a.k.a. U-Boot) Retires](https://www.denx.de/)
* **Author:** [synergy20](https://news.ycombinator.com/user?id=synergy20) | **Score:** 39 | **Comments:** [3](https://news.ycombinator.com/item?id=45915069)

### [Kratos - Cloud native Auth0 open-source alternative (self-hosted)](https://github.com/ory/kratos)
* **Author:** [curtistyr](https://news.ycombinator.com/user?id=curtistyr) | **Score:** 43 | **Comments:** [22](https://news.ycombinator.com/item?id=45915114)

### [SIMA 2: An Agent That Plays, Reasons, and Learns with You in Virtual 3D Worlds](https://deepmind.google/blog/sima-2-an-agent-that-plays-reasons-and-learns-with-you-in-virtual-3d-worlds/)
* **Author:** [meetpateltech](https://news.ycombinator.com/user?id=meetpateltech) | **Score:** 20 | **Comments:** [4](https://news.ycombinator.com/item?id=45916037)

### [Zed Is Our Office](https://zed.dev/blog/zed-is-our-office)
* **Author:** [sagacity](https://news.ycombinator.com/user?id=sagacity) | **Score:** 8 | **Comments:** [0](https://news.ycombinator.com/item?id=45916196)

### [We cut our Mongo DB costs by 90% by moving to Hetzner](https://prosopo.io/blog/we-cut-our-mongodb-costs-by-90-percent/)
* **Author:** [arbol](https://news.ycombinator.com/user?id=arbol) | **Score:** 42 | **Comments:** [33](https://news.ycombinator.com/item?id=45915884)

### [Tesla Is Recalling Cybertrucks Again. Yep, More Pieces Are Falling Off](https://www.popularmechanics.com/cars/hybrid-electric/a69384091/cybertruck-lightbar-recall/)
* **Author:** [2OEH8eoCRo0](https://news.ycombinator.com/user?id=2OEH8eoCRo0) | **Score:** 66 | **Comments:** [24](https://news.ycombinator.com/item?id=45916146)

### [COBOL to Kotlin via Formal Models (IR and Alloy and Golden Master)](https://marcoeg.medium.com/from-cobol-to-kotlin-795920b1f371)
* **Author:** [marcoeg](https://news.ycombinator.com/user?id=marcoeg) | **Score:** 6 | **Comments:** [1](https://news.ycombinator.com/item?id=45854418)

### [Heartbeats in Distributed Systems](https://arpitbhayani.me/blogs/heartbeats-in-distributed-systems/)
* **Author:** [sebg](https://news.ycombinator.com/user?id=sebg) | **Score:** 26 | **Comments:** [3](https://news.ycombinator.com/item?id=45914815)

### [Switching from GPG to Age](https://luke.hsiao.dev/blog/gpg-to-age/)
* **Author:** [speckx](https://news.ycombinator.com/user?id=speckx) | **Score:** 63 | **Comments:** [34](https://news.ycombinator.com/item?id=45825040)

### [Human Fovea Detector](https://www.shadertoy.com/view/4dsXzM)
* **Author:** [AbuAssar](https://news.ycombinator.com/user?id=AbuAssar) | **Score:** 343 | **Comments:** [76](https://news.ycombinator.com/item?id=45909059)

### [Android 16 QPR1 is being pushed to the Android Open Source Project](https://grapheneos.social/@GrapheneOS/115533432439509433)
* **Author:** [uneven9434](https://news.ycombinator.com/user?id=uneven9434) | **Score:** 198 | **Comments:** [93](https://news.ycombinator.com/item?id=45910381)

### [A Challenge to Roboticists: My Humanoid Olympics](https://spectrum.ieee.org/humanoid-robot-olympics)
* **Author:** [quapster](https://news.ycombinator.com/user?id=quapster) | **Score:** 16 | **Comments:** [4](https://news.ycombinator.com/item?id=45810516)

### [Telli (Voice AI – YC F24) is hiring engineers in Berlin](https://hi.telli.com/eng)
* **Author:** [sebselassie](https://news.ycombinator.com/user?id=sebselassie) | **Score:** 1 | **Comments:** [null](https://news.ycombinator.com/item?id=45912744)

### [Steam Machine](https://store.steampowered.com/sale/steammachine)
* **Author:** [davikr](https://news.ycombinator.com/user?id=davikr) | **Score:** 2423 | **Comments:** [1128](https://news.ycombinator.com/item?id=45903404)

### [Seed. LINE's Custom Typeface](https://seed.line.me/index_en.html)
* **Author:** [totetsu](https://news.ycombinator.com/user?id=totetsu) | **Score:** 74 | **Comments:** [33](https://news.ycombinator.com/item?id=45912785)

### [Shader Glass](https://github.com/mausimus/ShaderGlass)
* **Author:** [erickhill](https://news.ycombinator.com/user?id=erickhill) | **Score:** 52 | **Comments:** [10](https://news.ycombinator.com/item?id=45857657)

### [Homebrew no longer allows bypassing Gatekeeper for unsigned/unnotarized software](https://github.com/Homebrew/brew/issues/20755)
* **Author:** [firexcy](https://news.ycombinator.com/user?id=firexcy) | **Score:** 293 | **Comments:** [226](https://news.ycombinator.com/item?id=45907259)

### [Continuous Autoregressive Language Models](https://arxiv.org/abs/2510.27688)
* **Author:** [Anon84](https://news.ycombinator.com/user?id=Anon84) | **Score:** 84 | **Comments:** [6](https://news.ycombinator.com/item?id=45828523)



