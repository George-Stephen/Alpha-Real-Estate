import 'package:alpha_estates/Screens/Welcome/welcome_screen.dart';
import 'package:get/get.dart';

class AnimatedController extends GetxController{
  static AnimatedController get find => Get.find();
  RxBool animate = false.obs;
  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
  }
}