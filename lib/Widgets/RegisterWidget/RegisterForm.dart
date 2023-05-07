import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Constants/constant_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kFormHeight -10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(
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
            SizedBox(
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
            SizedBox(
              height: kFormHeight-20,
            ),
            TextFormField(
              style: const TextStyle(
                  color: kContentColorTheme
              ),
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
            SizedBox(
              height: kFormHeight-20,
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
                  RegisterButton.toUpperCase(),
                  style: const TextStyle(
                      color: kBackgroundColor
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}