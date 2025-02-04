import 'package:calmly/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension ThemeExtension on BuildContext {
  AppColors get colors => read<ThemeCubit>().state.colors;

  TextTheme get textTheme => read<ThemeCubit>().state.textTheme;

  void changeTheme(AppTheme theme) {
    read<ThemeCubit>().changeTheme(theme);
  }
}
