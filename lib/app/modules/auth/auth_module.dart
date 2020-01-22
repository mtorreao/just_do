import 'package:flutter_modular/flutter_modular.dart';
import 'package:just_do/app/modules/auth/login/login_controller.dart';
import 'package:just_do/app/modules/auth/login/login_page.dart';

class AuthModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => LoginPage()),
      ];

  static Inject get to => Inject<AuthModule>.of();
}
