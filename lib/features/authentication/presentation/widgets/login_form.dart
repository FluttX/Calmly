import 'package:calmly/core/theme/theme.dart';
import 'package:calmly/features/authentication/authentication.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool obscureText = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.tr.orLoginWithEmail.toUpperCase(),
          style: context.theme.textTheme.bodyMedium,
        ),
        const SizedBox(height: 40),
        AppTextFormField(
          controller: emailController,
          hintText: context.tr.emailAddress,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 20),
        AppTextFormField(
          controller: passwordController,
          hintText: context.tr.password,
          keyboardType: TextInputType.visiblePassword,
          obscureText: obscureText,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            icon: Icon(
              obscureText ? Icons.visibility_off : Icons.visibility,
              size: 20,
              color: context.theme.color.textSecondary,
            ),
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: double.infinity,
          child: FilledButton(
            onPressed: () {},
            child: Text(context.tr.login),
          ),
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {},
          child: Text(context.tr.forgetPassword),
        ),
      ],
    );
  }
}
