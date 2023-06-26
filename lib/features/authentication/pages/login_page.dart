import 'package:flutter/material.dart';
import 'package:social_app_tutorial/features/authentication/widgets/stateless/text_editing_controller.dart';
import 'package:social_app_tutorial/routes/route_name.dart';
import 'package:social_app_tutorial/themes/app_assets.dart';
import 'package:social_app_tutorial/themes/app_colors.dart';
import 'package:social_app_tutorial/themes/app_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? errorMessage;
  @override
  Widget build(BuildContext context) {
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: AppColors.destructive,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            RouteName.settingNotificationScreen,
            (route) => false,
          );
        },
        child: Text(
          'Login'.toUpperCase(),
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
      appBar: AppBar(
        forceMaterialTransparency: true,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Center(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.login_background),
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
              padding: const EdgeInsets.all(30),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back',
                      style: AppStyles.headline1.copyWith(fontSize: 34),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Login to your account',
                      style: AppStyles.body20,
                    ),
                    const SizedBox(height: 58),
                    CustomTextField(textController: emailController, typeOfText: 'email'),
                    const SizedBox(height: 8),
                    CustomTextField(textController: passwordController, typeOfText: 'password'),
                    const SizedBox(height: 40),
                    loginButton,
                    const SizedBox(height: 53),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RouteName.forgotPassScreen);
                        },
                        child: Text(
                          'For got password?',
                          style: AppStyles.body15,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
