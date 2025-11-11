# GitHub PR Reporter Application Design

## 1. Overview

This document outlines the architecture and overall structure of the GitHub PR Reporter application. The application generates reports on GitHub pull requests for a specified repository and date range, leveraging the GitHub API and the Gemini API for analysis.

## 2. Core Components

The application will be structured around the following core components:

### 2.1. Command-Line Interface (CLI)

*   **Entry Point:** The main entry point for the application will be `bin/github_reporter.dart`.
*   **Argument Parsing:** The `args` package will be used to parse command-line flags and options, including `--repo`, `--start-date`, `--end-date`, `--github-token`, `--gemini-key`, `--output-file`, and a new `--exclude-author` option.
*   **CLI-related Tasks:** This file will handle all command-line related tasks, such as displaying help messages and validating basic argument presence. It will also be responsible for retrieving the GitHub and Gemini API keys from either the command-line arguments or environment variables. It will determine whether to write the report to a file or print it to standard output based on the presence of the `--output-file` option, and will pass the list of authors to exclude to the `ReportGenerator`.

### 2.2. Report Generation Logic

*   **ReportGenerator Class:** All core functionality for generating the report will be encapsulated within a class named `ReportGenerator`, located in `lib/github_reporter.dart`. This class is responsible for orchestrating the report generation for one or more repositories.
    *   The primary public method, `generateReport`, accepts a list of repository slugs (e.g., `['flutter/flutter', 'dart-lang/sdk']`). It iterates over this list, calling a separate method to generate a report for each repository. It then collects these individual reports, generates an overall summary of these reports using the `GeminiService`, and prepends this multi-report summary to the combined report. It also handles fetching the Hacker News section.
    *   A second method, `generateSingleRepoReport`, contains the logic for fetching data and generating a report for a single repository. This method is responsible for:
        1.  Orchestrating calls to the `GitHubService` to fetch the required pull request and issue data.
        2.  Coordinating with the `GeminiService` to generate summaries for each pull request and an overall summary for the repository's activity.
        3.  Formatting the collected data into a Markdown string.
    *   This two-tiered approach separates the multi-repository orchestration from the single-repository report generation logic.

### 2.3. Service Layer

Dedicated service classes will encapsulate interactions with external APIs. Their constructors will accept the necessary API keys.

*   **GitHubService:** This class will handle all communication with the GitHub API. It will utilize the `github` package from `pub.dev`. Instead of fetching all closed pull requests and filtering them locally, it will use the `SearchService` to find merged pull requests within the specified date range directly. This is more efficient as it delegates the filtering to the GitHub API. It will also accept a list of authors to exclude, which will be incorporated into the search query. For each issue returned by the search, it will then fetch the full `PullRequest` object to ensure all necessary data is available. It will also have a `getClosedIssues` method to fetch closed issues, including their reaction data, within the specified date range.
*   **GeminiService:** This class will manage interactions with the Gemini API. It will use the `google_cloud_ai_generativelanguage_v1beta` package to perform text summarization on pull request content. The prompts for the Gemini model are defined as functions in a dedicated Dart file (`lib/src/services/prompts.dart`), allowing for dynamic generation and easier management of the prompts. To handle transient errors from the Gemini API, the service will implement a retry mechanism with exponential backoff. It will attempt to generate a summary up to three times before failing. It will also have a `getOverallSummary` method to generate a high-level summary of all activities in the report, and a `summarizeMultiReport` method to generate a summary of summaries from multiple reports.
*   **HackerNewsService:** This class will handle all communication with the Hacker News API. It will use the `http` package to make requests to the API. It will have methods to get the top story IDs and to get the details of a specific story.

## 3. Data Flow

1.  The `bin/github_reporter.dart` entry point parses command-line arguments, including a list of repository slugs.
2.  It then instantiates the `ReportGenerator` class.
3.  The `generateReport` method on the `ReportGenerator` instance is called with the list of repository slugs and other options.
4.  `ReportGenerator` iterates through each repository slug. For each slug, it calls `generateSingleRepoReport`.
5.  Inside `generateSingleRepoReport`, the `GitHubService` fetches pull request and closed issue data for that specific repository.
6.  The `GeminiService` generates summaries for each pull request and an overall summary for the repository.
7.  `generateSingleRepoReport` formats the data into a Markdown report section for that repository.
8.  After all individual reports are generated, `generateReport` calls `GeminiService.summarizeMultiReport` with the collected individual report strings to generate an overall summary of all reports.
9.  If the `--no-hacker-news` flag is not present, the `HackerNewsService` fetches the top stories, which are appended to the combined report.
10. The final, combined report string (with the multi-report summary at the top) is returned to the entry point script, which then writes it to a file or prints it to standard output.

## 4. Error Handling

Upon encountering critical errors, such as invalid API keys, network failures, or other unrecoverable issues, the application will log a descriptive error message and exit gracefully.

### 4.1. GitHub API Rate Limit Handling

To handle GitHub API rate limit errors, a custom exception class, `RateLimitException`, will be defined. When the `GitHubService` encounters a `RateLimitHit` exception from the `github` package, it will catch it and re-throw it as a `RateLimitException`. The main entry point in `bin/github_reporter.dart` will have a `try-catch` block to handle this specific exception. If a `RateLimitException` is caught, a user-friendly error message will be logged, and the application will exit with a non-zero status code. This ensures that the application does not attempt to proceed with generating a report when the rate limit has been exceeded.

## 5. Logging

The application uses the `package:logging` library for all output. This provides a structured and configurable way to handle informational and error messages.

*   **Configuration:** Logging is configured in the main entry point (`bin/github_reporter.dart`).
*   **Verbosity Control:** The `--verbose` command-line flag controls the output level. When enabled, the log level is set to `Level.ALL`, providing detailed operational messages. Otherwise, it defaults to `Level.SEVERE`, only showing critical errors.
*   **Output:** All log records are written to `stderr`.

## 6. Data Models

The application will leverage the existing data models provided by the `github` package. This includes classes such as `PullRequest`, `User`, and `Comment` to represent the data fetched from the GitHub API. This avoids redefining models and ensures consistency with the API client. New `Issue` and `Reactions` models have been created to represent closed issues and their reactions.

## 7. Testing

### 7.1. Unit Testing

Unit tests will be implemented for all core components to ensure their individual logic functions correctly. The `test` package will be used for writing these tests.

*   **Service Mocking:** For `GitHubService` and `GeminiService`, the `mocktail` package will be used to create mock objects. This will allow for isolated testing of components that depend on these services (e.g., `ReportGenerator`) without making actual API calls.
*   **Component Testing:** Other components, such as the argument parsing logic in `bin/github_reporter.dart` and the report formatting within `ReportGenerator`, will have dedicated unit tests to verify their functionality.