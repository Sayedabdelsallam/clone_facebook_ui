import 'package:flutter/material.dart';
import 'package:say/face_splash_screen.dart';
import 'package:say/home_screen.dart';

import 'login_screen.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case FaceSplashScreen.routeName:
      return MaterialPageRoute(builder: (_) => const FaceSplashScreen());
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (_) => const LoginScreen());
    case HomeScreen.routeName:
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}