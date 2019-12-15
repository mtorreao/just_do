// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_dialog_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoDialogController on _TodoDialogBase, Store {
  final _$todoAtom = Atom(name: '_TodoDialogBase.todo');

  @override
  TodoModel get todo {
    _$todoAtom.context.enforceReadPolicy(_$todoAtom);
    _$todoAtom.reportObserved();
    return super.todo;
  }

  @override
  set todo(TodoModel value) {
    _$todoAtom.context.conditionallyRunInAction(() {
      super.todo = value;
      _$todoAtom.reportChanged();
    }, _$todoAtom, name: '${_$todoAtom.name}_set');
  }
}
