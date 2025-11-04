# Implementation Plan

This document outlines the steps to implement the GitHub PR Reporter application.

## Phase 1: Project Setup and Core Structure

- [ ] 1. Initialize a new Dart console application.
- [ ] 2. Add dependencies to `pubspec.yaml`:
    - [ ] `args` for command-line argument parsing.
    - [ ] `github` for interacting with the GitHub API.
    - [ ] `google_cloud_ai_generativelanguage_v1beta` for the Gemini API.
    - [ ] `test` and `mocktail` for unit testing (as dev dependencies).
- [ ] 3. Create the initial directory and file structure:
    - [ ] `bin/github_reporter.dart` (main entry point)
    - [ ] `lib/github_reporter.dart` (for `ReportGenerator` class)
    - [ ] `lib/src/services/github_service.dart`
    - [ ] `lib/src/services/gemini_service.dart`
    - [ ] `test/` directory for unit tests.

## Phase 2: Service Layer Implementation

- [ ] 1. Implement `GitHubService`:
    - [ ] Create the class structure in `github_service.dart`.
    - [ ] Implement a method to fetch merged pull requests for a given repository and date range.
- [ ] 2. Implement `GeminiService`:
    - [ ] Create the class structure in `gemini_service.dart`.
    - [ ] Implement a method to generate a text summary from a given input string (the PR details).

## Phase 3: Core Logic and Report Generation

- [ ] 1. Implement `ReportGenerator`:
    - [ ] Create the class structure in `github_reporter.dart`.
    - [ ] Implement the `generateReport` method to orchestrate calls to the service classes.
    - [ ] Implement the logic to format the collected data into the final Markdown report string.

## Phase 4: Command-Line Interface (CLI)

- [ ] 1. Implement the entry point in `bin/github_reporter.dart`:
    - [ ] Set up command-line argument parsing using the `args` package.
    - [ ] Implement logic to handle API keys from both arguments and environment variables.
    - [ ] Implement the default date range logic.
    - [ ] Instantiate and run the `ReportGenerator`.
    - [ ] Print the final report to `stdout`.
    - [ ] Implement error handling to print messages to `stderr` and exit.

## Phase 5: Testing

- [ ] 1. Write unit tests for `ReportGenerator` using mocked services.
- [ ] 2. Write unit tests for the service classes (`GitHubService`, `GeminiService`) using `mocktail`.
- [ ] 3. Write unit tests for the CLI argument parsing and logic.

## Phase 6: Finalization

- [ ] 1. Add `dartdoc` comments to all public APIs.
- [ ] 2. Run `dart format` on the entire codebase.
- [ ] 3. Review and update all documentation (`USAGE.md`, `DESIGN.md`, `IMPLEMENTATION.md`).

## Implementation Notes
