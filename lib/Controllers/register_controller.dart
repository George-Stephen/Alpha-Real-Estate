import 'package:alpha_estates/repository/authentication_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{

  static RegisterController get instance => Get.find();

  final fullName = TextEditingController();
  final email_address = TextEditingController();
  final phone_number = TextEditingController();
  final password = TextEditingController();

  // called from the view
  void registerUser(String emailAddress, String password){
      AuthenticationRepository.instance.createUserWithEmailAndPassword(emailAddress, password);
  }

}