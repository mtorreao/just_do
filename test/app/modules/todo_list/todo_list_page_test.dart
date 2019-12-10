import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:just_do/app/modules/todo_list/todo_list_page.dart';

main() {
  testWidgets('TodoListPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(TodoListPage(title: 'TodoList')));
    final titleFinder = find.text('TodoList');
    expect(titleFinder, findsOneWidget);
  });
}
