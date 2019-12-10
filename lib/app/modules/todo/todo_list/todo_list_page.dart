import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:just_do/app/modules/todo/todo_form/todo_form_module.dart';
import 'package:just_do/app/modules/todo/todo_list/todo_list_controller.dart';
import 'package:just_do/app/modules/todo/todo_list/todo_list_module.dart';
import 'package:just_do/app/shared/models/todo_model.dart';
import 'package:just_do/app/shared/widgets/responsive_layout/responsive_layout_widget.dart';

class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final listController = TodoListModule.to.bloc<TodoListController>();

  @override
  void initState() {
    super.initState();
    listController.addTodo(TodoModel("Task 1"));
    listController.addTodo(TodoModel("Task 2"));
    listController.addTodo(TodoModel("Task 3"));
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutWidget(
      appBar: AppBar(
        title: Text("Todo List"),
      ),
      child: Container(
        child: Observer(
          builder: (BuildContext context) {
            final list = listController.todos;
            if (list.length > 0) {
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  final item = list.elementAt(index);
                  return Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Text(item.title),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: list.length,
              );
            }
            return Center(
              child: Text("Lista vazia..."),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final todo = await Navigator.push(
              context, CupertinoPageRoute(builder: (_) => TodoFormModule()));
          if (todo != null) {
            listController.addTodo(todo);
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
