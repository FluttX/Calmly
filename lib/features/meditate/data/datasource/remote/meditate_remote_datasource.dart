import 'package:calmly/core/constants/constants.dart';
import 'package:calmly/features/meditate/data/model/category_response.dart';
import 'package:injectable/injectable.dart';

abstract class MeditateRemoteDataSource {
  Future<List<CategoryResponse>> getMeditateCategories();
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

  @override
  Future<List<CategoryResponse>> getMeditateCategories() async {
    await Future.delayed(const Duration(seconds: 1), () {});
    return _jsonData.map(CategoryResponse.fromJson).toList();
  }
}
