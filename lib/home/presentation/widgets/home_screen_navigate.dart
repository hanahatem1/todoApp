import 'package:flutter/material.dart';
import 'package:to_do_app/constant/colors.dart';
import 'package:to_do_app/home/presentation/views/home_page.dart';
import 'package:to_do_app/home/presentation/widgets/bottom_navigation_bar.dart';
import 'package:to_do_app/profile/profile_view.dart';
import 'package:to_do_app/tasks/task_view.dart';

class HomeScreenNavigate extends StatefulWidget {
  const HomeScreenNavigate({super.key});

  @override
  State<HomeScreenNavigate> createState() => _HomeScreenNavigateState();
}

class _HomeScreenNavigateState extends State<HomeScreenNavigate> {
   int currentIndex = 0;

  final List<Widget> _screens = const [
    HomePage(),
    TaskView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: _screens[currentIndex],
      bottomNavigationBar: BottomNavigation(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}