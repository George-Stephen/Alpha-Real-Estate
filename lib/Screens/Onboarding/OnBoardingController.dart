import 'package:alpha_estates/Screens/Welcome/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../Constants/constant_colors.dart';
import '../../Constants/constant_images.dart';
import '../../Constants/constant_strings.dart';
import '../../Widgets/OnBoardingPage_widget.dart';
import 'OnBoardingModel.dart';

class OnBoardingController extends GetxController{
  final controller  = LiquidController();
  RxInt currentPage  = 0.obs;

  final pages = [
    OnBoardingPage(model: OnBoardingModel(
        image: kSplashImage,
        Title: OnBoardingTitle_1,
        SubTitle: OnBoardingSubtitle_1,
        CounterText: OnBoardingCounter_1,
        bg_color: kOnBoardingColor_1),
    ),
    OnBoardingPage(model: OnBoardingModel(
        image: kSplashImage,
        Title: OnBoardingTitle_2,
        SubTitle: OnBoardingSubtitle_2,
        CounterText: OnBoardingCounter_2,
        bg_color: kOnBoardingColor_2),
    ),
    OnBoardingPage(model: OnBoardingModel(
        image: kSplashImage,
        Title: OnBoardingTitle_3,
        SubTitle: OnBoardingSubtitle_3,
        CounterText: OnBoardingCounter_3,
        bg_color: kOnBoardingColor_3),
    ),
  ];

  void onPageChangedCallback(int activePageIndex) {
      currentPage.value = activePageIndex;
  }
  next(){
    if(currentPage.value == 2){
      Get.to(() => const WelcomeScreen());
    }else{
      controller.animateToPage(page: controller.currentPage + 1);
    }
  }
  skip() => controller.jumpToPage(page: 2);

}