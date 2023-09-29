part of 'app_theme_bloc.dart';

@immutable
 class AppThemeEvent<bool> {}

class InitialThemeEvent extends AppThemeEvent{}
class LightEvent extends AppThemeEvent{}
class DarkEvent extends AppThemeEvent{}
