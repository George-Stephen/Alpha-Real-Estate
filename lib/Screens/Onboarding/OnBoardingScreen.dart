import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_images.dart';
import 'package:alpha_estates/Constants/constant_strings.dart';
import 'package:alpha_estates/Screens/Onboarding/OnBoardingController.dart';
import 'package:alpha_estates/Screens/Onboarding/OnBoardingModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Widgets/OnBoardingPage_widget.dart';

class OnBoardingScreen extends StatelessWidget{


  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ob_controller = OnBoardingController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
              pages: ob_controller.pages,
              liquidController: ob_controller.controller,
              slideIconWidget: Icon(Icons.arrow_back_ios),
              onPageChangeCallback: ob_controller.onPageChangedCallback,
              enableSideReveal: true,
          ),
          Positioned(
              bottom: 60.0,
              child: OutlinedButton(
                  onPressed: () => ob_controller.next(),
                  style:ElevatedButton.styleFrom(
                      side: const BorderSide(color: kBackgroundColor),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(20),
                      primary: Colors.transparent
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: kBackgroundColor,
                        shape: BoxShape.circle
                      ),
                      child: Icon(Icons.arrow_forward_ios, color: kContentColorTheme,),
                    ),
                  ),
              ),
          Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                onPressed: () => ob_controller.skip(),
                child: const Text("Skip",
                  style: TextStyle(
                    color: kLinkColor
                  ),
                ),
              )
          ),
          Obx(
            () => Positioned(
                bottom : 10,
                child: AnimatedSmoothIndicator(
                  activeIndex: ob_controller.currentPage.value,
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

