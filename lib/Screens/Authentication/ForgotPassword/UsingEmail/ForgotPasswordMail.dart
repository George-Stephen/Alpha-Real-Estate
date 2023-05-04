import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_images.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Constants/constant_strings.dart';
import 'package:alpha_estates/Widgets/Form/FormHeaderWidget.dart';
import 'package:flutter/material.dart';

class ForgotPasswordMailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(kDefaultPadding),
            child:  Column(
              children: [
                const SizedBox(
                        height: kDefaultPadding * 4,
                    ),
                const FormHeaderWidget(
                         image: kSplashImage,
                         title: kForgotPassword,
                         subTitle: kForgetMailSubTitle,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          image_height: 0.25,
                          heightBetween: 30.0,
                          textAlign: TextAlign.center,
                   ),
                const SizedBox(
                  height: kFormHeight,
                ),
                Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.mail_lock_sharp,color: kContentColorTheme,),
                            labelText: kEmail,
                            labelStyle: TextStyle(
                                color: kContentColorTheme
                            ),
                            hintText: kEmail,
                            hintStyle: TextStyle(
                                color: kContentColorTheme
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(12.0)),
                              borderSide: BorderSide(width: 2.0, color: kContentColorTheme),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(12.0)),
                              borderSide: BorderSide(width: 2.0, color: kContentColorTheme),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: const BorderSide(color: kContentColorTheme)
                                ),
                                backgroundColor: kContentColorTheme,
                                padding: const EdgeInsets.symmetric(vertical: kButtonHeight)
                            ),
                            child: Text(
                              kSendConfirmation.toUpperCase(),
                              style: const TextStyle(
                                  color: kBackgroundColor
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}