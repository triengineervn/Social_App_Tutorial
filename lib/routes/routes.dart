import 'package:flutter/material.dart';
import 'package:social_app_tutorial/features/authentication/pages/landing_page.dart';
import 'package:social_app_tutorial/features/authentication/pages/login_page.dart';
import 'package:social_app_tutorial/features/authentication/pages/regis_page.dart';
import 'package:social_app_tutorial/features/post/widgets/bottomNav_menu.dart';
import 'package:social_app_tutorial/routes/route_name.dart';

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
        RouteName.bottomNavMenu: (context) => const BottomNavMenu(),
      },
    );
  }
}
