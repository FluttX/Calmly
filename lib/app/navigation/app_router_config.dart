import 'package:calmly/app/navigation/navigation.dart';
import 'package:calmly/core/di/inject.dart';
import 'package:calmly/features/authentication/authentication.dart';
import 'package:calmly/features/details/details.dart';
import 'package:calmly/features/home/home.dart';
import 'package:calmly/features/main_tab_view/main_tab_view.dart';
import 'package:calmly/features/meditate/meditate.dart';
import 'package:calmly/features/onboarding/onboarding.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouterConfig {
  static final GoRouter router = GoRouter(
    routes: _routes,
    initialLocation: AppRoute.root,
  );

  static final _routes = <RouteBase>[
    GoRoute(
      path: AppRoute.root,
      name: AppRoute.root,
      builder: (_, __) => const StartupScreen(),
    ),
    GoRoute(
      path: AppRoute.login,
      name: AppRoute.login,
      builder: (_, __) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoute.signup,
      name: AppRoute.signup,
      builder: (_, __) => const SignupScreen(),
    ),
    GoRoute(
      path: AppRoute.welcome,
      name: AppRoute.welcome,
      builder: (_, __) => const WelcomeScreen(),
    ),
    GoRoute(
      path: AppRoute.chooseTopic,
      name: AppRoute.chooseTopic,
      builder: (_, __) => BlocProvider(
        create: (context) => TopicBloc(inject())..add(FetchTopicsEvent()),
        child: const ChooseTopicScreen(),
      ),
    ),
    GoRoute(
      path: AppRoute.remainder,
      name: AppRoute.remainder,
      builder: (_, __) => BlocProvider(
        create: (context) => DayBloc(inject())..add(LoadDaysEvent()),
        child: const RemainderScreen(),
      ),
    ),
    GoRoute(
      path: AppRoute.mainView,
      name: AppRoute.mainView,
      builder: (_, __) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                CourseBloc(inject())..add(LoadRecommendedCoursesEvent()),
          ),
          BlocProvider(
            create: (context) =>
                MeditateCategoryBloc(inject())..add(LoadMeditateCategories()),
          ),
          BlocProvider(
            create: (context) =>
                MeditateTopicBloc(inject())..add(LoadMeditateTopics()),
          ),
        ],
        child: const MainTabView(),
      ),
    ),
    GoRoute(
      path: AppRoute.details,
      name: AppRoute.details,
      builder: (_, __) => BlocProvider(
        create: (context) => AudioBloc(inject())..add(LoadAudioResponseEvent()),
        child: const DetailsScreen(),
      ),
    ),
  ];
}
