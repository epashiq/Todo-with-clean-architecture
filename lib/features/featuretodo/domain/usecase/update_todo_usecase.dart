import 'dart:developer';

import 'package:clean_architecture_todo/features/featuretodo/domain/entities/todo_entity.dart';
import 'package:clean_architecture_todo/features/featuretodo/domain/repository/todo_repository.dart';

final class UpdateUseCase{
  final TodoRepository repository;
  UpdateUseCase({required this.repository});

  Future<void>call({required String title,required bool isChecked,required int id})async{
    try {
      if(title.trim().isEmpty){
        log('title is empty');
      }
      final todo = EntityTodo(id: id, title: title, isChecked: isChecked);
      repository.updateTodo(todo);
    } catch (e) {
      log(e.toString());
    }
  }
}