import 'package:clean_architecture_todo/features/featuretodo/data/datasources/todo_data_sources/data_source.dart';
import 'package:clean_architecture_todo/features/featuretodo/data/datasources/todo_data_sources/data_sourses.impl.dart';
import 'package:clean_architecture_todo/features/featuretodo/data/model/todo_model.dart';
import 'package:clean_architecture_todo/features/featuretodo/domain/entities/todo_entity.dart';
import 'package:clean_architecture_todo/features/featuretodo/domain/repository/todo_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'todo_repository_impl.g.dart';

class TodoRepositoryImpl implements TodoRepository{
  late final TodoDataSources dataSources;

  TodoRepositoryImpl({required this.dataSources});
  @override
  Future<void> addTodo(EntityTodo todo) async{
   final addTodo = TodoEntity(todos: todo.title, isChecked: todo.isChecked);
   await dataSources.addTodo(addTodo);
  }

  @override
  Future<void> delTodo(int index)async {
    await dataSources.delTodo(index);
  }

  @override
 List<TodoEntity> getTodo() {
    return dataSources.getTodo();
  }

  @override
  Future<void> updateTodo(EntityTodo update)async {
    await dataSources.updateTodo(TodoEntity(todos: update.title, isChecked: update.isChecked));
  }


}
@riverpod
 TodoRepository repstr(RepstrRef ref ){
  return TodoRepositoryImpl(dataSources: ref.watch(todoDataSourcesProvider));
 }