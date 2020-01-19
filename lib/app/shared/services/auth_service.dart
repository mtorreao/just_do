import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

part 'auth_service.g.dart';

class AuthService = _AuthServiceBase with _$AuthService;

abstract class _AuthServiceBase with Store {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @observable
  AuthState state;

  @action
  tryLogin() {
    _firebaseAuth.signInAnonymously();
  }
}

class AuthState {}
