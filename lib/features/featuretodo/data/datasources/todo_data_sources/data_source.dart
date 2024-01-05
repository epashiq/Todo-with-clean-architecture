

import 'package:clean_architecture_todo/features/featuretodo/data/model/todo_model.dart';

abstract class TodoDataSources{
  Future<void>addTodo(TodoEntity todo);
  Future<void>delTodo(int index);
  Future<void>updateTodo(TodoEntity update);
  List<TodoEntity> getTodo();
}