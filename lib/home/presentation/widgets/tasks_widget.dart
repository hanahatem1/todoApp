import 'package:flutter/material.dart';
import 'package:to_do_app/home/data/models/task_model.dart';
import 'package:to_do_app/home/presentation/widgets/list_view_note.dart';

class TasksWidget extends StatelessWidget {
  const TasksWidget({super.key, required this.tasks});
  final List<TaskModel> tasks;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Your Tasks Today:',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    )),
          ],
        ),
        ListViewNote(
          tasks: tasks,
        ),
      ],
    );
  }
}
