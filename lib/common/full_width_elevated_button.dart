import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/custom_text_style.dart';

class FullWidthElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const FullWidthElevatedButton({Key? key,required this.onPressed,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        minimumSize: const Size.fromHeight(50),
      ),
      onPressed: onPressed,
      child:  Text(title,style: fontCFontC12(color: Colors.white),),
    );
  }
}
