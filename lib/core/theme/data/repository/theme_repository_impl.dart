import 'package:calmly/core/theme/theme.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ThemeRepository)
class ThemeRepositoryImpl implements ThemeRepository {
  ThemeRepositoryImpl(this._box);

  final Box<String> _box;

  @override
  Future<void> saveTheme(String theme) async {
    await _box.put('theme', theme);
  }

  @override
  String? getSavedTheme() {
    return _box.get('theme', defaultValue: 'LightTheme');
  }
}
