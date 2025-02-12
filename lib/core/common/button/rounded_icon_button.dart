import 'package:calmly/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    required this.icon,
    this.height = 50,
    this.width = 50,
    this.iconSize = 16,
    this.color,
    this.borderColor,
    this.iconColor,
    this.onPressed,
    super.key,
  });

  final double height;
  final double width;
  final double iconSize;
  final String icon;
  final Color? color;
  final Color? borderColor;
  final Color? iconColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      icon: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color ?? context.colors.background,
          shape: BoxShape.circle,
          border: borderColor != null ? Border.all(color: borderColor!) : null,
        ),
        alignment: Alignment.center,
        child: SvgPicture.asset(
          icon,
          height: iconSize,
          width: iconSize,
          colorFilter: iconColor != null
              ? ColorFilter.mode(iconColor!, BlendMode.srcIn)
              : null,
        ),
      ),
    );
  }
}
