import 'package:calmly/app/navigation/navigation.dart';
import 'package:calmly/core/common/common.dart';
import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/core/utils/utils.dart';
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

  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _signup() async {
    if (_formKey.currentState!.validate()) {
      if (!_isAcceptPrivacyPolicy.value) {
        AppLoaders.errorSnackBar(context, context.tr.privacyPolicyValidation);
        return;
      }

      final buildContext = context;

      AppLoaders.successSnackBar(context, context.tr.signupSuccess);

      await Future.delayed(const Duration(seconds: 1), () {
        if (context.mounted) {
          buildContext.push(AppRoute.welcome);
        }
      });
    }
  }

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
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text(
            context.tr.orSignupWithEmail.toUpperCase(),
            style: context.textTheme.bodyMedium,
          ),
          const SizedBox(height: 40),
          AppTextFormField(
            controller: _nameController,
            hintText: context.tr.name,
            validator: (value) => AppValidators.validateName(context, value),
            keyboardType: TextInputType.name,
          ),
          const SizedBox(height: 20),
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
              onPressed: _signup,
              child: Text(context.tr.getStarted.toUpperCase()),
            ),
          ),
        ],
      ),
    );
  }
}
