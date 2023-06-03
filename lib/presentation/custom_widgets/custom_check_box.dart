import 'package:flutter/material.dart';

import '../utilities/color_constant.dart';
import 'custom_text_widget.dart';

class CustomCheckBox extends StatelessWidget {
  final String checkBoxName;
  final bool checkBoxValue;
  final VoidCallback onTap;

  const CustomCheckBox({
    Key? key,
    this.checkBoxName = "",
    required this.checkBoxValue,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Visibility(
          visible: checkBoxName.isNotEmpty,
          child: CustomTextWidget(
            text: checkBoxName,
          ),
        ),
        Checkbox(
          value: checkBoxValue,
          activeColor: ColorConstant.kBlackColor,
          onChanged: (onChanged) {
            onTap();
          },
        ),
      ],
    );
  }
}
