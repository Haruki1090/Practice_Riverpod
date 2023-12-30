import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/s2.dart';

class MyWidget2 extends ConsumerWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final s2 = ref.watch(s2NotifireProvider);

    return Scaffold(
        body:ListView.builder(
                itemCount: s2.length,
                itemBuilder: (_, index){
                  return Card(
                    child: Text('${s2[index]}'),
                  );
                }
            ),

        floatingActionButton: FloatingActionButton(
              onPressed: (){
                final notifire = ref.read(s2NotifireProvider.notifier);
                notifire.updateState();
              },
              child: Text('ボタン')
          )
    );
  }
}
