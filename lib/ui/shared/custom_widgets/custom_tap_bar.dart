import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_app/ui/shared/colors.dart';
import 'package:flutter_app/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_app/ui/shared/extenssions/extenssions.dart';
import 'package:flutter_app/ui/shared/utils.dart';

class CustomTapBar extends StatelessWidget {
  final String title;
  final String? iconName;
  final String? imageName;

  const CustomTapBar({Key? key,

    required this.title,
    this.iconName,
    this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        (height * 0.01).sbh,
        Row(
          mainAxisAlignment: iconName != null
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            if (iconName != null)
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: SvgPicture.asset("assets/images/$iconName.svg")),
            CustomText(
                text: title,
                textcolor: AppColors.mainBlack,
                fontsize: width * 0.06),
            (width * 0.04).sbw,
          ],
        ),
        (width * 0.05).sbh,
        if (imageName != null) SvgPicture.asset("assets/images/$imageName.svg"),
        (width * 0.04).sbh,
      ],
    );
  }
}
