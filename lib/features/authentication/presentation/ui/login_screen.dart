import 'package:calmly/app/core/common/common.dart';
import 'package:calmly/app/core/constants/app_images.dart';
import 'package:calmly/app/core/theme/theme.dart';
import 'package:calmly/features/authentication/authentication.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SvgPicture.asset(
            AppImages.authBackground,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AppBackButton(),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 30),
                          Text(
                            context.tr.welcomeBack,
                            style: context.theme.textTheme.headlineSmall,
                          ),
                          const SizedBox(height: 30),
                          const SocialLoginButton(),
                          const SizedBox(height: 40),
                          const LoginForm(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  HaveAccountRichText(
                    message: context.tr.donNotHaveAccount,
                    title: context.tr.signup,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
