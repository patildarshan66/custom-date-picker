import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../utils/colors.dart';
import '../utils/custom_text_style.dart';

class CustomDateClip extends StatelessWidget {
  final VoidCallback onClear;
  final DateTime? dateTime;
  const CustomDateClip({Key? key,required this.onClear,this.dateTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: lightSkyBlueColor
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.date_range,color: primaryColor,size: 16,),
          const SizedBox(width: 8),
          Text(
            formatDate(dateTime),
            style: fontFFontF12(color: primaryColor),
          ),
          const SizedBox(width: 8),
          InkWell(
            onTap: onClear,
              child: const Icon(Icons.close,color: primaryColor,size: 16)
          )
        ],
      ),
    );
  }

  String formatDate(DateTime? dateTime){
    String date = '';
    date = DateFormat('dd MMM yyy').format(dateTime!);
    return date;
  }

}
