import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/constant/colors.dart';

class PieChartShape extends StatelessWidget {
   PieChartShape({super.key,required this.doneTask,required this.notDone});
double doneTask;
double notDone;
  @override
  Widget build(BuildContext context) {
    return PieChart(PieChartData(sections: [
      PieChartSectionData(
          value: doneTask,
          color: AppColors.blueColor,
          title: "Done",
          radius: 70,
          titleStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor
              )),
      PieChartSectionData(
          value: notDone,
          color:  AppColors.greyColor1,
          title: "Not Done",
          radius: 70,
          titleStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor
              )),
    ], sectionsSpace: 2, centerSpaceRadius: 20));
  }
}
