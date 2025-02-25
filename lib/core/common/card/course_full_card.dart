import 'package:calmly/core/constants/constants.dart';
import 'package:calmly/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseFullCard extends StatelessWidget {
  const CourseFullCard({
    required this.title,
    required this.leftSubtitle,
    required this.rightSubtitle,
    this.titleColor,
    this.subtitleColor,
    this.iconColor,
    this.iconBackgroundColor,
    this.backgroundColor = const Color(0xFF333242),
    this.backgroundImage = AppImages.dailyThoughtBG,
    this.onPressed,
    super.key,
  });

  final Color? titleColor;
  final Color? subtitleColor;
  final Color? iconColor;
  final Color? iconBackgroundColor;
  final Color backgroundColor;
  final String title;
  final String leftSubtitle;
  final String rightSubtitle;
  final String backgroundImage;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            SvgPicture.asset(backgroundImage, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 20,
                left: 30,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: context.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: titleColor ?? context.colors.background,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            leftSubtitle,
                            style: context.textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w400,
                              color: subtitleColor ?? context.colors.background,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Icon(
                              Icons.circle,
                              size: 4,
                              color: subtitleColor ?? context.colors.background,
                            ),
                          ),
                          Text(
                            rightSubtitle,
                            style: context.textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w400,
                              color: subtitleColor ?? context.colors.background,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: onPressed,
                    icon: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: iconBackgroundColor ?? context.colors.background,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        AppIcons.icPlay,
                        height: 12,
                        width: 12,
                        fit: BoxFit.none,
                        colorFilter: iconColor != null
                            ? ColorFilter.mode(iconColor!, BlendMode.srcIn)
                            : null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
