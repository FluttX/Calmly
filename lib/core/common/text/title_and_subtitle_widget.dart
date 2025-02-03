import 'package:calmly/core/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';

class TitleAndSubtitleWidget extends StatelessWidget {
  const TitleAndSubtitleWidget({
    required this.title,
    required this.subtitle,
    this.padding = const EdgeInsets.symmetric(horizontal: 50),
    super.key,
  });

  final String title;
  final String subtitle;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        children: [
          Text(
            title,
            style: context.textTheme.headlineSmall,
          ),
          const SizedBox(height: 15),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: context.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
