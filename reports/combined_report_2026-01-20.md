# Overall Summary
**🔥🔥🔥 [PR #8218](https://github.com/flutter/packages/pull/8218) (flutter/packages): [in_app_purchase] Update Play Billing library to 7.1.1**
  * **Comments:** 6
  * Updates the Play Billing library to version 7.1.1, adding Dart representations for `ProductDetails.InstallmentPlanDetails` and `PendingPurchasesParams` to support subscription installment plans and pending transactions. This release includes breaking changes, notably the removal of the deprecated `ProrationMode` and `BillingClientWrapper.enablePendingPurchases` methods.

**🔥🔥 [PR #1911](https://github.com/dart-lang/native/pull/1911) (dart-lang/native): [native_assets_builder] Support pub workspaces**
  * **Comments:** 4
  * Adds support for pub workspaces in `native_assets_builder` by requiring the `runPackageName` argument for build and link hooks, which scopes asset building to the specified package's transitive dependencies. This change also allows for correct lookup of package configurations in ancestor directories and enables sharing of native assets across the entire workspace.

**🔥 [Issue #59922](https://github.com/dart-lang/sdk/issues/59922) (dart-lang/sdk): Add support for handling partial failures in Future.wait**
  * This issue proposes adding an `ignoreErrors: true` parameter to `Future.wait` to allow it to complete with all successful results and `null` for failed futures, preventing the entire operation from failing on a single future's error and simplifying error handling for loosely coupled tasks.

**🔥 [Issue #46086](https://github.com/dart-lang/sdk/issues/46086) (dart-lang/sdk): No CyclicInitializationError in CFE**
  * The Analyzer correctly identifies cyclic initialization errors for static fields referencing themselves in their initializers, but the CFE does not report any issues for the same code, indicating a potential bug where CFE should also produce an error.

**🔥 [Issue #160345](https://github.com/flutter/flutter/issues/160345) (flutter/flutter): Proposal to provide a dispose function in class Animation which can easily remove listeners in animation**
  * The issue proposes adding a `dispose` function to the `Animation` class to easily remove listeners, addressing a current limitation where `removeStatusListener` and `removeListener` are ineffective for anonymous methods, making cleanup difficult.

**🔥 [Issue #161912](https://github.com/flutter/flutter/issues/161912) (flutter/flutter): Allow changing app_name**
  * This issue requests a mechanism to allow changing the initial browser tab title for web apps, which is currently derived from the `name` field in `pubspec` as `app_name`.

**🔥 [Issue #160716](https://github.com/flutter/flutter/issues/160716) (flutter/flutter): if a BoxDecoration has both borderRadius and boxShadow, the border is not displayed**
  * A `BoxDecoration` fails to render its `border` when both `borderRadius` and a `BoxShadow` with `BlurStyle.outer` are simultaneously applied, particularly affecting certain Android devices running Flutter 3.27.1, while prior Flutter versions worked as expected.

**🔥 [Issue #159646](https://github.com/flutter/flutter/issues/159646) (flutter/flutter): Impeller crash rendering !**
  * When Impeller is enabled, the app crashes non-stop on iOS (iOS 18.1.1, Xcode 16.1) with Flutter stable 3.24.5, reporting an "Unknown drawable color format" error.


# GitHub PR Report for dart-lang/ai
## From 2025-01-20

No pull requests were merged, and no issues were closed during this period, indicating a quiet period for the repository with no changes to summarize.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2025-01-20

While no new pull requests were merged during this period, several significant issues were closed, primarily focusing on potential API enhancements and compiler correctness. A notable proposal concerns the `Future.wait` method, suggesting an `ignoreErrors: true` parameter to allow it to complete successfully with available results even if some futures fail, streamlining error handling for loosely coupled asynchronous tasks, as outlined in [Issue #59922](https://github.com/dart-lang/sdk/issues/59922). Additionally, a critical bug was addressed concerning compiler behavior, where the Common Front End (CFE) incorrectly failed to report `CyclicInitializationError` for static fields that referenced themselves in their initializers, a behavior that the Analyzer correctly identified, as detailed in [Issue #46086](https://github.com/dart-lang/sdk/issues/46086). Lastly, a regression in tooling was identified and closed, resolving an issue where highlighting for prefixes on class names was no longer functioning as expected, particularly after a previous fix, documented in [Issue #59942](https://github.com/dart-lang/sdk/issues/59942).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #59942](https://github.com/dart-lang/sdk/issues/59942): Highlighting of prefixes on classes doesn't work
* **Author:** [FMorschel](https://github.com/FMorschel)
* Highlighting for prefixes on class names is currently not working, specifically observed after a fix for issue #56981, which previously highlighted class occurrences when the cursor was on the prefix.

### [Issue #59922](https://github.com/dart-lang/sdk/issues/59922): Add support for handling partial failures in Future.wait
* **Author:** [tomasbaran](https://github.com/tomasbaran)
* This issue proposes adding an `ignoreErrors: true` parameter to `Future.wait` to allow it to complete with all successful results and `null` for failed futures, preventing the entire operation from failing on a single future's error and simplifying error handling for loosely coupled tasks.

### [Issue #46086](https://github.com/dart-lang/sdk/issues/46086): No CyclicInitializationError in CFE
* **Author:** [sgrekhov](https://github.com/sgrekhov)
* The Analyzer correctly identifies cyclic initialization errors for static fields referencing themselves in their initializers, but the CFE does not report any issues for the same code, indicating a potential bug where CFE should also produce an error.


# GitHub PR Report for dart-lang/language
## From 2025-01-20

No pull requests were merged and no issues were closed during this period, indicating no recent changes to the repository's codebase or outstanding issues.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2025-01-20

The repository has received significant updates focused on enhancing its native asset build system and Java Native Interface (JNI) generation tooling. A notable improvement includes the introduction of [pub workspace support within `native_assets_builder` (#1911)](https://github.com/dart-lang/native/pull/1911). This change mandates the `runPackageName` argument for build and link hooks, enabling precise scoping of asset building to specific packages and facilitating the sharing of native assets across an entire workspace, which represents a substantial change to how multi-package native projects are managed. Concurrently, the `jnigen` package has been updated to version 0.13.1 ([#1914](https://github.com/dart-lang/native/pull/1914)), incorporating a fix for Kotlin wildcard crashes and improving support for nullability annotations, refining its capabilities for generating JNI bindings.

## Merged Pull Requests

### [PR #1914](https://github.com/dart-lang/native/pull/1914): [jnigen] Publish 0.13.1
* **Author:** [HosseinYousefi](https://github.com/HosseinYousefi)
* **Merged At:** 2025-01-20 11:36 AM
* **Comments:** 1
* Updates the `jnigen` package to version 0.13.1 in the repository, reflecting its publication and incorporating a fix for Kotlin wildcard crashes and improved nullability annotation support.

### [PR #1911](https://github.com/dart-lang/native/pull/1911): [native_assets_builder] Support pub workspaces
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-01-20 07:01 AM
* **Comments:** 4
* Adds support for pub workspaces in `native_assets_builder` by requiring the `runPackageName` argument for build and link hooks, which scopes asset building to the specified package's transitive dependencies. This change also allows for correct lookup of package configurations in ancestor directories and enables sharing of native assets across the entire workspace.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/ai
## From 2025-01-20

During this period, there were no pull requests merged and no issues closed, indicating a static period for the repository with no changes to its codebase or reported issues.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-01-20

This update primarily focused on expanding educational resources for intermediate Flutter developers interested in graphics and GPU programming. A key addition was the Linux runner for the `intro_flutter_gpu` codelab ([PR #2275](https://github.com/flutter/codelabs/pull/2275)). This codelab is designed to guide developers through fundamental GPU APIs and 3D graphics concepts, from basic shaders and vertex manipulation to rendering animated 3D models, with support across Android, iOS, macOS, Windows, and Linux.

## Merged Pull Requests

### [PR #2275](https://github.com/flutter/codelabs/pull/2275): `intro_flutter_gpu`: Add Linux runner
* **Author:** [domesticmouse](https://github.com/domesticmouse)
* **Merged At:** 2025-01-19 07:40 PM
* **Comments:** 1
* Adds a Linux runner to the `intro_flutter_gpu` project, enabling a new codelab that guides intermediate Flutter developers through GPU APIs and 3D graphics fundamentals, from basic shaders and vertex manipulation to animated 3D model rendering, across Android, iOS, macOS, Windows, and Linux.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-01-20

This period saw notable advancements in platform integration, public API enhancements, and critical rendering fixes. A significant focus was placed on the `in_app_purchase` plugin, with a prominent proposal to update the underlying PlayBilling Library to version 7.0 ([Issue #147394]), alongside an investigation into a non-platform thread issue affecting `InAppPurchase2CallbackAPI.onTransactionsUpdated` messages ([Issue #160483]). The core framework's API surface could see an improvement with a proposal to add a `dispose` function to the `Animation` class, which would simplify listener cleanup ([Issue #160345]). Key rendering issues were addressed, including a bug where `BoxDecoration` borders were not displayed when both `borderRadius` and `boxShadow` were applied ([Issue #160716]), and a fix was sought for the `video_player` pausing on iOS when wireless headphones were connected mid-playback ([Issue #160785]). Additionally, the developer experience for web apps may improve with a request to allow changing the browser tab title (`app_name`) ([Issue #161912]), and internal tooling saw stability enhancements, such as fixing flakiness in `doctor_test.dart` ([PR #161917], related to [Issue #161918]).

## Merged Pull Requests

### [PR #161917](https://github.com/flutter/flutter/pull/161917): [ flutter_tool ] Fix flakiness in doctor_test.dart
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-01-20 02:11 PM
* **Comments:** 0
* Fixes flakiness in `doctor_test.dart` by ensuring grouped validators in tests always return `ZeroExecutionTimeValidationResult`, preventing incorrect non-zero execution durations.

### [PR #161913](https://github.com/flutter/flutter/pull/161913): [native assets] Cleanup dead code
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-01-20 03:38 PM
* **Comments:** 1
* Removes dead code from the native assets build runner by deleting the unused `projectUri` parameter and field in `FlutterNativeAssetsBuildRunnerImpl`, and by removing an unnecessary environment variable filtering method.


## Closed Issues

### [Issue #161918](https://github.com/flutter/flutter/issues/161918): `doctor_test.dart` uses `GroupedValidator` in tests which reports real execution times
* **Author:** [bkonyi](https://github.com/bkonyi)
* `doctor_test.dart` uses `GroupedValidator` in tests which reports real execution times, causing flakiness on slower machines due to mismatches in expected vs. actual execution times (e.g., 0ms vs. 1ms).

### [Issue #161912](https://github.com/flutter/flutter/issues/161912): Allow changing app_name
* **Author:** [TheCarpetMerchant](https://github.com/TheCarpetMerchant)
* This issue requests a mechanism to allow changing the initial browser tab title for web apps, which is currently derived from the `name` field in `pubspec` as `app_name`.

### [Issue #161899](https://github.com/flutter/flutter/issues/161899): [tool_crash] SocketException: Send failed, OS Error: No route to host, errno = 65
* **Author:** [mundhrakeshav](https://github.com/mundhrakeshav)
* When running `flutter run`, the Flutter tool crashes with a `SocketException: No route to host` error during mDNS VM service discovery, indicating a network communication failure even though `flutter doctor` reports all expected network resources are available.

### [Issue #161876](https://github.com/flutter/flutter/issues/161876): SDK Processing Warning and Obsolete Options Warning During Flutter Execution
* **Author:** [Quema100](https://github.com/Quema100)
* **Reactions:** **1** -- 👀 1
* A Flutter user repeatedly encounters an "SDK Processing Warning" (indicating an SDK XML version mismatch, v3 vs v4) and an "Obsolete Options Warning" (regarding Java source/target value 8) when running their application, despite updating Android Studio, reinstalling SDK tools, and running `flutter upgrade`, while `flutter doctor` reports no issues.

### [Issue #161851](https://github.com/flutter/flutter/issues/161851): TabBar and AppBar hierarchy
* **Author:** [hickscorp](https://github.com/hickscorp)
* The user is trying to implement a `go_router` setup where a `ShellRoute` has tabs with a main `AppBar` and `NavigationBar`, but sub-routes within each tab should display their own `AppBar` that replaces the main one, not appears below it, while also preserving sub-route state across tab changes.

### [Issue #160813](https://github.com/flutter/flutter/issues/160813): macOS m4 compile engine：output: ../../third_party/dart/runtime/vm/simulator_x64.cc: 51: error: unimplemented code
* **Author:** [SJQ-min](https://github.com/SJQ-min)
* The `const_finder` tool fails to compile on macOS with an "unimplemented code" error reported in `third_party/dart/runtime/vm/simulator_x64.cc` during a Dart simulation call.

### [Issue #160785](https://github.com/flutter/flutter/issues/160785): Video player: Video does not load, if I connect my wireless headphones to an already running video
* **Author:** [Skylaunch](https://github.com/Skylaunch)
* On iOS, connecting wireless headphones to an already running video in the `video_player` package causes the video to pause and stop loading.

### [Issue #160755](https://github.com/flutter/flutter/issues/160755): The flutter project reported an error when running in VSCode. error: Invalid Swift parseable output message (malformed JSON): `[123, 10,
* **Author:** [nooto](https://github.com/nooto)
* A Flutter project using the `pigeon` plugin in VSCode fails to run, reporting an "Invalid Swift parseable output message (malformed JSON)" error, which the user suspects is related to unsupported UTF8 during runtime, even after clearing caches.

### [Issue #160716](https://github.com/flutter/flutter/issues/160716): if a BoxDecoration has both borderRadius and boxShadow, the border is not displayed
* **Author:** [upiparillu](https://github.com/upiparillu)
* A `BoxDecoration` fails to render its `border` when both `borderRadius` and a `BoxShadow` with `BlurStyle.outer` are simultaneously applied, particularly affecting certain Android devices running Flutter 3.27.1, while prior Flutter versions worked as expected.

### [Issue #160483](https://github.com/flutter/flutter/issues/160483): [in_app_purchase_storekit]  `InAppPurchase2CallbackAPI.onTransactionsUpdated` channel sent a message from native to Flutter on a non-platform thread
* **Author:** [probabilityhill](https://github.com/probabilityhill)
* When StoreKit2 is enabled and the purchaseStream is listened to, the `InAppPurchase2CallbackAPI.onTransactionsUpdated` channel sends messages from native to Flutter on a non-platform thread, causing a console error despite other functionalities appearing to work correctly.

### [Issue #160345](https://github.com/flutter/flutter/issues/160345): Proposal to provide a dispose function in class Animation which can easily remove listeners in animation
* **Author:** [Cool-PKY](https://github.com/Cool-PKY)
* The issue proposes adding a `dispose` function to the `Animation` class to easily remove listeners, addressing a current limitation where `removeStatusListener` and `removeListener` are ineffective for anonymous methods, making cleanup difficult.

### [Issue #159646](https://github.com/flutter/flutter/issues/159646): Impeller crash rendering !
* **Author:** [ImadBouirmane](https://github.com/ImadBouirmane)
* When Impeller is enabled, the app crashes non-stop on iOS (iOS 18.1.1, Xcode 16.1) with Flutter stable 3.24.5, reporting an "Unknown drawable color format" error.

### [Issue #147394](https://github.com/flutter/flutter/issues/147394): [in app purchase] Update PlayBilling Library to 7.0
* **Author:** [zoeyfan](https://github.com/zoeyfan)
* **Reactions:** **3** -- 👍 3
* This issue proposes updating the PlayBilling Library to version 7.0 (or the latest available) within the Android component of the plugin, to support in-app purchase functionality.


# GitHub PR Report for flutter/genui
## From 2025-01-20

There were no pull requests merged or issues closed during this period, indicating no changes were made to the repository's codebase or outstanding issues addressed based on the provided information.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2025-01-20

The primary change to the repository involves a significant update to the `in_app_purchase` package, specifically updating the underlying Play Billing library to version 7.1.1. This update, detailed in [#8218](https://github.com/flutter/packages/pull/8218), introduces new Dart representations for `ProductDetails.InstallmentPlanDetails` and `PendingPurchasesParams`, thereby adding support for subscription installment plans and pending transactions. Developers should be aware that this release includes breaking changes, as the deprecated `ProrationMode` and `BillingClientWrapper.enablePendingPurchases` methods have been removed from the API.

## Merged Pull Requests

### 🔥 [PR #8218](https://github.com/flutter/packages/pull/8218): [in_app_purchase] Update Play Billing library to 7.1.1
* **Author:** [mchudy](https://github.com/mchudy)
* **Merged At:** 2025-01-20 07:32 AM
* **Comments:** 6
* Updates the Play Billing library to version 7.1.1, adding Dart representations for `ProductDetails.InstallmentPlanDetails` and `PendingPurchasesParams` to support subscription installment plans and pending transactions. This release includes breaking changes, notably the removal of the deprecated `ProrationMode` and `BillingClientWrapper.enablePendingPurchases` methods.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-01-20

During this period, changes to the repository were minimal, focusing primarily on documentation improvements. The most notable update involved fixing broken links and image paths within the `context_menus/README.md` file, specifically by adjusting references to remove an `experimental/` directory segment, reflecting an updated sample location in [PR #2564](https://github.com/flutter/samples/pull/2564). No issues were closed, and no pull requests with significant comment activity or direct impacts on the public API surface or language features were merged.

## Merged Pull Requests

### [PR #2564](https://github.com/flutter/samples/pull/2564): Update content_menus README.md references
* **Author:** [jonathanmach](https://github.com/jonathanmach)
* **Merged At:** 2025-01-19 04:45 PM
* **Comments:** 0
* Fixes broken links and image paths in the `context_menus/README.md` file by removing the `experimental/` directory segment, reflecting an updated sample location.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-01-20

No pull requests were merged, and no issues were closed during this period, indicating no changes were made to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.



## Top Hacker News Stories

### 600 🔥🔥🔥 [GPTZero finds 100 new hallucinations in NeurIPS 2025 accepted papers](https://gptzero.me/news/neurips/)
* **Author:** [segmenta](https://news.ycombinator.com/user?id=segmenta) | **Comments:** [307](https://news.ycombinator.com/item?id=46720395)

### 445 🔥🔥 [Show HN: isometric.nyc – giant isometric pixel art map of NYC](https://cannoneyed.com/isometric-nyc/)
* **Author:** [cannoneyed](https://news.ycombinator.com/user?id=cannoneyed) | **Comments:** [123](https://news.ycombinator.com/item?id=46721802)
* isometric.nyc is a massive isometric pixel art map of NYC, built using nano banana and coding agents without writing a single line of code. The creator details the significant engineering effort and manual labor involved in this "no-code" project, and shares insights on AI coding and creativity in a linked deep dive.

### 392 🔥🔥 [Qwen3-TTS family is now open sourced: Voice design, clone, and generation](https://qwen.ai/blog?id=qwen3tts-0115)
* **Author:** [Palmik](https://news.ycombinator.com/user?id=Palmik) | **Comments:** [116](https://news.ycombinator.com/item?id=46719229)

### 40  [Compiling Scheme to WebAssembly](https://eli.thegreenplace.net/2026/compiling-scheme-to-webassembly/)
* **Author:** [chmaynard](https://news.ycombinator.com/user?id=chmaynard) | **Comments:** [7](https://news.ycombinator.com/item?id=46663200)

### 104 🔥 [CSS Optical Illusions](https://alvaromontoro.com/blog/68091/css-optical-illusions)
* **Author:** [ulrischa](https://news.ycombinator.com/user?id=ulrischa) | **Comments:** [10](https://news.ycombinator.com/item?id=46722570)

### 41  ['Active' sitting is better for brain health: review of studies](https://www.sciencealert.com/not-all-sitting-is-equal-one-type-was-just-linked-to-better-brain-health)
* **Author:** [mikhael](https://news.ycombinator.com/user?id=mikhael) | **Comments:** [16](https://news.ycombinator.com/item?id=46723694)

### 68  [Recent discoveries on the acquisition of the highest levels of human performance](https://www.science.org/doi/abs/10.1126/science.adt7790)
* **Author:** [colincooke](https://news.ycombinator.com/user?id=colincooke) | **Comments:** [32](https://news.ycombinator.com/item?id=46722853)

### 6  [Viking Ship Museum in Denmark announces the discovery of the largest cog](https://www.medievalists.net/2025/12/medieval-ship-discovered-copenhagen/)
* **Author:** [PaulHoule](https://news.ycombinator.com/user?id=PaulHoule) | **Comments:** [1](https://news.ycombinator.com/item?id=46725522)

### 23  [My first year in sales as technical founder](https://www.fabiandietrich.com/blog/first-year-in-sales.html)
* **Author:** [f3b5](https://news.ycombinator.com/user?id=f3b5) | **Comments:** [3](https://news.ycombinator.com/item?id=46661167)

### 20  [Show HN: First Claude Code client for Ollama local models](https://github.com/21st-dev/1code)
* **Author:** [SerafimKorablev](https://news.ycombinator.com/user?id=SerafimKorablev) | **Comments:** [8](https://news.ycombinator.com/item?id=46722285)
* This project explores integrating local Ollama models into a Claude Code-style workflow, utilizing Ollama's Anthropic-compatible API support. It enables automatic switching to local inference when internet access is unavailable, with `qwen3-coder:30b` currently performing best for this setup.

### 186 🔥 [Tree-sitter vs. Language Servers](https://lambdaland.org/posts/2026-01-21_tree-sitter_vs_lsp/)
* **Author:** [ashton314](https://news.ycombinator.com/user?id=ashton314) | **Comments:** [53](https://news.ycombinator.com/item?id=46719899)

### 171 🔥 [Why does SSH send 100 packets per keystroke?](https://eieio.games/blog/ssh-sends-100-packets-per-keystroke/)
* **Author:** [eieio](https://news.ycombinator.com/user?id=eieio) | **Comments:** [120](https://news.ycombinator.com/item?id=46723990)

### 118 🔥 [Your app subscription is now my weekend project](https://rselbach.com/your-sub-is-now-my-weekend-project)
* **Author:** [robteix](https://news.ycombinator.com/user?id=robteix) | **Comments:** [108](https://news.ycombinator.com/item?id=46672713)

### 28  [Launch HN: Constellation Space (YC W26) – AI for satellite mission assurance]()
* **Author:** [kmajid](https://news.ycombinator.com/user?id=kmajid) | **Comments:** [8](https://news.ycombinator.com/item?id=46721933)
* Constellation Space has developed an AI system that predicts satellite link failures 3-5 minutes in advance with over 90% accuracy, enabling proactive traffic rerouting to prevent data loss. This system integrates real-time satellite telemetry, physics-based models, and federated machine learning to address the scaling challenges of modern satellite operations.

### 37  [Reverse engineering Lyft Bikes for fun (and profit?)](https://ilanbigio.com/blog/lyft-bikes.html)
* **Author:** [ibigio](https://news.ycombinator.com/user?id=ibigio) | **Comments:** [8](https://news.ycombinator.com/item?id=46721703)

### 61  [Keeping 20k GPUs healthy](https://modal.com/blog/gpu-health)
* **Author:** [jxmorris12](https://news.ycombinator.com/user?id=jxmorris12) | **Comments:** [21](https://news.ycombinator.com/item?id=46669001)

### 1  [AnswerThis (YC F25) Is Hiring](https://www.ycombinator.com/companies/answerthis/jobs/r5VHmSC-ai-agent-orchestration)
* **Author:** [ayush4921](https://news.ycombinator.com/user?id=ayush4921) | **Comments:** [null](https://news.ycombinator.com/item?id=46721897)

### 25  [Show HN: Text-to-video model from scratch (2 brothers, 2 years, 2B params)](https://huggingface.co/collections/Linum-AI/linum-v2-2b-text-to-video)
* **Author:** [schopra909](https://news.ycombinator.com/user?id=schopra909) | **Comments:** [7](https://news.ycombinator.com/item?id=46721488)
* Sahil and Manu have open-sourced Linum v2, their text-to-video models trained from scratch over two years, offering 2-5 second footage at 360p or 720p with improved motion capture and aesthetics compared to similar 1.3B models. They built these Apache 2.0 licensed models to own the entire development process, enabling them to integrate new features directly into the model's capabilities for future product advancements.

### 46  [Mote: An Interactive Ecosystem Simulation [video]](https://www.youtube.com/watch?v=Hju0H3NHxVI)
* **Author:** [evakhoury](https://news.ycombinator.com/user?id=evakhoury) | **Comments:** [6](https://news.ycombinator.com/item?id=46712547)
* The provided text is a TikTok link to a video from the Recurse Center account.

### 257 🔥🔥 [Design Thinking Books (2024)](https://www.designorate.com/design-thinking-books/)
* **Author:** [rrm1977](https://news.ycombinator.com/user?id=rrm1977) | **Comments:** [119](https://news.ycombinator.com/item?id=46718061)

### 66  [A Year of 3D Printing](https://brookehatton.com/blog/making/a-year-of-3d-printing/)
* **Author:** [nindalf](https://news.ycombinator.com/user?id=nindalf) | **Comments:** [66](https://news.ycombinator.com/item?id=46662001)

### 245 🔥 [I was banned from Claude for scaffolding a Claude.md file?](https://hugodaniel.com/posts/claude-code-banned-me/)
* **Author:** [hugodan](https://news.ycombinator.com/user?id=hugodan) | **Comments:** [193](https://news.ycombinator.com/item?id=46723384)

### 258 🔥🔥 [It looks like the status/need-triage label was removed](https://github.com/google-gemini/gemini-cli/issues/16728)
* **Author:** [nickswalker](https://news.ycombinator.com/user?id=nickswalker) | **Comments:** [66](https://news.ycombinator.com/item?id=46721179)

### 17  [Vulnerable WhisperPair Devices – Hijack Bluetooth Accessories Using Fast Pair](https://whisperpair.eu/vulnerable-devices)
* **Author:** [gnabgib](https://news.ycombinator.com/user?id=gnabgib) | **Comments:** [4](https://news.ycombinator.com/item?id=46663225)

### 24  [Show HN: Synesthesia, make noise music with a colorpicker](https://visualnoise.ca)
* **Author:** [tevans3](https://news.ycombinator.com/user?id=tevans3) | **Comments:** [9](https://news.ycombinator.com/item?id=46715766)
* This app generates noise music by mapping the hex code of a color chosen from a color picker to a "chord" in a 24-tone equal temperament scale, played using Tone.js. Users are advised to lower their volume significantly before use, as the output is explicitly noise music.



