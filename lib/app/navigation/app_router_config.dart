import 'package:calmly/app/navigation/navigation.dart';
import 'package:calmly/core/di/inject.dart';
import 'package:calmly/features/authentication/authentication.dart';
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
      builder: (_, __) => const OnBoardingScreen(),
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
  ];
}
