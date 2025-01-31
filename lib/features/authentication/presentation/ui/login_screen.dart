import 'package:calmly/app/core/common/common.dart';
import 'package:calmly/app/core/theme/theme.dart';
import 'package:calmly/features/authentication/presentation/widgets/app_text_form_field.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        label: Text(context.tr.continueWithGoogle),
                        icon: Icon(Icons.email_outlined),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      context.tr.orLoginWithEmail.toUpperCase(),
                      style: context.theme.textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 40),
                    AppTextFormField(
                      controller: emailController,
                      hintText: context.tr.emailAddress,
                    ),
                    const SizedBox(height: 20),
                    AppTextFormField(
                      controller: passwordController,
                      hintText: context.tr.password,
                      obscureText: true,
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: () {},
                        child: Center(child: Text(context.tr.login)),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {},
                      child: Text(context.tr.forgetPassword),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              HaveAccountRichText(
                message: context.tr.alreadyHaveAccount,
                title: context.tr.signup,
                onPressed: () {},
              ),
              RichText(
                text: TextSpan(
                  text: context.tr.alreadyHaveAccount.toUpperCase(),
                  style: context.theme.textTheme.bodySmall,
                  children: [
                    const TextSpan(text: ' '),
                    TextSpan(
                      text: context.tr.signup,
                      style: context.theme.textTheme.bodySmall
                          ?.copyWith(color: context.theme.color.primaryColor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => debugPrint(context.tr.signup),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
