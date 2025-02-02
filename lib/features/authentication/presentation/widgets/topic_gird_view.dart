import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/features/authentication/authentication.dart';
import 'package:calmly/features/authentication/domain/entities/topic_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TopicGirdView extends StatelessWidget {
  const TopicGirdView({
    required this.topics,
    super.key,
  });

  final List<TopicData> topics;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      itemCount: topics.length,
      padding: const EdgeInsets.symmetric(vertical: 30),
      itemBuilder: (context, index) {
        final height = index % 4 == 0 || index % 4 == 2
            ? context.width * 0.55
            : context.width * 0.45;
        return TopicCard(
          height: height,
          topic: topics[index],
        );
      },
    );
  }
}
