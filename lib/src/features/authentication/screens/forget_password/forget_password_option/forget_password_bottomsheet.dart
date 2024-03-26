import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/commom%20widgets/forget_password_btn/forget_password_btn.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail_screen.dart';

class ForgetPasswordBottomSheet {
  static Future<dynamic> buildModalBottomSheetForgetPassword(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Make Selection",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                'Choose one of the options given below to reset your password',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: 30,
              ),
              ForgetPasswordBtnWidget(
                  onTap: (){
                    Navigator.pop(context);
                    Get.to(() => ForgetPasswordMailScreen());
                  },
                  title: "Email",
                  subtitle: "Reset via email verification",
                  icon: Icons.mail_outline_outlined
              ),
              const SizedBox(
                height: 20,
              ),
              ForgetPasswordBtnWidget(
                  onTap: (){},
                  title: "Phone",
                  subtitle: "Reset via phone verification",
                  icon: Icons.mobile_friendly_outlined
              )
            ],
          ),
        )
    );
  }

}