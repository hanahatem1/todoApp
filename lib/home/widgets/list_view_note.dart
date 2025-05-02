import 'package:flutter/material.dart';
import 'package:to_do_app/home/widgets/list_view_note_item.dart';

class ListViewNote extends StatelessWidget {
  final List<String> tasks;

  const ListViewNote({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(4),
          child: ListViewNoteItem(task: tasks[index]),
        );
      },
    );
  }
}
