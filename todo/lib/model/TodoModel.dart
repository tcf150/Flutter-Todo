import 'package:flutter/material.dart';

import 'TodoItem.dart';

class TodoModel extends ChangeNotifier {

  List<TodoItem> items = [];

  void addTodo(TodoItem item) {
    this.items.add(item);
    notifyListeners();
  }
}