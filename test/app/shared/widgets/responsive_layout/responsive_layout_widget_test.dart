import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:just_do/app/shared/widgets/responsive_layout/responsive_layout_widget.dart';

main() {
  testWidgets('ResponsiveLayoutWidget has message',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ResponsiveLayoutWidget()));
    final textFinder = find.text('ResponsiveLayout');
    expect(textFinder, findsOneWidget);
  });
}
