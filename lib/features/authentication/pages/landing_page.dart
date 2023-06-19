import 'package:flutter/material.dart';
import 'package:social_app_tutorial/routes/route_name.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Landing Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteName.loginScreen);
              },
              child: const Text('Go to the Login screen'),
            ),
          ],
        ),
      ),
    );
  }
}
