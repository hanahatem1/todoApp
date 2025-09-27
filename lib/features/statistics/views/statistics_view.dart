import 'package:flutter/material.dart';
import 'package:to_do_app/features/statistics/widgets/pie_chart.dart';

class StatisticsView extends StatelessWidget {
  const StatisticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body:const Center(
        child:  Padding(
          padding: EdgeInsets.symmetric(horizontal: 12,vertical: 40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Tasks done',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Text('3'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Tasks not done',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Text('3'),
                    ],
                  )
                ],
              ),
               SizedBox(height:60),
              Text("Tasks this week",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 200,
                  child: PieChartShape()
                ),
            ],
          ),
        ),
      ),
    );
  }
}