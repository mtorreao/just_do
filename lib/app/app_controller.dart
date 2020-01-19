import 'package:just_do/app/shared/services/auth_service.dart';
import 'package:mobx/mobx.dart';

import 'app_module.dart';

part 'app_controller.g.dart';

class AppController = _AppBase with _$AppController;

abstract class _AppBase with Store {
  init() {
    print('abc');
    AppModule.to.getBloc<AuthService>().tryLogin();
  }
}
