import 'package:calmly/core/common/common.dart';
import 'package:calmly/core/constants/app_icons.dart';
import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/cupertino.dart';

class CourseInfo extends StatelessWidget {
  const CourseInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr.goodMorning,
          style: context.textTheme.headlineMedium,
        ),
        const SizedBox(height: 5),
        Text(
          context.tr.course.toUpperCase(),
          style: context.textTheme.labelLarge
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        Text(
          context.tr.courseDetails,
          style: context.textTheme.bodyMedium?.copyWith(fontSize: 16),
        ),
        const SizedBox(height: 20),
        Wrap(
          runSpacing: 10,
          spacing: 40,
          children: [
            TextWithIcon(
              title: context.tr.favoriteCount('24,234'),
              icon: AppIcons.icFavoriteFilled,
            ),
            TextWithIcon(
              title: context.tr.listenCount('34,234'),
              icon: AppIcons.icHeadphone,
            ),
          ],
        ),
      ],
    );
  }
}
