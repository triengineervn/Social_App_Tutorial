import 'package:flutter/material.dart';
import 'package:social_app_tutorial/routes/route_name.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, RouteName.loginScreen, (_) => false);
              },
              child: const Text('log out'),
            ),
          ],
        ),
      ),
    );
  }
}
