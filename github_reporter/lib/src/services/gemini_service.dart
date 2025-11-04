import 'package:google_generative_ai/google_generative_ai.dart';

/// A service that interacts with the Gemini API.
class GeminiService {
  final GenerativeModel _model;

  /// Creates a new instance of [GeminiService].
  GeminiService(this._model);

  /// Creates a new instance of [GeminiService] using a Gemini API key.
  factory GeminiService.withApiKey(String apiKey) {
    return GeminiService(
      GenerativeModel(
        model: 'gemini-pro',
        apiKey: apiKey,
        systemInstruction: Content.system(
          'You are an expert software engineer. Your task is to provide a concise, high-level summary of a pull request. Focus on the "what" and the "why" of the changes. The summary should be easy to understand for both technical and non-technical audiences. Do not simply list the changes, but explain their purpose and impact.',
        ),
      ),
    );
  }

  /// Gets a summary of the given text.
  Future<String> getSummary(String text) async {
    final content = [Content.text(text)];
    final response = await _model.generateContent(content);
    return response.text ?? '';
  }
}
