import 'package:clean_architecture_todo/features/featuretodo/presentation/providers/todoprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListWidget extends ConsumerWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      itemCount: ref.watch(todosProvider).length,
      itemBuilder: (context, index) => ListTile(
        leading: Checkbox(
          value: false,
          onChanged: (value) => value,
        ),
        title: Text(ref.watch(todosProvider)[index].todos!),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.edit_rounded))
          ],
        ),
      ),
    );
  }
}
