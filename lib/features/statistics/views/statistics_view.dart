import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:to_do_app/features/home/data/models/task_model.dart';
import 'package:to_do_app/features/statistics/widgets/pie_chart.dart';

class StatisticsView extends StatelessWidget {
  const StatisticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body:ValueListenableBuilder(
        valueListenable: Hive.box<TaskModel>('to_do_app').listenable(),
        builder:(context, Box<TaskModel> box, _) {
          final tasks=box.values.toList();
          final doneTasks =tasks.where((task)=> task.isDone).length;
          final notDone =tasks.where((task)=> !task.isDone).length;
        
        return Center(
          child:  Padding(
            padding:const EdgeInsets.symmetric(horizontal: 12,vertical: 40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text('Tasks done',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text(doneTasks.toString()),
                      ],
                    ),
                    Column(
                      children: [
                        const Text('Tasks not done yet',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text(notDone.toString()),
                      ],
                    )
                  ],
                ),
                const SizedBox(height:60),
                const Text("Tasks Today",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                   SizedBox(
                    height: 200,
                    child: PieChartShape(
                      doneTask: doneTasks.toDouble() ,
                       notDone: notDone.toDouble(),
                       )
                  ),
              ],
            ),
          ),
        );
        }
      ),
    );
  }
}