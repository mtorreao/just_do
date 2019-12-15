import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:just_do/app/shared/services/local_db_service.dart';
import 'package:uuid/uuid.dart';

import '../models/todo_model.dart';

class TodosRepository extends Disposable {
  LocalDBService _dbService;

  TodosRepository(this._dbService);

  Future<List<TodoModel>> getAll() async {
    final box = await _dbService.getBox();
    return box.values.toList().map((i) {
      print(i);
      return TodoModel.fromJson(Map<String, dynamic>.from(i));
    }).toList();
  }

  //dispose will be called automatically
  @override
  void dispose() {
    _dbService.dispose();
  }

  Future<TodoModel> add(TodoModel model) async {
    final box = await _dbService.getBox();
    final id = Uuid().v4();
    model.id = id;
    box.put(id, model.toJson());
    return model;
  }

  Future<void> clear() async {
    final box = await _dbService.getBox();
    box.clear();
  }

  Future<TodoModel> update(TodoModel todo) async {
    assert(todo != null && todo.id != null);
    final box = await _dbService.getBox();
    await box.put(todo.id, todo.toJson());
    return todo;
  }
}
