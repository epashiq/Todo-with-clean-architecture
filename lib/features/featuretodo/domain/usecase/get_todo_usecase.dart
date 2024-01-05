import 'dart:developer';

import 'package:clean_architecture_todo/features/featuretodo/domain/repository/todo_repository.dart';

final class GetTodoUseCase{
  final TodoRepository repository;
  GetTodoUseCase({required this.repository});
  Future<void>call()async{
    try {
      repository.getTodo();
    } catch (e) {
      log(e.toString());
    }
  }
}