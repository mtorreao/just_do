import 'package:just_do/app/shared/repositories/todos_repository.dart';
import 'package:mobx/mobx.dart';

part 'todo_form_controller.g.dart';

class TodoFormController = _TodoFormBase with _$TodoFormController;

abstract class _TodoFormBase with Store {

  TodosRepository _repository;

  _TodoFormBase(this._repository);

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
