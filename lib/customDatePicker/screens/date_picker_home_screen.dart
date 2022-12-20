import 'package:custom_date_picker/customDatePicker/screens/custom_date_picker.dart';
import 'package:flutter/material.dart';

class DatePickerHomeScreen extends StatelessWidget {
  const DatePickerHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                showCustomDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100));
              },
              child: const Text('Show Date Picker'))
        ],
      ),
    );
  }
}
