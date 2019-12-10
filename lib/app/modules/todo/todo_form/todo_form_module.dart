import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:just_do/app/modules/todo/todo_form/todo_form_controller.dart';
import 'package:just_do/app/modules/todo/todo_form/todo_form_page.dart';

class TodoFormModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => TodoFormController()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => TodoFormPage();

  static Inject get to => Inject<TodoFormModule>.of();
}
