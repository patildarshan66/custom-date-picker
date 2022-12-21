import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../utils/custom_text_style.dart';
import '../../utils/enums.dart';
import '../controller/preset_header_controller.dart';

class DatePickerSixPresetHeader extends StatefulWidget {
  final Function(SixPresets presets) onTap;
  final Orientation orientation;
  const DatePickerSixPresetHeader(
      {Key? key, required this.onTap, this.orientation = Orientation.landscape})
      : super(key: key);

  @override
  State<DatePickerSixPresetHeader> createState() =>
      _DatePickerSixPresetHeaderState();
}

class _DatePickerSixPresetHeaderState extends State<DatePickerSixPresetHeader> {
  final PresetHeaderController _controller = Get.find<PresetHeaderController>();
  @override
  Widget build(BuildContext context) {
    switch (widget.orientation) {
      case Orientation.landscape:
        return SizedBox(
          width: 152,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _getChipButton(
                  title: 'Yesterday',
                  onTap: () {
                    widget.onTap(SixPresets.yesterday);
                    _controller.updateSelectedSixPresetValue(SixPresets.yesterday);
                  },
                  bgColor: _controller.selectedSixPresetValue == SixPresets.yesterday
                      ? primaryColor
                      : lightSkyBlueColor,
                  txtColor: _controller.selectedSixPresetValue == SixPresets.yesterday
                      ? Colors.white
                      : primaryColor,
                ),
                const SizedBox(height: 16),
                _getChipButton(
                  title: 'Today',
                  onTap: () {
                    widget.onTap(SixPresets.today);
                     _controller.updateSelectedSixPresetValue(SixPresets.today);
                  },
                  bgColor: _controller.selectedSixPresetValue == SixPresets.today
                      ? primaryColor
                      : lightSkyBlueColor,
                  txtColor: _controller.selectedSixPresetValue == SixPresets.today
                      ? Colors.white
                      : primaryColor,
                ),
                const SizedBox(height: 16),
                _getChipButton(
                  title: 'Tomorrow',
                  onTap: () {
                    widget.onTap(SixPresets.tomorrow);
                    _controller.updateSelectedSixPresetValue(SixPresets.tomorrow);
                  },
                  bgColor: _controller.selectedSixPresetValue == SixPresets.tomorrow
                      ? primaryColor
                      : lightSkyBlueColor,
                  txtColor: _controller.selectedSixPresetValue == SixPresets.tomorrow
                      ? Colors.white
                      : primaryColor,
                ),
                const SizedBox(height: 16),
                _getChipButton(
                  title: 'This Saturday',
                  onTap: () {
                    widget.onTap(SixPresets.thisSaturday);
                    _controller.updateSelectedSixPresetValue(SixPresets.thisSaturday);
                  },
                  bgColor: _controller.selectedSixPresetValue == SixPresets.thisSaturday
                      ? primaryColor
                      : lightSkyBlueColor,
                  txtColor: _controller.selectedSixPresetValue == SixPresets.thisSaturday
                      ? Colors.white
                      : primaryColor,
                ),
                const SizedBox(height: 16),
                _getChipButton(
                  title: 'This Sunday',
                  onTap: () {
                    widget.onTap(SixPresets.thisSunday);
                    _controller.updateSelectedSixPresetValue(SixPresets.thisSunday);
                  },
                  bgColor: _controller.selectedSixPresetValue == SixPresets.thisSunday
                      ? primaryColor
                      : lightSkyBlueColor,
                  txtColor: _controller.selectedSixPresetValue == SixPresets.thisSunday
                      ? Colors.white
                      : primaryColor,
                ),
                const SizedBox(height: 16),
                _getChipButton(
                  title: 'Next Tuesday',
                  onTap: () {
                    widget.onTap(SixPresets.nextTuesday);
                    _controller.updateSelectedSixPresetValue(SixPresets.nextTuesday);
                  },
                  bgColor: _controller.selectedSixPresetValue == SixPresets.nextTuesday
                      ? primaryColor
                      : lightSkyBlueColor,
                  txtColor: _controller.selectedSixPresetValue == SixPresets.nextTuesday
                      ? Colors.white
                      : primaryColor,
                ),
              ],
            ),
          ),
        );
      case Orientation.portrait:
      default:
        return Padding(
          padding:
              const EdgeInsets.only(top: 24, left: 16, right: 16, bottom: 8),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: _getChipButton(
                      title: 'Yesterday',
                      onTap: () {
                        widget.onTap(SixPresets.yesterday);
                        _controller.updateSelectedSixPresetValue(SixPresets.yesterday);
                      },
                      bgColor: _controller.selectedSixPresetValue == SixPresets.yesterday
                          ? primaryColor
                          : lightSkyBlueColor,
                      txtColor: _controller.selectedSixPresetValue == SixPresets.yesterday
                          ? Colors.white
                          : primaryColor,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _getChipButton(
                      title: 'Today',
                      onTap: () {
                        widget.onTap(SixPresets.today);
                        _controller.updateSelectedSixPresetValue(SixPresets.today);
                      },
                      bgColor: _controller.selectedSixPresetValue == SixPresets.today
                          ? primaryColor
                          : lightSkyBlueColor,
                      txtColor: _controller.selectedSixPresetValue == SixPresets.today
                          ? Colors.white
                          : primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: _getChipButton(
                      title: 'Tomorrow',
                      onTap: () {
                        widget.onTap(SixPresets.tomorrow);
                        _controller.updateSelectedSixPresetValue(SixPresets.tomorrow);
                      },
                      bgColor: _controller.selectedSixPresetValue == SixPresets.tomorrow
                          ? primaryColor
                          : lightSkyBlueColor,
                      txtColor: _controller.selectedSixPresetValue == SixPresets.tomorrow
                          ? Colors.white
                          : primaryColor,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _getChipButton(
                      title: 'This Saturday',
                      onTap: () {
                        widget.onTap(SixPresets.thisSaturday);
                        _controller.updateSelectedSixPresetValue(SixPresets.thisSaturday);
                      },
                      bgColor: _controller.selectedSixPresetValue == SixPresets.thisSaturday
                          ? primaryColor
                          : lightSkyBlueColor,
                      txtColor: _controller.selectedSixPresetValue == SixPresets.thisSaturday
                          ? Colors.white
                          : primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: _getChipButton(
                      title: 'This Sunday',
                      onTap: () {
                        widget.onTap(SixPresets.thisSunday);
                        _controller.updateSelectedSixPresetValue(SixPresets.thisSunday);
                      },
                      bgColor: _controller.selectedSixPresetValue == SixPresets.thisSunday
                          ? primaryColor
                          : lightSkyBlueColor,
                      txtColor: _controller.selectedSixPresetValue == SixPresets.thisSunday
                          ? Colors.white
                          : primaryColor,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _getChipButton(
                      title: 'Next Tuesday',
                      onTap: () {
                        widget.onTap(SixPresets.nextTuesday);
                        _controller.updateSelectedSixPresetValue(SixPresets.nextTuesday);
                      },
                      bgColor: _controller.selectedSixPresetValue == SixPresets.nextTuesday
                          ? primaryColor
                          : lightSkyBlueColor,
                      txtColor: _controller.selectedSixPresetValue == SixPresets.nextTuesday
                          ? Colors.white
                          : primaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
    }
  }

  Widget _getChipButton(
      {required String title,
      required VoidCallback onTap,
      Color bgColor = lightSkyBlueColor,
      Color txtColor = primaryColor}) {
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
