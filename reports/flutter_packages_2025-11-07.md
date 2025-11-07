# GitHub PR Report for flutter/packages
## From 2025-11-06

### [PR #10374](https://github.com/flutter/packages/pull/10374): [tool] Ensure that all packages format with correct language version
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-06
* **Comments:** 1
*   **Summary:** Updates the `format` and `fetch-deps` developer tooling commands to ensure correct Dart language version resolution for formatting. The tools now run `pub get` in sub-packages, and the `format` command also detects stale language versions by comparing `pubspec.yaml` with the resolved version, re-running `pub get` as needed to ensure consistent formatting locally and in CI.

### [PR #10366](https://github.com/flutter/packages/pull/10366): [ci] Add missing deps
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-06
* **Comments:** 3
*   **Summary:** Adds an explicit dependency on the `ninja` build tool to Android CI configurations to fix out-of-band build failures caused by a recent Ubuntu bot downgrade.

### [PR #10336](https://github.com/flutter/packages/pull/10336): Run tests on macOS 15.5 or 15.7
* **Author:** [okorohelijah](https://github.com/okorohelijah)
* **Merged At:** 2025-11-06
* **Comments:** 1
*   **Summary:** Updates the CI configuration to allow tests to run on either macOS 15.5 or 15.7, in preparation for an upcoming operating system upgrade for the test fleet.

### [PR #10276](https://github.com/flutter/packages/pull/10276): [go_router] Migrates test for leak testing
* **Author:** [hgraceb](https://github.com/hgraceb)
* **Merged At:** 2025-11-06
* **Comments:** 4
*   **Summary:** Updates a `go_router` test to temporarily ignore memory leaks from `TestRestorationManager` and `RestorationBucket`, working around a recently-fixed issue in the Flutter framework.

### [PR #10235](https://github.com/flutter/packages/pull/10235): Add Linux CODEOWNERS
* **Author:** [stuartmorgan-g](https://github.com/stuartmorgan-g)
* **Merged At:** 2025-11-06
* **Comments:** 2
*   **Summary:** Updates the `CODEOWNERS` file to add a representative from Canonical as an owner for several first-party Linux plugins.

### [PR #10085](https://github.com/flutter/packages/pull/10085): [pigeon] Encode custom enum as long in Kotlin generator
* **Author:** [devgianlu](https://github.com/devgianlu)
* **Merged At:** 2025-11-06
* **Comments:** 2
*   **Summary:** Fixes a `ClassCastException` in the Pigeon Kotlin generator by ensuring that custom enums are serialized as `Long` instead of `Int`, which allows for correct encoding and decoding.

