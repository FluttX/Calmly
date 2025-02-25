import 'package:calmly/app/navigation/navigation.dart';
import 'package:calmly/core/common/common.dart';
import 'package:calmly/core/constants/constants.dart';
import 'package:calmly/core/extensions/extensions.dart';
import 'package:calmly/features/home/home.dart';
import 'package:calmly/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String greetingMessage;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    greetingMessage = _getGreetingMessage();
  }

  String _getGreetingMessage() {
    final hour = DateTime.now().hour;
    if (hour >= 5 && hour < 12) {
      return context.tr.goodMorningUser('Md. Al-Amin');
    } else if (hour >= 12 && hour < 18) {
      return context.tr.goodAfternoonUser('Md. Al-Amin');
    } else {
      return context.tr.goodEveningUser('Md. Al-Amin');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(AppImages.onboardingAppLogo),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              TitleAndSubtitleWidget(
                crossAxisAlignment: CrossAxisAlignment.start,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                title: greetingMessage,
                titleTextAlign: TextAlign.start,
                subtitle: context.tr.weWishYouHaveAGoodDay,
                subTitleTextAlign: TextAlign.start,
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    CourseTab(
                      image: AppImages.basics,
                      title: context.tr.basics,
                      type: context.tr.course.toUpperCase(),
                      time: context.tr.minCount('3-10'),
                      onTap: () => context.push(AppRoute.details),
                    ),
                    const SizedBox(width: 20),
                    CourseTab(
                      image: AppImages.relaxation,
                      background: context.colors.cardBackground,
                      title: context.tr.relaxation,
                      titleTextColor: context.colors.textPrimary,
                      type: context.tr.music.toUpperCase(),
                      time: context.tr.minCount('4-15'),
                      buttonBackground: context.colors.textPrimary,
                      buttonTextColor: context.colors.background,
                      onTap: () => context.push(AppRoute.details),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              CourseFullCard(
                title: context.tr.dailyThought,
                leftSubtitle: context.tr.meditation,
                rightSubtitle: context.tr.minCount('3-10'),
                onPressed: () => context.push(AppRoute.details),
              ),
              const SizedBox(height: 30),
              const RecommendedCourses(),
            ],
          ),
        ),
      ),
    );
  }
}
