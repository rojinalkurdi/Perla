abstract class RegisterEvent {}

class RegisterUsernameChanged extends RegisterEvent {
  final String? username;

  RegisterUsernameChanged({this.username});
}

class RegisterphonenumberChanged extends RegisterEvent {
  final String? phonenumber;

  RegisterphonenumberChanged({this.phonenumber});
}

class RegisterPasswordChanged extends RegisterEvent {
  final String? password;

  RegisterPasswordChanged({this.password});
}

class RegisterSubmitted extends RegisterEvent {}