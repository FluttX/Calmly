import 'package:calmly/core/theme/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<AppTheme> {
  ThemeCubit() : super(LightTheme());

  void changeTheme(AppTheme theme) {
    emit(theme);
  }
}
