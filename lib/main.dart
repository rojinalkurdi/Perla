import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:perlatest/businesslogic/bloc/app_theme_bloc.dart';
import 'package:perlatest/presentation/consts/localization.dart';
import 'package:perlatest/presentation/consts/routers/config_routes.dart';
import 'package:perlatest/presentation/consts/services/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'businesslogic/bloc/app_language_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AppThemeBloc()..add(InitialThemeEvent()),
          ),
          BlocProvider(
            create: (context) => AppLanguageBloc()..add(InitialLanguageEvent()),
          ),
        ],
        child: Builder(builder: (context) {
          var themeState = context.select((AppThemeBloc bloc) => bloc.state);
          var langState = context.select((AppLanguageBloc bloc) => bloc.state);
          
          return MaterialApp.router(
            theme: themeState is AppChangeTheme? themeState.appTheme == true?
            ThemeData.light(): ThemeData.dark(): ThemeData.light(),
            locale: langState is AppChangeLanguage? langState.languageCode == 'en'?
           const Locale('en'):const Locale('ar'): const Locale('en'),
            debugShowCheckedModeBanner: false,
            supportedLocales: const [
              Locale('en'),
              Locale('ar'),
            ],
            localizationsDelegates: [
              AppLocalizations.delegate, //app directions
              GlobalMaterialLocalizations.delegate, //directions for android
              GlobalWidgetsLocalizations.delegate, //directions for widgets
              GlobalCupertinoLocalizations.delegate //directions for ios
            ],
            localeResolutionCallback: (deviceLocale, supportedLocales) {
              for (var locale in supportedLocales) {
                if (deviceLocale != null) {
                  if (deviceLocale.languageCode == locale.languageCode) {
                    return deviceLocale;
                  }
                }
              }
              return supportedLocales.first;
            },
            routerConfig: AppRoutes().router,
          );
        }));
  }
} 








    //   child: BlocBuilder<AppThemeBloc, AppThemeState>(
    //     builder: (context, state) {
    //       if (state is AppLightTheme) {
          //   return MaterialApp.router(
          //     debugShowCheckedModeBanner: false,
          //     supportedLocales: const [
          //       Locale('en'),
          //       Locale('ar'),
          //     ],
          //     localizationsDelegates: [ 
          //       AppLocalizations.delegate, //app directions
          //       GlobalMaterialLocalizations.delegate, //directions for android
          //       GlobalWidgetsLocalizations.delegate, //directions for widgets
          //       GlobalCupertinoLocalizations.delegate //directions for ios
          //     ],
          //     localeResolutionCallback: (deviceLocale, supportedLocales) {
          //       for (var locale in supportedLocales) {
          //         if (deviceLocale != null) {
          //           if (deviceLocale.languageCode == locale.languageCode) {
          //             return deviceLocale;
          //           }
          //         }
          //       }
          //       return supportedLocales.first;
          //     },
          //     routerConfig: AppRoutes().router,
          //     title: 'Flutter Demo',
          //     theme: ThemeData.light(),
          //   );
          // } else if (state is AppDarkTheme) {
          //   return MaterialApp.router(
          //     debugShowCheckedModeBanner: false,
          //     routerConfig: AppRoutes().router,
          //     title: 'Flutter Demo',
          //     theme: ThemeData.dark(),
          //   );
          // }
    //       return MaterialApp.router(
    //         debugShowCheckedModeBanner: false,
    //         routerConfig: AppRoutes().router,

    //         title: 'Flutter Demo',
    //         theme: ThemeData(
    //           fontFamily: "Montserrat",
    //           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //           useMaterial3: true,
    //         ),
    //         //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    //       );
    //     },
    //   ),
   


//_____________________________________

