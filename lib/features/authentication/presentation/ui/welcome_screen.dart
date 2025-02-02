import 'package:calmly/core/constants/constants.dart';
import 'package:calmly/core/theme/theme.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.color.primaryColor,
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
                    style: context.theme.textTheme.headlineSmall?.copyWith(
                      color: context.theme.color.textTertiary,
                    ),
                  ),
                  Text(
                    context.tr.welComeToAppName('Silent Moon'),
                    style: context.theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w300,
                      color: context.theme.color.textTertiary,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      context.tr.welcomeSubtitle,
                      textAlign: TextAlign.center,
                      style: context.theme.textTheme.bodyMedium?.copyWith(
                        color: context.theme.color.textTertiary,
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: context.theme.color.tertiaryColor,
                        foregroundColor: context.theme.color.textPrimary,
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
