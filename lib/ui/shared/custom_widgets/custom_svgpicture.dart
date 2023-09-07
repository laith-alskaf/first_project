import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/ui/shared/colors.dart';

class CustomSvgPicture extends StatelessWidget {
  const CustomSvgPicture(
      {Key? key,  this.color, required this.imagename, this.width}) : super(key: key);
  final Color? color;
  final String imagename;
  final width;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/$imagename.svg',
      color: color ?? AppColors.mainOrangeColor,
      width: width,
    );
  }
}
