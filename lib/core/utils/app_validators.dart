import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/cupertino.dart';

class AppValidators {
  static String? validateEmail(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return context.tr.emailIsRequired;
    }
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) {
      return context.tr.enterAValidEmail;
    }
    return null;
  }

  static String? validatePassword(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return context.tr.passwordIsRequired;
    }
    if (value.length < 6) {
      return context.tr.passwordValidation;
    }
    return null;
  }

  static String? validateName(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return context.tr.nameIsRequired;
    }
    if (value.length < 3) {
      return context.tr.nameValidation;
    }
    return null;
  }
}
