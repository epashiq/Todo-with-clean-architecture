import 'dart:developer';

import 'package:clean_architecture_todo/features/featuretodo/data/model/todo_model.dart';
import 'package:clean_architecture_todo/features/featuretodo/data/repository/todo_repository_impl.dart';
import 'package:clean_architecture_todo/features/featuretodo/domain/repository/todo_repository.dart';
import 'package:clean_architecture_todo/features/featuretodo/domain/usecase/add_todo_usecase.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'todoprovider.g.dart';

@riverpod
class Todos extends _$Todos {
  late final TextEditingController todoController;
  late TodoRepository repository;

  @override
  List<TodoEntity> build() {
    todoController = TextEditingController();
    repository = ref.watch(repstrProvider);
    // ref.onDispose(dispose);
    return repository.getTodo();
  }

  void dispose() {
    todoController.dispose();
  }

  Future<String?> addTodo() async {
    try {
      final title = todoController.text;
      await AddUsecase(repository: repository)(title: title, isChecked: false);
      state = repository.getTodo();
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
