import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DatePickerHomeScreenController extends GetxController{

  DateTime? withoutPresetDate;
  DateTime? withFourPresetDate;
  DateTime? withSixPresetDate;

  void setWithoutPresetDate(DateTime? dateTime){
    withoutPresetDate = dateTime;
    update();
  }

  void setWithFourPresetDate(DateTime? dateTime){
    withFourPresetDate = dateTime;
    update();
  }

  void setWithSixPresetDate(DateTime? dateTime){
    withSixPresetDate = dateTime;
    update();
  }
}