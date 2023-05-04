import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Screens/Authentication/Login/loginScreen.dart';
import 'package:alpha_estates/Screens/Onboarding/OnBoardingScreen.dart';
import 'package:alpha_estates/Screens/Splashscreen/SplashScreen.dart';
import 'package:alpha_estates/Screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'Screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
    return GetMaterialApp(
      title: "Alpha Estates",
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      theme: ThemeData(
        fontFamily: 'Roboto',
          scaffoldBackgroundColor: const Color(0xff333846),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          headline5: TextStyle(
              color: kContentColorTheme,
              fontWeight: FontWeight.w500,
          ),
          headline4: TextStyle(
            color: kContentColorTheme,
            fontWeight: FontWeight.w500,
          ),
          bodyText1: TextStyle(
            color: kContentColorTheme,
            fontWeight: FontWeight.normal,
          ),
          bodyText2: TextStyle(
            color: kContentColorTheme,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      home: SplashScreen(),
    );
  }
}

