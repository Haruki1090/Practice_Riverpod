import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/s1.dart';

class MyWidget1 extends ConsumerWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final s1 = ref.watch(s1NotifireProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('${s1}'),
        ElevatedButton(
          onPressed: (){
              final notifire = ref.read(s1NotifireProvider.notifier);
              notifire.updateState();
            },
          child: Text('ボタン')
        )
      ],
    );
  }
}
