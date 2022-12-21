import 'package:flutter/cupertino.dart';

import 'colors.dart';

TextStyle fontAFontA8({Color? color}){
  return TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: color ?? blackTextColor);
}

TextStyle fontCFontC12({Color? color}){
  return TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: color ?? blackTextColor);
}

TextStyle fontFFontF12({Color? color}){
  return TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: color ?? blackTextColor);
}

TextStyle fontLFontL1({Color? color}){
  return TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: color ?? blackTextColor);
}
