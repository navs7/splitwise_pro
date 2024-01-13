import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitwise_pro/src/constants/sizes.dart';
import 'package:splitwise_pro/src/constants/text_strings.dart';
import 'package:splitwise_pro/src/features/authentication/screens/forgot_password/forgot_password_mail/forgot_password_mail.dart';
import 'package:splitwise_pro/src/features/authentication/screens/forgot_password/forgot_password_options/forgot_password_btn_widget.dart';

class ForgotPasswordScreen {
  static Future<dynamic> buildShowModalSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(myFormHeight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(myForgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            Text(myForgetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(
              height: myDefaultSize,
            ),
            ForgotPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: myEmail,
              subtile: myResetViaEmail,
              myOnTap: () {
                Navigator.pop(context);
                Get.to(()=>const ForgotPasswordMailScreen());
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            ForgotPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: myPhoneNo,
              subtile: myResetViaPhone,
              myOnTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
