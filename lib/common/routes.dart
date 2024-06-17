import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goal_fit/features/catalog/presentation/pages/catalog.dart';
import 'package:goal_fit/features/catalog/presentation/pages/exercise.dart';
import 'package:goal_fit/features/catalog/presentation/pages/recipes.dart';
import 'package:goal_fit/features/catalog/presentation/pages/trainer.dart';
import 'package:goal_fit/features/catalog/presentation/pages/training.dart';
import 'package:goal_fit/features/chat/chat.dart';
import 'package:goal_fit/features/chat/user_chat.dart';
import 'package:goal_fit/features/chat/user_info.dart';
import 'package:goal_fit/features/home/home.dart';
import 'package:goal_fit/features/login/presentation/pages/auth/auth.dart';
import 'package:goal_fit/features/login/presentation/pages/auth/login.dart';
import 'package:goal_fit/features/login/presentation/pages/auth/password-recovery.dart';
import 'package:goal_fit/features/login/presentation/pages/onboard.dart';
import 'package:goal_fit/features/login/presentation/pages/splash.dart';
import 'package:goal_fit/features/main_page.dart';
import 'package:goal_fit/features/profile/presentation/pages/profile.dart';

class Routes {
  static String get splash => '/splashScreen';

  static String get homePage => '/homePage';

  static String get catalogPage => '/catalogPage';

  static String get trainingPage => '/trainingPage';

  static String get chatPage => '/chatPage';

  static String get profilePage => '/profilePage';

  static String get loginPage => '/loginPage';

  static String get userChatPage => '/userChatPage';

  static String get userInfoPage => '/userInfoPage';
  static String get exercise => 'exercise';
  static String get recipes => 'recipes';
  static String get trainer => 'trainer';
  static String get training => 'training';
  static String get onboardPage => '/onboardPage';

  static String get authPage => '/authPage';

  static String get passwordRecovery => '/loginPage/passwordRecovery';
}

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _sectionANavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'sectionANav');

class AppRoutes {
  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: rootNavigatorKey,
    initialLocation: Routes.splash,
    routes: <RouteBase>[
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: Routes.splash,
        builder: (BuildContext context, GoRouterState state) {
          return const Splash();
        },
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: Routes.onboardPage,
        builder: (BuildContext context, GoRouterState state) {
          return const OnboardPage();
        },
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: Routes.authPage,
        builder: (BuildContext context, GoRouterState state) {
          return const AuthPage();
        },
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: Routes.loginPage,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginPage();
        },
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: Routes.userInfoPage,
        builder: (BuildContext context, GoRouterState state) {
          return const UserInfoPage();
        },
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: Routes.userChatPage,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return buildPageWithDefaultTransition<void>(
              context: context, state: state, child: const UserChatPage());}),
     
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: Routes.passwordRecovery,
        builder: (BuildContext context, GoRouterState state) {
          return const PasswordRecoveryPage();
        },
      ),
      StatefulShellRoute.indexedStack(
        builder: (BuildContext context, GoRouterState state,
            StatefulNavigationShell navigationShell) {
          return MainPage(child: navigationShell);
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            navigatorKey: _sectionANavigatorKey,
            routes: <RouteBase>[
              GoRoute(
                  path: Routes.homePage,
                  name: Routes.homePage,
                  pageBuilder: (BuildContext context, GoRouterState state) {
                    return buildPageWithDefaultTransition<void>(
                      context: context,
                      state: state,
                      child: const HomePage(),
                    );
                  },
                  routes: const [
                    // GoRoute(
                    //   name: Routes.notification,
                    //   path: Routes.notification,
                    //   builder: (BuildContext context, GoRouterState state) {
                    //     return NotificationPage(
                    //         messages: state.extra as List<NotificationModel>);
                    //   },
                    // ),
                  ])
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                  name: Routes.catalogPage,
                  path: Routes.catalogPage,
                  pageBuilder: (BuildContext context, GoRouterState state) {
                    return buildPageWithDefaultTransition<void>(
                        context: context,
                        state: state,
                        child: const CatalogPage());
                  },
                  routes: [
                    GoRoute(
                      name: Routes.exercise,
                      path: Routes.exercise,
                      builder: (BuildContext context, GoRouterState state) {
                        return const ExercisePage();
                      },
                    ),
                    GoRoute(
                      name: Routes.recipes,
                      path: Routes.recipes,
                      builder: (BuildContext context, GoRouterState state) {
                        return const RecipesPage();
                      },
                    ),
                    GoRoute(
                      name: Routes.trainer,
                      path: Routes.trainer,
                      builder: (BuildContext context, GoRouterState state) {
                        return const TrainerPage();
                      },
                    ),
                    GoRoute(
                      name: Routes.training,
                      path: Routes.training,
                      builder: (BuildContext context, GoRouterState state) {
                        return const TrainingPage();
                      },
                    ),
                  ]),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: Routes.trainingPage,
                pageBuilder: (BuildContext context, GoRouterState state) {
                  return buildPageWithDefaultTransition<void>(
                      context: context,
                      state: state,
                      child: const TrainingPage());
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: Routes.chatPage,
                pageBuilder: (BuildContext context, GoRouterState state) {
                  return buildPageWithDefaultTransition<void>(
                      context: context, state: state, child: const ChatPage());
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                  path: Routes.profilePage,
                  pageBuilder: (BuildContext context, GoRouterState state) {
                    return buildPageWithDefaultTransition<void>(
                        context: context,
                        state: state,
                        child: const ProfilePage());
                  },
                  routes: const [
                    // GoRoute(
                    //   name: Routes.following,
                    //   path: Routes.following,
                    //   builder: (BuildContext context, GoRouterState state) {
                    //     return const FollowingPage();
                    //   },
                    // ),
                  ]),
            ],
          ),
        ],
      ),
    ],
  );
}

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 0),
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
