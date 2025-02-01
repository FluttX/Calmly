import 'package:calmly/app/core/theme/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TwoTextRichText extends StatelessWidget {
  const TwoTextRichText({
    required this.staticText,
    required this.actionText,
    this.onPressed,
    super.key,
  });

  final String staticText;
  final String actionText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: staticText,
        style: context.theme.textTheme.bodySmall,
        children: [
          const TextSpan(text: ' '),
          TextSpan(
            text: actionText,
            style: context.theme.textTheme.bodySmall
                ?.copyWith(color: context.theme.color.primaryColor),
            recognizer: TapGestureRecognizer()..onTap = onPressed,
          ),
        ],
      ),
    );
  }
}
