import 'package:flutter/material.dart';
import 'package:social_app_tutorial/routes/route_name.dart';
import 'package:social_app_tutorial/themes/app_assets.dart';
import 'package:social_app_tutorial/themes/app_colors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.app_background),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context, RouteName.loginScreen, (_) => false);
                  },
                  child: const Text(
                    'Log in',
                    style: TextStyle(color: AppColors.light, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
