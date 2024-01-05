
import 'package:freezed_annotation/freezed_annotation.dart';
part 'todo_entity.freezed.dart';

@freezed
class EntityTodo with _$EntityTodo{
  factory EntityTodo({
  required int id,
  required String title,
  required bool isChecked,})=_EntityTodo;
}