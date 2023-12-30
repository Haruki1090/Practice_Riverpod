import 'package:riverpod_annotation/riverpod_annotation.dart';
part 's1.g.dart';

@riverpod
class S1Notifire extends _$S1Notifire {
  @override
  int build(){
    return 0;
  }


  void updateState(){
    state++;
  }

}
