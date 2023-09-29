abstract class LoginEvent {}

class LoginphonenumberChanged extends LoginEvent {
  final String? phonenumber;

  LoginphonenumberChanged({this.phonenumber});
}

class LoginPasswordChanged extends LoginEvent {
  final String? password;

  LoginPasswordChanged({this.password});
}

