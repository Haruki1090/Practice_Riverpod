import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/s4.dart';

class MyWidget4 extends ConsumerWidget {
  const MyWidget4({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final s4 = ref.watch(s4NotifireProvider);

    final widget = s4.when(
        data: (data) => Text('${data}'),
        error: (error, stackTrace) => Text('エラー　${error}'),
        loading: () => Text('ローディング中'),
    );

    final button = ElevatedButton(
        onPressed: (){
          final notifire = ref.read(s4NotifireProvider.notifier);
          notifire.updateState();
        },
        child: Text('ボタン')
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        widget,
        button
      ],
    );
  }
}
