import 'package:calmly/app/core/theme/theme.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HaveAccountRichText extends StatelessWidget {
  const HaveAccountRichText({
    required this.title,
    required this.message,
    this.onPressed,
    super.key,
  });

  final String title;
  final String message;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: message.toUpperCase(),
        style: context.theme.textTheme.bodySmall,
        children: [
          const TextSpan(text: '  '),
          TextSpan(
            text: title.toUpperCase(),
            style: context.theme.textTheme.bodySmall
                ?.copyWith(color: context.theme.color.primaryColor),
            recognizer: TapGestureRecognizer()
              ..onTap = () => debugPrint(context.tr.signup),
          ),
        ],
      ),
    );
  }
}
