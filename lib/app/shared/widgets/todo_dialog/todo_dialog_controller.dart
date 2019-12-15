import 'package:mobx/mobx.dart';

import '../../models/todo_model.dart';
import '../../models/todo_model.dart';

part 'todo_dialog_controller.g.dart';

class TodoDialogController = _TodoDialogBase with _$TodoDialogController;

abstract class _TodoDialogBase with Store {
  @observable
  TodoModel todo = TodoModel(title: '');
}