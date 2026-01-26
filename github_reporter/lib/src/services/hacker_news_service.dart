import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;

import '../models/story.dart';

const int _maxRetries = 3;

class HackerNewsService {
  final http.Client _client;
  final String baseUrl = 'https://hacker-news.firebaseio.com/v0';

  HackerNewsService({http.Client? client}) : _client = client ?? http.Client();

  Future<List<int>> getTopStoryIds() async {
    final url = '$baseUrl/topstories.json';
    final response = await _getWithRetry(url);
    final ids = jsonDecode(response) as List;
    return ids.cast<int>();
  }

  Future<Story> getStory(int id) async {
    final url = '$baseUrl/item/$id.json';
    final response = await _getWithRetry(url);
    return Story.fromJson(jsonDecode(response));
  }

  Future<String> _getWithRetry(String url) async {
    var retries = 0;
    while (retries < _maxRetries) {
      try {
        final response = await _client.get(Uri.parse(url));
        if (response.statusCode == 200) {
          return response.body;
        } else {
          throw Exception('Failed to load data');
        }
      } catch (e) {
        retries++;
        if (retries >= _maxRetries) {
          rethrow;
        }
        final delay = Duration(seconds: pow(2, retries).toInt());
        await Future.delayed(delay);
      }
    }
    throw Exception('Failed to get data after $_maxRetries retries.');
  }

  /// Closes the underlying HTTP client.
  void dispose() {
    _client.close();
  }
}
