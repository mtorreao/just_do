import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:just_do/app/shared/widgets/todo_list/todo_list_controller.dart';
import 'package:just_do/app/app_module.dart';

void main() {
  initModule(AppModule());
  TodoListController todolist;

  setUp(() {
    todolist = AppModule.to.bloc<TodoListController>();
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
