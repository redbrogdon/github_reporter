import 'dart:io';

import 'package:args/args.dart';
import 'package:github_reporter/github_reporter.dart';

import 'package:github_reporter/src/services/github_service.dart';
import 'package:logging/logging.dart';

void main(List<String> arguments) async {
  final log = Logger('main');

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
    ..addFlag('help', negatable: false, help: 'Show this help message.')
    ..addFlag('verbose', negatable: false, help: 'Enable verbose logging.')
    ..addOption(
      'output-file',
      help: 'The path to the file where the report will be written.',
    )
    ..addMultiOption(
      'exclude-author',
      help: 'Exclude pull requests authored by these GitHub handles.',
    );

  try {
    final results = parser.parse(arguments);

    final verbose = results['verbose'] as bool;

    Logger.root.level = verbose ? Level.ALL : Level.SEVERE;

    Logger.root.onRecord.listen((record) {
      final message =
          '[${record.level.name}] ${record.time}: ${record.message}';
      if (record.error != null) {
        stderr.writeln(
          '$message\nError: ${record.error}\nStack: ${record.stackTrace}',
        );
      } else {
        stderr.writeln(message);
      }
    });

    if (results['help']) {
      print(
        'A command-line tool to generate a summary report of GitHub '
        'repository activity using GitHub and Gemini APIs.\n\n'
        'Usage: dart run github_reporter.dart --repo <owner/repo> '
        '--github-token <YOUR_GITHUB_PAT> --gemini-key <YOUR_GEMINI_API_KEY> '
        '[--start-date <YYYY-MM-DD>] [--end-date <YYYY-MM-DD>] '
        '[--exclude-author <GITHUB_HANDLE>]\n',
      );
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
        Platform.environment['GITHUB_PAT'];
    if (githubToken == null) {
      throw ArgumentError(
        'Either the --github-token option or the GITHUB_PAT environment '
        'variable is required.',
      );
    }

    final geminiApiKey =
        results['gemini-key'] as String? ??
        Platform.environment['GEMINI_API_KEY'];
    if (geminiApiKey == null) {
      throw ArgumentError(
        'Either the --gemini-key option or the GEMINI_API_KEY environment '
        'variable is required.',
      );
    }

    final startDate = results['start-date'] != null
        ? DateTime.parse(results['start-date'])
        : _getDefaultStartDate();
    final endDate = results['end-date'] != null
        ? DateTime.parse(results['end-date'])
        : _getDefaultEndDate();

    final outputFile = results['output-file'] as String?;
    final excludeAuthors = results['exclude-author'] as List<String>;

    if (excludeAuthors.isEmpty) {
      excludeAuthors.addAll([
        'engine-flutter-autoroll',
        'flutter-roller',
        'app/dependabot',
      ]);
    }

    final generator = ReportGenerator.withTokens(
      githubToken: githubToken,
      geminiApiKey: geminiApiKey,
    );

    final report = await generator.generateReport(
      owner: owner,
      repo: repoName,
      startDate: startDate,
      endDate: endDate,
      excludeAuthors: excludeAuthors,
    );

    if (outputFile != null) {
      await File(outputFile).writeAsString(report);
      log.info('Report written to $outputFile');
    } else {
      print(report);
    }
  } on RateLimitException catch (e) {
    log.severe(e.message);
    exit(1);
  } catch (e) {
    log.severe(e);
    exit(1);
  }
}

DateTime _getDefaultStartDate() {
  final now = DateTime.now();
  return switch (now.weekday) {
    DateTime.monday => now.subtract(Duration(days: 3)),
    DateTime.sunday => now.subtract(Duration(days: 2)),
    _ => now.subtract(Duration(days: 1)),
  };
}

DateTime _getDefaultEndDate() {
  return DateTime.now().subtract(const Duration(days: 1));
}
