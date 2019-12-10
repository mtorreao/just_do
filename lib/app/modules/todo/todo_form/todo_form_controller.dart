import 'package:mobx/mobx.dart';

part 'todo_form_controller.g.dart';

class TodoFormController = _TodoFormBase with _$TodoFormController;

abstract class _TodoFormBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
