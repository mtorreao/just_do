import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:just_do/app/modules/todo/todo_form/todo_form_page.dart';

main() {
  testWidgets('TodoFormPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(TodoFormPage(title: 'TodoForm')));
    final titleFinder = find.text('TodoForm');
    expect(titleFinder, findsOneWidget);
  });
}
