import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.image_color,
    this.image_height = 0.2,
    this.heightBetween,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.textAlign,
  });

  final Color? image_color;
  final double image_height;
  final double? heightBetween;
  final String image,title,subTitle;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;



  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(image: AssetImage(image),color: image_color,height: size.height * image_height,),
        SizedBox( height:  heightBetween,),
        Text(title, style: Theme.of(context).textTheme.headline4,),
        Text(subTitle,style: Theme.of(context).textTheme.bodyText2, textAlign: textAlign,),
      ],
    );
  }
}