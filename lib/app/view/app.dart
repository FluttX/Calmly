import 'package:calmly/app/navigation/navigation.dart';
import 'package:calmly/core/theme/light_theme.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: LightTheme().theme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: AppRouterConfig().router,
    );
  }
}
