import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:just_do/app/modules/todo/todo_form/todo_form_controller.dart';
import 'package:just_do/app/modules/todo/todo_form/todo_form_module.dart';

void main() {
  initModule(TodoFormModule());
  TodoFormController todoform;

  setUp(() {
    todoform = TodoFormModule.to.bloc<TodoFormController>();
  });

  group('TodoFormController Test', () {
    test("First Test", () {
      expect(todoform, isInstanceOf<TodoFormController>());
    });

    test("Set Value", () {
      expect(todoform.value, equals(0));
      todoform.increment();
      expect(todoform.value, equals(1));
    });
  });
}
