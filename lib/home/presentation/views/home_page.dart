import 'package:flutter/material.dart';
import 'package:to_do_app/home/data/models/task_model.dart';
import 'package:to_do_app/home/presentation/widgets/add_button.dart';
import 'package:to_do_app/home/presentation/widgets/list_view_note.dart';
import 'package:to_do_app/home/presentation/widgets/no_tasks_yet.dart';
import 'package:to_do_app/home/presentation/widgets/tasks_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   List<TaskModel> tasks = [];

  void _addTask(TaskModel task) {
    setState(() {
      tasks.add(task);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 12),
          child: Column(
            children: [
              const SizedBox(height: 14,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Hey, ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      Text('Hana Hatem ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Avatar.png'),
                  )
                ],
              ),
              tasks.isEmpty
                ? NoTasksYet()
                : TasksWidget(tasks: tasks)
            ],
          ),
      ),
   ),
   floatingActionButton: AddButton(onTaskAdded: _addTask),
    );
  }
}