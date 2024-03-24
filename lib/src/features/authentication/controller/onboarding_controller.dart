import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../constants/color.dart';
import '../../../constants/string.dart';
import '../models/model_on_boarding.dart';
import '../screens/onboarding_screen/onboarding_widget.dart';

class OnBoardingController extends GetxController{
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingWidget(
        model: OnBoardingModel(
            image: kOnBoardingScreenImage1,
            title: 'Build Awesome Apps',
            subtitle: "Let's start your journey with us on this amazing app",
            counter: '1/3',
            color: kOnBoardingScreen1Color)),
    OnBoardingWidget(
        model: OnBoardingModel(
            image: kOnBoardingScreenImage2,
            title: 'Build Awesome Apps',
            subtitle: "Let's start your journey with us on this amazing app",
            counter: '2/3',
            color: kOnBoardingScreen1Color)),
    OnBoardingWidget(
        model: OnBoardingModel(
            image: kOnBoardingScreenImage1,
            title: 'Build Awesome Apps',
            subtitle: "Let's start your journey with us on this amazing app",
            counter: '3/3',
            color: kOnBoardingScreen1Color)),
  ];

  onPageChangeCallBack(int activePageIndex){
      currentPage.value = activePageIndex;
  }

  skip() => controller.jumpToPage(page: 2);

  animateToNextPage(){
    int nextPage = controller.currentPage +1;
    controller.animateToPage(page: nextPage);
  }
}
