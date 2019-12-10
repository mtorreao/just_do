import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:just_do/app/shared/widgets/responsive_layout/responsive_layout_controller.dart';
import 'package:just_do/app/app_module.dart';

void main() {
  initModule(AppModule());
  ResponsiveLayoutController responsivelayout;

  setUp(() {
    responsivelayout = AppModule.to.bloc<ResponsiveLayoutController>();
  });

  group('ResponsiveLayoutController Test', () {
    test("First Test", () {
      expect(responsivelayout, isInstanceOf<ResponsiveLayoutController>());
    });

    test("Set Value", () {
      expect(responsivelayout.value, equals(0));
      responsivelayout.increment();
      expect(responsivelayout.value, equals(1));
    });
  });
}
