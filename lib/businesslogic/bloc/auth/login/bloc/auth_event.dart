part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class Login extends AuthEvent {
  final String phonenumber;
  final String password;

  Login(this.phonenumber, this.password);
}