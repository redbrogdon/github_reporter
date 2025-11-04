import 'dart:io';

import 'package:args/args.dart';
import 'package:github_reporter/github_reporter.dart';

void main(List<String> arguments) async {
  final parser = ArgParser()
    ..addOption('repo', help: 'The GitHub repository in the format owner/repo.')
    ..addOption(
      'start-date',
      help: 'The start date for the report in YYYY-MM-DD format.',
    )
    ..addOption(
      'end-date',
      help: 'The end date for the report in YYYY-MM-DD format.',
    )
    ..addOption('github-token', help: 'Your GitHub Personal Access Token.')
    ..addOption('gemini-key', help: 'Your Gemini API Key.')
    ..addFlag('help', negatable: false, help: 'Show this help message.');

  try {
    final results = parser.parse(arguments);

    if (results['help']) {
      print(parser.usage);
      return;
    }

    final repo = results['repo'] as String?;
    if (repo == null) {
      throw ArgumentError('The --repo option is required.');
    }
    final repoParts = repo.split('/');
    if (repoParts.length != 2) {
      throw ArgumentError(
        'The --repo option must be in the format owner/repo.',
      );
    }
    final owner = repoParts[0];
    final repoName = repoParts[1];

    final githubToken =
        results['github-token'] as String? ??
        Platform.environment['GITHUB_TOKEN'];
    if (githubToken == null) {
      throw ArgumentError(
        'Either the --github-token option or the GITHUB_TOKEN environment variable is required.',
      );
    }

    final geminiApiKey =
        results['gemini-key'] as String? ??
        Platform.environment['GEMINI_API_KEY'];
    if (geminiApiKey == null) {
      throw ArgumentError(
        'Either the --gemini-key option or the GEMINI_API_KEY environment variable is required.',
      );
    }

    final startDate = results['start-date'] != null
        ? DateTime.parse(results['start-date'])
        : _getDefaultStartDate();
    final endDate = results['end-date'] != null
        ? DateTime.parse(results['end-date'])
        : _getDefaultEndDate();

    final generator = ReportGenerator.withTokens(
      githubToken: githubToken,
      geminiApiKey: geminiApiKey,
    );

    final report = await generator.generateReport(
      owner: owner,
      repo: repoName,
      startDate: startDate,
      endDate: endDate,
    );

    print(report);
  } catch (e) {
    stderr.writeln(e);
    exit(1);
  }
}

DateTime _getDefaultStartDate() {
  final now = DateTime.now();
  if (now.weekday == DateTime.monday) {
    return now.subtract(const Duration(days: 3));
  }
  return now.subtract(const Duration(days: 1));
}

DateTime _getDefaultEndDate() {
  return DateTime.now();
}
