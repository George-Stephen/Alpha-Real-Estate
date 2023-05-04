import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_images.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Constants/constant_strings.dart';
import 'package:alpha_estates/Screens/Authentication/Register/RegisterScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(
          height: kFormHeight -20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(image: AssetImage(kGoogleLogo), width: 20.0,),
            onPressed: (){},
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: const BorderSide(color: kContentColorTheme)
                ),
                padding: const EdgeInsets.symmetric(vertical: kButtonHeight)
            ),
            label: Text(
                kLoginWithGoogle.toUpperCase(),
                style: TextStyle(color: kContentColorTheme,)
            ),
          ),
        ),
        const SizedBox(
          height: kFormHeight -20,
        ),
        TextButton(
          onPressed: () => Get.to(()=> const RegisterScreen()),
          child: Text.rich(
            TextSpan(
                text: kRegisterText,
                style: Theme.of(context).textTheme.bodyText1,
                children: const [
                  TextSpan(
                    text: RegisterButton,
                    style: TextStyle(
                        color: Colors.blue
                    ),
                  )
                ]
            ),
          ),
        ),
      ],
    );
  }
}
