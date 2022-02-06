import 'package:flutter/material.dart';

class TaskItemWidget extends StatelessWidget {
  final String title;
  final bool completed;
  final Function(bool?) onChanged;

  const TaskItemWidget(
      {Key? key,
      required this.title,
      required this.completed,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: completed,
      onChanged: (value) {
        onChanged;
      },
      title: Text(
        title,
        style: TextStyle(
          decoration: completed ? TextDecoration.lineThrough : null,
        ),
      ),
      secondary: Icon(completed ? Icons.check_circle : Icons.error),
    );
  }
}
