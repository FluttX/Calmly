import 'package:calmly/app/navigation/navigation.dart';
import 'package:calmly/core/di/inject.dart';
import 'package:calmly/core/theme/theme.dart';
import 'package:calmly/l10n/arb/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(inject()),
      child: BlocBuilder<ThemeCubit, AppTheme>(
        builder: (context, state) {
          return MaterialApp.router(
            theme: state.theme,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            routerConfig: AppRouterConfig.router,
          );
        },
      ),
    );
  }
}
