import 'package:flutter/material.dart';
import 'package:to_do_app/auth/widgets/custom_check_box.dart';
import 'package:to_do_app/constant/colors.dart';

class ListViewNoteItem extends StatefulWidget {
  const ListViewNoteItem({super.key, required this.task});
 final String task;

  @override
  State<ListViewNoteItem> createState() => _ListViewNoteItemState();
}

class _ListViewNoteItemState extends State<ListViewNoteItem> {
   bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.whiteColor1,
          borderRadius: BorderRadius.circular(12)),
      child: Row(
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
                  Text(widget.task,style: TextStyle(decoration: isChecked? TextDecoration.lineThrough: TextDecoration.none),))
        ],
      ),
    );
  }
}
