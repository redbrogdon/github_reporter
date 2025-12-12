# Overall Summary
🔥🔥🔥 **[PR #10439](https://github.com/flutter/packages/pull/10439) (flutter/packages): [in_app_purchase_storekit] Add Transaction.unfinished API and expose appAccountToken**
  * **Comments:** 15
  * This PR adds an `SK2Transaction.unfinishedTransactions()` method to the `in_app_purchase_storekit` package to query only unfinished transactions for better performance, and also exposes the `appAccountToken` on `SK2PurchaseDetails` for easier backend user identification.

🔥 **[Issue #60518](https://github.com/dart-lang/sdk/issues/60518) (dart-lang/sdk): Lint and fix suggestion: `simplify_variable_pattern`**
  * **Reactions:** **21** -- 👍 20 ❤️ 1
  * This issue proposes a new lint rule and an associated fix to detect and simplify object patterns where a field is bound to a variable of the same name, such as converting `MyFoo(aField: final aField)` to the more concise `MyFoo(:final aField)`.

**[PR #175679](https://github.com/flutter/flutter/pull/175679) (flutter/flutter): [ Analysis ] Added initial implementation of the `flutter_analyzer_plugin`**
  * **Comments:** 3
  * This PR introduces the `flutter_analyzer_plugin`, a new package that moves custom lint rules from a CI script into the analyzer to provide developers with earlier feedback on framework-specific violations directly in their IDEs.

**[Issue #50796](https://github.com/dart-lang/sdk/issues/50796) (dart-lang/sdk): Remove the "Hint" diagnostic category**
  * **Reactions:** **1** -- 👍 1
  * This issue proposes removing the `HintCode` diagnostic category and reclassifying existing hints as either warnings or lints, which is a breaking change as hints promoted to warnings will now cause `dart analyze` to fail by default.

🔥 **[PR #179312](https://github.com/flutter/flutter/pull/179312) (flutter/flutter): Use kPreventOverdraw for arcs with overlapping stroke caps**
  * **Comments:** 6
  * Fixes a rendering artifact for arcs with thick, translucent strokes by detecting when the start and end caps overlap. This change enables the `kPreventOverdraw` rendering mode in these cases to ensure uniform color blending.

**[Issue #60066](https://github.com/dart-lang/sdk/issues/60066) (dart-lang/sdk): Support glob pattern in workspace feature**
  * **Reactions:** **8** -- 👍 8
  * This feature request proposes adding support for glob patterns to the workspace configuration to simplify setup by allowing multiple packages to be defined at once, similar to the functionality in `melos`.


# GitHub PR Report for dart-lang/ai
## From 2025-12-11

During this period, no pull requests were merged and no issues were closed, resulting in no changes to the repository's codebase or feature set.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2025-12-11

This period focused on improvements to language tooling and analyzer correctness, with several highly-requested features and bug fixes being closed. A popular proposal for a new lint, `simplify_variable_pattern`, was closed, which will help developers adopt the more concise object shorthand syntax ([#60518](https://github.com/dart-lang/sdk/issues/60518)). The analyzer received bug fixes for incorrect type inference in `for-in` loops using a null-coalescing operator ([#62200](https://github.com/dart-lang/sdk/issues/62200)) and for incorrectly reporting errors when using dot-shorthand syntax for a constructor that shares a name with a member ([#62045](https://github.com/dart-lang/sdk/issues/62045)). A significant change to the diagnostic system was also completed with the removal of the "Hint" category, a breaking change that promotes existing hints to warnings or lints ([#50796](https://github.com/dart-lang/sdk/issues/50796)). Other notable enhancements include the closure of a popular feature request to support glob patterns in workspace configurations ([#60066](https://github.com/dart-lang/sdk/issues/60066)) and a resolution to severe analysis server lag spikes ([#62222](https://github.com/dart-lang/sdk/issues/62222)).

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #62230](https://github.com/dart-lang/sdk/issues/62230): ffi/function_structs_by_value_generated_args_native_test turned flaky -> Timeout on vm-mac-release-simarm64_arm64
* **Author:** [alexmarkov](https://github.com/alexmarkov)
* The `ffi/function_structs_by_value_generated_args_native_test` has become flaky, timing out on the `vm-mac-release-simarm64_arm64` configuration.

### [Issue #62228](https://github.com/dart-lang/sdk/issues/62228): samples/ffi/http/test/http_test is failing on reload debug bots
* **Author:** [alexmarkov](https://github.com/alexmarkov)
* The `samples/ffi/http/test/http_test` is consistently failing with a `TimeoutException` on hot reload debug bots, where it was previously marked as flaky.

### [Issue #62222](https://github.com/dart-lang/sdk/issues/62222): Massive lag spikes in code analysis (> 70 seconds)
* **Author:** [Dampfwalze](https://github.com/Dampfwalze)
* A user reports severe analysis server lag spikes, which have been traced to long chains of constant references generated by Riverpod when using scoped providers deep within a dependency tree.

### [Issue #62200](https://github.com/dart-lang/sdk/issues/62200): Funny upper bound computed with the iterable of a 'for-in' statement
* **Author:** [eernstg](https://github.com/eernstg)
* A `for-in` loop over an expression using the null-coalescing operator (`??`), such as `list ?? {}`, computes an incorrect upper bound that implements `Iterable`, allowing the code to compile when the expected upper bound is `Object` and should produce a compile-time error.

### [Issue #62045](https://github.com/dart-lang/sdk/issues/62045): Analyzer: dot-shorthand fails when constructor and member have same name
* **Author:** [mernen](https://github.com/mernen)
* **Reactions:** **3** -- 👍 3
* The analyzer incorrectly reports an error when using dot-shorthand syntax for a named constructor that shares the same name as a non-static instance member, even though the compiler accepts the code as valid.

### [Issue #60518](https://github.com/dart-lang/sdk/issues/60518): Lint and fix suggestion: `simplify_variable_pattern`
* **Author:** [PiotrRogulski](https://github.com/PiotrRogulski)
* **Reactions:** **21** -- 👍 20 ❤️ 1
* This issue proposes a new lint rule and an associated fix to detect and simplify object patterns where a field is bound to a variable of the same name, such as converting `MyFoo(aField: final aField)` to the more concise `MyFoo(:final aField)`.

### [Issue #60307](https://github.com/dart-lang/sdk/issues/60307): Add direct creation of snapshots as Mach-O shared objects
* **Author:** [sstrickl](https://github.com/sstrickl)
* **Reactions:** **1** -- 👍 1
* This issue proposes adding support to the `gen_snapshot` tool for directly creating AOT snapshots as Mach-O shared objects, which would streamline the build process on macOS by eliminating the current intermediate assembly step.

### [Issue #60066](https://github.com/dart-lang/sdk/issues/60066): Support glob pattern in workspace feature
* **Author:** [vasilich6107](https://github.com/vasilich6107)
* **Reactions:** **8** -- 👍 8
* This feature request proposes adding support for glob patterns to the workspace configuration to simplify setup by allowing multiple packages to be defined at once, similar to the functionality in `melos`.

### [Issue #50796](https://github.com/dart-lang/sdk/issues/50796): Remove the "Hint" diagnostic category
* **Author:** [srawlins](https://github.com/srawlins)
* **Reactions:** **1** -- 👍 1
* This issue proposes removing the `HintCode` diagnostic category and reclassifying existing hints as either warnings or lints, which is a breaking change as hints promoted to warnings will now cause `dart analyze` to fail by default.


# GitHub PR Report for dart-lang/language
## From 2025-12-11

This period's changes focused on clarifying and improving the language's type inference system. Specifically, an inconsistency with `for-in` loops was addressed in issue [#4584](https://github.com/dart-lang/language/issues/4584), which described how a loop variable was incorrectly inferred as `dynamic` when iterating over a null-coalesced nullable list. The resolution of this issue ensures that type inference in `for-in` loops is now more consistent and predictable for this common pattern.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

### [Issue #4584](https://github.com/dart-lang/language/issues/4584): Weird behaviour of `for-in` type inference
* **Author:** [FMorschel](https://github.com/FMorschel)
* A `for-in` loop variable is incorrectly inferred as `dynamic` when iterating directly over a null-coalesced nullable list (`list ?? []`), which is inconsistent with the correct type inference that occurs when the same expression is used in a variable declaration.


# GitHub PR Report for dart-lang/native
## From 2025-12-11

During this period, no pull requests were merged and no issues were closed, resulting in no changes to the repository's codebase or features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/ai
## From 2025-12-11

During this period, there were no pull requests merged and no issues closed, resulting in no changes to the repository's codebase, features, or public API.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-12-11

There were no notable changes to the repository during this period, as no pull requests were merged and no issues were closed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-12-11

This period saw significant improvements to the developer experience and the rendering layer. A major highlight is the introduction of the new `flutter_analyzer_plugin` package ([PR #175679](https://github.com/flutter/flutter/pull/175679)), which integrates custom framework lints directly into the IDE for earlier feedback. On the API surface, a feature to allow named offsets in `FragmentShader.getUniformFloat` was proposed ([Issue #177185](https://github.com/flutter/flutter/issues/177185)), and plans are in place to deprecate the `onPlatformMessage` method ([Issue #179699](https://github.com/flutter/flutter/issues/179699)). For rendering, a notable fix in [PR #179312](https://github.com/flutter/flutter/pull/179312) resolves a visual artifact with translucent arcs that have overlapping stroke caps, an issue which was detailed in [Issue #178746](https://github.com/flutter/flutter/issues/178746). Additionally, developer setup was enhanced with better support for fresh Windows build environments ([PR #179720](https://github.com/flutter/flutter/pull/179720)), and an internal change disabled Skia's legacy image decoders in favor of explicit codec management ([PR #179277](https://github.com/flutter/flutter/pull/179277)).

## Merged Pull Requests

### [PR #179750](https://github.com/flutter/flutter/pull/179750): Add 3.38.5 changelog
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2025-12-11 12:45 PM
* **Comments:** 1
* This PR adds a changelog entry for the Flutter 3.38.5 hotfix release, which updates the Dart SDK to version 3.10.4.

### [PR #179744](https://github.com/flutter/flutter/pull/179744): chore: linux fuchsia tests are flaking
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* **Merged At:** 2025-12-11 09:54 AM
* **Comments:** 1
* This PR marks the `linux_fuchsia_tests` as flaky by adding the `bringup: true` flag to the CI configuration, preventing failures in this test from blocking the build.

### [PR #179743](https://github.com/flutter/flutter/pull/179743): Bump engine version for 3.38.5
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2025-12-11 08:50 AM
* **Comments:** 2
* This PR updates the engine commit hash in preparation for the 3.38.5 release.

### [PR #179720](https://github.com/flutter/flutter/pull/179720): fix: fresh install of windows support
* **Author:** [jtmcdole](https://github.com/jtmcdole)
* **Merged At:** 2025-12-11 11:58 AM
* **Comments:** 2
* This PR improves support for fresh Windows build environments by adding compatibility for Visual Studio 2026, updating a script for Python 3.14+ by replacing the deprecated `pipes` module with `shlex`, and adjusting a PowerShell call to bypass execution policies.

### [PR #179701](https://github.com/flutter/flutter/pull/179701): Update flutter 3.38 to use dart 3.10.4 
* **Author:** [reidbaker](https://github.com/reidbaker)
* **Merged At:** 2025-12-11 07:04 AM
* **Comments:** 1
* This pull request updates the Dart SDK dependency to version 3.10.4.

### [PR #179698](https://github.com/flutter/flutter/pull/179698): Revert "Android implementation of content sizing"
* **Author:** [mboetger](https://github.com/mboetger)
* **Merged At:** 2025-12-11 09:09 AM
* **Comments:** 1
* This PR reverts the Android implementation of content sizing to fix a regression that was introduced by the original change.

### 🔥 [PR #179312](https://github.com/flutter/flutter/pull/179312): Use kPreventOverdraw for arcs with overlapping stroke caps
* **Author:** [b-luk](https://github.com/b-luk)
* **Merged At:** 2025-12-10 05:49 PM
* **Comments:** 6
* Fixes a rendering artifact for arcs with thick, translucent strokes by detecting when the start and end caps overlap. This change enables the `kPreventOverdraw` rendering mode in these cases to ensure uniform color blending.

### [PR #179277](https://github.com/flutter/flutter/pull/179277): [skia] Disable legacy image decoders
* **Author:** [kjlubick](https://github.com/kjlubick)
* **Merged At:** 2025-12-11 06:53 AM
* **Comments:** 1
* Disables Skia's legacy image decoder registration, moving Flutter to explicitly register and manage its own image codecs instead of relying on Skia's automatic detection.

### [PR #175679](https://github.com/flutter/flutter/pull/175679): [ Analysis ] Added initial implementation of the `flutter_analyzer_plugin`
* **Author:** [bkonyi](https://github.com/bkonyi)
* **Merged At:** 2025-12-11 10:56 AM
* **Comments:** 3
* This PR introduces the `flutter_analyzer_plugin`, a new package that moves custom lint rules from a CI script into the analyzer to provide developers with earlier feedback on framework-specific violations directly in their IDEs.


## Closed Issues

### [Issue #179761](https://github.com/flutter/flutter/issues/179761): mac-37 lost external connection phone device errors.
* **Author:** [kentnguyen99](https://github.com/kentnguyen99)
* The host mac-37 has lost its external connection, causing errors with connected phone devices.

### [Issue #179700](https://github.com/flutter/flutter/issues/179700): Update dart on stable to 3.10.4
* **Author:** [reidbaker](https://github.com/reidbaker)
* This issue requests an update of the Dart SDK on the stable channel to version 3.10.4 for inclusion in the Flutter 3.38.5 release.

### [Issue #179699](https://github.com/flutter/flutter/issues/179699): Deprecate onPlatformMessage once the framework is moved over
* **Author:** [GSM2017PMK-OSV](https://github.com/GSM2017PMK-OSV)
* This issue proposes deprecating the `onPlatformMessage` method in `platform_dispatcher.dart` once the framework has completed its migration away from using it.

### [Issue #179667](https://github.com/flutter/flutter/issues/179667): [Google3 Bug]: Platform View stops rendering in Video_Player package
* **Author:** [bharathmg-google](https://github.com/bharathmg-google)
* When using `PlatformView` with the `video_player` package, the UI stalls and becomes unresponsive after a user plays a video to completion, navigates back, and then attempts to play the video again, with logs showing "Flutter engine view not set" errors.

### [Issue #179471](https://github.com/flutter/flutter/issues/179471): Flutter's Macos Target bug: No such module 'FlutterMacOS' in VSCode
* **Author:** [Ninjalope](https://github.com/Ninjalope)
* On macOS, VSCode incorrectly reports a "No such module 'FlutterMacOS'" error for new projects, even though the application builds and runs successfully.

### [Issue #179229](https://github.com/flutter/flutter/issues/179229): Iframes not loading when running `flutter run` on Flutter WASM
* **Author:** [rodrigo-itao](https://github.com/rodrigo-itao)
* When using `flutter run` with Flutter WASM, SkWasm is incorrectly sending COEP/COOP headers, which prevents iframes from loading.

### [Issue #178746](https://github.com/flutter/flutter/issues/178746): [Impeller] Fast arc stroke generator can overdraw when caps intersect
* **Author:** [b-luk](https://github.com/b-luk)
* The fast arc stroke tessellation in Impeller can create overlapping geometry when an arc's stroke caps intersect, causing incorrect color compositing when a transparent color is used.

### [Issue #178621](https://github.com/flutter/flutter/issues/178621): [Flutter SDK 3.35.7][iOS] dart::MarkingVisitor::VisitPointers(dart::ObjectPtr*, dart::ObjectPtr*) (in Flutter) (marker.cc:384)
* **Author:** [littleGnAl](https://github.com/littleGnAl)
* An `EXC_BAD_ACCESS` crash is being reported on iOS with Flutter SDK 3.35.7 via APM, with the stack trace pointing to a memory failure in the Dart garbage collector's concurrent marking phase within the `MarkingVisitor::VisitPointers` function.

### [Issue #178425](https://github.com/flutter/flutter/issues/178425): Implement authorization for re-run for users in flutter-hackers group
* **Author:** [ievdokdm](https://github.com/ievdokdm)

### [Issue #177627](https://github.com/flutter/flutter/issues/177627): Implement GitHub sign in flow with Google account link/unlink
* **Author:** [ievdokdm](https://github.com/ievdokdm)
* This issue proposes implementing a GitHub sign-in flow via an OAuth provider, which will allow users in the 'flutter-hackers' group to link and unlink their Google accounts.

### [Issue #177185](https://github.com/flutter/flutter/issues/177185): Expand `FragmentShader.getUniformFloat` to accept glsl named offsets
* **Author:** [gaaclarke](https://github.com/gaaclarke)
* This is a feature request to expand the `FragmentShader.getUniformFloat` method to accept GLSL-style named offsets (e.g., 'uniform.y') as an alternative to specifying a numeric index.


# GitHub PR Report for flutter/genui
## From 2025-12-11

This period saw a focus on UI refinement and internal improvements. A key bug fix addressed an issue where text on primary buttons had insufficient contrast against dark backgrounds ([#565](https://github.com/flutter/genui/issues/565)). This was resolved in pull request [#584](https://github.com/flutter/genui/pull/584) by updating the text catalog to correctly inherit its style from the ambient `DefaultTextStyle`. Other enhancements include reorganizing the `GenUIConversation` class into a dedicated `facade` directory to better reflect its role ([#598](https://github.com/flutter/genui/pull/598)) and adding a new smoke test to the `simple_chat` example to ensure correct app initialization ([#596](https://github.com/flutter/genui/pull/596)).

## Merged Pull Requests

### [PR #598](https://github.com/flutter/genui/pull/598): Reorganize code and update diagram.
* **Author:** [polina-c](https://github.com/polina-c)
* **Merged At:** 2025-12-10 04:51 PM
* **Comments:** 0
* This PR moves the `GenUIConversation` class into a dedicated `facade` directory to better reflect its role and updates the project's dependency diagram in the README.

### [PR #596](https://github.com/flutter/genui/pull/596): Add smoke testWidgets to simple_chat.
* **Author:** [polina-c](https://github.com/polina-c)
* **Merged At:** 2025-12-11 11:59 AM
* **Comments:** 0
* This PR adds a smoke test to the `simple_chat` example to ensure the app initializes correctly and refactors the API key retrieval logic to allow a dummy key to be provided for testing purposes.

### [PR #584](https://github.com/flutter/genui/pull/584): fix(genui): Fix text contrast in primary buttons by having text catalog item fallback to DefaultTextStyle
* **Author:** [andrewkolos](https://github.com/andrewkolos)
* **Merged At:** 2025-12-11 03:37 PM
* **Comments:** 0
* This PR fixes a text contrast issue in primary buttons by changing the `text` catalog item's default style to inherit from the ambient `DefaultTextStyle`. Previously, it defaulted to `textTheme.bodyMedium`, which overrode styles from parent widgets like `ElevatedButton` and resulted in incorrect text colors.


## Closed Issues

### [Issue #565](https://github.com/flutter/genui/issues/565): Text on primary buttons in core catalog should contrast with dark background
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* The text on the new primary buttons in the core catalog has insufficient contrast against the dark background and should be styled to be white for improved readability.

### [Issue #534](https://github.com/flutter/genui/issues/534): Verdure does not fully run on Desktop, iOS or Android
* **Author:** [jacobsimionato](https://github.com/jacobsimionato)
* The Verdure example fails to build on iOS and Android due to configuration file errors and is non-functional on macOS because of an unimplemented photo picker.

### [Issue #447](https://github.com/flutter/genui/issues/447): Update genui to better serve ebb.
* **Author:** [polina-c](https://github.com/polina-c)
* This ongoing issue is used to track miscellaneous pull requests for updating the `genui` component to better serve `ebb`.


# GitHub PR Report for flutter/packages
## From 2025-12-11

This period saw a significant update to the `in_app_purchase_storekit` package, driven by a highly-discussed pull request ([#10439](https://github.com/flutter/packages/pull/10439)). This change enhances the public API by introducing a new `SK2Transaction.unfinishedTransactions()` method, which provides a more performant way to query only for unfinished transactions. Additionally, the `appAccountToken` is now exposed on `SK2PurchaseDetails`, simplifying the process of user identification for backend server validation.

## Merged Pull Requests

### 🔥🔥🔥 [PR #10439](https://github.com/flutter/packages/pull/10439): [in_app_purchase_storekit] Add Transaction.unfinished API and expose appAccountToken
* **Author:** [Haidar0096](https://github.com/Haidar0096)
* **Merged At:** 2025-12-11 02:44 PM
* **Comments:** 15
* This PR adds an `SK2Transaction.unfinishedTransactions()` method to the `in_app_purchase_storekit` package to query only unfinished transactions for better performance, and also exposes the `appAccountToken` on `SK2PurchaseDetails` for easier backend user identification.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-12-11

This period saw a minor maintenance update focused on improving the repository's examples. The primary change involved a fix to the `ios_content_resizing` example, which removed unintentionally committed project files and corrected the bash commands in its README ([PR #2759](https://github.com/flutter/samples/pull/2759)). No issues were closed, and there were no changes to the public API surface.

## Merged Pull Requests

### [PR #2759](https://github.com/flutter/samples/pull/2759): Fix content resizing example
* **Author:** [LouiseHsu](https://github.com/LouiseHsu)
* **Merged At:** 2025-12-11 11:44 AM
* **Comments:** 0
* Removes accidentally committed project files from the `ios_content_resizing` example and corrects the bash commands in its README.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-12-11

This period's updates centered on a significant dependency upgrade. In pull request [#12806](https://github.com/flutter/website/pull/12806), the Jaspr web framework was updated to v0.22.0. This change required a corresponding migration of the codebase to Jaspr's new APIs, which included refactoring the application into separate client and server entry points and updating component syntax throughout the project to accommodate breaking changes in the new release.

## Merged Pull Requests

### [PR #12806](https://github.com/flutter/website/pull/12806): Upgrade Jaspr to latest release
* **Author:** [schultek](https://github.com/schultek)
* **Merged At:** 2025-12-11 02:02 AM
* **Comments:** 2
* This PR upgrades the Jaspr web framework to v0.22.0 and migrates the codebase to its new APIs. This change refactors the application into separate client and server entry points and updates component syntax across the project to align with breaking changes in the new release.


## Closed Issues

No issues were closed during this time.



## Top Hacker News Stories

### 57  [SQLite JSON at Full Index Speed Using Generated Columns](https://www.dbpro.app/blog/sqlite-json-virtual-columns-indexing)
* **Author:** [upmostly](https://news.ycombinator.com/user?id=upmostly) | **Comments:** [15](https://news.ycombinator.com/item?id=46243904)

### 240 🔥 [4 billion if statements (2023)](https://andreasjhkarlsson.github.io//jekyll/update/2023/12/27/4-billion-if-statements.html)
* **Author:** [damethos](https://news.ycombinator.com/user?id=damethos) | **Comments:** [83](https://news.ycombinator.com/item?id=46174114)

### 42  [From text to token: How tokenization pipelines work](https://www.paradedb.com/blog/when-tokenization-becomes-token)
* **Author:** [philippemnoel](https://news.ycombinator.com/user?id=philippemnoel) | **Comments:** [2](https://news.ycombinator.com/item?id=46232003)

### 22  [Fedora: Open-source repository for long-term digital preservation](https://fedorarepository.org/)
* **Author:** [cernocky](https://news.ycombinator.com/user?id=cernocky) | **Comments:** [14](https://news.ycombinator.com/item?id=46243883)

### 165 🔥 [The tiniest yet real telescope I've built](https://lucassifoni.info/blog/miniscope-tiny-telescope/)
* **Author:** [chantepierre](https://news.ycombinator.com/user?id=chantepierre) | **Comments:** [41](https://news.ycombinator.com/item?id=46241763)

### 239 🔥 [Koralm Railway](https://infrastruktur.oebb.at/en/projects-for-austria/railway-lines/southern-line-vienna-villach/koralm-railway)
* **Author:** [fzeindl](https://news.ycombinator.com/user?id=fzeindl) | **Comments:** [108](https://news.ycombinator.com/item?id=46242871)

### 147 🔥 [The Tor Project is switching to Rust](https://itsfoss.com/news/tor-rust-rewrite-progress/)
* **Author:** [giuliomagnifico](https://news.ycombinator.com/user?id=giuliomagnifico) | **Comments:** [85](https://news.ycombinator.com/item?id=46243543)

### 1082 🔥🔥🔥 [GPT-5.2](https://openai.com/index/introducing-gpt-5-2/)
* **Author:** [atgctg](https://news.ycombinator.com/user?id=atgctg) | **Comments:** [944](https://news.ycombinator.com/item?id=46234788)
* This post provides links to OpenAI's documentation and system card for their latest model, which details its capabilities and safety evaluations.

### 4  [BpfJailer: eBPF Mandatory Access Control [pdf]](https://lpc.events/event/19/contributions/2159/attachments/1833/3929/BpfJailer%20LPC%202025.pdf)
* **Author:** [voxadam](https://news.ycombinator.com/user?id=voxadam) | **Comments:** [0](https://news.ycombinator.com/item?id=46244378)

### 387 🔥🔥 [Nokia N900 Necromancy](https://yaky.dev/2025-12-11-nokia-n900-necromancy/)
* **Author:** [yaky](https://news.ycombinator.com/user?id=yaky) | **Comments:** [143](https://news.ycombinator.com/item?id=46239177)

### 23  [Show HN: Tripwire: A new anti evil maid defense](https://github.com/fr33-sh/Tripwire)
* **Author:** [DoctorFreeman](https://news.ycombinator.com/user?id=DoctorFreeman) | **Comments:** [14](https://news.ycombinator.com/item?id=46229437)
* This post introduces Tripwire, a robust anti-evil-maid solution that serves as a successor to the now-dormant [Haven](https://github.com/guardianproject/haven) project. The linked GitHub repository and podcast provide a detailed overview of the concept and setup process.

### 81  [Guarding My Git Forge Against AI Scrapers](https://vulpinecitrus.info/blog/guarding-git-forge-ai-scrapers/)
* **Author:** [todsacerdoti](https://news.ycombinator.com/user?id=todsacerdoti) | **Comments:** [49](https://news.ycombinator.com/item?id=46241849)

### 265 🔥🔥 [Google de-indexed Bear Blog and I don't know why](https://journal.james-zhan.com/google-de-indexed-my-entire-bear-blog-and-i-dont-know-why/)
* **Author:** [nafnlj](https://news.ycombinator.com/user?id=nafnlj) | **Comments:** [110](https://news.ycombinator.com/item?id=46239752)

### 16  [Show HN: Autofix Bot – Hybrid static analysis and AI code review agent]()
* **Author:** [sanketsaurav](https://news.ycombinator.com/user?id=sanketsaurav) | **Comments:** [3](https://news.ycombinator.com/item?id=46237358)
* DeepSource has launched **Autofix Bot**, a hybrid tool that addresses the code review bottleneck created by AI coding agents. It combines deterministic static analysis with a frontier AI agent to more accurately find and fix code quality and security issues than LLM-only or static-only tools.

### 213 🔥 [CRISPR fungus: Protein-packed, sustainable, and tastes like meat](https://www.isaaa.org/kc/cropbiotechupdate/article/default.asp?ID=21607)
* **Author:** [rguiscard](https://news.ycombinator.com/user?id=rguiscard) | **Comments:** [131](https://news.ycombinator.com/item?id=46239629)

### 163 🔥 [He set out to walk around the world. After 27 years, his quest is nearly over](https://www.washingtonpost.com/lifestyle/2025/12/05/karl-bushby-walk-around-world/)
* **Author:** [wallflower](https://news.ycombinator.com/user?id=wallflower) | **Comments:** [126](https://news.ycombinator.com/item?id=46182874)

### 30  [Octo: A Chip8 IDE](https://github.com/JohnEarnest/Octo)
* **Author:** [tosh](https://news.ycombinator.com/user?id=tosh) | **Comments:** [2](https://news.ycombinator.com/item?id=46172439)

### 11  [Use Python for Scripting](https://hypirion.com/musings/use-python-for-scripting)
* **Author:** [birdculture](https://news.ycombinator.com/user?id=birdculture) | **Comments:** [10](https://news.ycombinator.com/item?id=46189962)

### 338 🔥🔥 [Rivian Unveils Custom Silicon, R2 Lidar Roadmap, and Universal Hands Free](https://riviantrackr.com/news/rivian-unveils-custom-silicon-r2-lidar-roadmap-universal-hands-free-and-its-next-gen-autonomy-platform/)
* **Author:** [doctoboggan](https://news.ycombinator.com/user?id=doctoboggan) | **Comments:** [466](https://news.ycombinator.com/item?id=46234920)

### 19  [Training LLMs for Honesty via Confessions](https://arxiv.org/abs/2512.08093)
* **Author:** [arabello](https://news.ycombinator.com/user?id=arabello) | **Comments:** [6](https://news.ycombinator.com/item?id=46242795)

### 590 🔥🔥 [The highest quality codebase](https://gricha.dev/blog/the-highest-quality-codebase)
* **Author:** [Gricha](https://news.ycombinator.com/user?id=Gricha) | **Comments:** [366](https://news.ycombinator.com/item?id=46197930)

### 19  [What folk can do](https://folk.computer/guides/what-folk-can-do)
* **Author:** [luu](https://news.ycombinator.com/user?id=luu) | **Comments:** [11](https://news.ycombinator.com/item?id=46186990)

### 307 🔥🔥 [Denial of service and source code exposure in React Server Components](https://react.dev/blog/2025/12/11/denial-of-service-and-source-code-exposure-in-react-server-components)
* **Author:** [sangeeth96](https://news.ycombinator.com/user?id=sangeeth96) | **Comments:** [193](https://news.ycombinator.com/item?id=46236924)
* This text provides links to a Cloudflare threat brief on "React2shell" RSC vulnerabilities and a related security update from Next.js.

### 29  [Why isn't online age verification just like showing your ID in person?](https://www.eff.org/deeplinks/2025/12/why-isnt-online-age-verification-just-showing-your-id-person)
* **Author:** [hn_acker](https://news.ycombinator.com/user?id=hn_acker) | **Comments:** [12](https://news.ycombinator.com/item?id=46243848)

### 346 🔥🔥 [Programmers and software developers lost the plot on naming their tools](https://larr.net/p/namings.html)
* **Author:** [todsacerdoti](https://news.ycombinator.com/user?id=todsacerdoti) | **Comments:** [450](https://news.ycombinator.com/item?id=46234806)



