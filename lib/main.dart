import 'package:flutter/material.dart';
import 'package:say/face_splash_screen.dart';
import 'package:say/on_generate_route.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: FaceSplashScreen.routeName,
    );
  }
}
