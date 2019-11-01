import 'package:flutter/material.dart';
import 'package:todo/model/TodoItem.dart';
import 'TodoItemView.dart';

class TodoItemListView extends StatefulWidget {
  TodoItemListView({Key key, this.items}) : super(key: key);

  final List<TodoItem> items;

  @override
  TodoItemListViewState createState() => TodoItemListViewState();
}

class TodoItemListViewState extends State<TodoItemListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return TodoItemView(item: widget.items[index]);
        });
  }
}