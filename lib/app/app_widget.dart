import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_controller.dart';

class AppWidget extends StatelessWidget {
  @override
  StatelessElement createElement() {
    Modular.get<AppController>().init();
    return super.createElement();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Just Do',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
          buttonColor: Colors.purple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              25,
            ),
          ),
        ),
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
      navigatorKey: Modular.navigatorKey,
    );
  }
}
