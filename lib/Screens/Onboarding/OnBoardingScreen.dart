import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Screens/Onboarding/OnBoardingController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnBoardingScreen extends StatelessWidget{


  const OnBoardingScreen({super.key});

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
              slideIconWidget: const Icon(Icons.arrow_back_ios),
              onPageChangeCallback: obController.onPageChangedCallback,
              enableSideReveal: true,
          ),
          Positioned(
              bottom: 60.0,
              child: OutlinedButton(
                  onPressed: () => obController.next(),
                  style:ElevatedButton.styleFrom(
                      side: const BorderSide(color: kBackgroundColor), backgroundColor: Colors.transparent,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(20)
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      decoration: const BoxDecoration(
                        color: kBackgroundColor,
                        shape: BoxShape.circle
                      ),
                      child: const Icon(Icons.arrow_forward_ios, color: kContentColorTheme,),
                    ),
                  ),
              ),
          Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                onPressed: () => obController.skip(),
                child: const Text("Skip",
                  style: TextStyle(
                    color: kContentColorTheme,
                    fontSize: 15
                  ),
                ),
              )
          ),
          Obx(
            () => Positioned(
                bottom : 10,
                child: AnimatedSmoothIndicator(
                  activeIndex: obController.currentPage.value,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: kContentColorTheme,
                  ),
                )
            ),
          )
        ],
      ),
    );
  }
}

