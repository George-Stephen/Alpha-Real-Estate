import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_images.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Constants/constant_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class UpdateProfileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new_sharp, size: 17,),
        ),
        title: Text(kEditProfile, style: Theme.of(context).textTheme.headline5,),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Container(
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: const Image(image: AssetImage(kProfileImage))
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: (){},
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: kContentColorTheme,
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: const Icon(
                              CupertinoIcons.camera,
                              color: kBackgroundColor,
                              size: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Form(child: Column(
                      children: [
                        TextFormField(
                          style: const TextStyle(
                              color: kContentColorTheme
                          ),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person_outline_rounded,color: kContentColorTheme,),
                            labelText: kRegisterName,
                            labelStyle: TextStyle(
                                color: kContentColorTheme
                            ),
                            hintText: kRegisterName,
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
                          height: kFormHeight-20,
                        ),
                        TextFormField(
                          style: const TextStyle(
                              color: kContentColorTheme
                          ),
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.description,color: kContentColorTheme,),
                            labelText: kDescription,
                            labelStyle: TextStyle(
                                color: kContentColorTheme
                            ),
                            hintText: kDescription,
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
                          height: kFormHeight-20,
                        ),
                        TextFormField(
                          style: const TextStyle(
                              color: kContentColorTheme
                          ),
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
                          height: kFormHeight-20,
                        ),
                        TextFormField(
                          style: const TextStyle(
                              color: kContentColorTheme
                          ),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.numbers,color: kContentColorTheme,),
                            labelText: kRegisterPhone,
                            labelStyle: TextStyle(
                                color: kContentColorTheme
                            ),
                            hintText: kRegisterPhone,
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
                          height: kFormHeight-20,
                        ),
                        TextFormField(
                          obscureText: true,
                          style: const TextStyle(
                              color: kContentColorTheme
                          ),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(14),
                          ],
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.fingerprint,color: kContentColorTheme,),
                            labelText: kPassword,
                            labelStyle: TextStyle(
                                color: kContentColorTheme
                            ),
                            hintText: kPassword,
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
                          height: kFormHeight-10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: (){
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: const StadiumBorder(),
                                backgroundColor: kContentColorTheme,
                                padding: const EdgeInsets.symmetric(vertical: kButtonHeight)
                            ),
                            child: Text(
                              kEditProfile.toUpperCase(),
                              style: const TextStyle(
                                  color: kBackgroundColor
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: kFormHeight-10,
                        ),
                        Row(
                          children: [
                             const Expanded(
                              child: Text.rich(
                                TextSpan(
                                  text: kJoined,
                                  style: TextStyle(
                                    fontSize: 13
                                  ),
                                  children: [
                                    TextSpan(
                                      text: kJoinedOn,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                      )
                                    )
                                  ]
                                )
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
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
                                  child: Text(kDeleteAccount.toUpperCase(),
                                    style: const TextStyle(
                                        color: kBackgroundColor
                                    ),
                                  )
                              ),
                            ),
                          ],
                        )
                      ],
                  )
                  )
                ],
              ),
          ),
        ),
      ),
    );
  }

}