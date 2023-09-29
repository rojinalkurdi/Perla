import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:perlatest/presentation/consts/routers/app_routes.dart';
import 'package:perlatest/presentation/screens/home.dart';
import 'package:perlatest/presentation/screens/login.dart';
import 'package:perlatest/presentation/screens/register.dart';

class AppRoutes {
   GoRouter router = GoRouter(routes: [
    GoRoute(
      name: ConstantRoutes.register,
      path: '/',
      pageBuilder: (context, state) {
        return MaterialPage(child: Register());
      },
    ),
     GoRoute(
      name: ConstantRoutes.login,
      path: '/login',
      pageBuilder: (context, state) {
        return MaterialPage(child: Login());
      },
    ),
     GoRoute(
      name: ConstantRoutes.homePage,
      path: '/home',
      pageBuilder: (context, state) {
        return MaterialPage(child: HomePage());
      },
    ),
  ]);
}
