import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:just_do/app/shared/repositories/todos_repository.dart';
import 'package:just_do/app/shared/services/local_db_service.dart';

import 'todo_form/todo_form_controller.dart';
import 'todo_list/todo_list_controller.dart';
import 'todo_list/todo_list_page.dart';

class TodoModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
    Bloc((i) => TodoListController(i.getDependency<TodosRepository>())),
    Bloc((i) => TodoFormController(i.getDependency<TodosRepository>())),
  ];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => LocalDBService('todos')),
        Dependency((i) => TodosRepository(i.getDependency<LocalDBService>())),
      ];

  @override
  Widget get view => TodoListPage();

  static Inject get to => Inject<TodoModule>.of();
}
