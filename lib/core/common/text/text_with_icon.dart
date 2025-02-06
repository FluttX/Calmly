import 'package:calmly/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextWithIcon extends StatelessWidget {
  const TextWithIcon({required this.title, required this.icon, super.key});

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 10,
      children: [
        SvgPicture.asset(icon, height: 16, width: 20),
        const SizedBox(width: 8),
        Text(title, style: context.textTheme.labelLarge),
      ],
    );
  }
}
