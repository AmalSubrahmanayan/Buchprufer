import 'package:flutter/material.dart';
import 'package:task/constants/app_colors.dart';
import 'package:task/constants/app_text_styles.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
    this.mainText,
    this.secondText,
  });
  final String? mainText;
  final String? secondText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // white circle
        Positioned(
          top: -220,
          right: -100,
          child: Container(
            height: 350,
            width: 350,
            decoration: const BoxDecoration(
              color: AppColors.lightMainColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
        // green circle
        // Positioned(
        //   bottom: -80,
        //   left: -80,
        //   child: Container(
        //     height: 250,
        //     width: 250,
        //     decoration: BoxDecoration(
        //       color: AppColors.lightGreenColor,
        //       shape: BoxShape.circle,
        //     ),
        //   ),
        // ),
        // fill circle
        Positioned(
          top: -330,
          left: -90,
          child: Container(
            height: 550,
            width: 550,
            decoration: const BoxDecoration(
              color: AppColors.lightMainColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: 100,
          left: 20,
          child: Text(
            // 'Welcome back !',
            mainText!,
            style: AppTextStyles.loginTextStyle,
          ),
        ),
        Positioned(
          top: 140,
          left: 22,
          child: Text(
            // 'Enter your credentials to continue',
            secondText!,
            style: AppTextStyles.secondLoginTextStyle,
          ),
        ),
      ],
    );
  }
}
