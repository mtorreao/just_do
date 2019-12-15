import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';

part 'todo_model.g.dart';

class TodoModel extends _TodoModel with _$TodoModel {
  TodoModel({
    @required String title,
    bool done = false,
    String id,
  }) : super(title, done: done, id: id);

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['id'] = id;
    json['title'] = title;
    json['done'] = done;

    return json;
  }

  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(
        title: json['title'],
        id: json['id'],
        done: json['done'],
      );
  }
}

abstract class _TodoModel with Store {
  String id;
  @observable
  String title;
  @observable
  bool done;

  _TodoModel(
    this.title, {
    this.done = false,
    this.id,
  });

  @action
  void doneOrUndone() {
    done = !done;
  }
}
