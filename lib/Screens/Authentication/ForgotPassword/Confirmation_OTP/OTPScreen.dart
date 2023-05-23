import 'package:alpha_estates/Constants/constant_colors.dart';
import 'package:alpha_estates/Constants/constant_sizes.dart';
import 'package:alpha_estates/Constants/constant_strings.dart';
import 'package:alpha_estates/Controllers/OTP_controller.dart';
import 'package:alpha_estates/Screens/Dashboard/DashboardPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var data_1;
    OTPController controller = Get.put(OTPController());
    var data = Get.arguments;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(kOTPTitle, style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 80.0
              ),
            ),
            Text(kOTPSubtitle.toUpperCase(), style: Theme.of(context).textTheme.headline6,),
            const SizedBox(
              height: 40.0,
            ),
            Text("$kOTPMessage ${data[0]}", textAlign: TextAlign.center,),
            const SizedBox(
              height: 20.0,
            ),
            OtpTextField(
                numberOfFields: 6,
                cursorColor: kContentColorTheme,
                fillColor: kContentColorTheme,
                filled: true,
                keyboardType: TextInputType.number,
                focusedBorderColor: kContentColorTheme,
                onSubmit: (code){
                  data_1 = code;
                  controller.verifyOTP(data_1);
                },
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  if (kDebugMode) {
                    print("Confirmation code is $data_1");
                  }
                  controller.verifyOTP(data_1);
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
                  kConfirmCode.toUpperCase(),
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