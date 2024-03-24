import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:login_app/src/commom%20widgets/fadein_animations/animation_widget.dart';
import 'package:login_app/src/commom%20widgets/fadein_animations/fade_animation_controller.dart';
import 'package:login_app/src/commom%20widgets/fadein_animations/fadein_animation_model.dart';
import 'package:login_app/src/constants/string.dart';
import 'package:login_app/src/features/authentication/screens/login_screen/login_screen.dart';
import 'package:login_app/src/features/authentication/screens/signup_screen/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInController());
    controller.startAnimation();
    final size = MediaQuery.of(context).size;
    var brightness = MediaQuery.of(context).platformBrightness;
    final isdDarkMode = brightness == Brightness.dark;
    return Scaffold(
      body: Stack(
        children: [
          FadeInAnimation(
            durationInMs: 1000,
            position: AnimatePosition(
              bottomBefore: -100,
              bottomAfter: 0,
              topBefore: 0,
              topAfter: 0,
              leftBefore: 0,
              leftAfter: 0,
              rightBefore: 0,
              rightAfter: 0
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                      image: AssetImage(kOnBoardingScreenImage1),
                    height: size.height * 0.6,
                  ),
                  Column(
                    children: [
                      Text(
                        'Welcome',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                          "Let's put your creativity on the development highway, crafting apps",
                        style: Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: OutlinedButton(
                            onPressed: () {
                              Get.to(()=> LoginScreen());
                            },
                            child: Text('Login'.toUpperCase())
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(()=> SignUpScreen());
                            },
                            child: Text('SignUp'.toUpperCase())
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
