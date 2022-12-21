import 'package:get/get.dart';

import '../../utils/enums.dart';

class PresetHeaderController extends GetxController {
  FourPresets? selectedFourPresetValue;
  SixPresets? selectedSixPresetValue;

  void updateSelectedFourPresetValue(FourPresets? fourPresets){
    selectedFourPresetValue = fourPresets;
    update();
  }

  void updateSelectedSixPresetValue(SixPresets? sixPresets){
    selectedSixPresetValue = sixPresets;
    update();
  }
}