import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:login_app/src/commom%20widgets/fadein_animations/fade_animation_controller.dart';
import 'package:login_app/src/commom%20widgets/fadein_animations/fadein_animation_model.dart';
import 'package:login_app/src/constants/dimen.dart';
import 'package:login_app/src/constants/string.dart';
import 'package:login_app/src/features/authentication/screens/welcome_screen/welcome_screen.dart';

import '../../../../commom widgets/fadein_animations/animation_widget.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInController());
    controller.startSplashAnimation();
    return Scaffold(
      body: Stack(
        children: [
          FadeInAnimation(
              durationInMs: 1000,
              position: AnimatePosition(
                topBefore: 100,
                topAfter: 100,
                leftBefore: -40,
                leftAfter: 40
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CodeWall',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    'Learn to code anywhere',
                    style: Theme.of(context).textTheme.headlineSmall,
                  )
                ],
              ),
          ),
          FadeInAnimation(
            durationInMs: 1000,
            position: AnimatePosition(
              bottomBefore: 80,
              bottomAfter: 80,
              leftBefore: -30,
              leftAfter: 40
            ),
            child: Obx(()=> AnimatedOpacity(
                  opacity: controller.animate.value ? 1 : 0,
                  duration: const Duration(milliseconds: 1600),
                  child: Image(image: AssetImage(mascotImage))
                )
            ),
          ),
        ],
      ),
    );
  }
}


