import 'package:mobx/mobx.dart';

part 'todo_model.g.dart';

class TodoModel = _TodoModel with _$TodoModel;

abstract class _TodoModel with Store {
  @observable
  String title;
  @observable
  bool done;

  _TodoModel(
    this.title, {
    this.done = false,
  });

  @action
  void doneOrUndone() {
    done = !done;
  }
}
