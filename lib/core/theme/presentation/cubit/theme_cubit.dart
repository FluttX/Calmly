import 'package:calmly/core/theme/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<AppTheme> {
  ThemeCubit(this._themeRepository) : super(LightTheme()) {
    _loadSavedTheme();
  }

  final ThemeRepository _themeRepository;

  Future<void> _loadSavedTheme() async {
    final theme = _themeRepository.getSavedTheme();

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
    await _themeRepository.saveTheme(theme.runtimeType.toString());
    emit(theme);
  }
}
