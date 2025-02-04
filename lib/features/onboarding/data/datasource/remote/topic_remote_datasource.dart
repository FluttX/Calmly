import 'package:calmly/core/constants/constants.dart';
import 'package:calmly/features/onboarding/onboarding.dart';
import 'package:injectable/injectable.dart';

@singleton
class TopicRemoteDataSource {
  final List<Map<String, dynamic>> _jsonData = [
    {
      'image': AppImages.reduceStress,
      'title': 'Reduce Stress',
      'color': '8E97FD',
      'text_color': 'FFECCC',
    },
    {
      'image': AppImages.improvePerformance,
      'title': 'Improve Performance',
      'color': 'FA6E5A',
      'text_color': 'FFECCC',
    },
    {
      'image': AppImages.reduceAnxiety,
      'title': 'Reduce Anxiety',
      'color': 'FFCF86',
      'text_color': '3F414E',
    },
    {
      'image': AppImages.increaseHappiness,
      'title': 'Increase Happiness',
      'color': 'FEB18F',
      'text_color': '3F414E',
    },
    {
      'image': AppImages.personalGrowth,
      'title': 'Personal Growth',
      'color': '6CB28E',
      'text_color': 'FFECCC',
    },
    {
      'image': AppImages.betterSleep,
      'title': 'Better Sleep',
      'color': '3F414E',
      'text_color': 'FFECCC',
    },
    {
      'image': AppImages.enhanceFocus,
      'title': 'Enhance Focus',
      'color': 'D9A5B5',
      'text_color': 'FFECCC',
    },
  ];

  Future<List<TopicResponse>> getTopics() async {
    await Future.delayed(const Duration(seconds: 1), () {});
    return _jsonData.map(TopicResponse.fromJson).toList();
  }
}
