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
  var verificationId = ''.obs;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }
  _setInitialScreen(User? user) {
    user == null? Get.offAll(() => SplashScreen()): Get.offAll(() => DashboardPage());
  }

  Future<void> phoneAuthentication(String phone)async {
    _auth.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (credential) async {
          await _auth.signInWithCredential(credential);
        },
        codeSent: (verificationId, resentToken){
          this.verificationId.value = verificationId;

        },
        codeAutoRetrievalTimeout: (verificationId){
          this.verificationId.value = verificationId;
        },
        verificationFailed: (e){
          if(e.code == "invalid phone number"){
            Get.snackbar("Error", "Your phone number is not valid");
          }else{
            Get.snackbar("Error", "Something went wrong, please try again");
          }
        },
    );
  }

  Future<bool> verifyOTP(String otp) async{
      var credentials = await _auth.signInWithCredential(
          PhoneAuthProvider.credential(
            verificationId: verificationId.value,
            smsCode: otp
        )
      );
      return credentials.user != null ? true : false;
  }

  Future<void> createUserWithEmailAndPassword(String emailAddress, String password) async {
    try{
      await _auth.createUserWithEmailAndPassword(email: emailAddress, password: password);
      firebaseUser.value != null ? Get.offAll(() => DashboardPage()) : Get.offAll(() => const WelcomeScreen());
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
