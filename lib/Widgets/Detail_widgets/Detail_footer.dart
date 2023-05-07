import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Constants/constant_strings.dart';
import 'package:alpha_estates/Models/Home_model.dart';
import 'package:alpha_estates/Screens/Detail_screens/Home_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Detail_footer extends StatelessWidget {
   Detail_footer({
    super.key,
    required this.home,
  });

  final Home home;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.all(15.0),
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white12),
            borderRadius: const BorderRadius.all(Radius.circular(kDefaultPadding)),
            color: kBackgroundColor
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Text.rich(
                    TextSpan(
                        text: home.price,
                        style: Theme.of(context).textTheme.headline4,
                        children: const [
                          TextSpan(
                            text: " /Month",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          )
                        ]
                    )
                )
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () => launch("tel: " + home.realtor_phone_number),
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
                  kContact.toUpperCase(),
                  style: const TextStyle(
                      color: kBackgroundColor
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}