import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.suffix,
    super.key,
  });

  final bool obscureText;
  final String hintText;
  final TextEditingController controller;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        suffix: suffix,
      ),
    );
  }
}
