// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserModel on _UserModelBase, Store {
  final _$uidAtom = Atom(name: '_UserModelBase.uid');

  @override
  String get uid {
    _$uidAtom.context.enforceReadPolicy(_$uidAtom);
    _$uidAtom.reportObserved();
    return super.uid;
  }

  @override
  set uid(String value) {
    _$uidAtom.context.conditionallyRunInAction(() {
      super.uid = value;
      _$uidAtom.reportChanged();
    }, _$uidAtom, name: '${_$uidAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_UserModelBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$displayNameAtom = Atom(name: '_UserModelBase.displayName');

  @override
  String get displayName {
    _$displayNameAtom.context.enforceReadPolicy(_$displayNameAtom);
    _$displayNameAtom.reportObserved();
    return super.displayName;
  }

  @override
  set displayName(String value) {
    _$displayNameAtom.context.conditionallyRunInAction(() {
      super.displayName = value;
      _$displayNameAtom.reportChanged();
    }, _$displayNameAtom, name: '${_$displayNameAtom.name}_set');
  }
}
