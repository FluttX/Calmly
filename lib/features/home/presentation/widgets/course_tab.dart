import 'package:calmly/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class CourseTab extends StatelessWidget {
  const CourseTab({
    required this.image,
    required this.title,
    required this.type,
    required this.time,
    this.titleTextColor,
    this.background,
    this.buttonBackground,
    this.buttonTextColor,
    this.onTap,
    super.key,
  });

  final String image;
  final String title;
  final String type;
  final String time;
  final Color? titleTextColor;
  final Color? background;
  final Color? buttonBackground;
  final Color? buttonTextColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: background ?? context.colors.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                image,
                height: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: titleTextColor ?? context.colors.textTertiary,
                    ),
                  ),
                  Text(
                    type,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: titleTextColor?.withOpacity(0.9) ??
                          context.colors.textTertiary,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Wrap(
                    alignment: WrapAlignment.center,
                    runAlignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        time,
                        style: context.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w400,
                          color: titleTextColor?.withOpacity(0.9) ??
                              context.colors.textTertiary,
                        ),
                      ),
                      const SizedBox(width: 10),
                      FilledButton(
                        onPressed: onTap,
                        style: FilledButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          backgroundColor:
                              buttonBackground ?? context.colors.tertiaryColor,
                          fixedSize: const Size(double.infinity, 35),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          'START',
                          style: context.textTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                            color:
                                buttonTextColor ?? context.colors.textPrimary,
                          ),
                        ),
                      ),
                    ],
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
