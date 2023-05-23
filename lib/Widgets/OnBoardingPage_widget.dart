import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/constant_colors.dart';
import '../Constants/constant_images.dart';
import '../Screens/Onboarding/OnBoardingModel.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.model});

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      color: model.bg_color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage(model.image), height: size.height * 0.5,),
          Column(
            children: [
              Text(model.Title,
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(model.SubTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: kContentColorTheme
                ),
              ),
            ],
          ),
          Text(
            model.CounterText,
            style: const TextStyle(
              color: kContentColorTheme,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}