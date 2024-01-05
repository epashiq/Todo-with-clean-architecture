import 'package:clean_architecture_todo/core/constants/featuretodo/featuretodo_constants.dart';
import 'package:clean_architecture_todo/core/theme/theme_provider.dart';
import 'package:clean_architecture_todo/features/featuretodo/presentation/pages/todo_edit.dart';
import 'package:clean_architecture_todo/features/featuretodo/presentation/widgets/listview_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoHome extends ConsumerWidget {
  const TodoHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(ConstantsTodo.todoTitle),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondPage(),
                      ));
                },
                icon: const Icon(Icons.arrow_forward)),
            IconButton(
                onPressed: () {
                  ref.read(themeProvider.notifier).swithTheme();
                },
                icon: const Icon(Icons.wb_sunny_outlined))
          ],
        ),
        body: const ListWidget());
  }
}
