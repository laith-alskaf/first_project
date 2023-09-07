import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_app/ui/shared/colors.dart';
import 'package:flutter_app/ui/shared/utils.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key,

    this.hinttext,
    this.mheight,
    this.mwidth,
    this.fontsize,
    this.bradius,
    required this.controller,
    this.errorText,
    this.validator,
    this.label,
    this.prefixIconName,
    this.suffixIconName,
    this.textFieldColor,
    this.maxLines, this.keyboardtype,
  }) : super(key: key);
  final String? Function(String?)? validator;
  final String? hinttext;
  final double? mheight;
  final double? mwidth;
  final double? fontsize;
  final TextEditingController controller;
  final double? bradius;
  final String? errorText;
  final String? label;
  final String? prefixIconName;
  final String? suffixIconName;
  final Color? textFieldColor;
  final int? maxLines;
  final TextInputType? keyboardtype;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardtype,
      // textDirection: TextDirection.rtl,
      textInputAction: TextInputAction.next,
      validator: validator,
      controller: controller,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        suffixIconConstraints: BoxConstraints(
          maxWidth: width * 0.05,
        ),
        // suffix: SizedBox(
        //   width: width * 0.04,
        // ),
        suffixIcon: suffixIconName != null
            ? SvgPicture.asset(
                "assets/images/$suffixIconName.svg",
                color: AppColors.placeHolderColor,
              )
            : null,
        prefix: SizedBox(
          width: width * 0.02,
        ),
        prefixIcon: prefixIconName != null
            ? SvgPicture.asset(
                "assets/images/$prefixIconName.svg",
                color: AppColors.placeHolderColor,
              )
            : null,
        prefixIconConstraints: BoxConstraints(
          maxWidth: width * 0.05,
        ),
        // contentPadding:
        // EdgeInsetsDirectional.symmetric(horizontal: width * 0.05),
        contentPadding: EdgeInsetsDirectional.only(
            start: width * 0.05, top: maxLines != null ? 10 : 0.0),
        filled: true,
        fillColor: textFieldColor ?? AppColors.mainblue2,
        constraints: BoxConstraints(
            minWidth: mwidth ?? width, minHeight: mheight ?? width * 0.15),
        prefixIconColor: AppColors.placeHolderColor,
        hintText: hinttext,
        hintStyle: TextStyle(
            color: AppColors.placeHolderColor,
            fontSize: fontsize ?? width * 0.035),
        enabledBorder: OutlineInputBorder(
            // borderRadius: BorderRadius.circular(bradius ?? width * 0.02),
            borderSide: BorderSide(color: AppColors.mainWhiteColor)),
      ),
    );
  }
}
