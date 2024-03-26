import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/commom%20widgets/login_header_footer/form_header.dart';
import 'package:login_app/src/constants/string.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_otp/forget_password_otp.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            FormHeaderWidget(
                image: kForgetPasswordImage,
                title: 'Forget Password',
                subtitle: "Select one of the options given below to reset your password",
                crossAxisAlignment: CrossAxisAlignment.center,
                imgbetween: 30,
                textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text('Email'),
                        hintText: "Email",
                        prefixIcon: Icon(Icons.mail_outline_outlined)
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){
                            Get.to(()=> OTPScreen());
                          },
                          child: Text(
                            'Next'
                          )
                      ),
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
