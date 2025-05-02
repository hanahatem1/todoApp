import 'package:flutter/material.dart';
import 'package:to_do_app/constant/colors.dart';
import 'package:to_do_app/home/widgets/list_view_note.dart';

class TasksWidget extends StatelessWidget {
  const TasksWidget({super.key, required this.tasks});
final List<String> tasks;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 60,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Your Tasks Today:',style: TextStyle(color: AppColors.blackColor,fontSize: 17,fontWeight: FontWeight.bold),),
          ],
        ),
        ListViewNote(tasks: tasks,),  
      ],
    );
  }
}