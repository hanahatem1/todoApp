import 'package:flutter/material.dart';
import 'package:to_do_app/home/presentation/widgets/home_screen_navigate.dart';
import 'package:to_do_app/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}