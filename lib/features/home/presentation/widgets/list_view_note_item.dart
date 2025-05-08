import 'package:flutter/material.dart';
import 'package:to_do_app/features/home/presentation/widgets/custom_check_box.dart';
import 'package:to_do_app/constant/colors.dart';
import 'package:to_do_app/features/home/data/models/task_model.dart';

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
 void _toggleCheck(bool? value) async {
    setState(() {
      isChecked = value!;
    });

    widget.task.isDone = isChecked;
    await widget.task.save();
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: Key(widget.task.title),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        color: Theme.of(context).scaffoldBackgroundColor,
        child:  Icon(Icons.delete, color: Theme.of(context).iconTheme.color),
      ),
       onDismissed: (_) {
        widget.onDelete();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: AppColors.greyColor,
            showCloseIcon: true,
            closeIconColor: AppColors.blackColor,
            content: Text('Task deleted',style: TextStyle(color: AppColors.blackColor),)
            ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            // ignore: deprecated_member_use
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Row(
              children: [
                CustomCheckBox(
                  value: isChecked,
                  onChanged:_toggleCheck
                ),
                Expanded(
                    child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.task.title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,decoration: isChecked? TextDecoration.lineThrough: TextDecoration.none),),
                            Text(widget.task.description,style: TextStyle(decoration: isChecked? TextDecoration.lineThrough: TextDecoration.none),),
                            SizedBox(height: 3,)
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
