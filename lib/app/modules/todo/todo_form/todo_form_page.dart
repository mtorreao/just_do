import 'package:flutter/material.dart';

class TodoFormPage extends StatefulWidget {
  final String title;
  const TodoFormPage({Key key, this.title = "New Todo"}) : super(key: key);

  @override
  _TodoFormPageState createState() => _TodoFormPageState();
}

class _TodoFormPageState extends State<TodoFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(),
    );
  }
}
