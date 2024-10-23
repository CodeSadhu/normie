part of '../normie.dart';

class _Guard {
  const _Guard();

  String formatException(dynamic exception) {
    if (exception is Error) {
      return '${exception.toString()}\n${exception.stackTrace}';
    }
    return exception.toString();
  }

  Map<String, dynamic> errorToJson(dynamic error) {
    return {
      'message': error.toString(),
      'type': error.runtimeType.toString(),
      'stackTrace': error is Error ? error.stackTrace.toString() : null,
    };
  }

  bool isNetworkError(dynamic error) {
    final errorString = error.toString().toLowerCase();
    return errorString.contains('socket') ||
        errorString.contains('network') ||
        errorString.contains('connection') ||
        errorString.contains('timeout');
  }
}
