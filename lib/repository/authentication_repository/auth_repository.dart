import 'package:alpha_estates/Screens/Dashboard/DashboardPage.dart';
import 'package:alpha_estates/Screens/Splashscreen/SplashScreen.dart';
import 'package:alpha_estates/Screens/Welcome/welcome_screen.dart';
import 'package:alpha_estates/repository/authentication_repository/exceptions/AuthenticationFailure.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  //variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }
  _setInitialScreen(User? user) {
    user == null? Get.offAll(() => const WelcomeScreen()): Get.offAll(() => DashboardPage());
  }

  Future<void> createUserWithEmailAndPassword(String emailAddress, String password) async {
    try{
      await _auth.createUserWithEmailAndPassword(email: emailAddress, password: password);
      firebaseUser.value != null ? Get.offAll(() => DashboardPage()) : Get.offAll(() => SplashScreen());
    } on FirebaseAuthException catch(e){
      final ex = RegistrationFailure.code(e.code);
      if (kDebugMode) {
        print("Exception - ${ex.message}");
      }
    }catch (_){
      const ex = RegistrationFailure();
      if (kDebugMode) {
        print("Exception - ${ex.message}");
      }
      throw ex;
    }
  }

  Future<void> LoginWithEmailAndPassword(String emailAddress, String password) async {
    try{
      await _auth.signInWithEmailAndPassword(email: emailAddress, password: password);
    } on FirebaseAuthException catch(e){
      final ex = LoginFailure.code(e.code);
      if (kDebugMode) {
        print("Exception - ${ex.message}");
      }
    }catch (_){
      const ex = LoginFailure();
      if (kDebugMode) {
        print("Exception - ${ex.message}");
      }
      throw ex;
    }
  }
  Future<void> logout()async => await _auth.signOut();
}
