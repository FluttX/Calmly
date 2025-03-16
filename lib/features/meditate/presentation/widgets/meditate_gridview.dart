import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/features/meditate/meditate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MeditateGridview extends StatelessWidget {
  const MeditateGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MeditateTopicBloc, MeditateTopicState>(
      builder: (context, state) {
        if (state is MeditateTopicLoading) {
          return const Center(child: CircularProgressIndicator.adaptive());
        } else if (state is MeditateTopicLoaded) {
          return MasonryGridView.count(
            shrinkWrap: true,
            itemCount: state.topics.length,
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            itemBuilder: (context, index) {
              final height = index % 4 == 0 || index % 4 == 2
                  ? context.width * 0.55
                  : context.width * 0.45;

              final topic = state.topics[index];

              return MeditateCard(
                height: height,
                title: topic.title,
                backgroundImage: topic.image,
              );
            },
          );
        } else if (state is MeditateTopicError) {
          return Center(child: Text('Error loading topics: ${state.message}'));
        }
        return const SizedBox();
      },
    );
  }
}
