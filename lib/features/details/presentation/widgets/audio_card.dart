import 'package:calmly/core/common/common.dart';
import 'package:calmly/core/constants/constants.dart';
import 'package:calmly/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class AudioCard extends StatelessWidget {
  const AudioCard({
    required this.title,
    required this.time,
    this.isActive = false,
    this.onTap,
    super.key,
  });

  final bool isActive;
  final String title;
  final String time;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text('Body Scan', style: context.textTheme.bodyLarge),
      subtitle: Text(
        '5 MIN',
        style: context.textTheme.labelMedium
            ?.copyWith(fontWeight: FontWeight.w400),
      ),
      leading: RoundedIconButton(
        height: 40,
        width: 40,
        icon: AppIcons.icPlay,
        iconColor:
            isActive ? context.colors.background : context.colors.textSecondary,
        color:
            isActive ? context.colors.primaryColor : context.colors.background,
        borderColor: isActive
            ? context.colors.primaryColor
            : context.colors.textSecondary,
      ),
    );
  }
}
