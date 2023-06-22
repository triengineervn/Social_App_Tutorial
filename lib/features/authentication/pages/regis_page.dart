import 'package:flutter/material.dart';
import 'package:social_app_tutorial/features/authentication/widgets/stateless/text_editing_controller.dart';
import 'package:social_app_tutorial/routes/route_name.dart';
import 'package:social_app_tutorial/themes/app_assets.dart';
import 'package:social_app_tutorial/themes/app_colors.dart';
import 'package:social_app_tutorial/themes/app_styles.dart';

class RegisScreen extends StatefulWidget {
  const RegisScreen({super.key});

  @override
  State<RegisScreen> createState() => _RegisScreenState();
}

class _RegisScreenState extends State<RegisScreen> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final signupButton = Material(
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
          'Sign up'.toUpperCase(),
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
                  image: AssetImage(AppAssets.regis_background),
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create an account',
                      style: AppStyles.headline1.copyWith(fontSize: 34),
                    ),
                    const SizedBox(height: 50),
                    CustomTextField(textController: userNameController, typeOfText: 'user'),
                    const SizedBox(height: 8),
                    CustomTextField(textController: emailController, typeOfText: 'email'),
                    const SizedBox(height: 8),
                    CustomTextField(textController: phoneController, typeOfText: 'phone'),
                    const SizedBox(height: 8),
                    CustomTextField(textController: dateOfBirthController, typeOfText: 'dob'),
                    const SizedBox(height: 8),
                    CustomTextField(textController: passwordController, typeOfText: 'password'),
                    const SizedBox(height: 40),
                    signupButton,
                    const SizedBox(height: 60),
                    Center(
                      child: Text(
                        'By clicking Sign up you agree to the following',
                        style: AppStyles.body15.copyWith(color: AppColors.gray1),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Center(
                      child: Text(
                        'Terms and Conditions without reservation ',
                        style: AppStyles.body15.copyWith(color: AppColors.gray1),
                      ),
                    ),
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
