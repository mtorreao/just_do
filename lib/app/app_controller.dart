import 'package:flutter_modular/flutter_modular.dart';
import 'package:just_do/app/shared/services/auth_service.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = _AppBase with _$AppController;

abstract class _AppBase with Store {
  final AuthService authService;

  _AppBase(this.authService);

  init() {
    authService.tryLogin();
    reaction((_) => this.authService.state, (state) {
      if (state is LoggedState) {
        Modular.to.pushReplacementNamed('/');
      } else {
        Modular.to.pushReplacementNamed('/login');
      }
    });
  }
}
