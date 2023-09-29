import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:perlatest/presentation/consts/services/services.dart';

part 'app_theme_event.dart';
part 'app_theme_state.dart';

class AppThemeBloc extends Bloc<AppThemeEvent, AppThemeState> {
  AppThemeBloc() : super(AppThemeInitial()) {
    on<AppThemeEvent>((event, emit) {
      if (event is InitialThemeEvent) {
        if (sharedPreferences!.getBool('theme') != null) {
          if (sharedPreferences!.getBool('theme') == true) {
            emit(AppChangeTheme(appTheme: true));
          } else {
            emit(AppChangeTheme(appTheme: false));
          }
        }
      } else if (event is LightEvent) {
        sharedPreferences!.setBool('theme', true);
        emit(AppChangeTheme(appTheme: true));
      } else if (event is DarkEvent) {
        sharedPreferences!.setBool('theme', true);
        emit(AppChangeTheme(appTheme: false));
      }
    });
  }
}
