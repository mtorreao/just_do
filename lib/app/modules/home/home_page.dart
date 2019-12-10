import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:just_do/app/modules/home/home_module.dart';
import 'package:just_do/app/modules/home/todo_list_controller.dart';
import 'package:just_do/app/shared/models/todo_model.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeModule.to.getBloc<HomeController>();
  final listController = HomeModule.to.getBloc<TodoListController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Observer(
          builder: (BuildContext context) {
            return ListView.builder(
              itemCount: listController.todos.length,
              itemBuilder: (BuildContext context, int index) {
                var todo = listController.todos.elementAt(index);
                return Observer(
                  builder: (BuildContext context) => CheckboxListTile(
                    onChanged: (bool value) {
                      listController.doneUndoneTodo(index);
                    },
                    value: todo.done,
                    title: Text(todo.title),
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          listController.addTodo(TodoModel("Tarefa 3", done: true));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
