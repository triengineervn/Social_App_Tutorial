import 'package:flutter/material.dart';
import 'package:social_app_tutorial/routes/route_name.dart';
import 'package:social_app_tutorial/themes/app_assets.dart';
import 'package:social_app_tutorial/themes/app_colors.dart';
import 'package:social_app_tutorial/themes/app_styles.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: AppColors.light,
      child: MaterialButton(
        padding: const EdgeInsets.all(12),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.pushNamed(context, RouteName.loginScreen);
        },
        child: Text(
          "Log In",
          textAlign: TextAlign.center,
          style: AppStyles.body20Bold.copyWith(
            color: AppColors.destructive,
          ),
        ),
      ),
    );

    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: AppColors.destructive.withOpacity(0.8),
      child: MaterialButton(
        padding: const EdgeInsets.all(12),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.pushNamed(context, RouteName.regisScreen);
        },
        child: Text(
          "Sign Up",
          textAlign: TextAlign.center,
          style: AppStyles.body20Bold.copyWith(
            color: AppColors.light,
          ),
        ),
      ),
    );
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.landing_background),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  opacity: 1,
                  image: AssetImage(AppAssets.theme_background),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Find new friends nearby',
                    style: AppStyles.largeTitle,
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'With milions of users all over the world, we gives you the ability to connect with people no matter where you are.',
                    style: AppStyles.body17.copyWith(height: 1.3, letterSpacing: 0.4),
                  ),
                  const SizedBox(height: 44),
                  loginButton,
                  const SizedBox(height: 10),
                  signUpButton,
                  const SizedBox(height: 44),
                  Text(
                    'Or log in with',
                    style: AppStyles.caption13.copyWith(color: AppColors.gray1),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppAssets.ic_facebook),
                      const SizedBox(width: 8),
                      Image.asset(AppAssets.ic_twitter),
                      const SizedBox(width: 8),
                      Image.asset(AppAssets.ic_google_plus),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
