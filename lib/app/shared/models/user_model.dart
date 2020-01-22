import 'package:mobx/mobx.dart';

part 'user_model.g.dart';

class UserModel = _UserModelBase with _$UserModel;

abstract class _UserModelBase with Store {
  @observable
  String uid;
  @observable
  String email;
  @observable
  String displayName;

  _UserModelBase({
    this.uid,
    this.email,
    this.displayName,
  });
}
