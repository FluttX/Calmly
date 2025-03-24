import 'package:calmly/core/utils/utils.dart';
import 'package:calmly/features/home/home.dart';
import 'package:calmly/features/main_tab_view/main_tab_view.dart';
import 'package:calmly/features/meditate/meditate.dart';
import 'package:calmly/features/music/music.dart';
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
  final _selectedTab = ValueNotifier<int>(0);

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
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
            const MusicScreen(),
            const MeditateScreen(),
            const MusicScreen(),
            Container(color: Colors.orange.shade300),
          ],
        ),
        bottomNavigationBar: CalmlyBottomNavigationBar(
          valueListenable: _selectedTab,
          onChanged: _onChangeTap,
        ),
      ),
    );
  }
}
