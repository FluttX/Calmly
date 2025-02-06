import 'package:calmly/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    required this.icon,
    this.color,
    this.onPressed,
    super.key,
  });

  final String icon;
  final Color? color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      icon: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: color ?? context.colors.background,
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: SvgPicture.asset(icon, height: 16, width: 16),
      ),
    );
  }
}
