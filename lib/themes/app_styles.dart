// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:social_app_tutorial/themes/app_colors.dart';

class FontFamily {
  static final avenir = 'Avenir';
}

class AppStyles {
  static TextStyle largeTitle = TextStyle(
      fontFamily: FontFamily.avenir,
      fontWeight: FontWeight.w800,
      fontSize: 34,
      color: AppColors.light);
  static TextStyle headline1 = TextStyle(
      fontFamily: FontFamily.avenir,
      fontWeight: FontWeight.w800,
      fontSize: 40,
      color: AppColors.light);
  static TextStyle headline2 = TextStyle(
      fontFamily: FontFamily.avenir,
      fontWeight: FontWeight.w800,
      fontSize: 28,
      color: AppColors.light);
  static TextStyle headline3Bold = TextStyle(
      fontFamily: FontFamily.avenir,
      fontWeight: FontWeight.w800,
      fontSize: 22,
      color: AppColors.light);
  static TextStyle headline3 = TextStyle(
      fontFamily: FontFamily.avenir,
      fontWeight: FontWeight.w400,
      fontSize: 22,
      color: AppColors.light);
  static TextStyle body20Bold = TextStyle(
      fontFamily: FontFamily.avenir,
      fontWeight: FontWeight.w800,
      fontSize: 20,
      color: AppColors.light);
  static TextStyle body20 = TextStyle(
      fontFamily: FontFamily.avenir,
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: AppColors.light);
  static TextStyle body17Bold = TextStyle(
      fontFamily: FontFamily.avenir,
      fontWeight: FontWeight.w800,
      fontSize: 17,
      color: AppColors.light);
  static TextStyle body17 = TextStyle(
      fontFamily: FontFamily.avenir,
      fontWeight: FontWeight.w400,
      fontSize: 17,
      color: AppColors.light);
  static TextStyle body15Bold = TextStyle(
      fontFamily: FontFamily.avenir,
      fontWeight: FontWeight.w800,
      fontSize: 15,
      color: AppColors.light);
  static TextStyle body15 = TextStyle(
      fontFamily: FontFamily.avenir,
      fontWeight: FontWeight.w400,
      fontSize: 15,
      color: AppColors.light);

  static TextStyle caption13 = TextStyle(
      fontFamily: FontFamily.avenir,
      fontWeight: FontWeight.w400,
      fontSize: 13,
      color: AppColors.light);
  static TextStyle caption11 = TextStyle(
      fontFamily: FontFamily.avenir,
      fontWeight: FontWeight.w400,
      fontSize: 11,
      color: AppColors.light);
  static TextStyle tagline = TextStyle(
      fontFamily: FontFamily.avenir,
      fontWeight: FontWeight.w800,
      fontSize: 15,
      color: AppColors.light);
}
