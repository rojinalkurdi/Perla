// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:perlatest/businesslogic/bloc/app_language_bloc.dart';
// import 'package:perlatest/businesslogic/bloc/app_theme_bloc.dart';
// import 'package:perlatest/presentation/consts/routers/config_routes.dart';
// import 'package:perlatest/presentation/consts/services/services.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   sharedPreferences = await SharedPreferences.getInstance();
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => AppThemeBloc()..add(InitialThemeEvent()),
//         ),
//         BlocProvider(
//           create: (context) => AppLanguageBloc()..add(InitialLanguage()),
//         ),
//       ],
//       child: BlocBuilder<AppThemeBloc, AppThemeState>(
//         builder: (context, state) {
//           if (state is AppLightTheme) {
//             return MaterialApp.router(
//               debugShowCheckedModeBanner: false,
//               routerConfig: AppRoutes().router,

//               title: 'Flutter Demo',
//               theme: ThemeData.light(
//                 //  fontFamily: "Montserrat",
//                 useMaterial3: true,
//               ),
//               //home: const MyHomePage(title: 'Flutter Demo Home Page'),
//             );
//           } else if (state is AppDarkTheme) {
//             return MaterialApp.router(
//               debugShowCheckedModeBanner: false,
//               routerConfig: AppRoutes().router,

//               title: 'Flutter Demo',
//               theme: ThemeData.dark(
//                 // fontFamily: "Montserrat",
//                 //  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//                 useMaterial3: true,
//               ),
//               //home: const MyHomePage(title: 'Flutter Demo Home Page'),
//             );
//           }
//           return MaterialApp.router(
//             debugShowCheckedModeBanner: false,
//             routerConfig: AppRoutes().router,

//             title: 'Flutter Demo',
//             theme: ThemeData(
//               fontFamily: "Montserrat",
//               colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//               useMaterial3: true,
//             ),
//             //home: const MyHomePage(title: 'Flutter Demo Home Page'),
//           );
//         },
//       ),
//     );
//   }
// }
// //____________________________

// Widget build(BuildContext context) {
//   return BlocProvider(
//     create: (context) => AppThemeBloc(),
//     child: BlocBuilder<AppThemeBloc, AppThemeState>(
//       builder: (context, state) {
//         if (state is AppLightTheme) {
//           return MaterialApp.router(
//             debugShowCheckedModeBanner: false,
//             routerConfig: AppRoutes().router,

//             title: 'Flutter Demo',
//             theme: ThemeData.light(
//               //  fontFamily: "Montserrat",
//               useMaterial3: true,
//             ),
//             //home: const MyHomePage(title: 'Flutter Demo Home Page'),
//           );
//         } else if (state is AppDarkTheme) {
//           return MaterialApp.router(
//             debugShowCheckedModeBanner: false,
//             routerConfig: AppRoutes().router,

//             title: 'Flutter Demo',
//             theme: ThemeData.dark(
//               // fontFamily: "Montserrat",
//               //  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//               useMaterial3: true,
//             ),
//             //home: const MyHomePage(title: 'Flutter Demo Home Page'),
//           );
//         }
//         return MaterialApp.router(
//           debugShowCheckedModeBanner: false,
//           routerConfig: AppRoutes().router,

//           title: 'Flutter Demo',
//           theme: ThemeData(
//             fontFamily: "Montserrat",
//             colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//             useMaterial3: true,
//           ),
//           //home: const MyHomePage(title: 'Flutter Demo Home Page'),
//         );
//       },
//     ),
//   );
// }
