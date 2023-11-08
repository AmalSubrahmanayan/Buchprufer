import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task/constants/app_colors.dart';

class AuthText extends StatelessWidget {
  final String text;
  final String linkText;
  final VoidCallback onPressed;

  const AuthText({
    Key? key,
    required this.text,
    required this.linkText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: const TextStyle(
          color: AppColors.greyColor,
          // fontSize: 16.0,
        ),
        children: [
          TextSpan(
            text: linkText,
            style: const TextStyle(
              color: Color.fromARGB(255, 47, 43, 180),
              // fontSize: 16.0,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationThickness: 2.0,
              decorationColor: AppColors.mainColor,
            ),
            recognizer: TapGestureRecognizer()..onTap = onPressed,
          ),
        ],
      ),
    );
  }
}
