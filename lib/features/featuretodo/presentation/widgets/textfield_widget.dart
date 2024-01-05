import 'package:clean_architecture_todo/features/featuretodo/presentation/providers/todoprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TextfieldWidget extends ConsumerWidget {
  const TextfieldWidget({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Center(
      child: SizedBox(
        height: 50,
        width: 300,
        child: TextField(
          controller: ref.read(todosProvider.notifier).todoController,
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              hintText: 'enter todo'),
        ),
      ),
    );
  }
}
