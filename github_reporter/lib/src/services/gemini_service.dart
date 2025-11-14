import 'dart:async';
import 'dart:math';

import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:logging/logging.dart';

import 'prompts.dart';

const _maxRetries = 5;
const _baseDelay = 30;

/// A service that interacts with the Gemini API.
class GeminiService {
  final GenerativeModel _model;
  final _log = Logger('GeminiService');

  /// Creates a new instance of [GeminiService].
  GeminiService(this._model);

  /// Creates a new instance of [GeminiService] using a Gemini API key.
  factory GeminiService.withApiKey(String apiKey) {
    return GeminiService(
      GenerativeModel(model: 'gemini-2.5-pro', apiKey: apiKey),
    );
  }

  Future<GenerateContentResponse> _generateContent(List<Content> prompt) async {
    var tries = 0;
    late Exception lastException;

    while (tries < _maxRetries) {
      try {
        final content = prompt;
        return await _model.generateContent(content);
      } on GenerativeAIException catch (e) {
        lastException = e;
        final delay = pow(2, tries).floor() * _baseDelay;
        _log.warning('Retrying pull request summary in $delay seconds.');
        await Future.delayed(Duration(seconds: delay));
        tries++;
      }
    }

    throw lastException;
  }

  Future<String> getPullRequestSummary(
    String title,
    String body,
    String diff,
  ) async {
    try {
      final prompt = createPullRequestSummaryPrompt(title, body, diff);
      final content = [Content.text(prompt)];
      final response = await _generateContent(content);
      return response.text?.trim() ?? '';
    } catch (ex) {
      _log.severe('Failed to get pull request summary due to exception: $ex');
      rethrow;
    }
  }

  Future<String> getOverallSummary(String prs, String issues) async {
    try {
      final prompt = createOverallSummaryPrompt(prs, issues);
      final content = [Content.text(prompt)];
      final response = await _generateContent(content);
      return response.text?.trim() ?? '';
    } catch (ex) {
      _log.severe('Failed to get overall summary due to exception: $ex');
      rethrow;
    }
  }

  Future<String> summarizeMultiReport(String summaries) async {
    try {
      final prompt = createMultiReportSummaryPrompt(summaries);
      final content = [Content.text(prompt)];
      final response = await _generateContent(content);
      return response.text?.trim() ?? '';
    } catch (ex) {
      _log.severe('Failed to get multi-repo summary due to exception: $ex');
      rethrow;
    }
  }

  Future<String> summarizeHackerNewsText(String summaries) async {
    try {
      final prompt = createHackerNewsSummaryPrompt(summaries);
      final content = [Content.text(prompt)];
      final response = await _generateContent(content);
      return response.text?.trim() ?? '';
    } catch (ex) {
      _log.severe(
        'Failed to get Hacker News text summary due to exception: $ex',
      );
      rethrow;
    }
  }
}
