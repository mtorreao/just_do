import 'package:just_do/app/shared/models/todo_model.dart';
import 'package:just_do/app/shared/repositories/todos_repository.dart';
import 'package:mobx/mobx.dart';

part 'todo_list_controller.g.dart';

class TodoListController = _TodoListBase with _$TodoListController;

abstract class _TodoListBase with Store {
  TodosRepository _repository;

  _TodoListBase(this._repository) {
    // this._repository.clear();
    _initList();
  }

  Future<void> _initList() async {
    final list = await this._repository.getAll();
    todos.addAll(list);
  }

  @observable
  ObservableList<TodoModel> todos = ObservableList<TodoModel>();

  @action
  addTodo(TodoModel model) async {
    model = await this._repository.add(model);
    todos.add(model);
  }

  @action
  doneUndoneTodo(int index) {
    final todo = todos.elementAt(index);
    todo.done = !todo.done;
    todos[index] = todo;
  }

  @action
  remove(int index) {
    _repository.remove(todos.elementAt(index).id);
    todos.removeAt(index);
  }
}
