import 'package:flutter/material.dart';
import 'package:to_do_app/constant/colors.dart';

class NoTasksYet extends StatelessWidget {
  const NoTasksYet({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 80,
      ),
      Center(
          child: Image.asset(
        'assets/images/Writer block-rafiki.png',
        width: 200,
        height: 200,
      )),
      Text(
        'No Tasks yet',
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      Text(
        'Add your to-dos tapping the pluse button below',
        style: TextStyle(fontSize: 13, color: AppColors.greyColor),
      ),
      
    ]);
  }
}
