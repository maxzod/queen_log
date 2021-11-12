import 'dart:async';
import 'dart:developer';

import 'package:queen_log/src/types/error.dart';

class Logger implements BaseLog {
  static bool _enabled = true;
  bool get enabled => _enabled;
  set enabled(bool value) {
    log('QUEEN : logs ${value ? 'enabled' : 'disabled'} at ${DateTime.now()}');
    _enabled = value;
  }

  @override
  void l(
    String message, {
    DateTime? time,
    int? sequenceNumber,
    int level = 0,
    String name = '',
    Zone? zone,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (!enabled) return;
    log(
      message,
      time: time,
      sequenceNumber: sequenceNumber,
      level: level,
      name: name,
      zone: zone,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
