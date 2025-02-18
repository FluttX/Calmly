import 'package:calmly/core/common/common.dart';
import 'package:calmly/core/constants/constants.dart';
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
            SizedBox(
              height: 120,
              child: ListView.separated(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                itemBuilder: (context, index) {
                  return ButtonWithIconAndText(
                    height: 50,
                    width: 50,
                    iSActive: index == 0,
                    inactiveColor: const Color(0xFFA0A3B1),
                    text: context.tr.home,
                    icon: AppIcons.icAll,
                  );
                },
                separatorBuilder: (_, __) => const SizedBox(width: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
