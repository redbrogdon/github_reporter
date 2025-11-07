import 'dart:async';
import 'dart:math';

import 'package:google_generative_ai/google_generative_ai.dart';

import 'prompts.dart';

const _maxRetries = 3;

/// A service that interacts with the Gemini API.
class GeminiService {
  final GenerativeModel _model;

  /// Creates a new instance of [GeminiService].
  GeminiService(this._model);

  /// Creates a new instance of [GeminiService] using a Gemini API key.
  factory GeminiService.withApiKey(String apiKey) {
    return GeminiService(
      GenerativeModel(
        model: 'gemini-2.5-pro',
        apiKey: apiKey,
        systemInstruction: Content.system(systemInstruction),
      ),
    );
  }

  /// Gets a summary of the given text.
  Future<String> getSummary(String text) async {
    var retries = 0;
    while (retries < _maxRetries) {
      try {
        final content = [Content.text(text)];
        final response = await _model.generateContent(content);
        return response.text ?? '';
      } catch (e) {
        retries++;
        if (retries >= _maxRetries) {
          rethrow;
        }
        final delay = Duration(seconds: pow(2, retries).toInt());
        await Future.delayed(delay);
      }
    }
    throw Exception('Failed to get summary after $_maxRetries retries.');
  }
}
