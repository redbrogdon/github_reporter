# GitHub PR Reporter

A command-line application to generate reports on pull requests for a GitHub repository over a specified period using the Gemini API for analysis.

## Prerequisites

*   Dart SDK
*   GitHub Personal Access Token
*   Gemini API Key

## Installation

1.  Clone the repository:
    ```bash
    git clone <repository-url>
    cd github_pr_reporter
    ```
2.  Install dependencies:
    ```bash
    dart pub get
    ```

## Usage

```bash
dart run github_reporter.dart --repo <owner/repo> --github-token <YOUR_GITHUB_PAT> --gemini-key <YOUR_GEMINI_API_KEY> [--start-date <YYYY-MM-DD>] [--end-date <YYYY-MM-DD>] [--exclude-author <GITHUB_HANDLE>]
```

For info on how to use this tool, see [USAGE.md](./USAGE.md).
