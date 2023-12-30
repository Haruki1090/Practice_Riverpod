import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/s3.dart';

class MyWidget3 extends ConsumerWidget {
  const MyWidget3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final s3 = ref.watch(s3NotifireProvider);

    final widget = s3.when(
        data: (data) => Text('${data}'),
        error: (error, stackTrace) => Text('エラ　${error}'),
        loading: () => Text('ローディング中'),
    );

    final button = ElevatedButton(
        onPressed: (){
          final notifire = ref.read(s3NotifireProvider.notifier);
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
