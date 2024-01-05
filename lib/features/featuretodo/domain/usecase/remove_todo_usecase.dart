import 'dart:developer';

import 'package:clean_architecture_todo/features/featuretodo/domain/repository/todo_repository.dart';

final class RemoveUseCase {
  final TodoRepository repository;
  RemoveUseCase({required this.repository});

  Future<void> call({required int id}) async {
    try {
      repository.delTodo(id);
    } catch (e) {
      log(e.toString());
    }
  }
}
