import 'package:flutter/material.dart';
import 'package:to_do_app/constant/colors.dart';
import 'package:to_do_app/features/home/data/models/task_model.dart';
import 'package:to_do_app/features/home/presentation/widgets/add_dialog.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key, required this.onTaskAdded});
 final Function(TaskModel) onTaskAdded;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 3,
      shape: const CircleBorder(),
      backgroundColor: AppColors.blueColor,
      child:const Icon(Icons.add,color: AppColors.whiteColor,),
      onPressed: (){
        showDialog(
        context: context, 
        builder: (BuildContext context) =>  AddDialog(onTaskAdded:onTaskAdded,),
        );
      }
      );
  }
}