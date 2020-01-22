import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:just_do/app/shared/models/user_model.dart';
import 'package:mobx/mobx.dart';

part 'auth_service.g.dart';

class AuthService = _AuthServiceBase with _$AuthService;

abstract class _AuthServiceBase with Store {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @observable
  AuthState state;
  @observable
  UserModel currentUser;
  StreamSubscription<FirebaseUser> authStateChangedSub;

  _AuthServiceBase() {
    authStateChangedSub =
        _firebaseAuth.onAuthStateChanged.listen(updateCurrentUser);
  }

  @action
  tryLogin() async {
    final authResult = await _firebaseAuth.signInAnonymously();
    if (authResult.user != null) {
      return true;
    }
  }

  @action
  updateCurrentUser(FirebaseUser user) {
    if (user != null) {
      currentUser = UserModel(
        uid: user.uid,
        email: user.email,
        displayName: user.displayName,
      );
      state = LoggedState();
      print("State: ${state.runtimeType}, User: ${currentUser.uid}");
    } else {
      currentUser = null;
      state = NotLoggedState();
      print("State: ${state.toString()}");
    }
  }

  @override
  void dispose() {
    authStateChangedSub.cancel();
    super.dispose();
  }
}

abstract class AuthState {}

class LoggedState extends AuthState {}

class NotLoggedState extends AuthState {}
