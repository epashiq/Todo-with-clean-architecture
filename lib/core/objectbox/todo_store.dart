import 'package:clean_architecture_todo/features/featuretodo/data/model/todo_model.dart';

import 'package:clean_architecture_todo/objectbox.g.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

class Objectbox {
  static Objectbox? _instance;
  final Store store;
  late final Box<TodoEntity> todoBox;

  Objectbox._create(this.store) {
    todoBox = store.box<TodoEntity>();
  }

  static Objectbox get instance {
    return _instance!;
  }

  static Future<void> create() async {
    if (_instance == null) {
      final docsDir = await getApplicationDocumentsDirectory();
      final store = await openStore(directory: path.join(docsDir.path, 'todo'));
      _instance = Objectbox._create(store);
    }
  }
}
