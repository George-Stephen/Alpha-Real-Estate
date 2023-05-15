import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Constants/constant_strings.dart';
import 'package:alpha_estates/Controllers/login_controller.dart';
import 'package:alpha_estates/Screens/Authentication/ForgotPassword/ForgotPasswordOptions/ForgotPasswordModelBottomSheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final _formKey = GlobalKey<FormState>();
    return Form(
        key: _formKey,
        child: Container(
          padding:  const EdgeInsets.symmetric(vertical: kFormHeight-10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller.email_address,
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
              const SizedBox(
                height: kFormHeight -20,
              ),
              TextFormField(
                controller: controller.password,
                obscureText: true,
                style: const TextStyle(
                    color: kContentColorTheme
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(15),
                ],
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
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(width: 2.0, color: kContentColorTheme),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(width: 2.0, color: kContentColorTheme),
                    ),
                ),
              ),
              const SizedBox(
                height: kFormHeight -20,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: (){
                      ForgotPasswordScreen.buildShowModalBottomSheet(context);
                    },
                    child: Text(kForgotPassword,style: Theme.of(context).textTheme.bodyText2,)
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      LoginController.instance.Login(controller.email_address.text.trim(), controller.password.text.trim());
                    }
                  },
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

