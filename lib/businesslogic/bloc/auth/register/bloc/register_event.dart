part of 'register_bloc.dart';


abstract class RegisterEvent {}

class Register extends RegisterEvent {
  final String username;
  final String phonenumber;
  final String password;
  final String passwordconfirmation;

  Register(this.phonenumber, this.password, this.username, this.passwordconfirmation);
}