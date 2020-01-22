import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:just_do/app/shared/widgets/responsive_layout/responsive_layout_controller.dart';

class ResponsiveLayoutWidget extends StatelessWidget {
  final controller = Modular.get<ResponsiveLayoutController>();
  final AppBar appBar;
  final Widget drawer;
  final Widget child;
  final Widget floatingActionButton;

  ResponsiveLayoutWidget({
    Key key,
    this.appBar,
    @required this.child,
    this.floatingActionButton,
    this.drawer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints);
        controller.updateWidth(constraints.maxWidth);
        return Scaffold(
          appBar: this.appBar,
          floatingActionButton: this.floatingActionButton,
          body: Row(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Observer(
                builder: (BuildContext context) {
                  if (!controller.isMobile) {
                    return TwoColumnsWidget(
                      drawer: this.drawer,
                      child: child,
                    );
                  } else {
                    return Flexible(
                      child: this.child,
                      flex: 1,
                    );
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class TwoColumnsWidget extends StatelessWidget {
  const TwoColumnsWidget({
    Key key,
    @required this.child,
    this.drawer,
  }) : super(key: key);

  final Widget child;
  final Widget drawer;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (drawer != null)
            Flexible(
              child: drawer,
              flex: 1,
            ),
          Flexible(
            child: Center(
              child: Container(
                child: this.child,
                constraints: BoxConstraints(
                  maxWidth: 900,
                ),
              ),
            ),
            flex: 3,
          ),
        ],
      ),
    );
  }
}
