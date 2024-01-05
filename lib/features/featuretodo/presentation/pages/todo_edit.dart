import 'package:clean_architecture_todo/core/constants/featuretodo/featuretodo_constants.dart';
import 'package:clean_architecture_todo/features/featuretodo/presentation/providers/todoprovider.dart';
import 'package:clean_architecture_todo/features/featuretodo/presentation/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SecondPage extends ConsumerWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstantsTodo.todoEditTitle),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: TextfieldWidget(),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(todosProvider.notifier).addTodo();
            Navigator.pop(context);
          },
          child: const Text('save')),
    );
  }
}
