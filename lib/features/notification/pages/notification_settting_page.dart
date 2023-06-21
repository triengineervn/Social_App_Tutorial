import 'package:flutter/material.dart';
import 'package:social_app_tutorial/routes/route_name.dart';
import 'package:social_app_tutorial/themes/app_colors.dart';
import 'package:social_app_tutorial/themes/app_styles.dart';

class SettingNotiScreen extends StatefulWidget {
  const SettingNotiScreen({super.key});

  @override
  State<SettingNotiScreen> createState() => _SettingNotiScreenState();
}

class _SettingNotiScreenState extends State<SettingNotiScreen> {
  bool switchNoti = false;

  @override
  Widget build(BuildContext context) {
    final nextButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: AppColors.destructive,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            RouteName.bottomNavMenu,
            (route) => false,
          );
        },
        child: Text(
          'Continue'.toUpperCase(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        color: AppColors.primary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                CustomPaint(
                  painter: CirclePainter(),
                  child: const Icon(
                    Icons.notifications_rounded,
                    size: 180,
                    color: AppColors.light,
                  ),
                )
              ],
            ),
            const SizedBox(height: 40),
            Text(
              'Turn on Notifications',
              style: AppStyles.headline1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 18),
            Text(
              'Enable push notifications to let send you personal news and updates',
              style: AppStyles.body17.copyWith(height: 1.2),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 44),
            Container(
              height: 67,
              decoration: BoxDecoration(
                color: AppColors.light,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Turn on Notifications',
                    style: AppStyles.body17.copyWith(color: AppColors.primary, letterSpacing: -0.41),
                  ),
                  Switch(
                    value: switchNoti,
                    activeColor: AppColors.destructive,
                    onChanged: (bool value) {
                      setState(() {
                        switchNoti = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            nextButton,
          ],
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = AppColors.dark
      ..strokeWidth = 15;

    Offset center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, 100, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
