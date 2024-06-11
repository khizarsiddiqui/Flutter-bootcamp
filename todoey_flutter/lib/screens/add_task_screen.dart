// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import '../models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  // final Function addTaskCallback;
  // AddTaskScreen(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            autofocus: true,
            // cursorColor: Colors.lightBlueAccent,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          TextButton(
            child: Text(
              'Add',
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent),
            ),
            onPressed: () {
              // addTaskCallback(newTaskTitle);
              // final task = Task(name: newTaskTitle);
              // Provider.of<TaskData>(context).tasks.add(task);
              
              Provider.of<TaskData>(context,listen: false).addtask(newTaskTitle!);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
