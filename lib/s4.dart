import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 's4.g.dart';

@riverpod
class S4Notifire extends _$S4Notifire {
  @override
  Stream<String> build() {
    final controller = StreamController<String>();
    final timer = Timer.periodic(Duration(seconds: 1), (timer) {
      controller.add('メッセージが${timer.tick}件届きました');
    });
    Future.delayed(Duration(seconds: 4), () {
      timer.cancel();
      controller.sink.close();
    });
    return controller.stream;
  }


  void updateState() async{
    await Future.delayed(Duration(seconds: 1));
    state = AsyncValue.data('メッセージが55件届きました');
    await Future.delayed(Duration(seconds: 1));
    state = AsyncValue.data('メッセージが77件届きました');
  }
}