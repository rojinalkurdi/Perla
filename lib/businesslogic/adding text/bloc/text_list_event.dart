part of 'text_list_bloc.dart';

@immutable
sealed class TextListEvent {}

class AddText extends TextListEvent {
  final String text;

  AddText({required this.text});
}

class DeleteText extends TextListEvent {
  final String text;

  DeleteText({required this.text});
}

class UpdateText extends TextListEvent {
  final String text;

  UpdateText({required this.text});
}
