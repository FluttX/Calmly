import 'package:calmly/app/navigation/navigation.dart';
import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/core/utils/utils.dart';
import 'package:calmly/features/authentication/authentication.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _obscurePassword = ValueNotifier(true);

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    if (_formKey.currentState!.validate()) {
      context.go(AppRoute.mainView);
    }
  }

  @override
  void dispose() {
    _obscurePassword.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text(
            context.tr.orLoginWithEmail.toUpperCase(),
            style: context.textTheme.bodyMedium,
          ),
          const SizedBox(height: 40),
          AppTextFormField(
            controller: _emailController,
            hintText: context.tr.emailAddress,
            validator: (value) => AppValidators.validateEmail(context, value),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 20),
          ValueListenableBuilder(
            valueListenable: _obscurePassword,
            builder: (context, isObscured, child) {
              return AppTextFormField(
                controller: _passwordController,
                hintText: context.tr.password,
                validator: (value) =>
                    AppValidators.validatePassword(context, value),
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
              onPressed: _login,
              child: Text(context.tr.login),
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            child: Text(context.tr.forgetPassword),
          ),
        ],
      ),
    );
  }
}
