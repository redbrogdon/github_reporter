# GitHub PR Report for dart-lang/native
## From 2025-11-06

### [PR #2755](https://github.com/dart-lang/native/pull/2755): [jni] minor lint fixes
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2025-11-06
* **Comments:** 2

### [PR #2753](https://github.com/dart-lang/native/pull/2753): [hooks] clean up unnecessary ignores
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2025-11-06
* **Comments:** 2
*   **Summary:** This PR removes unnecessary `ignore_for_file` directives for the `prefer_expression_function_bodies` and `undefined_hidden_name` lints from files in the `hooks` and `hooks_runner` packages.

### [PR #2750](https://github.com/dart-lang/native/pull/2750): [ffigen] auto-ignore unused imports in bindings
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2025-11-06
* **Comments:** 3
*   **Summary:** This change updates `ffigen` to automatically add an `ignore_for_file: unused_import` comment to all generated files, working around a known issue where unused imports are sometimes generated, causing lint warnings.

### [PR #2749](https://github.com/dart-lang/native/pull/2749): [ffigen] Prepare to publish ffigen 20 and objective_c 9
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-06
* **Comments:** 2

### [PR #2747](https://github.com/dart-lang/native/pull/2747): [ffigen] Remove unnecessary `ignore_for_file`s 
* **Author:** [goderbauer](https://github.com/goderbauer)
* **Merged At:** 2025-11-06
* **Comments:** 3
*   **Summary:** Removes redundant `ignore_for_file` comments from `ffigen` examples and generated code, as these are made unnecessary by the automatically-generated `// ignore_for_file: type=lint` directive.

### [PR #2740](https://github.com/dart-lang/native/pull/2740): [doc] Document how to avoid symbol clashes with embedder
* **Author:** [dcharkes](https://github.com/dcharkes)
* **Merged At:** 2025-11-06
* **Comments:** 2
*   **Summary:** Adds new documentation to the `code_assets` package explaining common linking issues with native assets, such as symbol conflicts with embedder dependencies on Linux, and provides several workarounds.

### [PR #2723](https://github.com/dart-lang/native/pull/2723): [ffigen] Migrate to extension types
* **Author:** [liamappelbe](https://github.com/liamappelbe)
* **Merged At:** 2025-11-06
* **Comments:** 2
*   **Summary:** This PR updates `ffigen`'s Objective-C generator and the `objective_c` package to use extension types instead of classes for bindings, resulting in performance improvements. This is a breaking change that also renames several APIs for consistency (e.g., `castFrom` to `as`, `isInstance` to `isA`) and updates collection classes like `NSArray` to no longer directly implement Dart collections, instead providing adapters via a new `.asDart()` method.

### [PR #2494](https://github.com/dart-lang/native/pull/2494): [jni] Fix the context when using multiple flutter engines
* **Author:** [HosseinYousefi](https://github.com/HosseinYousefi)
* **Merged At:** 2025-11-06
* **Comments:** 2
*   **Summary:** This PR adds multi-engine support to the `jni` plugin by replacing global Android context and activity accessors with new `Jni.androidActivity(engineId)` and `Jni.androidApplicationContext(engineId)` methods. A map on the Java side now stores plugin instances per `engineId`, allowing Dart code to retrieve the correct context and activity when multiple Flutter engines are active.

