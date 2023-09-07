import 'package:flutter/material.dart';
import 'package:flutter_app/Op.dart';
import 'package:flutter_app/ui/view/login_view/LogIn.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_app/ui/shared/colors.dart';
import 'package:flutter_app/ui/shared/custom_widgets/custom_button.dart';
import 'package:flutter_app/ui/shared/custom_widgets/custom_rich_text.dart';
import 'package:flutter_app/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_app/ui/shared/custom_widgets/custom_textfield.dart';
import 'package:flutter_app/ui/shared/extenssions/extenssions.dart';

void showCustomAlertDialog({
  BuildContext? context,
  bool isNotReport = true,
  TextEditingController? report,
}) {
  Get.dialog(
    AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(color: AppColors.mainPurple1, width: 2.0),
      ),
      content: Column(mainAxisSize: MainAxisSize.min,
        children: [
          if (isNotReport) ...[
            SvgPicture.asset('assets/images/pop-up.svg'),
            (30).sbh,
            const CustomText(text: 'يرجى الاشتراك لإتمام عملية التصفح'),
            (10).sbh,
            CustomButton(
              text: 'تسجيل الدخول',
              textColor: AppColors.mainWhite,
              onPressed: () {
                Get.offAll(()=> LogIn());
              },),
            (15).sbh,
            CustomRichText(
              text1: 'ليس لديك حساب',
              text2: 'أنشأ حسابك الان',
              ontap: () {
                Get.offAll(()=>const Op());
              },
            ),
          ],
          if (!isNotReport) ...[
            CustomTextField(
              controller: report!,
              // mheight: width *0.5,
              hinttext: 'ارسل شكوى/اقتراح',
              maxLines: 8,
            ),
            (10).sbh,
            CustomButton(
              text: 'أرسل', textColor: AppColors.mainWhite,onPressed: (){
              Get.back();
            },),
          ]
        ],
      ),
    ),
  );
}