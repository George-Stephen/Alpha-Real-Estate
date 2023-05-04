import 'package:alpha_estates/Screens/Onboarding/OnBoardingScreen.dart';
import 'package:alpha_estates/Screens/Welcome/welcome_screen.dart';
import 'package:get/get.dart';

class AnimatedController extends GetxController{
  static AnimatedController get find => Get.find();
  RxBool animate = false.obs;

  Future startSplashAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.offAll(() => OnBoardingScreen());
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
  }
}