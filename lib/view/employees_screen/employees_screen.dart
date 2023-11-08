import 'package:flutter/material.dart';
import 'package:task/constants/app_sizedboxes.dart';
import 'package:task/constants/app_text_styles.dart';
import 'package:task/constants/const.dart';
import 'package:task/view/login/widgets/login_and_register_button.dart';
import 'package:task/view/login/widgets/text_form_field.dart';

class EmployeesScreen extends StatelessWidget {
  const EmployeesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime selectedDate = DateTime.now();
    TimeOfDay selectedTime = TimeOfDay.now();
    final TextEditingController name = TextEditingController();
    final TextEditingController destinaton = TextEditingController();
    final TextEditingController myLocation = TextEditingController();
    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2000),
        lastDate: DateTime(2101),
      );
      if (picked != null && picked != selectedDate) selectedDate = picked;
    }

    Future<void> _selectTime(BuildContext context) async {
      final TimeOfDay? picked = await showTimePicker(
        context: context,
        initialTime: selectedTime,
      );
      if (picked != null && picked != selectedTime) selectedTime = picked;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Ride Requests'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              // Title and Instruction
              const Text(
                'Request a Ride',
                style: AppTextStyles.bodyTextStyle,
              ),
              AppSizedBoxes.sizedboxH16,
              const Text(
                'Please provide the details of your ride request:',
                style: AppTextStyles.bodyTextStyle,
              ),
              AppSizedBoxes.sizedboxH16,
              // Text Form Field Widgets
              TextFormFieldWidget(
                hintText: "Your Name",
                iconData: Icons.person_outline_rounded,
                obscureText: false,
                autoFocus: true,
                controller: name,
              ),

              AppSizedBoxes.sizedboxH16,
              // Date and Time Selection
              Row(
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _selectDate(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(
                              8.0), // Customize the border radius
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: InputDecorator(
                            decoration: const InputDecoration(
                              labelText: 'Date',
                              icon: Icon(Icons.calendar_today),
                            ),
                            child: Text(
                              "${selectedDate.toLocal()}".split(' ')[0],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _selectTime(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(
                              8.0), // Customize the border radius
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: InputDecorator(
                            decoration: const InputDecoration(
                              labelText: 'Time',
                              icon: Icon(Icons.access_time),
                            ),
                            child: Text(
                              selectedTime.format(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              AppSizedBoxes.sizedboxH16,
              // Text Form Field Widgets
              TextFormFieldWidget(
                hintText: "My Location",
                iconData: Icons.location_on_outlined,
                obscureText: false,
                autoFocus: true,
                controller: myLocation,
              ),
              AppSizedBoxes.sizedboxH16,
              // Text Form Field Widgets
              TextFormFieldWidget(
                hintText: "Destination",
                iconData: Icons.location_on_outlined,
                obscureText: false,
                autoFocus: true,
                controller: destinaton,
              ),
              AppSizedBoxes.sizedboxH30,
              // Submit Button
              MainButton(
                onPressed: () {
                  Constants.locations.add(myLocation.text.trim());
                  Constants.name.add(name.text.trim());
                  Constants.destination.add(destinaton.text.trim());
                },
                text: "Submit Request",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
