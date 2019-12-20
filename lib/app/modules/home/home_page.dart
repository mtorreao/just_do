import 'package:flutter/material.dart';
import 'package:just_do/app/modules/home/home_module.dart';
import 'package:just_do/app/shared/widgets/responsive_layout/responsive_layout_widget.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeModule.to.getBloc<HomeController>();

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutWidget(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      child: null,
    );
  }
}
