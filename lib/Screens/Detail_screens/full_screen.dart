import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageFullScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
          padding: const EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://images.unsplash.com/photo-1613490493576-7fde63acd811?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bW9kZXJuJTIwaG91c2V8ZW58MHx8MHx8&w=1000&q=80"),
            )
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 10,
                  left: 0,
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: OutlinedButton(
                      onPressed: (){
                        Get.back();
                      },
                      style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              side: BorderSide.none
                          ),
                          padding: const EdgeInsets.symmetric(vertical: kButtonHeight/2),
                          backgroundColor: Colors.transparent.withOpacity(0.1)
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_sharp,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
    );
  }

}