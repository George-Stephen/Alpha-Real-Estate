import 'package:alpha_estates/Screens/Dashboard/DashboardPage.dart';
import 'package:alpha_estates/repository/authentication_repository/auth_repository.dart';
import 'package:get/get.dart';

// 21-05-2023
class OTPController extends GetxController{
  static OTPController get instance => Get.find();

  Future<void> verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(DashboardPage()) : Get.back();
  }
}