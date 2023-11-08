import 'package:flutter/material.dart';
import 'package:task/constants/app_colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.obscureText,
    this.controller,
    this.decoration,
    this.hintText,
    this.iconData,
    this.validator,
    this.suffixicon,
    required this.autoFocus,
  });

  final bool obscureText;
  final TextEditingController? controller;
  final String? hintText;
  final IconData? iconData;
  final InputDecoration? decoration;
  final String? Function(String?)? validator;
  final Widget? suffixicon;
  final bool autoFocus;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    // final double screenHeight = MediaQuery.of(context).size.height;
    final double padding = screenWidth * 0.02;
    final double borderRadius = screenWidth * 0.03;
    // final double borderWidth = screenWidth * 0.01;
    final double focusedBorderWidth = screenWidth * 0.004;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: TextFormField(
          autofocus: autoFocus,
          obscureText: obscureText,
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            suffixIcon: suffixicon,
            filled: true,
            fillColor: Colors.grey[200],
            // contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(iconData),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(
                color: AppColors.mainColor,
                width: focusedBorderWidth,
              ),
            ),
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
