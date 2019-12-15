import 'package:flutter/material.dart';
import 'package:just_do/app/modules/todo/todo_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Just Do',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
          buttonColor: Colors.purple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              25,
            ),
          ),
        ),
      ),
      home: TodoModule(),
    );
  }
}
