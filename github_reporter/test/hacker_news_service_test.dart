import 'package:github_reporter/src/models/story.dart';
import 'package:github_reporter/src/services/hacker_news_service.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockHttpClient extends Mock implements http.Client {}

class FakeUri extends Fake implements Uri {}

void main() {
  setUpAll(() {
    registerFallbackValue(FakeUri());
  });

  group('HackerNewsService', () {
    late HackerNewsService service;
    late MockHttpClient mockHttpClient;

    setUp(() {
      mockHttpClient = MockHttpClient();
      service = HackerNewsService(client: mockHttpClient);
    });

    test('getTopStoryIds returns a list of story ids', () async {
      final response = http.Response('[1, 2, 3]', 200);
      when(() => mockHttpClient.get(any())).thenAnswer((_) async => response);

      final ids = await service.getTopStoryIds();

      expect(ids, [1, 2, 3]);
    });

    test('getStory returns a story', () async {
      final storyJson = '''
        {
          "id": 1,
          "by": "testuser",
          "descendants": 0,
          "kids": [],
          "score": 10,
          "time": 1672531200,
          "title": "Test Story",
          "type": "story",
          "url": "https://example.com"
        }
      ''';
      final response = http.Response(storyJson, 200);
      when(() => mockHttpClient.get(any())).thenAnswer((_) async => response);

      final story = await service.getStory(1);

      expect(story, isA<Story>());
      expect(story.id, 1);
      expect(story.title, 'Test Story');
    });
  });
}
