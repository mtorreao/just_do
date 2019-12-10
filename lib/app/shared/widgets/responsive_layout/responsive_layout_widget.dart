import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:just_do/app/app_module.dart';
import 'package:just_do/app/shared/widgets/responsive_layout/responsive_layout_controller.dart';

class ResponsiveLayoutWidget extends StatelessWidget {
  final controller = AppModule.to.getBloc<ResponsiveLayoutController>();
  final AppBar appBar;
  final Widget child;

  ResponsiveLayoutWidget({
    Key key,
    this.appBar,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints);
        controller.updateWidth(constraints.maxWidth);
        return Scaffold(
          appBar: this.appBar,
          body: Row(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Observer(
                builder: (BuildContext context) {
                  if (!controller.isMobile) {
                    return TwoColumnsWidget(child: child);
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
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: <Widget>[
          Flexible(
            child: Container(
              color: Colors.purpleAccent,
            ),
            flex: 1,
          ),
          Flexible(
            child: this.child,
            flex: 3,
          ),
        ],
      ),
    );
  }
}
