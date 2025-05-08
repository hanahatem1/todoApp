import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/constant/colors.dart';
import 'package:to_do_app/features/home/data/models/task_model.dart';
import 'package:to_do_app/features/home/presentation/widgets/list_view_note.dart';

class TasksWidget extends StatelessWidget {
  const TasksWidget({super.key, required this.tasks});
  final List<TaskModel> tasks;
  @override
  Widget build(BuildContext context) {
    final today = DateFormat('EEEE, MMMM d').format(DateTime.now());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 60),
        Text(
          today,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 14,
                color: AppColors.greyColor1,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          'Your Tasks Today:',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
        ),
        ValueListenableBuilder(
          valueListenable: Hive.box<TaskModel>('to_do_app').listenable(),
          builder: (context, Box<TaskModel> box, _) {
            return ListViewNote();
          },
        ),
      ],
    );
  }
}
