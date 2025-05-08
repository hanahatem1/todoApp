import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:to_do_app/features/home/data/models/task_model.dart';
import 'package:to_do_app/features/home/presentation/widgets/list_view_note_item.dart';

class ListViewNote extends StatelessWidget {
  const ListViewNote({super.key});

  @override
  
  Widget build(BuildContext context) {
    final box = Hive.box<TaskModel>('to_do_app');
    final tasks = box.values.toList();

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return Padding(
          padding: const EdgeInsets.all(4),
          child: ListViewNoteItem(
            task: task,
            onDelete: () async {
              await box.deleteAt(index);
            },
          ),
        );
      },
    );
  }
}