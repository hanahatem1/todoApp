import 'package:flutter/material.dart';
import 'package:to_do_app/home/data/models/task_model.dart';
import 'package:to_do_app/home/presentation/widgets/list_view_note_item.dart';

class ListViewNote extends StatefulWidget {
  final List<TaskModel> tasks;

  const ListViewNote({super.key, required this.tasks});

  @override
  State<ListViewNote> createState() => _ListViewNoteState();
}

class _ListViewNoteState extends State<ListViewNote> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(4),
          child: ListViewNoteItem(
            task: widget.tasks[index],
             onDelete: () {
          setState(() {
            widget.tasks.removeAt(index);
          });
             }
            ),
        );
      },
    );
  }
}
