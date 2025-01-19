import 'package:flutter_sample/utils/result.dart';

extension FutureExtension<T> on Future<T> {
  Future<Result<T>> asResult() {
    return then((value) => Result.ok(value))
        .onError((error, stackTrace) => Result.error(Exception(error)));
  }
}
