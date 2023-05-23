import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_images.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Constants/constant_strings.dart';
import 'package:alpha_estates/Widgets/Login/LoginFooter.dart';
import 'package:alpha_estates/Widgets/Login/LoginForm.dart';
import 'package:alpha_estates/Widgets/Login/LoginHeader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginHeader(size: size),
                const LoginForm(),
                const LoginFooter(),
              ],
            ),
          ),
        ),
      );
  }
}




