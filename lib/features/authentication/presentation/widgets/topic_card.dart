import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/features/authentication/domain/entities/topic_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopicCard extends StatelessWidget {
  const TopicCard({required this.height, required this.topic, super.key});

  final double height;
  final TopicData topic;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: HexColor.formHex(topic.color),
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Expanded(
              child: SvgPicture.asset(
                topic.image,
                fit: BoxFit.none,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 12, right: 16),
              child: Text(
                topic.title.trim(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: context.textTheme.titleMedium
                    ?.copyWith(color: HexColor.formHex(topic.textColor)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
