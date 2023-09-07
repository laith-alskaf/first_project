import 'package:flutter/material.dart';
import 'package:flutter_app/ui/shared/colors.dart';
import 'package:flutter_app/ui/shared/utils.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.text,
      this.textcolor,
      this.fontsize,
      this.fontWeight,
      this.isDecoration = false,
      this.isTextAlignCenter = false,
      this.heighText}) : super(key: key);

  final String text;
  final double? fontsize;
  final Color? textcolor;
  final bool isDecoration;
  final bool? isTextAlignCenter;
  final FontWeight? fontWeight;
  final double? heighText;

  @override
  Widget build(BuildContext context) {
    return Text(
      // textDirection: storage.getAppLanguage() == 'ar'
      //     ? TextDirection.rtl
      //     : TextDirection.ltr,
      // text,
      text,
      textAlign: isTextAlignCenter! ? TextAlign.center : TextAlign.right,
      maxLines: null,

      overflow: TextOverflow.visible,
      // maxLines: 1,
      style: TextStyle(
          height: heighText ?? 1.0,
          // fontFamily: 'Alexandria-Regular',
          decoration: isDecoration ? TextDecoration.underline : null,
          color: textcolor ?? AppColors.mainPurple1,
          // ignore: prefer_if_null_operators
          fontSize: fontsize ?? width * 0.035,
          // ignore: prefer_if_null_operators
          fontWeight: fontWeight ?? FontWeight.w300),
    );
  }
}
