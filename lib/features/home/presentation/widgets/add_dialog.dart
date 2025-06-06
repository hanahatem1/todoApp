import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:to_do_app/constant/colors.dart';
import 'package:to_do_app/features/home/data/models/task_model.dart';

class AddDialog extends StatefulWidget {
  final Function(TaskModel) onTaskAdded;

  const AddDialog({super.key, required this.onTaskAdded});

  @override
  State<AddDialog> createState() => _AddDialogState();
}

class _AddDialogState extends State<AddDialog> {
  // ignore: prefer_final_fields
  TextEditingController _controller = TextEditingController();
  // ignore: prefer_final_fields
  TextEditingController _twocontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(31),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Add new task',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _controller,
              maxLines: 1,
              cursorColor: AppColors.greyColor,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide:const BorderSide(color: AppColors.greyColor),
                    borderRadius: BorderRadius.circular(12)),
                enabledBorder: OutlineInputBorder(
                    borderSide:const BorderSide(color: AppColors.greyColor),
                    borderRadius: BorderRadius.circular(12)),
                hintText: " Enter your task",
                hintStyle:const TextStyle(color: AppColors.greyColor),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            TextField(
              controller: _twocontroller,
              maxLines: 2,
              cursorColor: AppColors.greyColor,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide:const BorderSide(color: AppColors.greyColor),
                    borderRadius: BorderRadius.circular(12)),
                enabledBorder: OutlineInputBorder(
                    borderSide:const BorderSide(color: AppColors.greyColor),
                    borderRadius: BorderRadius.circular(12)),
                hintText: " Description",
                hintStyle:const TextStyle(color: AppColors.greyColor),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
                child: GestureDetector (
              onTap: () async {
                final task = TaskModel(
                  title: _controller.text,
                  description: _twocontroller.text,
                );
                final box = Hive.box<TaskModel>('to_do_app');
                  await box.add(task);
                  
                widget.onTaskAdded(task);
                // ignore: use_build_context_synchronously
                Navigator.pop(context);
              },
              child: Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.circular(12)),
                child:const Center(
                    child: Text(
                  'Add',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
