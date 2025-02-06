import 'package:calmly/core/constants/constants.dart';
import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseFullTab extends StatelessWidget {
  const CourseFullTab({this.onPressed, super.key});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF333242),
        borderRadius: BorderRadius.circular(15),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            SvgPicture.asset(
              AppImages.dailyThoughtBG,
              fit: BoxFit.cover,
            ),
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
                        context.tr.dailyThought,
                        style: context.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: context.colors.background,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            context.tr.meditation,
                            style: context.textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w400,
                              color: context.colors.background,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Icon(
                              Icons.circle,
                              size: 4,
                              color: context.colors.background,
                            ),
                          ),
                          Text(
                            context.tr.minCount('3-10'),
                            style: context.textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w400,
                              color: context.colors.background,
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
                        color: context.colors.background,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        AppIcons.icPlay,
                        height: 12,
                        width: 12,
                        fit: BoxFit.none,
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
