part of 'register_bloc.dart';

abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterLoaded extends RegisterState {
  final String username;
  final String phonenumber;
  final String password;
  final String passwordConfirmation;

  RegisterLoaded(
    this.phonenumber, this.username, this.password, this.passwordConfirmation,
  );
}

class RegisterError extends RegisterState {}