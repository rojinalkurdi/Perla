part of 'app_theme_bloc.dart';

@immutable
sealed class AppThemeState {}

final class AppThemeInitial extends AppThemeState {}

class AppChangeTheme extends AppThemeState {
  final bool? appTheme;

  AppChangeTheme({this.appTheme});
}

// class AppLightTheme extends AppThemeState {
//   final String? appTheme;
//   AppLightTheme({this.appTheme});
// }

// class AppDarkTheme extends AppThemeState {
//    final String? appTheme;
//   AppDarkTheme({this.appTheme});
// }
