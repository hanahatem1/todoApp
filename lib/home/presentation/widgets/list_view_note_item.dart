import 'package:flutter/material.dart';
import 'package:to_do_app/auth/widgets/custom_check_box.dart';
import 'package:to_do_app/constant/colors.dart';
import 'package:to_do_app/home/data/models/task_model.dart';

class ListViewNoteItem extends StatefulWidget {
  const ListViewNoteItem({super.key, required this.task, required this.onDelete});
 final TaskModel task;
  final VoidCallback onDelete;
  @override
  State<ListViewNoteItem> createState() => _ListViewNoteItemState();
}

class _ListViewNoteItemState extends State<ListViewNoteItem> {
   bool isChecked = false;
   
  @override
  void initState() {
    super.initState();
    isChecked = widget.task.isDone;
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: Key(widget.task.title),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        color: AppColors.whiteColor,
        child: const Icon(Icons.delete, color: AppColors.blackColor),
      ),
       onDismissed: (_) {
        widget.onDelete();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Task deleted')),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.whiteColor1,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Row(
              children: [
                CustomCheckBox(
                  value: isChecked,
                  onChanged: (val){
                    setState(() {
                      isChecked = val!;
                    });
                  },
                ),
                Expanded(
                    child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.task.title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,decoration: isChecked? TextDecoration.lineThrough: TextDecoration.none),),
                            Text(widget.task.description,style: TextStyle(decoration: isChecked? TextDecoration.lineThrough: TextDecoration.none),),
                          ],
                        ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
