import 'package:calmly/core/theme/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<AppTheme> {
  ThemeCubit() : super(LightTheme()) {
    _loadSavedTheme();
  }

  Future<void> _loadSavedTheme() async {
    final preference = await SharedPreferences.getInstance();
    final theme = preference.getString('theme');

    if (theme == null || theme.isEmpty) return;

    switch (theme) {
      case 'LightTheme':
        emit(LightTheme());
      case 'GreenTheme':
        emit(GreenTheme());
      default:
        emit(LightTheme());
    }
  }

  Future<void> changeTheme(AppTheme theme) async {
    final preference = await SharedPreferences.getInstance();
    await preference.setString('theme', theme.runtimeType.toString());
    emit(theme);
  }
}
