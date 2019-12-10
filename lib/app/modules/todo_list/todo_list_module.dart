import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:just_do/app/modules/todo_list/todo_list_controller.dart';
import 'package:just_do/app/modules/todo_list/todo_list_page.dart';

class TodoListModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => TodoListController()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => TodoListPage();

  static Inject get to => Inject<TodoListModule>.of();
}
