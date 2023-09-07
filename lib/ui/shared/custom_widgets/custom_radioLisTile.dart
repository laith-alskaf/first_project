import 'package:flutter/material.dart';
import 'package:flutter_app/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_app/ui/shared/utils.dart';

import '../colors.dart';

class CustomRadioLisTile extends StatelessWidget {
  const CustomRadioLisTile(
      {Key? key,
        required this.text,
        this.groupValue,
        this.activeColor,
        this.value,
        this.onchanged,
        this.answer = false,
        this.fontSizeText, this.heighText}) : super(key: key);

  final String text;
  final groupValue;
  final Color? activeColor;
  final value;
  final onchanged;
  final bool? answer;
  final double? fontSizeText;
  final double? heighText;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min,
      children: [
        Radio(
          value: value,
          activeColor: activeColor ?? AppColors.mainPurple1,
          groupValue: groupValue,
          onChanged: onchanged,
        ),
        answer == false
            ? CustomText(
          heighText: heighText??1.0,
          text: text,
          fontsize: fontSizeText ?? width * 0.0225,
        )
            : Expanded(
            child: CustomText(
              heighText: heighText??1.0,
              text: text,
              fontsize: fontSizeText ?? width * 0.0225,
            ))
      ],
    );
  }
}
