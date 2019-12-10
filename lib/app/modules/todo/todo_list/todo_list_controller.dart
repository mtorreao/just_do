import 'package:just_do/app/shared/models/todo_model.dart';
import 'package:mobx/mobx.dart';

part 'todo_list_controller.g.dart';

class TodoListController = _TodoListBase with _$TodoListController;

abstract class _TodoListBase with Store {
  @observable
  ObservableList<TodoModel> todos = ObservableList<TodoModel>();

  @action
  addTodo(TodoModel model) {
    todos.add(model);
  }

  @action
  doneUndoneTodo(int index) {
    final todo = todos.elementAt(index);
    todo.done = !todo.done;
  }
}
