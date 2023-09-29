part of 'add_text_bloc.dart';

abstract class AddTextEvent {}

class AddText extends AddTextEvent {
  final String text;
  

  AddText(this.text);
}