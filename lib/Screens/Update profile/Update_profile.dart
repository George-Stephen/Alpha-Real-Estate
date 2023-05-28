import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_images.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Constants/constant_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                ],
              ),
          ),
        ),
      ),
    );
  }

}