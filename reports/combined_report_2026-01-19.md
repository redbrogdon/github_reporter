# Overall Summary
**🔥🔥🔥 [PR #1898](https://github.com/dart-lang/native/pull/1898) (dart-lang/native): [objective_c] Rename `NSString.toString()` to `.toDartString()`**
  * **Comments:** 2
  * This PR renames the `NSString.toString()` method to `toDartString()` for explicit conversion of Objective-C strings to Dart strings, making it an extension method and removing the `toString` override; this is a breaking change.

**🔥🔥 [Issue #1819](https://github.com/dart-lang/native/issues/1819) (dart-lang/native): `toString` is a dangerous name for the `NSString`->`String` conversion method**
  * The `toString` method used for `NSString` to Dart `String` conversion is problematic as it can lead to subtle runtime bugs, and a more explicit name like `toDartString` would prevent these mistakes by failing at compile-time instead.

**🔥🔥 [Issue #145472](https://github.com/flutter/flutter/issues/145472) (flutter/flutter): Gradle Cache continually growing every build apk run in release mode**
  * The Gradle build cache continually grows with each `flutter build apk --release` execution, leading to increased build times and preventing effective caching in CI environments, a behavior not seen in debug mode or native Android projects.

**🔥 [PR #161785](https://github.com/flutter/flutter/pull/161785) (flutter/flutter): Update documentation on what display information is provided.**
  * **Comments:** 0
  * Updates the documentation for `PlatformDispatcher.displays` to clarify that on Linux desktops, display size and device pixel ratio values are now valid, unlike other desktop platforms where these values might still be invalid.

**🔥 [Issue #161729](https://github.com/flutter/flutter/issues/161729) (flutter/flutter): `DropdownMenu.initialSelection` not reflecting `label` change**
  * The `DropdownMenu` does not update the displayed label for its `initialSelection` when the `label` of the corresponding `DropdownMenuEntry` is dynamically changed, leading to the dropdown not reflecting the updated text.


# GitHub PR Report for dart-lang/ai
## From 2025-01-19

During this period, no pull requests were merged and no issues were closed, indicating that there were no significant changes or updates to the repository's codebase or outstanding issues.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/sdk
## From 2025-01-19

No pull requests were merged, and no issues were closed during this period, indicating no functional changes or bug fixes were introduced to the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/language
## From 2025-01-19

There were no pull requests merged or issues closed in the repository during this period, indicating no recent changes to the codebase or resolution of open items.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for dart-lang/native
## From 2025-01-19

The recent updates to the repository primarily focus on refining the public API for Objective-C string conversions to Dart, addressing a key concern regarding naming clarity and potential runtime issues. A significant breaking change was introduced by renaming the `NSString.toString()` method to `toDartString()` ([PR #1898](https://github.com/dart-lang/native/pull/1898)). This change, which also establishes `toDartString()` as an explicit extension method, was driven by feedback in [Issue #1819](https://github.com/dart-lang/native/issues/1819) that highlighted the original `toString` name was problematic and could lead to subtle runtime bugs. The new, more explicit `toDartString()` name now ensures clearer conversion semantics and prevents potential mistakes by failing at compile-time instead.

## Merged Pull Requests

### [PR #1898](https://github.com/dart-lang/native/pull/1898): [objective_c] Rename `NSString.toString()` to `.toDartString()`
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-01-19 01:45 PM
* **Comments:** 2
* This PR renames the `NSString.toString()` method to `toDartString()` for explicit conversion of Objective-C strings to Dart strings, making it an extension method and removing the `toString` override; this is a breaking change.


## Closed Issues

### [Issue #1819](https://github.com/dart-lang/native/issues/1819): `toString` is a dangerous name for the `NSString`->`String` conversion method
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* The `toString` method used for `NSString` to Dart `String` conversion is problematic as it can lead to subtle runtime bugs, and a more explicit name like `toDartString` would prevent these mistakes by failing at compile-time instead.


# GitHub PR Report for flutter/ai
## From 2025-01-19

There were no pull requests merged or issues closed in the repository during this period, indicating no recent changes to the codebase, API surface, or language features.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/codelabs
## From 2025-01-19

There were no pull requests merged or issues closed during this period, indicating no changes were made to the repository's codebase or public API surface at this time.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/flutter
## From 2025-01-19

Recent changes to the repository include a clarification regarding the public API surface, specifically updating documentation for `PlatformDispatcher.displays` to confirm that display size and device pixel ratio values are now valid and provided on Linux desktops, an improvement documented in [PR #161785](https://github.com/flutter/flutter/pull/161785). Several issues were also addressed or reported, including a bug where `DropdownMenu.initialSelection` failed to reflect dynamic changes to its associated `DropdownMenuEntry`'s label ([Issue #161729](https://github.com/flutter/flutter/issues/161729)), impacting the visual consistency of the dropdown menu widget. Furthermore, a significant build system issue involving the Gradle cache continually growing with each `flutter build apk --release` execution, leading to increased build times and CI/CD inefficiencies, was reported ([Issue #145472](https://github.com/flutter/flutter/issues/145472)). Other notable concerns included a report of two-finger scrolling not functioning on Windows desktop applications ([Issue #161884](https://github.com/flutter/flutter/issues/161884)) and general errors encountered during the `flutter build apk` command ([Issue #161868](https://github.com/flutter/flutter/issues/161868)).

## Merged Pull Requests

### [PR #161785](https://github.com/flutter/flutter/pull/161785): Update documentation on what display information is provided.
* **Author:** [robert-ancell](https://github.com/robert-ancell)
* **Merged At:** 2025-01-19 03:57 PM
* **Comments:** 0
* Updates the documentation for `PlatformDispatcher.displays` to clarify that on Linux desktops, display size and device pixel ratio values are now valid, unlike other desktop platforms where these values might still be invalid.


## Closed Issues

### [Issue #161884](https://github.com/flutter/flutter/issues/161884): Flutter desktop not allowing me to scroll with two fingers instead of by clicking and dragging on Windows
* **Author:** [iamngoni](https://github.com/iamngoni)
* On Windows, a user reports that two-finger scrolling with a touchpad does not work within their Flutter desktop application, although click-and-drag scrolling functions correctly, and this behavior is isolated to their app.

### [Issue #161868](https://github.com/flutter/flutter/issues/161868): flutter packages Android apk
* **Author:** [nuaajiangteng](https://github.com/nuaajiangteng)
* The user is reporting an error encountered when running the `flutter build apk` command to create an Android APK, with the specific error details provided in an attached image.

### [Issue #161729](https://github.com/flutter/flutter/issues/161729): `DropdownMenu.initialSelection` not reflecting `label` change
* **Author:** [ahmedrasar](https://github.com/ahmedrasar)
* The `DropdownMenu` does not update the displayed label for its `initialSelection` when the `label` of the corresponding `DropdownMenuEntry` is dynamically changed, leading to the dropdown not reflecting the updated text.

### [Issue #145472](https://github.com/flutter/flutter/issues/145472): Gradle Cache  continually growing every build apk run in release mode 
* **Author:** [agacemi](https://github.com/agacemi)
* The Gradle build cache continually grows with each `flutter build apk --release` execution, leading to increased build times and preventing effective caching in CI environments, a behavior not seen in debug mode or native Android projects.


# GitHub PR Report for flutter/genui
## From 2025-01-19

During this period, no pull requests were merged and no issues were closed, indicating that there were no changes introduced or problems resolved within the repository.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/packages
## From 2025-01-19

There were no pull requests merged or issues closed during this period, indicating no changes were introduced to the repository's codebase or tracked issues.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/samples
## From 2025-01-19

No pull requests were merged and no issues were closed during this period, indicating that there were no direct changes to the repository's codebase or outstanding issues addressed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.


# GitHub PR Report for flutter/website
## From 2025-01-19

There were no pull requests merged or issues closed during this period, indicating no changes were made to the repository's codebase or outstanding issues addressed.

## Merged Pull Requests

No pull requests were merged during this time.


## Closed Issues

No issues were closed during this time.



## Top Hacker News Stories

### 592 🔥🔥 [GPTZero finds 100 new hallucinations in NeurIPS 2025 accepted papers](https://gptzero.me/news/neurips/)
* **Author:** [segmenta](https://news.ycombinator.com/user?id=segmenta) | **Comments:** [303](https://news.ycombinator.com/item?id=46720395)

### 420 🔥🔥 [Show HN: isometric.nyc – giant isometric pixel art map of NYC](https://cannoneyed.com/isometric-nyc/)
* **Author:** [cannoneyed](https://news.ycombinator.com/user?id=cannoneyed) | **Comments:** [121](https://news.ycombinator.com/item?id=46721802)
* The author presents isometric.nyc, a massive isometric pixel art map of NYC built using nano banana and coding agents, notably without writing any code. Despite being a "no-code" project, it required significant manual engineering effort, a process detailed in a linked deep dive on AI coding and creativity.

### 384 🔥🔥 [Qwen3-TTS family is now open sourced: Voice design, clone, and generation](https://qwen.ai/blog?id=qwen3tts-0115)
* **Author:** [Palmik](https://news.ycombinator.com/user?id=Palmik) | **Comments:** [113](https://news.ycombinator.com/item?id=46719229)

### 36  [Compiling Scheme to WebAssembly](https://eli.thegreenplace.net/2026/compiling-scheme-to-webassembly/)
* **Author:** [chmaynard](https://news.ycombinator.com/user?id=chmaynard) | **Comments:** [6](https://news.ycombinator.com/item?id=46663200)

### 103 🔥 [CSS Optical Illusions](https://alvaromontoro.com/blog/68091/css-optical-illusions)
* **Author:** [ulrischa](https://news.ycombinator.com/user?id=ulrischa) | **Comments:** [10](https://news.ycombinator.com/item?id=46722570)

### 38  ['Active' sitting is better for brain health: review of studies](https://www.sciencealert.com/not-all-sitting-is-equal-one-type-was-just-linked-to-better-brain-health)
* **Author:** [mikhael](https://news.ycombinator.com/user?id=mikhael) | **Comments:** [14](https://news.ycombinator.com/item?id=46723694)

### 65  [Recent discoveries on the acquisition of the highest levels of human performance](https://www.science.org/doi/abs/10.1126/science.adt7790)
* **Author:** [colincooke](https://news.ycombinator.com/user?id=colincooke) | **Comments:** [27](https://news.ycombinator.com/item?id=46722853)

### 20  [Show HN: First Claude Code client for Ollama local models](https://github.com/21st-dev/1code)
* **Author:** [SerafimKorablev](https://news.ycombinator.com/user?id=SerafimKorablev) | **Comments:** [8](https://news.ycombinator.com/item?id=46722285)
* This project demonstrates a successful integration of local Ollama models into a Claude Code-style workflow, automatically switching to local inference when internet access is unavailable. The system effectively leverages Ollama's Anthropic-compatible API, with qwen3-coder:30b currently being the best-performing model for this local setup.

### 183 🔥 [Tree-sitter vs. Language Servers](https://lambdaland.org/posts/2026-01-21_tree-sitter_vs_lsp/)
* **Author:** [ashton314](https://news.ycombinator.com/user?id=ashton314) | **Comments:** [51](https://news.ycombinator.com/item?id=46719899)

### 28  [Launch HN: Constellation Space (YC W26) – AI for satellite mission assurance]()
* **Author:** [kmajid](https://news.ycombinator.com/user?id=kmajid) | **Comments:** [6](https://news.ycombinator.com/item?id=46721933)
* Constellation Space developed an AI system that predicts satellite link failures 3-5 minutes before they occur with over 90% accuracy, leveraging real-time telemetry, physics-based models, and federated machine learning. This solution helps prevent data loss in satellite operations by enabling proactive traffic rerouting and is deployable across various cloud and on-premise environments.

### 19  [My first year in sales as technical founder](https://www.fabiandietrich.com/blog/first-year-in-sales.html)
* **Author:** [f3b5](https://news.ycombinator.com/user?id=f3b5) | **Comments:** [3](https://news.ycombinator.com/item?id=46661167)

### 34  [Reverse engineering Lyft Bikes for fun (and profit?)](https://ilanbigio.com/blog/lyft-bikes.html)
* **Author:** [ibigio](https://news.ycombinator.com/user?id=ibigio) | **Comments:** [7](https://news.ycombinator.com/item?id=46721703)

### 106 🔥 [Your app subscription is now my weekend project](https://rselbach.com/your-sub-is-now-my-weekend-project)
* **Author:** [robteix](https://news.ycombinator.com/user?id=robteix) | **Comments:** [104](https://news.ycombinator.com/item?id=46672713)

### 162 🔥 [Why does SSH send 100 packets per keystroke?](https://eieio.games/blog/ssh-sends-100-packets-per-keystroke/)
* **Author:** [eieio](https://news.ycombinator.com/user?id=eieio) | **Comments:** [117](https://news.ycombinator.com/item?id=46723990)

### 56  [Keeping 20k GPUs healthy](https://modal.com/blog/gpu-health)
* **Author:** [jxmorris12](https://news.ycombinator.com/user?id=jxmorris12) | **Comments:** [20](https://news.ycombinator.com/item?id=46669001)

### 1  [AnswerThis (YC F25) Is Hiring](https://www.ycombinator.com/companies/answerthis/jobs/r5VHmSC-ai-agent-orchestration)
* **Author:** [ayush4921](https://news.ycombinator.com/user?id=ayush4921) | **Comments:** [null](https://news.ycombinator.com/item?id=46721897)

### 45  [Mote: An Interactive Ecosystem Simulation [video]](https://www.youtube.com/watch?v=Hju0H3NHxVI)
* **Author:** [evakhoury](https://news.ycombinator.com/user?id=evakhoury) | **Comments:** [5](https://news.ycombinator.com/item?id=46712547)
* This text provides a link to a TikTok video from the Recurse Center.

### 17  [Vulnerable WhisperPair Devices – Hijack Bluetooth Accessories Using Fast Pair](https://whisperpair.eu/vulnerable-devices)
* **Author:** [gnabgib](https://news.ycombinator.com/user?id=gnabgib) | **Comments:** [4](https://news.ycombinator.com/item?id=46663225)

### 62  [A Year of 3D Printing](https://brookehatton.com/blog/making/a-year-of-3d-printing/)
* **Author:** [nindalf](https://news.ycombinator.com/user?id=nindalf) | **Comments:** [65](https://news.ycombinator.com/item?id=46662001)

### 256 🔥🔥 [Design Thinking Books (2024)](https://www.designorate.com/design-thinking-books/)
* **Author:** [rrm1977](https://news.ycombinator.com/user?id=rrm1977) | **Comments:** [118](https://news.ycombinator.com/item?id=46718061)

### 238 🔥 [I was banned from Claude for scaffolding a Claude.md file?](https://hugodaniel.com/posts/claude-code-banned-me/)
* **Author:** [hugodan](https://news.ycombinator.com/user?id=hugodan) | **Comments:** [186](https://news.ycombinator.com/item?id=46723384)

### 3  [Brex is joining forces with Capital One](https://www.brex.com/journal/brex-and-capital-one-join-forces)
* **Author:** [ChrisArchitect](https://news.ycombinator.com/user?id=ChrisArchitect) | **Comments:** [1](https://news.ycombinator.com/item?id=46725552)

### 254 🔥🔥 [It looks like the status/need-triage label was removed](https://github.com/google-gemini/gemini-cli/issues/16728)
* **Author:** [nickswalker](https://news.ycombinator.com/user?id=nickswalker) | **Comments:** [64](https://news.ycombinator.com/item?id=46721179)

### 19  [Show HN: CLI for working with Apple Core ML models](https://github.com/schappim/coreml-cli)
* **Author:** [schappim](https://news.ycombinator.com/user?id=schappim) | **Comments:** [0](https://news.ycombinator.com/item?id=46724565)

### 3  [Viking Ship Museum in Denmark announces the discovery of the largest cog](https://www.medievalists.net/2025/12/medieval-ship-discovered-copenhagen/)
* **Author:** [PaulHoule](https://news.ycombinator.com/user?id=PaulHoule) | **Comments:** [0](https://news.ycombinator.com/item?id=46725522)



