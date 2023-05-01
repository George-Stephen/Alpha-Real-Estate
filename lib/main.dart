import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Screens/Onboarding/OnBoardingScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    return MaterialApp(
      title: "Alpha Estates",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'LeonSans',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline5: TextStyle(
              color: kContentColorTheme,
              fontWeight: FontWeight.w500,
          )
        )
      ),
      home: OnBoardingScreen(),
    );
  }
}

