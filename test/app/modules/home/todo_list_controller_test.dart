import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:just_do/app/modules/home/todo_list_controller.dart';
import 'package:just_do/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  TodoListController todolist;

  setUp(() {
    todolist = HomeModule.to.bloc<TodoListController>();
  });

  group('TodoListController Test', () {
    test("First Test", () {
      expect(todolist, isInstanceOf<TodoListController>());
    });

    test("Set Value", () {
      expect(todolist.value, equals(0));
      todolist.increment();
      expect(todolist.value, equals(1));
    });
  });
}
