// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_service.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthService on _AuthServiceBase, Store {
  final _$stateAtom = Atom(name: '_AuthServiceBase.state');

  @override
  AuthState get state {
    _$stateAtom.context.enforceReadPolicy(_$stateAtom);
    _$stateAtom.reportObserved();
    return super.state;
  }

  @override
  set state(AuthState value) {
    _$stateAtom.context.conditionallyRunInAction(() {
      super.state = value;
      _$stateAtom.reportChanged();
    }, _$stateAtom, name: '${_$stateAtom.name}_set');
  }

  final _$currentUserAtom = Atom(name: '_AuthServiceBase.currentUser');

  @override
  UserModel get currentUser {
    _$currentUserAtom.context.enforceReadPolicy(_$currentUserAtom);
    _$currentUserAtom.reportObserved();
    return super.currentUser;
  }

  @override
  set currentUser(UserModel value) {
    _$currentUserAtom.context.conditionallyRunInAction(() {
      super.currentUser = value;
      _$currentUserAtom.reportChanged();
    }, _$currentUserAtom, name: '${_$currentUserAtom.name}_set');
  }

  final _$tryLoginAsyncAction = AsyncAction('tryLogin');

  @override
  Future tryLogin() {
    return _$tryLoginAsyncAction.run(() => super.tryLogin());
  }

  final _$_AuthServiceBaseActionController =
      ActionController(name: '_AuthServiceBase');

  @override
  dynamic updateCurrentUser(FirebaseUser user) {
    final _$actionInfo = _$_AuthServiceBaseActionController.startAction();
    try {
      return super.updateCurrentUser(user);
    } finally {
      _$_AuthServiceBaseActionController.endAction(_$actionInfo);
    }
  }
}
