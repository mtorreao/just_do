import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:just_do/app/modules/todo/todo_list/todo_list_module.dart';

class TodoModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => TodoListModule();

  static Inject get to => Inject<TodoModule>.of();
}
