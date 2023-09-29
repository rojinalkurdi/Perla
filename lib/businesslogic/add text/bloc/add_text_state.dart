part of 'add_text_bloc.dart';


abstract class AddTextState {}
class AddTextInitial extends AddTextState {}

class TextAdded extends AddTextState {
  final String text;

  TextAdded(
    this.text,
  );
}

