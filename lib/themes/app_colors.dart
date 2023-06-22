import 'package:flutter/material.dart';

class AppColors {
  //Accent
  static const Color blue = Color(0xff007AFF);
  static const Color orange = Color(0xffFF9500);
  static const Color purple = Color(0xff5856D6);
  static const Color tealBlue = Color(0xff5AC8FA);
  static const Color yellow = Color(0xffFFCC00);
  static const LinearGradient pinkGradient = LinearGradient(colors: [Color(0xffF78361), Color(0xffF54B64)]);
  static Color colorBurn = const Color(0xff000000).withOpacity(0.4);
  //Graybase
  static const Color gray1 = Color(0xff8E8E93);
  static const Color gray2 = Color(0xffC7C7CC);
  static const Color gray3 = Color(0xffD1D1D6);
  static const Color gray4 = Color(0xffE5E5EA);
  static const Color gray5 = Color(0xffEFEFF4);
  //Basic
  static const Color adding = Color(0xff4CD964);
  static const Color destructive = Colors.redAccent;

  static const Color dark = Color(0xff1D1D26);
  static const Color light = Color(0xffFFFFFF);
  //Backgroand
  static Color keyboardGray = const Color(0xffD2D5DB).withOpacity(0.94);
  static Color keyboardLightGray = const Color(0xffEFEFF4).withOpacity(0.94);
  static const Color lightestGray = Color(0xffF3F3F3);
  static Color barsLightestGray = const Color(0xffF8F8F8).withOpacity(0.92);
  static Color barsLight = const Color(0xffFFFFFF).withOpacity(0.92);
  static Color white = const Color(0xffFFFFFF).withOpacity(0.92);
  static const Color transparent = Colors.transparent;
  static const Color primary = Color(0xff242A37);
  static const Color primary2 = Color(0xff4E586E);
  //Scrims
  static Color darker60 = AppColors.dark.withOpacity(0.6);
  static Color darker30 = AppColors.dark.withOpacity(0.3);
  static LinearGradient darkerTopGradient60 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      AppColors.dark.withOpacity(0.6),
      AppColors.dark.withOpacity(0.001).withOpacity(0.6),
    ],
  );
  static LinearGradient darkerTopGradient30 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      AppColors.dark.withOpacity(0.3),
      AppColors.dark.withOpacity(0.001).withOpacity(0.3),
    ],
  );
  static LinearGradient darkerBottomGradient80 = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      AppColors.dark.withOpacity(0.8),
      AppColors.dark.withOpacity(0.001).withOpacity(0.8),
    ],
  );
  static LinearGradient darkerBottomGradient60 = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      AppColors.dark.withOpacity(0.6),
      AppColors.dark.withOpacity(0.001).withOpacity(0.6),
    ],
  );
  static LinearGradient darkerBottomGradient30 = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      AppColors.dark.withOpacity(0.3),
      AppColors.dark.withOpacity(0.001).withOpacity(0.3),
    ],
  );
}
