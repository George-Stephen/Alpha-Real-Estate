import 'package:alpha_estates/Widgets/Animated/AnimatedController.dart';
import 'package:alpha_estates/Widgets/Animated/AnimatedModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AnimatedFadeInWidget extends StatelessWidget{
  AnimatedFadeInWidget({super.key,
    required this.durationInMs, this.model, required this.child});

  final AnimatedController controller = Get.put(AnimatedController());
  final int durationInMs;
  final AnimatedModel? model;
  final Widget child;


  @override
  Widget build(BuildContext context) {
    return Obx(()=> AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: controller.animate.value ? model!.topAfter: model!.topBefore,
        bottom: controller.animate.value ? model!.BottomAfter: model!.BottomBefore,
        right: controller.animate.value ? model!.RightAfter: model!.RightBefore,
        left: controller.animate.value ? model!.LeftAfter: model!.LeftBefore,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMs),
          opacity: controller.animate.value ? 1 : 0,
          child: child,
        ),
    )
    );
  }
  
}