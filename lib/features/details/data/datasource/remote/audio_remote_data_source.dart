import 'package:calmly/features/details/data/model/audio_response.dart';
import 'package:injectable/injectable.dart';

abstract class AudioRemoteDataSource {
  Future<List<AudioResponse>> fetchAudioResponses();
}

@Singleton(as: AudioRemoteDataSource)
class AudioRemoteDataSourceImpl implements AudioRemoteDataSource {
  final List<Map<String, dynamic>> _jsonData = [
    {
      'title': 'The Future of AI',
      'author': 'John Smith',
      'duration': 15,
      'is_male': true,
    },
    {
      'title': 'Meditation for Beginners',
      'author': 'Emma Johnson',
      'duration': 10,
      'is_male': false,
    },
    {
      'title': 'History of Rome',
      'author': 'David Peterson',
      'duration': 25,
      'is_male': true,
    },
    {
      'title': 'Self-Improvement Guide',
      'author': 'Sophia Carter',
      'duration': 30,
      'is_male': false,
    },
    {
      'title': 'Tech Trends 2025',
      'author': 'Michael Anderson',
      'duration': 18,
      'is_male': true,
    },
    {
      'title': 'The Science of Happiness',
      'author': 'Olivia Thompson',
      'duration': 22,
      'is_male': false,
    },
    {
      'title': 'Deep Sleep Music',
      'author': 'James Wilson',
      'duration': 60,
      'is_male': true,
    },
    {
      'title': 'Women in Leadership',
      'author': 'Emily Davis',
      'duration': 35,
      'is_male': false,
    },
    {
      'title': 'Workout Motivation',
      'author': 'Chris Brown',
      'duration': 20,
      'is_male': true,
    },
    {
      'title': 'Daily News Podcast',
      'author': 'Sarah Adams',
      'duration': 12,
      'is_male': false,
    },
    {
      'title': 'Business Strategies',
      'author': 'Robert Lee',
      'duration': 28,
      'is_male': true,
    },
    {
      'title': 'Healthy Eating Habits',
      'author': 'Jessica Green',
      'duration': 15,
      'is_male': false,
    },
    {
      'title': 'Inspirational Speech',
      'author': 'Daniel White',
      'duration': 14,
      'is_male': true,
    },
    {
      'title': 'Travel Stories',
      'author': 'Sophia Martinez',
      'duration': 25,
      'is_male': false,
    },
    {
      'title': 'Mindfulness Meditation',
      'author': 'Mark Evans',
      'duration': 45,
      'is_male': true,
    },
    {
      'title': 'Fictional Audiobook Chapter 1',
      'author': 'Anna Roberts',
      'duration': 38,
      'is_male': false,
    },
    {
      'title': 'Marketing Tips',
      'author': 'Tom Harris',
      'duration': 17,
      'is_male': true,
    },
    {
      'title': 'Parenting Advice',
      'author': 'Grace Taylor',
      'duration': 27,
      'is_male': false,
    },
    {
      'title': 'Science Explained',
      'author': 'Matthew Parker',
      'duration': 29,
      'is_male': true,
    },
    {
      'title': 'Poetry Reading',
      'author': 'Ella Nelson',
      'duration': 10,
      'is_male': false,
    },
    {
      'title': 'Space Exploration',
      'author': 'Ethan Reed',
      'duration': 33,
      'is_male': true,
    },
    {
      'title': 'Psychology of Success',
      'author': 'Sophia Walker',
      'duration': 26,
      'is_male': false,
    },
    {
      'title': 'The History of Music',
      'author': 'William Scott',
      'duration': 40,
      'is_male': true,
    },
    {
      'title': 'Cooking Secrets',
      'author': 'Emily Watson',
      'duration': 22,
      'is_male': false,
    }
  ];

  @override
  Future<List<AudioResponse>> fetchAudioResponses() async {
    await Future.delayed(const Duration(seconds: 1), () {});
    return _jsonData.map(AudioResponse.fromJson).toList();
  }
}
