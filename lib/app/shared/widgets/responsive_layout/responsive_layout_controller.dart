import 'package:mobx/mobx.dart';

part 'responsive_layout_controller.g.dart';

class ResponsiveLayoutController = _ResponsiveLayoutBase
    with _$ResponsiveLayoutController;

abstract class _ResponsiveLayoutBase with Store {
  double width;
  @observable
  bool isMobile = true;
  @observable
  bool isTablet = false;
  @observable
  bool isDesktop = false;

  @action
  void updateWidth(double width) {
    this.width = width;
    if (width > 900) {
      isDesktop = true;
      isMobile = false;
      isTablet = false;
    } else if (width < 900 && width > 500) {
      isDesktop = false;
      isMobile = false;
      isTablet = true;
    } else {
      isDesktop = false;
      isMobile = true;
      isTablet = false;
    }
  }
}
