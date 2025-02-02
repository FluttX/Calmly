import 'package:calmly/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingTopImage extends StatelessWidget {
  const OnboardingTopImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        SvgPicture.asset(
          AppImages.onboardingImageBG,
          fit: BoxFit.fill,
        ),
        Align(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SvgPicture.asset(
              AppImages.onboardingImage,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: SvgPicture.asset(AppImages.onboardingAppLogo),
          ),
        ),
      ],
    );
  }
}
