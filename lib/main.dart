import 'package:flutter/material.dart';
import 'package:to_do_app/home/widgets/home_screen_navigate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreenNavigate(),
    );
  }
}