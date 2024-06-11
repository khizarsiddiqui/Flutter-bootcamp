// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable, empty_statements, unused_element

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool? isChecked = false;
  final String? taskTitle;
  final Function(bool?)? checkboxCallback;
  final Function()? longPressCallback;
  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxCallback,
      this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle ?? "---",
        style: TextStyle(
          decoration: isChecked == true ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
