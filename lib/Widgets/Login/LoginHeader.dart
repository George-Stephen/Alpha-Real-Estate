import 'package:alpha_estates/Constants/constant_images.dart';
import 'package:alpha_estates/Constants/constant_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(kWelcomeImage), height: size.height * 0.2,),
        Text(kLoginTitle, style: Theme.of(context).textTheme.headline4,),
        Text(kLoginSubtitle,style: Theme.of(context).textTheme.bodyText2,),
      ],
    );
  }
}