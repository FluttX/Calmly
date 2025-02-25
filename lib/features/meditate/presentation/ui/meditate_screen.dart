import 'package:calmly/core/common/common.dart';
import 'package:calmly/features/meditate/meditate.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';

class MeditateScreen extends StatelessWidget {
  const MeditateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              bottom: false,
              child: TitleAndSubtitleWidget(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                title: context.tr.meditate,
                subtitle: context.tr.meditateSubtitle,
              ),
            ),
            const MeditateCategories(),
          ],
        ),
      ),
    );
  }
}
