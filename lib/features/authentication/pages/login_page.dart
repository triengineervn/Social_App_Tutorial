import 'package:flutter/material.dart';
import 'package:social_app_tutorial/routes/route_name.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteName.regisScreen);
              },
              child: const Text('Sign up'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, RouteName.bottomNavMenu, (_) => false);
              },
              child: const Text('Log in'),
            ),
          ],
        ),
      ),
    );
  }
}
