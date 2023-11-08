import 'package:flutter/material.dart';

class AppColors {
  static const bgColor = BoxDecoration(
      gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color.fromARGB(223, 17, 23, 82),
      Color.fromARGB(225, 0, 3, 20),
    ],
  ));
  static const transparentColor = Colors.transparent;
  static const whiteColor = Colors.white;
  static const lightGreyColor = Color.fromARGB(255, 233, 233, 233);
  static const greyColor = Colors.grey;
  static const blackColor = Colors.black;
  static const redColor = Colors.red;
  static const normalGreenColor = Color.fromARGB(223, 10, 191, 188);
  static const lightGreenColor = Color.fromARGB(223, 50, 216, 214);
  static const lightMainColor = Color.fromARGB(223, 142, 137, 225);
  // static const lightMainColor = Color(0Xff8E89FF);
  static const miniBlackColor = Color.fromARGB(223, 52, 52, 58);
  static const mainColor = Color(0xFF6C67E3);
  static const oneTopBarColor = Color.fromARGB(255, 203, 200, 252);
  static const twoTopBarColor = Color.fromARGB(255, 193, 192, 240);
}
