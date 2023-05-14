import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageFullScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    return Scaffold(
      body:Center(
        child: Container(
            height:double.infinity,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(data[0]),
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
      ),
    );
  }

}