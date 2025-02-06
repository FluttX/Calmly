import 'package:calmly/core/common/common.dart';
import 'package:calmly/core/constants/constants.dart';
import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/core/utils/utils.dart';
import 'package:calmly/features/home/home.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final ValueNotifier<int> _selectedTab = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    /*_tabController.addListener(() {
      _selectedTab.value = _tabController.index;
    });*/

    _tabController.animation?.addListener(() {
      final newIndex = _tabController.animation?.value.round();
      if (newIndex != _selectedTab.value) {
        _selectedTab.value = newIndex ?? 0;
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _selectedTab.dispose();
    super.dispose();
  }

  void _onChangeTap(int index) {
    if (index != _selectedTab.value) {
      _selectedTab.value = index;

      if ((index - _tabController.index).abs() > 1) {
        _tabController.index = index;
      } else {
        _tabController.animateTo(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (!didPop) {
          final exit = await AppHelper.showAlertDialog(
            context: context,
            title: context.tr.exitApp,
            content: context.tr.areYouSureToExit,
          );
          if (exit) await SystemNavigator.pop();
        }
      },
      child: Scaffold(
        body: TabBarView(
          controller: _tabController,
          physics: const BouncingScrollPhysics(),
          children: [
            const HomeScreen(),
            Container(color: Colors.green.shade300),
            Container(color: Colors.amber.shade300),
            Container(color: Colors.blue.shade300),
            Container(color: Colors.orange.shade300),
          ],
        ),
        bottomNavigationBar: ValueListenableBuilder(
          valueListenable: _selectedTab,
          builder: (context, currentIndex, child) {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: context.colors.background,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
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
                      text: context.tr.home,
                      icon: AppIcons.icHome,
                      onTap: () => _onChangeTap(0),
                    ),
                    ButtonWithIconAndText(
                      iSActive: currentIndex == 1,
                      text: context.tr.sleep,
                      icon: AppIcons.icSleep,
                      onTap: () => _onChangeTap(1),
                    ),
                    ButtonWithIconAndText(
                      iSActive: currentIndex == 2,
                      text: context.tr.meditate,
                      icon: AppIcons.icMeditate,
                      onTap: () => _onChangeTap(2),
                    ),
                    ButtonWithIconAndText(
                      iSActive: currentIndex == 3,
                      text: context.tr.music,
                      icon: AppIcons.icMusic,
                      onTap: () => _onChangeTap(3),
                    ),
                    ButtonWithIconAndText(
                      iSActive: currentIndex == 4,
                      text: context.tr.profile,
                      icon: AppIcons.icProfile,
                      onTap: () => _onChangeTap(4),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
