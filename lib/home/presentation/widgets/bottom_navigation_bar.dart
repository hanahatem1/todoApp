import 'package:flutter/material.dart';
import 'package:to_do_app/constant/colors.dart';

class BottomNavigation extends StatelessWidget {
   BottomNavigation({super.key,
    required this.currentIndex,
    required this.onTap,
    });

 int currentIndex = 0;
  final  Function(int)? onTap;
  
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
        backgroundColor: AppColors.blueColor,
        selectedItemColor: AppColors.whiteColor,
        unselectedItemColor: AppColors.blackColor,
        currentIndex: currentIndex,
        onTap:onTap ,
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'calender',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),  
        ],
        );
  }
}