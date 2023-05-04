import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Constants/constant_strings.dart';
import 'package:alpha_estates/Screens/Authentication/ForgotPassword/ForgotPasswordOptions/ForgotPasswordWidget.dart';
import 'package:alpha_estates/Screens/Authentication/ForgotPassword/UsingEmail/ForgotPasswordMail.dart';
import 'package:alpha_estates/Screens/Authentication/ForgotPassword/UsingPhone/ForgotPasswordPhone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
      ),
      builder: (context) => Container(
        decoration: const BoxDecoration(
          color: kBackgroundColor,
        ),
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(kForgetPasswordTitle, style: Theme.of(context).textTheme.headline5,),
            Text(kForgetPasswordSubTitle, style: Theme.of(context).textTheme.bodyText2,),
            const SizedBox(
              height: 30.0,
            ),
            ForgotPasswordWidget(
              icon: Icons.mail_outline_rounded,
              title: kEmail,
              subTitle: kResetViaEMail,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => ForgotPasswordMailScreen());
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            ForgotPasswordWidget(
              icon: Icons.mobile_friendly_rounded,
              title: kRegisterPhone,
              subTitle: kResetViaPhone,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => ForgotPasswordPhoneScreen());
              },
            ),
          ],
        ),
      ),
    );
  }

}