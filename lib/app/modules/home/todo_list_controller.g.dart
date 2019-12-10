// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoListController on _TodoListBase, Store {
  final _$todosAtom = Atom(name: '_TodoListBase.todos');

  @override
  ObservableList<TodoModel> get todos {
    _$todosAtom.context.enforceReadPolicy(_$todosAtom);
    _$todosAtom.reportObserved();
    return super.todos;
  }

  @override
  set todos(ObservableList<TodoModel> value) {
    _$todosAtom.context.conditionallyRunInAction(() {
      super.todos = value;
      _$todosAtom.reportChanged();
    }, _$todosAtom, name: '${_$todosAtom.name}_set');
  }

  final _$_TodoListBaseActionController =
      ActionController(name: '_TodoListBase');

  @override
  dynamic addTodo(TodoModel model) {
    final _$actionInfo = _$_TodoListBaseActionController.startAction();
    try {
      return super.addTodo(model);
    } finally {
      _$_TodoListBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic doneUndoneTodo(int index) {
    final _$actionInfo = _$_TodoListBaseActionController.startAction();
    try {
      return super.doneUndoneTodo(index);
    } finally {
      _$_TodoListBaseActionController.endAction(_$actionInfo);
    }
  }
}
