import 'package:flutter/material.dart';
import 'package:to_do_app/constant/colors.dart';

// ignore: must_be_immutable
class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home, 'Home', 0),
          _buildNavItem(Icons.calendar_today, 'Calendar', 1),
          const SizedBox(width: 80),
          _buildNavItem(Icons.person, 'Profile', 2),
          _buildNavItem(Icons.bar_chart, 'Statistics', 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final isSelected = currentIndex == index;
    return Expanded(
      child: InkWell(
        onTap: () => onTap?.call(index),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected 
                  ? AppColors.whiteColor 
                  : AppColors.whiteColor.withOpacity(0.6),
            ),
            Text(
              label,
              style: TextStyle(
                color: isSelected 
                    ? AppColors.whiteColor 
                    : AppColors.whiteColor.withOpacity(0.6),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}