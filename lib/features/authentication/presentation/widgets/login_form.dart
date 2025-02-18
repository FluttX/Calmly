import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/features/authentication/authentication.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _obscurePassword = ValueNotifier(true);

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _obscurePassword.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.tr.orLoginWithEmail.toUpperCase(),
          style: context.textTheme.bodyMedium,
        ),
        const SizedBox(height: 40),
        AppTextFormField(
          controller: _emailController,
          hintText: context.tr.emailAddress,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 20),
        ValueListenableBuilder(
          valueListenable: _obscurePassword,
          builder: (context, isObscured, child) {
            return AppTextFormField(
              controller: _passwordController,
              hintText: context.tr.password,
              keyboardType: TextInputType.visiblePassword,
              obscureText: isObscured,
              suffixIcon: IconButton(
                onPressed: () {
                  _obscurePassword.value = !_obscurePassword.value;
                },
                icon: Icon(
                  isObscured ? Icons.visibility_off : Icons.visibility,
                  size: 20,
                  color: context.colors.textSecondary,
                ),
              ),
            );
          },
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
