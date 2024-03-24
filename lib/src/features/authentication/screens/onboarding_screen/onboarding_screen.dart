import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app/src/constants/color.dart';
import 'package:login_app/src/constants/string.dart';
import 'package:login_app/src/features/authentication/controller/onboarding_controller.dart';
import 'package:login_app/src/features/authentication/models/model_on_boarding.dart';
import 'package:login_app/src/features/authentication/screens/onboarding_screen/onboarding_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  

  @override
  Widget build(BuildContext context) {
    
  final obController = OnBoardingController();


    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obController.pages,
            liquidController: obController.controller,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            onPageChangeCallback: obController.onPageChangeCallBack,
            enableSideReveal: true,
          ),
          Positioned(
              bottom: 60,
              child: OutlinedButton(
                onPressed: () => obController.animateToNextPage(),
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.black26),
                    shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                ),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                    shape: BoxShape.circle
                  ),
                  child: const Icon(Icons.arrow_forward_ios),
                ),
              )),
          Positioned(
            top: 50,
              right: 20,
              child: TextButton(
                  onPressed: ()=> obController.skip(),
                  child: Text(
                      'Skip',
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  )
              )
          ),
          Obx(() => Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                  activeIndex: obController.currentPage.value,
                  count: 3,
                effect: WormEffect(
                  activeDotColor: Color(0XFF272727),
                  dotHeight: 5
                ),
               ),
            ),
          )
        ],
      ),
    );
  }
}
