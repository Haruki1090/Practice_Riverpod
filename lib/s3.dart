import 'package:riverpod_annotation/riverpod_annotation.dart';
part 's3.g.dart';

@riverpod
class S3Notifire extends _$S3Notifire {
  @override
  Future<String> build() async {
    await Future.delayed(const Duration(seconds: 3));
    return '最初のデータ';
  }


  void updateState()async{
    state = const AsyncValue.loading();
    await Future.delayed(const Duration(seconds: 3));
    state = const AsyncValue.data('新しいデータ');
  }
}