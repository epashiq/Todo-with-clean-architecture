// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntityTodo {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isChecked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntityTodoCopyWith<EntityTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityTodoCopyWith<$Res> {
  factory $EntityTodoCopyWith(
          EntityTodo value, $Res Function(EntityTodo) then) =
      _$EntityTodoCopyWithImpl<$Res, EntityTodo>;
  @useResult
  $Res call({int id, String title, bool isChecked});
}

/// @nodoc
class _$EntityTodoCopyWithImpl<$Res, $Val extends EntityTodo>
    implements $EntityTodoCopyWith<$Res> {
  _$EntityTodoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? isChecked = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityTodoImplCopyWith<$Res>
    implements $EntityTodoCopyWith<$Res> {
  factory _$$EntityTodoImplCopyWith(
          _$EntityTodoImpl value, $Res Function(_$EntityTodoImpl) then) =
      __$$EntityTodoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, bool isChecked});
}

/// @nodoc
class __$$EntityTodoImplCopyWithImpl<$Res>
    extends _$EntityTodoCopyWithImpl<$Res, _$EntityTodoImpl>
    implements _$$EntityTodoImplCopyWith<$Res> {
  __$$EntityTodoImplCopyWithImpl(
      _$EntityTodoImpl _value, $Res Function(_$EntityTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? isChecked = null,
  }) {
    return _then(_$EntityTodoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EntityTodoImpl implements _EntityTodo {
  _$EntityTodoImpl(
      {required this.id, required this.title, required this.isChecked});

  @override
  final int id;
  @override
  final String title;
  @override
  final bool isChecked;

  @override
  String toString() {
    return 'EntityTodo(id: $id, title: $title, isChecked: $isChecked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityTodoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, isChecked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityTodoImplCopyWith<_$EntityTodoImpl> get copyWith =>
      __$$EntityTodoImplCopyWithImpl<_$EntityTodoImpl>(this, _$identity);
}

abstract class _EntityTodo implements EntityTodo {
  factory _EntityTodo(
      {required final int id,
      required final String title,
      required final bool isChecked}) = _$EntityTodoImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  bool get isChecked;
  @override
  @JsonKey(ignore: true)
  _$$EntityTodoImplCopyWith<_$EntityTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
