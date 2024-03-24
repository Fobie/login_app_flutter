import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/src/commom%20widgets/forget_password_btn/forget_password_btn.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Enter Your Email",
                    labelText: "Email",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint),
                    hintText: "Enter Your Password",
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.remove_red_eye)
                    )
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: (){
                      showModalBottomSheet(
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
                                    onTap: (){},
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
                    },
                    child: Text(
                    'Forget Password',
                  style: Theme.of(context).textTheme.headlineSmall,
                )),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: null, child: Text(
                  'Login',
                  style: Theme.of(context).textTheme.headlineSmall,
                )),
              )
            ],
          ),
        ));
  }
}

