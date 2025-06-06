import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:to_do_app/features/home/data/models/task_model.dart';
import 'package:to_do_app/features/home/presentation/widgets/add_button.dart';
import 'package:to_do_app/features/home/presentation/widgets/no_tasks_yet.dart';
import 'package:to_do_app/features/home/presentation/widgets/tasks_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final box = Hive.box<TaskModel>('to_do_app');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body:  ValueListenableBuilder(
        valueListenable: box.listenable(),
        builder: (context, Box<TaskModel> box, _) {
          final tasks = box.values.toList();
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 12),
            child: Column(
              children: [
                const SizedBox(height: 14,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Hey, ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        Text('Hana Hatem ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/picture.jpg'),
                    )
                  ],
                ),
                tasks.isEmpty
                  ? const NoTasksYet()
                  : TasksWidget(tasks: tasks)
              ],
            ),
        ),
    );
        }
     ),
   floatingActionButton: AddButton(onTaskAdded: (_){}),
    );
  }
}