import 'package:calmly/core/constants/constants.dart';
import 'package:calmly/features/home/data/model/course_response.dart';
import 'package:injectable/injectable.dart';

@singleton
class CourseRemoteDatasource {
  final List<Map<String, dynamic>> _jsonData = [
    {
      'image': AppImages.focus,
      'title': 'Focus',
      'type': 'MEDITATION',
      'time': '3-10',
      'color': 'AFDBC5',
    },
    {
      'image': AppImages.happiness,
      'title': 'Mindfulness',
      'type': 'MEDITATION',
      'time': '5-15',
      'color': 'FEDEA5',
    },
    {
      'image': AppImages.focus,
      'title': 'Relaxation',
      'type': 'MEDITATION',
      'time': '4-12',
      'color': 'AFDBC5',
    },
    {
      'image': AppImages.happiness,
      'title': 'Breathing',
      'type': 'MEDITATION',
      'time': '2-8',
      'color': 'FEDEA5',
    },
    {
      'image': AppImages.focus,
      'title': 'Calm',
      'type': 'MEDITATION',
      'time': '6-14',
      'color': 'AFDBC5',
    },
    {
      'image': AppImages.happiness,
      'title': 'Sleep',
      'type': 'MEDITATION',
      'time': '7-20',
      'color': 'FEDEA5',
    },
    {
      'image': AppImages.focus,
      'title': 'Anxiety Relief',
      'type': 'MEDITATION',
      'time': '3-9',
      'color': 'AFDBC5',
    },
    {
      'image': AppImages.happiness,
      'title': 'Happiness',
      'type': 'MEDITATION',
      'time': '4-11',
      'color': 'FEDEA5',
    },
    {
      'image': AppImages.focus,
      'title': 'Self Awareness',
      'type': 'MEDITATION',
      'time': '5-13',
      'color': 'AFDBC5',
    },
    {
      'image': AppImages.happiness,
      'title': 'Inner Peace',
      'type': 'MEDITATION',
      'time': '6-12',
      'color': 'FEDEA5',
    }
  ];

  Future<List<CourseResponse>> getRecommendedCourses() async {
    await Future.delayed(const Duration(seconds: 1), () {});
    return _jsonData.map(CourseResponse.fromJson).toList();
  }
}
