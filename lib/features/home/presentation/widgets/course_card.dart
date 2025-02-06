import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/features/home/domain/entities/course_data.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({required this.course, super.key});

  final CourseData course;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * 0.38,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: context.width * 0.35 * 0.80,
            decoration: BoxDecoration(
              color: HexColor.formHex(course.color),
              borderRadius: BorderRadius.circular(15),
            ),
            clipBehavior: Clip.antiAlias,
            child: SvgPicture.asset(course.image, fit: BoxFit.fill),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  course.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.titleSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      course.type.toUpperCase(),
                      style: context.textTheme.bodySmall
                          ?.copyWith(fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Icon(
                        Icons.circle,
                        size: 4,
                        color: context.colors.textSecondary,
                      ),
                    ),
                    Text(
                      context.tr.minCount(course.time),
                      style: context.textTheme.bodySmall
                          ?.copyWith(fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
