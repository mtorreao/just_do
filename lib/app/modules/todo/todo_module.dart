import 'package:flutter_modular/flutter_modular.dart';
import 'package:just_do/app/modules/todo/todo_list/todo_list_controller.dart';
import 'package:just_do/app/modules/todo/todo_list/todo_list_page.dart';
import 'package:just_do/app/shared/repositories/todos_repository.dart';
import 'package:just_do/app/shared/services/local_db_service.dart';

class TodoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TodoListController(i.get<TodosRepository>())),
        Bind((i) => LocalDBService('todos')),
        Bind((i) => TodosRepository(i.get<LocalDBService>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => TodoListPage()),
      ];

  static Inject get to => Inject<TodoModule>.of();
}
