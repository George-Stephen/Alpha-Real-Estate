import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_images.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Constants/constant_strings.dart';
import 'package:alpha_estates/Screens/Authentication/Login/loginScreen.dart';
import 'package:alpha_estates/Widgets/Animated/AnimatedController.dart';
import 'package:alpha_estates/Widgets/Animated/AnimatedFadeInWidget.dart';
import 'package:alpha_estates/Widgets/Animated/AnimatedModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final controller = Get.put(AnimatedController());
    controller.startAnimation();

    return Scaffold(
      body: Stack(
        children: [
          AnimatedFadeInWidget(
            durationInMs: 1200,
            model: AnimatedModel(
                BottomAfter: 0,
                BottomBefore: -100,
                LeftBefore: 0,
                LeftAfter: 0,
                RightAfter: 0,
                RightBefore: 0,
                topAfter: 0,
                topBefore: 0),
            child: Container(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     Image(image: const AssetImage(kWelcomeImage), height: size.height * 0.4,),
                     Column(
                        children: [
                          Text(WelcomeTitle, style: Theme.of(context).textTheme.headline4,),
                          SizedBox(
                            height: 3.0,
                          ),
                          Text(WelcomeSubTitle, style: Theme.of(context).textTheme.bodyText1,textAlign: TextAlign.center,),
                        ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                              onPressed: () => Get.to(()=> const LoginScreen()),
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: const BorderSide(color: kContentColorTheme)
                                ),
                                padding: const EdgeInsets.symmetric(vertical: kButtonHeight)
                              ),
                              child: Text(LoginButton.toUpperCase(), style: const TextStyle(
                                color: kContentColorTheme,
                              ),)
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: ElevatedButton(
                              onPressed: (){ },
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      side: const BorderSide(color: kContentColorTheme)
                                  ),
                                  backgroundColor: kContentColorTheme,
                                  padding: const EdgeInsets.symmetric(vertical: kButtonHeight)
                              ),
                              child: Text(RegisterButton.toUpperCase(),
                                style: const TextStyle(
                                    color: kBackgroundColor
                                ),
                              )
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
          ),
        ],
      )
      );
  }
  
}