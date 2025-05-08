import 'package:flutter/material.dart';
import 'package:to_do_app/features/home/presentation/views/home_page.dart';
import 'package:to_do_app/features/home/presentation/widgets/bottom_navigation_bar.dart';
import 'package:to_do_app/features/profile/views/profile_view.dart';
import 'package:to_do_app/features/calender/calender_view.dart';

class HomeScreenNavigate extends StatefulWidget {
  const HomeScreenNavigate({super.key});

  @override
  State<HomeScreenNavigate> createState() => _HomeScreenNavigateState();
}

class _HomeScreenNavigateState extends State<HomeScreenNavigate> {
   int currentIndex = 0;

  final List<Widget> _screens = const [
    HomePage(),
    CalenderView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: deprecated_member_use
      backgroundColor: Theme.of(context).colorScheme.background,
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