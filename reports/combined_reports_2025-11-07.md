# GitHub PR Report for dart-lang/ai
## From 2025-11-06

No pull requests were merged during this time.



# GitHub PR Report for dart-lang/language
## From 2025-11-06

No pull requests were merged during this time.



# GitHub PR Report for dart-lang/native
## From 2025-11-06

## Merged Pull Requests

### [PR #2755](https://github.com/dart-lang/native/pull/2755): [jni] minor lint fixes
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2025-11-06
* **Comments:** 2

### [PR #2753](https://github.com/dart-lang/native/pull/2753): [hooks] clean up unnecessary ignores
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2025-11-06
* **Comments:** 2
*   **Summary:** This PR removes unnecessary `ignore_for_file` comments from files in the `hooks` and `hooks_runner` packages as part of a lint-related code cleanup.

### [PR #2750](https://github.com/dart-lang/native/pull/2750): [ffigen] auto-ignore unused imports in bindings
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2025-11-06
* **Comments:** 3
*   **Summary:** In `ffigen`, generated files now automatically include an `unused_import` lint ignore to work around an issue where unused `dart:ffi` imports could be produced, triggering analysis warnings.

### [PR #2749](https://github.com/dart-lang/native/pull/2749): [ffigen] Prepare to publish ffigen 20 and objective_c 9
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-06
* **Comments:** 2

### [PR #2747](https://github.com/dart-lang/native/pull/2747): [ffigen] Remove unnecessary `ignore_for_file`s 
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2025-11-06
* **Comments:** 3
*   **Summary:** Removes redundant `ignore_for_file` comments from `ffigen`'s generated files and examples, as the automatically added `// ignore_for_file: type=lint` makes specifying individual lints unnecessary.

### [PR #2740](https://github.com/dart-lang/native/pull/2740): [doc] Document how to avoid symbol clashes with embedder
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-11-06
* **Comments:** 2
*   **Summary:** Adds documentation to the `code_assets` package explaining common linking issues with native assets on Linux, such as symbol conflicts with embedder dependencies, and details several workarounds including symbol prefixing and using linker flags.

### [PR #2723](https://github.com/dart-lang/native/pull/2723): [ffigen] Migrate to extension types
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-06
* **Comments:** 2
*   **Summary:** This breaking change updates `ffigen` to generate Objective-C bindings as extension types instead of classes, improving performance. This change also renames several APIs for consistency (e.g., `castFrom` to `as`) and updates `package:objective_c` collections to expose Dart collection interfaces through a new `.asDart()` method rather than implementing them directly.

### [PR #2494](https://github.com/dart-lang/native/pull/2494): [jni] Fix the context when using multiple flutter engines
* **Author:** [HosseinYousefi](https://github.com/HosseinYousefi)
* **Merged At:** 2025-11-06
* **Comments:** 2
*   **Summary:** Updates the JNI plugin to support multiple Flutter engines by mapping plugin instances to their `engineId` on the Java side. This breaking change replaces the static `Jni.getCurrentActivity()` and `Jni.getCachedApplicationContext()` methods with new `Jni.androidActivity(engineId)` and `Jni.androidApplicationContext(engineId)` functions, allowing developers to retrieve the correct context or activity for a specific engine.

## Closed Issues

### [Issue #2724](https://github.com/dart-lang/native/issues/2724): Building hooks that may conflict with embedder library dependencies
* **Author:** [simolus3](https://github.com/simolus3)
* **Closed At:** 2025-11-06
* **Reactions:** 2 👍 1 👀 1

### [Issue #2664](https://github.com/dart-lang/native/issues/2664): [ffigen] Convert objects to extension types
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Closed At:** 2025-11-06




# GitHub PR Report for dart-lang/sdk
## From 2025-11-06

No pull requests were merged during this time.
## Closed Issues

### [Issue #61922](https://github.com/dart-lang/sdk/issues/61922): Operator precedence not being respected
* **Author:** [lauracallahan-wk](https://github.com/lauracallahan-wk)
* **Closed At:** 2025-11-06

### [Issue #61920](https://github.com/dart-lang/sdk/issues/61920): Field destructing completion shows no results when file is not formatted
* **Author:** [FMorschel](https://github.com/FMorschel)
* **Closed At:** 2025-11-06

### [Issue #61761](https://github.com/dart-lang/sdk/issues/61761): Unexpected types supplied during diagnostic message substitution, ConstantVerifier.
* **Author:** [scheglov](https://github.com/scheglov)
* **Closed At:** 2025-11-06

### [Issue #61743](https://github.com/dart-lang/sdk/issues/61743): Socket.close() can sometimes throw a StateError.
* **Author:** [sigurdm](https://github.com/sigurdm)
* **Closed At:** 2025-11-06

### [Issue #61269](https://github.com/dart-lang/sdk/issues/61269): self_compile_test fails on pkg-linux-release-arm64
* **Author:** [srujzs](https://github.com/srujzs)
* **Closed At:** 2025-11-06

### [Issue #53315](https://github.com/dart-lang/sdk/issues/53315): DAP debug_extensions_test is taking 16 minutes and timing out
* **Author:** [whesse](https://github.com/whesse)
* **Closed At:** 2025-11-06




# GitHub PR Report for flutter/ai
## From 2025-11-06

No pull requests were merged during this time.



# GitHub PR Report for flutter/codelabs
## From 2025-11-06

No pull requests were merged during this time.



