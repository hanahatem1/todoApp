import 'package:flutter/material.dart';
import 'package:to_do_app/constant/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.height, required this.width, required this.text});

final double height;
final double width;
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.blueColor),
        child: Center(
          child: Text(
            text,
            style:const TextStyle(color: AppColors.blackColor, fontSize: 16),
          ),
        ));
  }
}
