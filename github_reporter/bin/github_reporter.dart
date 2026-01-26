import 'dart:io';

import 'package:args/args.dart';
import 'package:github_reporter/github_reporter.dart';

import 'package:github_reporter/src/services/github_service.dart';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';

const defaultExcludedAuthors = [
  'engine-flutter-autoroll',
  'flutter-roller',
  'app/dependabot',
];

const defaultRepos = [
  'dart-lang/ai',
  'dart-lang/sdk',
  'dart-lang/language',
  'dart-lang/native',
  'flutter/ai',
  'flutter/codelabs',
  'flutter/flutter',
  'flutter/genui',
  'flutter/packages',
  'flutter/samples',
  'flutter/website',
];

String getDefaultStartDate() {
  final now = DateTime.now();
  final startDate = switch (now.weekday) {
    DateTime.monday => now.subtract(Duration(days: 3)),
    DateTime.sunday => now.subtract(Duration(days: 2)),
    _ => now.subtract(Duration(days: 1)),
  };
  return DateFormat('yyyy-MM-dd').format(startDate);
}

String getDefaultEndDate() {
  final endDate = DateTime.now().subtract(const Duration(days: 1));
  return DateFormat('yyyy-MM-dd').format(endDate);
}

void main(List<String> arguments) async {
  final log = Logger('main');

  final parser = ArgParser()
    ..addMultiOption(
      'repo',
      help:
          'A GitHub repository about which to report. Should be in owner/repo '
          'format.',
      defaultsTo: defaultRepos,
    )
    ..addOption(
      'start-date',
      help:
          'The start date for reports in YYYY-MM-DD format. Defaults to the previous weekday. ',
      defaultsTo: getDefaultStartDate(),
    )
    ..addOption(
      'end-date',
      help:
          'The end date for the report in YYYY-MM-DD format. Defaults to yesterday.',
      defaultsTo: getDefaultEndDate(),
    )
    ..addOption(
      'github-token',
      help:
          'Your GitHub Personal Access Token. Required if GITHUB_PAT is not found in the environment.',
      defaultsTo: Platform.environment['GITHUB_PAT'],
    )
    ..addOption(
      'gemini-key',
      help:
          'Your Gemini API Key. Required if GEMINI_API_KEY is not found in the environment.',
      defaultsTo: Platform.environment['GEMINI_API_KEY'],
    )
    ..addFlag('help', negatable: false, help: 'Show this help message.')
    ..addFlag('verbose', negatable: false, help: 'Enable verbose mode.')
    ..addOption(
      'output-file',
      help: 'The path to the file where the report will be written.',
    )
    ..addMultiOption(
      'exclude-author',
      help: 'Authors to exclude when retrieving pull requests.',
      defaultsTo: defaultExcludedAuthors,
    )
    ..addFlag(
      'no-hacker-news',
      negatable: false,
      help: 'Do not include top Hacker News stories.',
    );

  try {
    final results = parser.parse(arguments);

    if (results.flag('help')) {
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

    final verbose = results.flag('verbose');
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

    final repos = results.multiOption('repo');
    if (repos.any((s) {
      return (!s.contains('/')) || (s.indexOf('/') != s.lastIndexOf('/'));
    })) {
      throw ArgumentError(
        'Values for the --repo option must be in the format "owner/repo".',
      );
    }

    final githubToken = results.option('github-token');
    if (githubToken == null) {
      throw ArgumentError(
        'Either the --github-token option or the GITHUB_PAT environment '
        'variable is required.',
      );
    }

    final geminiApiKey = results.option('gemini-key');
    if (geminiApiKey == null) {
      throw ArgumentError(
        'Either the --gemini-key option or the GEMINI_API_KEY environment '
        'variable is required.',
      );
    }

    final startDateString = results.option('start-date')!;
    late final DateTime startDate;
    try {
      startDate = DateTime.parse(startDateString);
    } catch (ex) {
      throw ArgumentError(
        'The start date value provided ("$startDateString") could not be parsed.',
      );
    }

    final endDateString = results.option('end-date')!;
    late final DateTime endDate;
    try {
      endDate = DateTime.parse(endDateString);
    } catch (ex) {
      throw ArgumentError(
        'The end date value provided ("$endDateString") could not be parsed.',
      );
    }

    final outputFile = results.option('output-file');
    final excludeAuthors = results.multiOption('exclude-author');
    final noHackerNews = results.flag('no-hacker-news');

    final generator = ReportGenerator.withTokens(
      githubToken: githubToken,
      geminiApiKey: geminiApiKey,
    );

    try {
      final report = await generator.generateReport(
        repoSlugs: repos,
        startDate: startDate,
        endDate: endDate,
        excludedAuthors: excludeAuthors,
        skipHackerNews: noHackerNews,
      );

      if (outputFile != null) {
        await File(outputFile).writeAsString(report);
        log.info('Report written to $outputFile');
      } else {
        print(report);
      }
    } finally {
      generator.dispose();
    }
  } on RateLimitException catch (e) {
    log.severe(e.message);
    exit(1);
  } catch (e) {
    log.severe(e);
    exit(1);
  }
}
