import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_images.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Constants/constant_strings.dart';
import 'package:alpha_estates/Screens/Authentication/Login/loginScreen.dart';
import 'package:alpha_estates/Widgets/Form/FormHeaderWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alpha_estates/Widgets/RegisterWidget/RegisterForm.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget{
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                  image: kSplashImage,
                  title: kRegisterTitle,
                  subTitle: kLoginSubtitle,
                ),
                RegisterForm(),
                Column(
                  children: [
                    const Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        icon: const Image(image: AssetImage(kGoogleLogo), width: 20.0,),
                        onPressed: (){},
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: const BorderSide(width: 15,color: kContentColorTheme)
                            ),
                            padding: const EdgeInsets.symmetric(vertical: kButtonHeight)
                        ),
                        label:  Text(
                            kLoginWithGoogle.toUpperCase(),
                            style: const TextStyle(color: kContentColorTheme,)
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () => Get.to(()=> const LoginScreen()),
                      child: Text.rich(
                        TextSpan(
                            text: kAlreadyhaveAnAccount,
                            style: Theme.of(context).textTheme.bodyText1,
                            children: const [
                              TextSpan(
                                text: LoginButton,
                                style: TextStyle(
                                    color: Colors.blue
                                ),
                              )
                            ]
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
  }

}

