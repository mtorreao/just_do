import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:just_do/app/modules/auth/login/login/login_controller.dart';
import 'package:just_do/app/app_module.dart';

void main() {
  initModule(AppModule());
  LoginController login;

  setUp(() {
    login = AppModule.to.bloc<LoginController>();
  });

  group('LoginController Test', () {
    test("First Test", () {
      expect(login, isInstanceOf<LoginController>());
    });

    test("Set Value", () {
      expect(login.value, equals(0));
      login.increment();
      expect(login.value, equals(1));
    });
  });
}
