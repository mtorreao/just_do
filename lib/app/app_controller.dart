import 'package:flutter_modular/flutter_modular.dart';
import 'package:just_do/app/shared/services/auth_service.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = _AppBase with _$AppController;

abstract class _AppBase with Store {
  init() {
    print('abc');
    Modular.get<AuthService>().tryLogin();
  }
}
