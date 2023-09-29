import 'package:bloc/bloc.dart';

part 'add_text_event.dart';
part 'add_text_state.dart';

class AddTextBloc extends Bloc<AddTextEvent, AddTextState> {
  AddTextBloc() : super(AddTextInitial()) {
    on<AddTextEvent>((event, emit) async {
      if (event is AddText) {
        await Future.delayed(const Duration(seconds: 3), () {
          emit(TextAdded(event.text));
        });
      }
    });
  }
}
