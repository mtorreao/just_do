import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:just_do/app/app_controller.dart';
import 'package:just_do/app/app_widget.dart';
import 'package:just_do/app/modules/todo/todo_module.dart';
import 'package:just_do/app/shared/services/auth_service.dart';
import 'package:just_do/app/shared/widgets/responsive_layout/responsive_layout_controller.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ResponsiveLayoutController()),
        Bind((i) => AppController(i.get<AuthService>())),
        Bind((i) => AuthService()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
        Router('/', module: TodoModule()),
        Router('/login', module: TodoModule()),
      ];

  static Inject get to => Inject<AppModule>.of();
}
