import 'package:alpha_estates/repository/authentication_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  static LoginController get instance => Get.find();

  final email_address = TextEditingController();
  final password = TextEditingController();

  // called from the view
  void Login(String emailAddress, String password){
    AuthenticationRepository.instance.LoginWithEmailAndPassword(emailAddress, password);
  }

}