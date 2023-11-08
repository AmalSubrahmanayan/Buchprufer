import 'package:flutter/material.dart';
import 'package:task/constants/app_sizedboxes.dart';
import 'package:task/constants/app_text_styles.dart';
import 'package:task/view/login/widgets/auth_text.dart';
import 'package:task/view/login/widgets/login_and_register_button.dart';
import 'package:task/view/login/widgets/text_form_field.dart';
import 'package:task/view/register/register_screen.dart';

import 'widgets/top_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Custom Painter Widget
          const TopBar(
            secondText: "Enter your credentials to continue.",
            mainText: "Welcome back!",
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 250, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Text Form Field Widgets
                  const TextFormFieldWidget(
                    hintText: "Phone",
                    iconData: Icons.phone_iphone_sharp,
                    obscureText: false,
                    autoFocus: false,
                  ),
                  AppSizedBoxes.sizedboxH16,
                  const TextFormFieldWidget(
                    hintText: "Password",
                    iconData: Icons.lock_outline_sharp,
                    obscureText: true,
                    autoFocus: false,
                  ),
                  AppSizedBoxes.sizedboxH20,
                  // Forgot Password
                  const Text(
                    "Forgot Password?",
                    style: AppTextStyles.forgotPassword,
                  ),
                  AppSizedBoxes.sizedboxH30,
                  // button login
                  MainButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) => const RegisterScreen()));
                    },
                    text: "Login",
                  ),
                  AuthText(
                    onPressed: () {},
                    linkText: ' Register ',
                    text: 'Don’t have an account?',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
