import 'package:clean_architecture_todo/features/featuretodo/data/model/todo_model.dart';
import 'package:clean_architecture_todo/features/featuretodo/domain/entities/todo_entity.dart';

abstract class TodoRepository {
  Future<void> addTodo(EntityTodo todo);
  Future<void> delTodo(int index);
  Future<void> updateTodo(EntityTodo update);
 List<TodoEntity> getTodo();
}
