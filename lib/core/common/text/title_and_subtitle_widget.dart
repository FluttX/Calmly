import 'package:calmly/core/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';

class TitleAndSubtitleWidget extends StatelessWidget {
  const TitleAndSubtitleWidget({
    required this.title,
    required this.subtitle,
    this.titleTextAlign = TextAlign.center,
    this.subTitleTextAlign = TextAlign.center,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.padding = const EdgeInsets.symmetric(horizontal: 50),
    super.key,
  });

  final String title;
  final String subtitle;
  final TextAlign titleTextAlign;
  final TextAlign subTitleTextAlign;
  final CrossAxisAlignment crossAxisAlignment;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Text(
            title,
            textAlign: titleTextAlign,
            style: context.textTheme.headlineSmall,
          ),
          const SizedBox(height: 15),
          Text(
            subtitle,
            textAlign: subTitleTextAlign,
            style: context.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
