import 'package:flutter/material.dart';
import 'package:to_do_app/constant/themes.dart';
import 'package:to_do_app/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

final themeNotifier = ValueNotifier(ThemeMode.light);
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeNotifier,
      builder: (context, ThemeMode currentMode, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const SplashPage(),
          theme: lightMood,
          darkTheme: darkMood,
          themeMode: currentMode, 
        );
      },
    );
  }
}