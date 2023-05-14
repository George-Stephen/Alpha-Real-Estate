import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Models/Home_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeCarouselWidget extends StatelessWidget {
  const HomeCarouselWidget({
    super.key,
    required this.home,
  });

  final Home home;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.68,
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
                  right: 10,
                  child: SizedBox(
                    height: 50,
                    width: 45,
                    child: OutlinedButton(
                        onPressed: (){
                        },
                        style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              side: BorderSide.none
                          ),
                          padding: const EdgeInsets.symmetric(vertical: kButtonHeight/4),
                          backgroundColor: Colors.transparent.withOpacity(0.3),
                        ),
                        child: const Icon(Icons.location_pin, color: kContentColorTheme, size: 25,)
                    ),
                  )
              ),
              Positioned(
                  bottom: 10,
                  left: 2,
                  right: 2,
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.94,
                    height: 100,
                    child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.transparent.withOpacity(0.3),
                            borderRadius: const BorderRadius.all(Radius.circular(15.0))
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  home.title,
                                  textAlign: TextAlign.justify,
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  home.location,
                                  textAlign: TextAlign.justify,
                                  style: Theme.of(context).textTheme.bodyText2,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: OutlinedButton(
                                      onPressed: (){
                                      },
                                      style: OutlinedButton.styleFrom(
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(22.0)),
                                            side: BorderSide.none
                                        ),
                                        padding: const EdgeInsets.symmetric(vertical: kButtonHeight/4),
                                        backgroundColor: Colors.transparent.withOpacity(0.3),
                                      ),
                                      child: const Icon(Icons.thumb_up, color: kContentColorTheme, size: 25,)
                                  ),
                                )
                              ],
                            ),
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