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

A command-line tool to generate a summary report of GitHub repository activity using GitHub and Gemini APIs.

```bash
dart run github_reporter.dart --repo <owner/repo> --github-token <YOUR_GITHUB_TOKEN> --gemini-key <YOUR_GEMINI_API_KEY> [--start-date <YYYY-MM-DD>] [--end-date <YYYY-MM-DD>] [--exclude-author <GITHUB_HANDLE>]
```

### Options

*   `--repo`: The GitHub repository in the format `owner/repo` (e.g., `flutter/flutter`). (Required)
*   `--start-date`: The start date for the report in `YYYY-MM-DD` format.
*   `--end-date`: The end date for the report in `YYYY-MM-DD` format.

    If `--start-date` is not provided, the tool will default to producing a report covering the previous weekday (or the previous Friday, Saturday, and Sunday if run on a Monday). If `--end-date` is not provided, the tool will default to yesterday's date.
*   `--exclude-author`: Exclude pull requests authored by these GitHub handles. This option can be specified multiple times to exclude multiple authors.
*   `--github-token`: Your GitHub Personal Access Token. (Required unless `GITHUB_TOKEN` environment variable is set)
*   `--gemini-key`: Your Gemini API Key. (Required unless `GEMINI_API_KEY` environment variable is set)
*   `--help`: Show a brief description of the app's functionality, a sample invocation, and then each of the flags/options and what they do.
*   `--verbose`: Enable verbose logging.
*   `--output-file`: The path to the file where the report will be written. If not provided, the report will be printed to the console. If the file already exists, it will be overwritten.

### Environment Variables

You can also provide the API keys as environment variables:

*   `GITHUB_TOKEN`
*   `GEMINI_API_KEY`

## Example

```bash
dart run github_reporter.dart \
  --repo "flutter/flutter" \
  --start-date "2024-01-01" \
  --end-date "2024-01-31" \
  --github-token "your_github_token" \
  --gemini-key "your_gemini_key"
```

This will generate a report of all pull requests merged in the `flutter/flutter` repository between January 1, 2024, and January 31, 2024. The report will be printed to standard output.

## Report Format

The generated report is in Markdown format. The report is structured as follows:

### Header

The report starts with a header that includes the name of the repository and the date range of the report.

### Pull Requests

Following the header is a list of pull requests in chronological order of when they were merged. Each pull request entry includes the following information:

*   **Pull Request:** The pull request number (e.g., #123).
*   **Author:** The GitHub username of the author.
*   **Merged At:** The time and date when the pull request was merged.
*   **Comments:** The number of comments on the pull request.
*   **Title:** The title of the pull request.
*   **Fixes:** A list of issue IDs that the pull request fixes, with links to the issues on GitHub.
*   **Summary:** A text summary of the changes introduced by the pull request and the rationale for introducing them. This summary should be several sentences long.
```