import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../utils/custom_text_style.dart';
import '../../utils/enums.dart';
import '../controller/preset_header_controller.dart';

class DatePickerFourPresetHeader extends StatefulWidget {
  final Function(FourPresets presets) onTap;
  final Orientation orientation;
  const DatePickerFourPresetHeader(
      {Key? key, required this.onTap, this.orientation = Orientation.landscape})
      : super(key: key);

  @override
  State<DatePickerFourPresetHeader> createState() => _DatePickerFourPresetHeaderState();
}

class _DatePickerFourPresetHeaderState extends State<DatePickerFourPresetHeader> {
  final PresetHeaderController _controller = Get.find<PresetHeaderController>();
  @override
  Widget build(BuildContext context) {
    switch (widget.orientation) {
      case Orientation.landscape:
        return GetBuilder(
          init: _controller,
          builder: (controller) {
            return SizedBox(
              width: 152,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16,vertical: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _getChipButton(
                      title: 'Never ends',
                      onTap: () {
                        widget.onTap(FourPresets.neverEnds);
                        _controller.updateSelectedFourPresetValue(FourPresets.neverEnds);
                      },
                      bgColor: _controller.selectedFourPresetValue == FourPresets.neverEnds ? primaryColor : lightSkyBlueColor,
                      txtColor: _controller.selectedFourPresetValue == FourPresets.neverEnds ? Colors.white : primaryColor,
                    ),
                    const SizedBox(height: 16),
                    _getChipButton(
                        title: '15 days later',
                        onTap: () {
                          widget.onTap(FourPresets.days15);
                          _controller.updateSelectedFourPresetValue(FourPresets.days15);
                        },
                      bgColor: _controller.selectedFourPresetValue == FourPresets.days15 ? primaryColor : lightSkyBlueColor,
                      txtColor: _controller.selectedFourPresetValue == FourPresets.days15 ? Colors.white : primaryColor,
                    ),
                    const SizedBox(height: 16),
                    _getChipButton(
                        title: '30 days later',
                        onTap: () {
                          widget.onTap(FourPresets.days30);
                          _controller.updateSelectedFourPresetValue(FourPresets.days30);
                        },
                      bgColor: _controller.selectedFourPresetValue == FourPresets.days30 ? primaryColor : lightSkyBlueColor,
                      txtColor: _controller.selectedFourPresetValue == FourPresets.days30 ? Colors.white : primaryColor,
                    ),
                    const SizedBox(height: 16),
                    _getChipButton(
                        title: '60 days later',
                        onTap: () {
                          widget.onTap(FourPresets.days60);
                          _controller.updateSelectedFourPresetValue(FourPresets.days60);
                        },
                      bgColor: _controller.selectedFourPresetValue == FourPresets.days60 ? primaryColor : lightSkyBlueColor,
                      txtColor: _controller.selectedFourPresetValue == FourPresets.days60 ? Colors.white : primaryColor,
                    ),
                  ],
                ),
              ),
            );
          }
        );
      case Orientation.portrait:
      default:
        return GetBuilder(
          init: _controller,
          builder: (context) {
            return Padding(
              padding:
              const EdgeInsets.only(top: 24, left: 16, right: 16, bottom: 8),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: _getChipButton(
                          title: 'Never ends',
                          onTap: () {
                            widget.onTap(FourPresets.neverEnds);
                            _controller.updateSelectedFourPresetValue(FourPresets.neverEnds);
                          },
                          bgColor: _controller.selectedFourPresetValue == FourPresets.neverEnds ? primaryColor : lightSkyBlueColor,
                          txtColor: _controller.selectedFourPresetValue == FourPresets.neverEnds ? Colors.white : primaryColor,
                        ),

                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _getChipButton(
                          title: '15 days later',
                          onTap: () {
                            widget.onTap(FourPresets.days15);
                            _controller.updateSelectedFourPresetValue(FourPresets.days15);
                          },
                          bgColor: _controller.selectedFourPresetValue == FourPresets.days15 ? primaryColor : lightSkyBlueColor,
                          txtColor: _controller.selectedFourPresetValue == FourPresets.days15 ? Colors.white : primaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: _getChipButton(
                          title: '30 days later',
                          onTap: () {
                            widget.onTap(FourPresets.days30);
                            _controller.updateSelectedFourPresetValue(FourPresets.days30);
                          },
                          bgColor: _controller.selectedFourPresetValue == FourPresets.days30 ? primaryColor : lightSkyBlueColor,
                          txtColor: _controller.selectedFourPresetValue == FourPresets.days30 ? Colors.white : primaryColor,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _getChipButton(
                          title: '60 days later',
                          onTap: () {
                            widget.onTap(FourPresets.days60);
                            _controller.updateSelectedFourPresetValue(FourPresets.days60);
                          },
                          bgColor: _controller.selectedFourPresetValue == FourPresets.days60 ? primaryColor : lightSkyBlueColor,
                          txtColor: _controller.selectedFourPresetValue == FourPresets.days60 ? Colors.white : primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
        );
    }
  }

  Widget _getChipButton({required String title, required VoidCallback onTap, Color bgColor = lightSkyBlueColor,Color txtColor = primaryColor}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 35,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          title,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: fontFFontF12(color: txtColor),
        ),
      ),
    );
  }
}