import 'package:flutter/material.dart';

import '../utilities/color_constant.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? fontSize;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;
  final TextDecoration? textDecoration;
  const CustomTextWidget(
      {Key? key,
      required this.text,
      this.textColor,
      this.fontSize,
      this.fontStyle,
      this.fontWeight,
      this.textDecoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Text(
        text,
        style: TextStyle(
          color: textColor ?? ColorConstant.kBlackColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          decoration: textDecoration,
        ),
      ),
    );
  }
}
