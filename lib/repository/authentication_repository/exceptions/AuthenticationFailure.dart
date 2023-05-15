
class RegistrationFailure{
  final String message;

  const RegistrationFailure([this.message = "An unknown error has occurred"]);
  factory RegistrationFailure.code(String code){
    switch (code){
      case'weak-password' : return const RegistrationFailure('Please enter a stronger password');
      case'invalid-email' : return const RegistrationFailure('Email is not valid');
      case'email-already-in-use' : return const RegistrationFailure('An account already exists for this email');
      case'operation-not -allowed' : return const RegistrationFailure('Operation is not allowed. Please contact support for more information');
      case'user-disabled' : return const RegistrationFailure('This account has been disabled, please contact support for more information');
      default: return const RegistrationFailure();

    }
  }
}

class LoginFailure {
  final String message;
  const LoginFailure([this.message = "An unknown error has occurred"]);
  factory LoginFailure.code(String code){
    switch (code){
      case'weak-password' : return const LoginFailure('Please enter a stronger password');
      case'invalid-email' : return const LoginFailure('Email is not valid');
      case'email-already-in-use' : return const LoginFailure('An account already exists for this email');
      case'operation-not -allowed' : return const LoginFailure('Operation is not allowed. Please contact support for more information');
      case'user-disabled' : return const LoginFailure('This account has been disabled, please contact support for more information');
      default: return const LoginFailure();

    }
  }
}