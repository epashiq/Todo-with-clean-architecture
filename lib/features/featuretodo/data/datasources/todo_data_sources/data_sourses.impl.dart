import 'package:clean_architecture_todo/core/objectbox/todo_store.dart';
import 'package:clean_architecture_todo/features/featuretodo/data/datasources/todo_data_sources/data_source.dart';
import 'package:clean_architecture_todo/features/featuretodo/data/model/todo_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_sourses.impl.g.dart';
class TodoDataSourcesImpl implements TodoDataSources {
  final box = Objectbox.instance.todoBox;
  @override
  Future<void> addTodo(TodoEntity todo) async {
    box.put(todo);
  }

  @override
  Future<void> delTodo(int index) async {
    box.getAll();
  }

  @override
  Future<void> updateTodo(TodoEntity update) async {
    box.put(update);
  }

  @override
 List<TodoEntity> getTodo() {
   return box.getAll();
  }
}

@riverpod
TodoDataSources todoDataSources(TodoDataSourcesRef ref) {
  return TodoDataSourcesImpl();
}
