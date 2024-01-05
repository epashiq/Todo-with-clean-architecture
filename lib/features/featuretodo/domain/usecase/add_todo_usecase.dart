import 'dart:developer';

import 'package:clean_architecture_todo/features/featuretodo/domain/entities/todo_entity.dart';
import 'package:clean_architecture_todo/features/featuretodo/domain/repository/todo_repository.dart';

final class AddUsecase {
  final TodoRepository repository;
  AddUsecase({required this.repository});
  Future<void> call({required String title, required bool isChecked}) async {
    try {
      if (title.trim().isEmpty) {
        log('title is empty');
      }
      final todo = EntityTodo(id: 0, title: title, isChecked: isChecked);
      repository.addTodo(todo);
    } catch (e) {
      log(e.toString());
    }
  }
}
