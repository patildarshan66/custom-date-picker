import 'package:custom_date_picker/customDatePicker/screens/custom_date_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/custom_date_clip.dart';
import '../../common/full_width_elevated_button.dart';
import '../../utils/colors.dart';
import '../../utils/custom_text_style.dart';
import '../controller/date_picker_home_screen_controller.dart';

class DatePickerHomeScreen extends StatelessWidget {
  DatePickerHomeScreen({Key? key}) : super(key: key);

  final DatePickerHomeScreenController _controller =
      Get.put(DatePickerHomeScreenController());
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          margin: const EdgeInsets.all(16),
          alignment: Alignment.center,
          child: GetBuilder(
              init: _controller,
              builder: (ctx) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Calendar widgets',
                      style: fontAFontA8(),
                    ),
                    SizedBox(height: height * 0.04),
                    FullWidthElevatedButton(
                      title: 'Without preset',
                      onPressed: () async {
                        await showCustomDatePicker(
                                context: context,
                                initialDate: _controller.withoutPresetDate ??  DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100))
                            .then((value) {
                              if(value!=null){
                                _controller.setWithoutPresetDate(value);
                              }
                        });
                      },
                    ),
                    SizedBox(height: height * 0.02),
                    if (_controller.withoutPresetDate != null)
                      CustomDateClip(
                        dateTime: _controller.withoutPresetDate,
                        onClear: () {
                          _controller.setWithoutPresetDate(null);
                        },
                      ),
                    if (_controller.withoutPresetDate == null)
                      SizedBox(height: height * 0.02),
                    SizedBox(height: height * 0.04),
                    FullWidthElevatedButton(
                      title: 'With 4 presets',
                      onPressed: () {
                        showCustomDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100));
                      },
                    ),
                    SizedBox(height: height * 0.08),
                    FullWidthElevatedButton(
                      title: 'With 6 presets',
                      onPressed: () {
                        showCustomDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100));
                      },
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
