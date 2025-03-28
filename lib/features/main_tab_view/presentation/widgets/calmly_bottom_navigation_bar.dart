import 'package:calmly/core/common/common.dart';
import 'package:calmly/core/constants/constants.dart';
import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CalmlyBottomNavigationBar extends StatelessWidget {
  const CalmlyBottomNavigationBar({
    required this.valueListenable,
    required this.onChanged,
    super.key,
  });

  final ValueListenable<int> valueListenable;
  final void Function(int) onChanged;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: valueListenable,
      builder: (context, currentIndex, child) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            color: currentIndex == 1 || currentIndex == 3
                ? context.colors.secondaryBackground
                : context.colors.background,
            boxShadow: [
              BoxShadow(
                color: currentIndex == 1 || currentIndex == 3
                    ? Colors.white10
                    : Colors.black12,
                blurRadius: 4,
              ),
            ],
          ),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonWithIconAndText(
                  iSActive: currentIndex == 0,
                  inactiveColor: Colors.transparent,
                  text: context.tr.home,
                  icon: AppIcons.icHome,
                  onTap: () => onChanged(0),
                ),
                ButtonWithIconAndText(
                  iSActive: currentIndex == 1,
                  inactiveColor: Colors.transparent,
                  text: context.tr.sleep,
                  icon: AppIcons.icSleep,
                  onTap: () => onChanged(1),
                ),
                ButtonWithIconAndText(
                  iSActive: currentIndex == 2,
                  inactiveColor: Colors.transparent,
                  text: context.tr.meditate,
                  icon: AppIcons.icMeditate,
                  onTap: () => onChanged(2),
                ),
                ButtonWithIconAndText(
                  iSActive: currentIndex == 3,
                  inactiveColor: Colors.transparent,
                  text: context.tr.music,
                  icon: AppIcons.icMusic,
                  onTap: () => onChanged(3),
                ),
                ButtonWithIconAndText(
                  iSActive: currentIndex == 4,
                  inactiveColor: Colors.transparent,
                  text: context.tr.profile,
                  icon: AppIcons.icProfile,
                  onTap: () => onChanged(4),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
