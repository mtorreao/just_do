import 'package:just_do/app/shared/widgets/responsive_layout/responsive_layout_controller.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:just_do/app/app_controller.dart';
import 'package:just_do/app/app_widget.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => ResponsiveLayoutController()),
        Bloc((i) => AppController()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
