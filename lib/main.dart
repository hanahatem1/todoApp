import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:to_do_app/constant/themes.dart';
import 'package:to_do_app/features/home/data/models/task_model.dart';
import 'package:to_do_app/features/home/presentation/widgets/home_screen_navigate.dart';

void main() async {
  await Hive.initFlutter();

   Hive.registerAdapter(TaskModelAdapter());
  await Hive.openBox<TaskModel>('to_do_app');

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
          home: HomeScreenNavigate(),
          theme: lightMood,
          darkTheme: darkMood,
          themeMode: currentMode, 
        );
      },
    );
  }
}