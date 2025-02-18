import 'package:calmly/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonWithIconAndText extends StatelessWidget {
  const ButtonWithIconAndText({
    required this.text,
    required this.icon,
    this.height = 46,
    this.width = 46,
    this.iconSize = 22,
    this.iSActive = false,
    this.activeColor,
    this.inactiveColor,
    this.onTap,
    super.key,
  });

  final bool iSActive;
  final double height;
  final double width;
  final double iconSize;
  final String text;
  final String icon;
  final Color? activeColor;
  final Color? inactiveColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            height: height,
            width: width,
            duration: kThemeAnimationDuration,
            decoration: BoxDecoration(
              color: iSActive
                  ? activeColor ?? context.colors.primaryColor
                  : inactiveColor ?? context.colors.background,
              borderRadius: BorderRadius.circular(18),
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              icon,
              height: iconSize,
              width: iconSize,
              colorFilter: iSActive
                  ? ColorFilter.mode(
                      context.colors.background,
                      BlendMode.srcIn,
                    )
                  : null,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            text,
            style: context.textTheme.labelLarge?.copyWith(
              color: iSActive ? context.colors.primaryColor : null,
            ),
          ),
        ],
      ),
    );
  }
}
