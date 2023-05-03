import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Constants/constant_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
          padding:  EdgeInsets.symmetric(vertical: kFormHeight-10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.mail,color: kContentColorTheme,),
                    labelText: kEmail,
                    labelStyle: TextStyle(
                        color: kContentColorTheme
                    ),
                    hintText: kEmail,
                    hintStyle: TextStyle(
                        color: kContentColorTheme
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    )
                ),
              ),
              const SizedBox(
                height: kFormHeight -20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.fingerprint,color: kContentColorTheme,),
                    suffixIcon: IconButton(
                      onPressed: () {  },
                      icon: const Icon(Icons.remove_red_eye_sharp,color: kContentColorTheme,),
                    ),
                    labelText: kPassword,
                    labelStyle: const TextStyle(
                        color: kContentColorTheme
                    ),
                    hintText: kPassword,
                    hintStyle: const TextStyle(
                        color: kContentColorTheme
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: kContentColorTheme)
                    )
                ),
              ),
              const SizedBox(
                height: kFormHeight -20,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: (){},
                    child: Text(kForgotPassword,style: Theme.of(context).textTheme.bodyText2,)
                ),
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
                    LoginButton.toUpperCase(),
                    style: const TextStyle(
                        color: kBackgroundColor
                    ),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}