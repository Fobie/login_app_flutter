import 'package:flutter/material.dart';
import 'package:login_app/src/commom%20widgets/login_header_footer/form_footer.dart';
import 'package:login_app/src/commom%20widgets/login_header_footer/form_header.dart';
import 'package:login_app/src/constants/string.dart';
import 'package:login_app/src/features/authentication/screens/login_screen/login_form_widget.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                FormHeaderWidget(
                    image: kLoginPageImage,
                    title: "Welcome Back",
                    subtitle: "Make it worth, make it clear, make it better"
                ),
                LoginFormWidget(),
                FormFooterWidget(
                    title: "Don't have an account? ",
                    subtitle: "Sign up"
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



