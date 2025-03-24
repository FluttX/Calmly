import 'package:calmly/core/constants/constants.dart';
import 'package:calmly/features/music/data/model/music_response.dart';
import 'package:injectable/injectable.dart';

@singleton
class MusicRemoteDatasource {
  final List<Map<String, dynamic>> _jsonData = [
    {
      'image': AppImages.nightIsland,
      'title': 'Night Island',
      'type': 'SLEEP MUSIC',
      'time': '45',
    },
    {
      'image': AppImages.sweetSleep,
      'title': 'Sweet Sleep',
      'type': 'SLEEP MUSIC',
      'time': '50',
    },
    {
      'image': AppImages.moonClouds,
      'title': 'Moon Clouds',
      'type': 'SLEEP MUSIC',
      'time': '40',
    },
    {
      'image': AppImages.goodNight,
      'title': 'Good Night',
      'type': 'SLEEP MUSIC',
      'time': '55',
    },
    {
      'image': AppImages.sweetSleep,
      'title': 'Deep Dreams',
      'type': 'SLEEP MUSIC',
      'time': '60',
    },
    {
      'image': AppImages.nightIsland,
      'title': 'Silent Night',
      'type': 'SLEEP MUSIC',
      'time': '35',
    },
    {
      'image': AppImages.goodNight,
      'title': 'Dream Waves',
      'type': 'SLEEP MUSIC',
      'time': '50',
    },
    {
      'image': AppImages.moonClouds,
      'title': 'Soft Melodies',
      'type': 'SLEEP MUSIC',
      'time': '45',
    },
    {
      'image': AppImages.goodNight,
      'title': 'Lunar Serenity',
      'type': 'SLEEP MUSIC',
      'time': '30',
    },
    {
      'image': AppImages.nightIsland,
      'title': 'Starry Night',
      'type': 'SLEEP MUSIC',
      'time': '55',
    }
  ];

  Future<List<MusicResponse>> getMusics() async {
    await Future.delayed(const Duration(seconds: 1), () {});
    return _jsonData.map(MusicResponse.fromJson).toList();
  }
}
