import 'package:flutter/material.dart';
import 'package:to_do_app/constant/colors.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.label, required this.hinttitle,required this.icon});

final String label;
final String hinttitle;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(label,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      TextFormField(
        
        cursorColor: AppColors.greyColor,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.greyColor),
              borderRadius: BorderRadius.circular(12)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.greyColor),
              borderRadius: BorderRadius.circular(12)),
          hintText: hinttitle,
          hintStyle: TextStyle(color: AppColors.greyColor),
          prefixIcon: Icon(
            icon,
            color: AppColors.greyColor,
          ),
        ),
      )
    ]);
  }
}
