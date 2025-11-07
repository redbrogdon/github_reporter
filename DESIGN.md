# GitHub PR Reporter Application Design

## 1. Overview

This document outlines the architecture and overall structure of the GitHub PR Reporter application. The application generates reports on GitHub pull requests for a specified repository and date range, leveraging the GitHub API and the Gemini API for analysis.

## 2. Core Components

The application will be structured around the following core components:

### 2.1. Command-Line Interface (CLI)

*   **Entry Point:** The main entry point for the application will be `bin/github_reporter.dart`.
*   **Argument Parsing:** The `args` package will be used to parse command-line flags and options, including `--repo`, `--start-date`, `--end-date`, `--github-token`, `--gemini-key`, and a new `--output-file` option.
*   **CLI-related Tasks:** This file will handle all command-line related tasks, such as displaying help messages and validating basic argument presence. It will also be responsible for retrieving the GitHub and Gemini API keys from either the command-line arguments or environment variables. It will determine whether to write the report to a file or print it to standard output based on the presence of the `--output-file` option.

### 2.2. Report Generation Logic

*   **ReportGenerator Class:** All core functionality for generating the report will be encapsulated within a class named `ReportGenerator`, located in `lib/github_reporter.dart`. Its constructor will accept the GitHub and Gemini API keys. This class will have a primary public method, such as `generateReport`, which will accept arguments like the repository name, start date, and end date. This method will be responsible for:
    1.  Orchestrating calls to the `GitHubService` to fetch the required pull request data.
    2.  Coordinating with the `GeminiService` to generate a summary for each pull request.
    3.  Formatting the collected and processed data into a Markdown string according to the structure defined in `USAGE.md`.
    4.  Returning the final Markdown report as a string.

### 2.3. Service Layer

Dedicated service classes will encapsulate interactions with external APIs. Their constructors will accept the necessary API keys.

*   **GitHubService:** This class will handle all communication with the GitHub API. It will utilize the `github` package from `pub.dev`. Instead of fetching all closed pull requests and filtering them locally, it will use the `SearchService` to find merged pull requests within the specified date range directly. This is more efficient as it delegates the filtering to the GitHub API. For each issue returned by the search, it will then fetch the full `PullRequest` object to ensure all necessary data is available.
*   **GeminiService:** This class will manage interactions with the Gemini API. It will use the `google_cloud_ai_generativelanguage_v1beta` package to perform text summarization on pull request content. The system instruction for the Gemini model is defined as a `const` string in a dedicated Dart file (`lib/src/services/prompts.dart`), allowing for compile-time validation and easier management of the prompt. To handle transient errors from the Gemini API, the service will implement a retry mechanism with exponential backoff. It will attempt to generate a summary up to three times before failing.

## 3. Data Flow

1.  The `bin/github_reporter.dart` entry point parses command-line arguments and retrieves the API keys from the environment or arguments.
2.  It then instantiates the `ReportGenerator` class, passing the retrieved API keys into its constructor.
3.  The `generateReport` method on the `ReportGenerator` instance is called with the repository details and date range.
4.  The `ReportGenerator` class will instantiate and utilize `GitHubService` and `GeminiService`, passing the API keys to their constructors.
5.  `GitHubService` fetches pull request data.
6.  For each pull request, `GeminiService` generates a summary of changes.
7.  Finally, the `generateReport` method will format the collected data into a Markdown report and return it as a string.
8.  The entry point script will either write this string to the file specified by the `--output-file` option or print it to standard output if the option is not provided.

## 4. Error Handling

Upon encountering critical errors, such as invalid API keys, network failures, or other unrecoverable issues, the application will exit gracefully and print a descriptive error message to `stderr`.

## 5. Data Models

The application will leverage the existing data models provided by the `github` package. This includes classes such as `PullRequest`, `User`, `Issue`, and `Comment` to represent the data fetched from the GitHub API. This avoids redefining models and ensures consistency with the API client.

## 6. Testing

### 6.1. Unit Testing

Unit tests will be implemented for all core components to ensure their individual logic functions correctly. The `test` package will be used for writing these tests.

*   **Service Mocking:** For `GitHubService` and `GeminiService`, the `mocktail` package will be used to create mock objects. This will allow for isolated testing of components that depend on these services (e.g., `ReportGenerator`) without making actual API calls.
*   **Component Testing:** Other components, such as the argument parsing logic in `bin/github_reporter.dart` and the report formatting within `ReportGenerator`, will have dedicated unit tests to verify their functionality.
