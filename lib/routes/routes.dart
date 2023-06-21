import 'package:flutter/material.dart';
import 'package:social_app_tutorial/features/authentication/pages/forgot_page.dart';
import 'package:social_app_tutorial/features/authentication/pages/landing_page.dart';
import 'package:social_app_tutorial/features/authentication/pages/login_page.dart';
import 'package:social_app_tutorial/features/authentication/pages/regis_page.dart';
import 'package:social_app_tutorial/features/notification/pages/notification_settting_page.dart';
import 'package:social_app_tutorial/features/post/widgets/bottomNav_menu.dart';
import 'package:social_app_tutorial/routes/route_name.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      title: 'Social App',
      routes: {
        RouteName.landingScreen: (context) => const LandingPage(),
        RouteName.loginScreen: (context) => const LoginScreen(),
        RouteName.forgotPassScreen: (context) => const ForgotPassScreen(),
        RouteName.regisScreen: (context) => const RegisScreen(),
        RouteName.settingNotificationScreen: (context) => const SettingNotiScreen(),
        RouteName.bottomNavMenu: (context) => const BottomNavMenu(),
      },
    );
  }
}
