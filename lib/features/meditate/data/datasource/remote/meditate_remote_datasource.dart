import 'package:calmly/core/constants/constants.dart';
import 'package:calmly/features/meditate/data/model/category_response.dart';
import 'package:calmly/features/meditate/data/model/meditate_response.dart';
import 'package:injectable/injectable.dart';

abstract class MeditateRemoteDataSource {
  Future<List<CategoryResponse>> getMeditateCategories();

  Future<List<MeditateResponse>> getMeditateTopics();
}

@Singleton(as: MeditateRemoteDataSource)
class MeditateRemoteDataSourceImpl extends MeditateRemoteDataSource {
  final List<Map<String, dynamic>> _jsonData = [
    {
      'id': '1',
      'title': 'All',
      'icon': AppIcons.icAll,
    },
    {
      'id': '2',
      'title': 'My',
      'icon': AppIcons.icFavorite,
    },
    {
      'id': '3',
      'title': 'Anxious',
      'icon': AppIcons.icAnxious,
    },
    {
      'id': '4',
      'title': 'Sleep',
      'icon': AppIcons.icSleepHz,
    },
    {
      'id': '5',
      'title': 'Kids',
      'icon': AppIcons.icKids,
    },
  ];

  final List<Map<String, dynamic>> _meditateJsonData = [
    {
      'id': '1',
      'title': '7 Days of Calm',
      'image': AppImages.daysOfCalm,
    },
    {
      'id': '2',
      'title': 'Anxiety Release',
      'image': AppImages.anxietyRelease,
    },
    {
      'id': '3',
      'title': 'Reduce Anxiety',
      'image': AppImages.meditateReduceAnxiety,
    },
    {
      'id': '4',
      'title': 'Happiness',
      'image': AppImages.meditateHappiness,
    },
  ];

  @override
  Future<List<CategoryResponse>> getMeditateCategories() async {
    await Future.delayed(const Duration(milliseconds: 1000), () {});
    return _jsonData.map(CategoryResponse.fromJson).toList();
  }

  @override
  Future<List<MeditateResponse>> getMeditateTopics() async {
    await Future.delayed(const Duration(microseconds: 1500), () {});
    return _meditateJsonData.map(MeditateResponse.fromJson).toList();
  }
}
