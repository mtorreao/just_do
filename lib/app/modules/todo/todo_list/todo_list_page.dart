import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:just_do/app/modules/todo/todo_list/todo_list_controller.dart';
import 'package:just_do/app/shared/services/auth_service.dart';
import 'package:just_do/app/shared/widgets/responsive_layout/responsive_layout_widget.dart';
import 'package:just_do/app/shared/widgets/todo_dialog/todo_dialog_widget.dart';

import '../todo_module.dart';

class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final listController = TodoModule.to.get<TodoListController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutWidget(
      appBar: AppBar(
        title: Text("Todo List"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.forward),
            onPressed: () {
              Modular.to.pushReplacementNamed('/login');
            },
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 16,
        ),
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
                          Observer(
                              builder: (_) => Text(item.title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle
                                      .copyWith(
                                        decoration: item.done
                                            ? TextDecoration.lineThrough
                                            : TextDecoration.none,
                                      ))),
                          Flexible(
                            flex: 1,
                            child: Container(),
                          ),
                          Observer(
                            builder: (BuildContext context) => IconButton(
                              icon: Icon(item.done
                                  ? Icons.check_box
                                  : Icons.check_box_outline_blank),
                              onPressed: () {
                                listController.doneUndoneTodo(index);
                              },
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              listController.remove(index);
                            },
                          ),
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
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) => TodoDialogWidget((model) {
                    listController.addTodo(model);
                  }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
