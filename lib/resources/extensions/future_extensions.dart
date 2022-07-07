import 'package:flutter/foundation.dart';

extension FutureExtensions<T> on Future<T> {
  Future<T> catchPrintError(Function(Exception, StackTrace) onError) {
    return catchError((Object e, StackTrace s) {
      if (kDebugMode) {
        debugPrint(e.toString());
        debugPrint(s.toString());
      }

      e as Exception;

      onError.call(e, s);
    });
  }
}
