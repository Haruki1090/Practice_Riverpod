import 'package:riverpod_annotation/riverpod_annotation.dart';
part 's2.g.dart';

@riverpod
class S2Notifire extends _$S2Notifire {
  @override
  List<String> build(){
    return ['a', 'b', 'c', 'd'];
  }


void updateState(){
  final oldState = state;
  final newState = [...oldState, 'X'];
  state = newState;
  }

}
