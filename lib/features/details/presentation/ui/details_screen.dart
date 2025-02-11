import 'package:calmly/features/details/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  ValueNotifier<bool> isFavorite = ValueNotifier(false);

  @override
  void dispose() {
    isFavorite.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (_, __) => [
          DetailsAppBar(
            isFavorite: isFavorite,
            onFavoritePressed: () {
              isFavorite.value = !isFavorite.value;
              HapticFeedback.lightImpact();
            },
            onDownloadPressed: () {},
          ),
        ],
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CourseInfo(),
            Flexible(child: CourseAudioNarration()),
          ],
        ),
      ),
    );
  }
}
