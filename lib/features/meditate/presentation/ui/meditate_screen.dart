import 'package:calmly/app/navigation/navigation.dart';
import 'package:calmly/core/common/common.dart';
import 'package:calmly/core/constants/constants.dart';
import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/core/utils/utils.dart';
import 'package:calmly/features/meditate/meditate.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            CourseFullCard(
              title: context.tr.dailyClam,
              titleColor: context.colors.textPrimary,
              leftSubtitle: DateUtilsHelper.formatDate(DateTime.now()),
              rightSubtitle: context.tr.pausePractice,
              subtitleColor: const Color(0xFF5A6175),
              backgroundImage: AppImages.dailyClam,
              backgroundColor: const Color(0xFFF1DDCF),
              iconColor: context.colors.white,
              iconBackgroundColor: context.colors.secondaryColor,
              onPressed: () => context.push(AppRoute.details),
            ),
            const MeditateGridview(),
          ],
        ),
      ),
    );
  }
}
