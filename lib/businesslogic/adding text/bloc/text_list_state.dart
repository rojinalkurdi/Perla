part of 'text_list_bloc.dart';

sealed class TextListState {
  List<String> text;
  TextListState({required this.text});
}

final class TextListInitial extends TextListState {
  TextListInitial({required List<String> textt}) : super(text: textt);
}

final class TextListUpdated extends TextListState {
  TextListUpdated({required List<String> textt}) : super(text: textt);
}
