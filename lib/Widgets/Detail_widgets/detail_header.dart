import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Models/Home_model.dart';
import 'package:alpha_estates/Screens/Detail_screens/full_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Detail_header extends StatelessWidget {
  const Detail_header({
    super.key,
    required this.home,
  });

  final Home home;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      // width: double.infinity,
      child: Card(
        semanticContainer: false,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        margin: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(home.imageUrl)
              )
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 10,
                  left: 10,
                  child: SizedBox(
                    height: 30,
                    width: 40,
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
              Positioned(
                  top: 10,
                  right: 10,
                  child: SizedBox(
                    height: 30,
                    width: 40,
                    child: OutlinedButton(
                      onPressed: (){
                        Get.to(()=> ImageFullScreen());
                      },
                      style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              side: BorderSide.none
                          ),
                          padding: const EdgeInsets.symmetric(vertical: kButtonHeight/2),
                          backgroundColor: Colors.transparent
                      ),
                      child: const Icon(
                        Icons.fullscreen,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  )
              ),
              Positioned(
                  bottom: 10,
                  left: 10,
                  child: SizedBox(
                    width: 250,
                    height: 100,
                    child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.transparent.withOpacity(0.2),
                            borderRadius: const BorderRadius.all(Radius.circular(15.0))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              home.title,
                              textAlign: TextAlign.justify,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              home.location,
                              textAlign: TextAlign.justify,
                              style: Theme.of(context).textTheme.bodyText2,
                            )
                          ],
                        )
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}