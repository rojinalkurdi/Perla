import 'package:bloc/bloc.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {
    on<RegisterEvent>((event, emit) async {
      if (event is Register) {
        if (event.phonenumber.isEmpty || event.password.isEmpty || event.passwordconfirmation.isEmpty || event.username.isEmpty) {
          emit(RegisterError());
        } else {
          emit(RegisterLoading());
          await Future.delayed(const Duration(seconds: 3), () {
            emit(RegisterLoaded(event.phonenumber, event.password, event.passwordconfirmation, event.username),);
          });
        }
      }
    });
  }
}