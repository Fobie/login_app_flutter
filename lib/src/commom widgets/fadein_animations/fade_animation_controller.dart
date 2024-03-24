import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:login_app/src/features/authentication/screens/onboarding_screen/onboarding_screen.dart';
import 'package:login_app/src/features/authentication/screens/welcome_screen/welcome_screen.dart';

class FadeInController extends GetxController{
  static FadeInController get find => Get.find();

  RxBool animate = false.obs;

  Future startSplashAnimation() async{
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 5000));
    animate.value = false;
    await Future.delayed(Duration(milliseconds: 1000));
    Get.off(()=> WelcomeScreen());
  }

  Future startAnimation() async{
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
  }
}