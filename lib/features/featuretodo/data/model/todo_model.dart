import 'package:objectbox/objectbox.dart';

@Entity()
class TodoEntity{
  @Id()
  int id = 0;
  String? todos;
  bool? isChecked;
  TodoEntity({required this.todos,required this.isChecked,this.id=0});
}