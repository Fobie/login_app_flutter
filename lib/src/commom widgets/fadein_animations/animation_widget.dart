import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/commom%20widgets/fadein_animations/fade_animation_controller.dart';
import 'package:login_app/src/commom%20widgets/fadein_animations/fadein_animation_model.dart';

import '../../constants/string.dart';

class FadeInAnimation extends StatelessWidget {
  FadeInAnimation({
    super.key,
    required this.durationInMs,
    required this.child,
    this.position,
  });

  final controller = Get.put(FadeInController());
  final int durationInMs;
  final AnimatePosition? position;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(()=> AnimatedPositioned(
      duration: Duration(milliseconds: durationInMs),
      top: controller.animate.value ? position!.topAfter : position!.topBefore,
      right: controller.animate.value ? position!.rightAfter : position!.rightBefore,
      bottom: controller.animate.value ? position!.bottomAfter : position!.bottomBefore,
      left: controller.animate.value ? position!.leftAfter : position!.leftBefore,

      child: AnimatedOpacity(
        opacity: controller.animate.value ? 1 : 0,
        duration: Duration(milliseconds: durationInMs),
        child: child
      ),
    ),
    );
  }
}