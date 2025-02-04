import 'package:calmly/app/navigation/navigation.dart';
import 'package:calmly/core/constants/constants.dart';
import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primaryColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset(
              AppImages.welcomeBackground,
              fit: BoxFit.fitWidth,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  SvgPicture.asset(AppImages.welcomeAppLogo),
                  const SizedBox(height: 70),
                  Text(
                    context.tr.hiUser('Md. Al-Amin').toUpperCase(),
                    style: context.textTheme.headlineSmall?.copyWith(
                      color: context.colors.textTertiary,
                    ),
                  ),
                  Text(
                    context.tr.welComeToAppName('Silent Moon'),
                    style: context.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w300,
                      color: context.colors.textTertiary,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      context.tr.welcomeSubtitle,
                      textAlign: TextAlign.center,
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: context.colors.textTertiary,
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () => context.push(AppRoute.chooseTopic),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: context.colors.tertiaryColor,
                        foregroundColor: context.colors.textPrimary,
                      ),
                      child: Text(context.tr.getStarted.toUpperCase()),
                    ),
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
