import 'package:clean_architecture_todo/core/objectbox/todo_store.dart';
import 'package:clean_architecture_todo/core/theme/theme_provider.dart';
import 'package:clean_architecture_todo/features/featuretodo/presentation/pages/todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Objectbox.create();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ref.watch(themeProvider),
      home: const TodoHome(),
    );
  }
}
