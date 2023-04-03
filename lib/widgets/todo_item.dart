// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/model/todo.dart';

class TodoItem extends StatelessWidget {
  TodoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
  }) : super(key: key);
  final ToDo todo;
  final Function onToDoChanged;
  final Function onDeleteItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
          size: 25,
        ),
        tileColor: Colors.white,
        onTap: () {
          onToDoChanged(todo);
        },
        title: Text(
          todo.todoText!,
          style: TextStyle(
            color: tdBlack,
            fontSize: 16,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            padding: EdgeInsets.all(0),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              onPressed: () {
                onDeleteItem(todo.id);
              },
              icon: Icon(Icons.delete),
              iconSize: 18,
              color: Colors.white,
            )),
      ),
    );
  }
}
