import 'package:calmly/app/navigation/navigation.dart';
import 'package:calmly/core/constants/constants.dart';
import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: FilledButton.icon(
            onPressed: () => context.go(AppRoute.welcome),
            style: FilledButton.styleFrom(
              backgroundColor: context.colors.socialButton,
            ),
            icon: SvgPicture.asset(
              AppImages.icFacebook,
              height: 24,
              width: 24,
            ),
            label: Text(context.tr.continueWithFacebook),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () => context.go(AppRoute.welcome),
            label: Text(context.tr.continueWithGoogle),
            icon: SvgPicture.asset(
              AppImages.icGoogle,
              height: 24,
              width: 24,
            ),
          ),
        ),
      ],
    );
  }
}
