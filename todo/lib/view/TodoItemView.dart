import 'package:flutter/material.dart';
import 'package:todo/model/TodoItem.dart';

class TodoItemView extends StatefulWidget {
  TodoItemView({Key key, this.item}) : super(key: key);

  final TodoItem item;

  @override
  TodoItemViewState createState() => TodoItemViewState();
}

class TodoItemViewState extends State<TodoItemView> {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.item.title),
      subtitle: Text(widget.item.description),
    );
  }

}