import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:just_do/app/shared/widgets/todo_list/todo_list_widget.dart';

main() {
  testWidgets('TodoListWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(TodoListWidget()));
    final textFinder = find.text('TodoList');
    expect(textFinder, findsOneWidget);
  });
}
