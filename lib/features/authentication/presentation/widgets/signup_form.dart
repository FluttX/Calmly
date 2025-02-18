import 'package:calmly/app/navigation/navigation.dart';
import 'package:calmly/core/common/common.dart';
import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/features/authentication/authentication.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _obscurePassword = ValueNotifier(true);
  final _isAcceptPrivacyPolicy = ValueNotifier(false);

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _obscurePassword.dispose();
    _isAcceptPrivacyPolicy.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.tr.orSignupWithEmail.toUpperCase(),
          style: context.textTheme.bodyMedium,
        ),
        const SizedBox(height: 40),
        AppTextFormField(
          controller: _nameController,
          hintText: context.tr.name,
          keyboardType: TextInputType.name,
        ),
        const SizedBox(height: 20),
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
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: TwoTextRichText(
                staticText: context.tr.iHaveReadThe,
                actionText: context.tr.privacyPolicy,
                onPressed: () {
                  debugPrint('--------: ${_isAcceptPrivacyPolicy.value}');
                },
              ),
            ),
            ValueListenableBuilder(
              valueListenable: _isAcceptPrivacyPolicy,
              builder: (context, isAccept, child) {
                return Checkbox(
                  value: isAccept,
                  onChanged: (value) {
                    if (value == null) return;

                    _isAcceptPrivacyPolicy.value = value;
                  },
                );
              },
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: FilledButton(
            onPressed: () => context.push(AppRoute.welcome),
            child: Text(context.tr.getStarted.toUpperCase()),
          ),
        ),
      ],
    );
  }
}
