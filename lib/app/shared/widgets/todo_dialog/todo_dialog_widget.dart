import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:just_do/app/shared/widgets/todo_dialog/todo_dialog_controller.dart';

import '../../models/todo_model.dart';

class TodoDialogWidget extends StatelessWidget {
  final Function(TodoModel) saveHandler;
  final TodoModel todo;
  final TodoDialogController controller = TodoDialogController();
  final formKey = GlobalKey<FormState>();

  TodoDialogWidget(
    this.saveHandler, {
    this.todo,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: Stack(
        alignment: Alignment.center,
        overflow: Overflow.visible,
        fit: StackFit.passthrough,
        children: <Widget>[
          Positioned(
            top: -20,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(25),
              ),
              height: 45,
              child: Center(
                child: Text(
                  "New Todo",
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            child: Form(
              key: formKey,
              autovalidate: true,
              child: Observer(
                builder: (BuildContext context) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Name', hintText: 'Arrumar a casa'),
                      onChanged: (value) {
                        controller.todo.title = value;
                        
                      },
                      autofocus: true,
                      validator: (value) {
                        if (controller.todo.title.length < 3) return 'Campo Requerido';
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 12,
            right: 12,
            child: Row(
              children: <Widget>[
                FlatButton(
                  child: Text('Cancelar'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  width: 8,
                ),
                RaisedButton(
                  onPressed: () {
                    _saveForm(context);
                  },
                  child: Text('Salvar'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _saveForm(BuildContext context) {
    final form = formKey.currentState;
    if (form.validate()) {
      saveHandler(controller.todo);
      Navigator.of(context).pop();
    }
  }
}
