import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/TodoItem.dart';
import 'package:todo/model/TodoModel.dart';

class TodoCreationDialog extends StatefulWidget {
  @override
  TodoCreationDialogState createState() => TodoCreationDialogState();
}

class TodoCreationDialogState extends State<TodoCreationDialog> {
  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    void createTodo() {
      if (titleController.text.isNotEmpty && descriptionController.text.isNotEmpty) {
        Navigator.of(context).pop();
        Provider.of<TodoModel>(context, listen: false).addTodo(TodoItem(titleController.text, descriptionController.text));
      }
    }

    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        child: Wrap(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Text("Create Todo"),
                    TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Todo title',
                          labelText: 'Title'),
                      controller: titleController,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Todo desc',
                          labelText: 'Description'),
                      controller: descriptionController,
                    ),
                    MaterialButton(
                      onPressed: createTodo,
                      child: Text("Create"),
                    )
                  ],
                )))
          ],
        ));
  }
}
