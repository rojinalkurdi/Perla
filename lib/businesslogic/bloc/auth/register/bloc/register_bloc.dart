import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perlatest/businesslogic/bloc/auth/register/bloc/register_event.dart';
import 'package:perlatest/businesslogic/bloc/auth/register/bloc/register_state.dart';
import 'package:perlatest/data/repositories/crud_to_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';


class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  late SharedPreferences sharedpreferences;
  final CrudRepo? authRepo;

  RegisterBloc({this.authRepo}) : super(RegisterState());

  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
    // Username updated
    if (event is RegisterUsernameChanged) {
    //sharedPreferences!.setString("username", event.username!);

      yield state.copyWith(username: event.username);


      // phonenumber updated
    } else if (event is RegisterphonenumberChanged) {
      yield state.copyWith(phonenumber: event.phonenumber);

      // Password updated
    } else if (event is RegisterPasswordChanged) {
      yield state.copyWith(password: event.password);

      // Form submitted
    }
  }
}
