import 'package:flutter/material.dart';
import 'package:just_do/app/modules/todo_list/todo_list_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Just Do',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: TodoListModule(),
    );
  }
}
