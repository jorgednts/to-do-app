import 'package:flutter/material.dart';
import 'task_item_widget.dart';

class ListTaskWidget extends StatelessWidget {
  final List listToDo;
  final Function(bool?, int) onChanged;

  const ListTaskWidget(
      {Key? key, required this.onChanged, required this.listToDo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: listToDo.length,
          itemBuilder: (_, index) {
            var task = listToDo[index];
            return TaskItemWidget(
              title: task.description,
              completed: task.completed,
              onChanged: (value) => onChanged(value, index),
            );
          }),
    );
  }
}
