import 'package:flutter/material.dart';
import 'package:task/constants/app_sizedboxes.dart';
import 'package:task/constants/app_text_styles.dart';
import 'package:task/view/admin_screen/admin_screen.dart';
import 'package:task/view/drivers%20screen/drivers_screen.dart';
import 'package:task/view/employees_screen/employees_screen.dart';
import 'package:task/view/login/widgets/auth_text.dart';
import 'package:task/view/login/widgets/text_form_field.dart';
import 'package:task/view/login/widgets/top_bar.dart';

import '../login/widgets/login_and_register_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String? categoryValue;

  final List<String> items = [
    "Employee",
    "Driver",
    "Admin",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Custom Painter Widget
          const TopBar(
            secondText: "Register to get started.",
            mainText: "Create account!",
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 250, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Text Form Field Widgets
                  const TextFormFieldWidget(
                    hintText: "Name",
                    iconData: Icons.person_outline_rounded,
                    obscureText: false,
                    autoFocus: false,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Select how you are : ",
                        style: AppTextStyles.bodyTextStyle,
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: categoryValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              categoryValue = newValue;
                            });
                          },
                          items: items.map((String valueItem) {
                            return DropdownMenuItem<String>(
                              value: valueItem,
                              child: Text(
                                valueItem,
                                style: const TextStyle(
                                  fontSize: 16, // Adjust the font size
                                  color:
                                      Colors.black, // Customize the text color
                                ),
                              ),
                            );
                          }).toList(),
                          icon: const Icon(
                              Icons.arrow_drop_down), // Add a dropdown icon
                          iconSize: 36, // Adjust the icon size
                          elevation: 4, // Customize the dropdown elevation
                          style: const TextStyle(
                            fontSize:
                                16, // Adjust the font size of the selected item
                            color: Colors
                                .black, // Customize the color of the selected item
                          ),
                          underline: Container(
                            height: 2,
                            color: Colors.black, // Customize the border color
                          ),
                        ),
                      ),
                    ],
                  ),

                  AppSizedBoxes.sizedboxH20,

                  AppSizedBoxes.sizedboxH30,
                  // button login
                  MainButton(
                    onPressed: () {
                      if (categoryValue == 'Employee') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EmployeesScreen(),
                            ));
                      } else if (categoryValue == 'Admin') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AdminScreen(),
                            ));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DriversScreen(),
                            ));
                      }
                    },
                    text: "Register",
                  ),
                  AuthText(
                    text: "Already have an account?",
                    linkText: "  Log in",
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => DriversScreen(),
                      //     ));
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
