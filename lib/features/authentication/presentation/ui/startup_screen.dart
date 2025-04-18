import 'package:calmly/app/navigation/navigation.dart';
import 'package:calmly/core/common/common.dart';
import 'package:calmly/features/authentication/authentication.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartupScreen extends StatelessWidget {
  const StartupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(child: StartupTopImage()),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TitleAndSubtitleWidget(
                      title: context.tr.onboardingTitle,
                      subtitle: context.tr.onboardingSubtitle,
                    ),
                    const SizedBox(height: 60),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: FilledButton(
                        onPressed: () => context.push(AppRoute.signup),
                        child: Text(context.tr.signup),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TwoTextRichText(
                      staticText: context.tr.alreadyHaveAccount.toUpperCase(),
                      actionText: context.tr.login.toUpperCase(),
                      onPressed: () => context.push(AppRoute.login),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
