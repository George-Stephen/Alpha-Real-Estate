import 'package:alpha_estates/Models/Home_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile_collection_widget extends StatelessWidget {
  const profile_collection_widget({
    super.key,
    required this.home,
  });

  final Home home;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20.0),),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(home.imageUrl)
            )
        ),
        child: Stack(
          children: [
            Positioned(
                bottom: 10,
                left: 2,
                right: 2,
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  height: 100,
                  child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.transparent.withOpacity(0.5),
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
                        ],
                      )
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}