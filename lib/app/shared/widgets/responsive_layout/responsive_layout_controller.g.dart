// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responsive_layout_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ResponsiveLayoutController on _ResponsiveLayoutBase, Store {
  final _$isMobileAtom = Atom(name: '_ResponsiveLayoutBase.isMobile');

  @override
  bool get isMobile {
    _$isMobileAtom.context.enforceReadPolicy(_$isMobileAtom);
    _$isMobileAtom.reportObserved();
    return super.isMobile;
  }

  @override
  set isMobile(bool value) {
    _$isMobileAtom.context.conditionallyRunInAction(() {
      super.isMobile = value;
      _$isMobileAtom.reportChanged();
    }, _$isMobileAtom, name: '${_$isMobileAtom.name}_set');
  }

  final _$isTabletAtom = Atom(name: '_ResponsiveLayoutBase.isTablet');

  @override
  bool get isTablet {
    _$isTabletAtom.context.enforceReadPolicy(_$isTabletAtom);
    _$isTabletAtom.reportObserved();
    return super.isTablet;
  }

  @override
  set isTablet(bool value) {
    _$isTabletAtom.context.conditionallyRunInAction(() {
      super.isTablet = value;
      _$isTabletAtom.reportChanged();
    }, _$isTabletAtom, name: '${_$isTabletAtom.name}_set');
  }

  final _$isDesktopAtom = Atom(name: '_ResponsiveLayoutBase.isDesktop');

  @override
  bool get isDesktop {
    _$isDesktopAtom.context.enforceReadPolicy(_$isDesktopAtom);
    _$isDesktopAtom.reportObserved();
    return super.isDesktop;
  }

  @override
  set isDesktop(bool value) {
    _$isDesktopAtom.context.conditionallyRunInAction(() {
      super.isDesktop = value;
      _$isDesktopAtom.reportChanged();
    }, _$isDesktopAtom, name: '${_$isDesktopAtom.name}_set');
  }

  final _$_ResponsiveLayoutBaseActionController =
      ActionController(name: '_ResponsiveLayoutBase');

  @override
  void updateWidth(double width) {
    final _$actionInfo = _$_ResponsiveLayoutBaseActionController.startAction();
    try {
      return super.updateWidth(width);
    } finally {
      _$_ResponsiveLayoutBaseActionController.endAction(_$actionInfo);
    }
  }
}
