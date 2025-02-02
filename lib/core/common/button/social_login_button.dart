import 'package:calmly/core/constants/constants.dart';
import 'package:calmly/core/theme/theme.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: FilledButton.icon(
            onPressed: () {},
            style: FilledButton.styleFrom(
              backgroundColor: context.theme.color.socialButton,
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
            onPressed: () {},
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
