import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perlatest/data/repositories/crud_to_bloc.dart';

import 'login_event.dart';
import 'login_state.dart';


class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final CrudRepo? authRepo;

  LoginBloc({this.authRepo}) : super(LoginState());

  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    // phonenumber updated
    if (event is LoginphonenumberChanged) {
     // sharedPreferences!.setString("phonenumber", event.phonenumber!);
      yield state.copyWith(phonenumber: event.phonenumber);

      // Password updated
    } else if (event is LoginPasswordChanged) {
      yield state.copyWith(password: event.password);

 
    } 
 
      }
    }
  