import 'package:flutter/material.dart';
import 'package:task/constants/app_colors.dart';

class AppTextStyles {
  static const logoTextStyle = TextStyle(
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
    fontSize: 30,
    color: AppColors.blackColor,
  );
  static const loginTextStyle = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
  );
  static const buttonTextStyle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w500,
    color: AppColors.whiteColor,
  );
  static const forgotPassword = TextStyle(
    // fontSize: 16,
    // fontWeight: FontWeight.w400,
    color: AppColors.mainColor,
  );
  static const secondLoginTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.blackColor,
  );
  static const textStyle1 = TextStyle(
    fontSize: 20,
    color: AppColors.blackColor,
  );
  static const textStyle2 = TextStyle(
    fontSize: 16,
    color: AppColors.miniBlackColor,
  );
  static const textStyle3 = TextStyle(
    fontSize: 17,
    color: AppColors.blackColor,
  );
  static const textStyle4 = TextStyle(
    // fontSize: 1,
    color: AppColors.miniBlackColor,
  );
  static const textStyle5 = TextStyle(
    fontSize: 16,
    color: AppColors.greyColor,
  );
  static const textStyle6 = TextStyle(
    fontSize: 18,
    color: AppColors.blackColor,
  );
  static const TextStyle bodyTextStyle = TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.normal,
    // Add any other desired properties for the body text style
  );
  static const TextStyle placeholderTextStyle = TextStyle(
    fontSize: 20,
    color: Colors.grey,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.italic,
    // Add any other desired properties for the placeholder text style
  );
}
