import 'package:flutter/material.dart';

import 'customDatePicker/screens/date_picker_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Date Picker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DatePickerHomeScreen(),
    );
  }
}
