import 'package:flutter/material.dart';
import 'package:to_do_app/constant/colors.dart';

class CustomCheckBox extends StatelessWidget {
  final bool value;
  final Function(bool?) onChanged;

  const CustomCheckBox({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: AppColors.blueColor,
      value: value,
      onChanged: onChanged,
    );
  }
}