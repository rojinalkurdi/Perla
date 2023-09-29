part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthLoaded extends AuthState {
  final String phonenumber;

  AuthLoaded(
    this.phonenumber,
  );
}

class AuthError extends AuthState {}