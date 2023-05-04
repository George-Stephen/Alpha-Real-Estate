import 'package:alpha_estates/Constants/constant_images.dart';
import 'package:alpha_estates/Widgets/Animated/AnimatedController.dart';
import 'package:alpha_estates/Widgets/Animated/AnimatedFadeInWidget.dart';
import 'package:alpha_estates/Widgets/Animated/AnimatedModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AnimatedController());
    controller.startSplashAnimation();
    return Scaffold(
      body: Stack(
        children: [
          AnimatedFadeInWidget(
            model: AnimatedModel(
                BottomAfter: 0,
                BottomBefore: -100,
                LeftBefore: 0,
                LeftAfter: 0,
                RightAfter: 0,
                RightBefore: 0,
                topAfter: 0,
                topBefore: 0),
            durationInMs: 1200,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(kSplashBackGroundImage,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.bottomLeft,
                  ),
                ),
                Center(
                  child: Image.asset(kSplashImage),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}