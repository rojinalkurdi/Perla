import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'text_list_event.dart';
part 'text_list_state.dart';

class TextListBloc extends Bloc<TextListEvent, TextListState> {
  TextListBloc() : super(TextListInitial(textt: [])) {
    on<AddText>(_addText);
    on<DeleteText>(_deleteText);
    on<UpdateText>(_updateText);
  }

  //emitter is to emit a new state
  void _addText(AddText event, Emitter<TextListState> emit) {
    state.text.add(event.text);
    emit(TextListUpdated(textt: state.text));
  }

  void _deleteText(DeleteText event, Emitter<TextListState> emit) {
    state.text.remove(event.text);
    emit(TextListUpdated(textt: state.text));
  }

  void _updateText(UpdateText event, Emitter<TextListState> emit) {
    for (int i = 0; i < state.text.length; i++) {
      if (event.text == state.text) {
        state.text = event.text as List<String>;
      }
    }
    emit(TextListUpdated(textt: state.text));
  }
}
