import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_app_tutorial/features/authentication/pages/landing_page.dart';
import 'package:social_app_tutorial/features/authentication/pages/login_page.dart';
import 'package:social_app_tutorial/features/authentication/pages/regis_page.dart';
import 'package:social_app_tutorial/features/messenger/pages/messenger_page.dart';
import 'package:social_app_tutorial/features/notification/pages/notification_page.dart';
import 'package:social_app_tutorial/features/post/pages/home_page.dart';
import 'package:social_app_tutorial/features/profile/pages/profile_page.dart';
import 'package:social_app_tutorial/features/stream/pages/stream_page.dart';
import 'package:social_app_tutorial/routes/route_name.dart';
import 'package:social_app_tutorial/widgets/stateless/navigation.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorHomeKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _shellNavigatorStreamKey = GlobalKey<NavigatorState>(debugLabel: 'stream');
final _shellNavigatorMessageKey = GlobalKey<NavigatorState>(debugLabel: 'message');
final _shellNavigatorNotificationKey = GlobalKey<NavigatorState>(debugLabel: 'notification');
final _shellNavigatorProfileKey = GlobalKey<NavigatorState>(debugLabel: 'profile');

final GoRouter _router = GoRouter(
  initialLocation: RouteName.homeScreen,
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorHomeKey,
          routes: [
            GoRoute(
              path: RouteName.homeScreen,
              builder: (context, state) => const HomePage(),
            ),
          ],
        ),
      ],
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorStreamKey,
          routes: [
            GoRoute(
              path: RouteName.streamScreen,
              builder: (context, state) => const StreamPage(),
            ),
          ],
        ),
      ],
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorMessageKey,
          routes: [
            GoRoute(
              path: RouteName.messageScreen,
              builder: (context, state) => const MessengerPage(),
            ),
          ],
        ),
      ],
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorNotificationKey,
          routes: [
            GoRoute(
              path: RouteName.notificationScreen,
              builder: (context, state) => const NotificationPage(),
            ),
          ],
        ),
      ],
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorProfileKey,
          routes: [
            GoRoute(
              path: RouteName.profileScreen,
              builder: (context, state) => const ProfilePage(),
            ),
          ],
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social App',
      routes: {
        RouteName.landingScreen: (context) => const LandingPage(),
        RouteName.loginScreen: (context) => const LoginScreen(),
        RouteName.regisScreen: (context) => const RegisScreen(),
        RouteName.dashboard: (context) => const Dashboard(),
      },
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
