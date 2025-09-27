import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/constant/colors.dart';

class PieChartShape extends StatelessWidget {
  const PieChartShape({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(PieChartData(sections: [
      PieChartSectionData(
          value: 6,
          color: AppColors.blueColor,
          title: "Done",
          radius: 60,
          titleStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor
              )),
      PieChartSectionData(
          value: 4,
          color:  AppColors.greyColor1,
          title: "Not Done",
          radius: 60,
          titleStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor
              )),
    ], sectionsSpace: 2, centerSpaceRadius: 20));
  }
}
