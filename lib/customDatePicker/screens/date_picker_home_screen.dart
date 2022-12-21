
import 'package:custom_date_picker/customDatePicker/screens/custom_date_picker.dart';
import 'package:custom_date_picker/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/custom_date_clip.dart';
import '../../common/full_width_elevated_button.dart';
import '../../utils/custom_text_style.dart';
import '../controller/date_picker_home_screen_controller.dart';
import '../controller/preset_header_controller.dart';

class DatePickerHomeScreen extends StatelessWidget {
  DatePickerHomeScreen({Key? key}) : super(key: key);

  final DatePickerHomeScreenController _controller =
      Get.put(DatePickerHomeScreenController());

  final PresetHeaderController _controllerPreset =
      Get.put(PresetHeaderController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          margin: const EdgeInsets.all(16),
          alignment: Alignment.center,
          child: orientation == Orientation.portrait ? Column(
            children: [
              Expanded(
                child: _getMainBody(context,height),
              ),
              Text('Darshan Patil',style: fontLFontL2(color: Colors.black),)
            ],
          ) : SingleChildScrollView(
            child: Column(
              children: [
                _getMainBody(context,height),
                const SizedBox(height: 50),
                Text('Darshan Patil',style: fontLFontL2(color: Colors.black),)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getMainBody(BuildContext context, double height) {
    return  GetBuilder(
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
                onPressed: () async {
                  await showCustomDatePicker(
                    context: context,
                    initialDate: _controller.withFourPresetDate ??  DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                    datePickersType: DatePickersType.preset4,
                  ).then((value) {
                    if(value!=null){
                      _controller.setWithFourPresetDate(value);
                    }
                  });
                },
              ),
              SizedBox(height: height * 0.02),
              if (_controller.withFourPresetDate != null)
                CustomDateClip(
                  dateTime: _controller.withFourPresetDate,
                  onClear: () {
                    _controller.setWithFourPresetDate(null);
                    _controllerPreset.updateSelectedFourPresetValue(null);
                  },
                ),
              if (_controller.withFourPresetDate == null)
                SizedBox(height: height * 0.02),
              SizedBox(height: height * 0.04),
              FullWidthElevatedButton(
                title: 'With 6 presets',
                onPressed: () async {
                  await showCustomDatePicker(
                    context: context,
                    initialDate: _controller.withSixPresetDate ??  DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                    datePickersType: DatePickersType.preset6,
                  ).then((value){
                    if(value!=null){
                      _controller.setWithSixPresetDate(value);
                    }
                  });
                },
              ),
              SizedBox(height: height * 0.02),
              if (_controller.withSixPresetDate != null)
                CustomDateClip(
                  dateTime: _controller.withSixPresetDate,
                  onClear: () {
                    _controller.setWithSixPresetDate(null);
                    _controllerPreset.updateSelectedSixPresetValue(null);
                  },
                ),
            ],
          );
        });
  }
}
