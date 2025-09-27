import 'package:flutter/material.dart';
import 'package:to_do_app/constant/colors.dart';
import 'package:to_do_app/features/home/presentation/views/home_page.dart';
import 'package:to_do_app/features/home/presentation/widgets/add_button.dart';
import 'package:to_do_app/features/profile/views/profile_view.dart';
import 'package:to_do_app/features/calender/calender_view.dart';
import 'package:to_do_app/features/statistics/views/statistics_view.dart';

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
    StatisticsView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: _screens[currentIndex],
      floatingActionButton: AddButton(
        onTaskAdded: (task) {
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 16,
        color: AppColors.blueColor,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.home,
                        color: currentIndex == 0 
                            ? AppColors.whiteColor 
                            : AppColors.whiteColor.withOpacity(0.6),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: currentIndex == 0 
                              ? AppColors.whiteColor 
                              : AppColors.whiteColor.withOpacity(0.6),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.calendar_today,
                        color: currentIndex == 1 
                            ? AppColors.whiteColor 
                            : AppColors.whiteColor.withOpacity(0.6),
                      ),
                      Text(
                        'Calendar',
                        style: TextStyle(
                          color: currentIndex == 1 
                              ? AppColors.whiteColor 
                              : AppColors.whiteColor.withOpacity(0.6),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 80),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      currentIndex = 2;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.person,
                        color: currentIndex == 2 
                            ? AppColors.whiteColor 
                            : AppColors.whiteColor.withOpacity(0.6),
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                          color: currentIndex == 2 
                              ? AppColors.whiteColor 
                              : AppColors.whiteColor.withOpacity(0.6),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      currentIndex = 3;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.bar_chart,
                        color: currentIndex == 3 
                            ? AppColors.whiteColor 
                            : AppColors.whiteColor.withOpacity(0.6),
                      ),
                      Text(
                        'Statistics',
                        style: TextStyle(
                          color: currentIndex == 3 
                              ? AppColors.whiteColor 
                              : AppColors.whiteColor.withOpacity(0.6),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}