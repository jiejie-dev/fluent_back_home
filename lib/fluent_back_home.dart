import 'dart:async';

import 'package:flutter/services.dart';

class FluentBackHome {
  static const MethodChannel _channel =
      MethodChannel('dev.jiejie.fluent_back_home');

  static Future<bool> back() async {
    return await _channel.invokeMethod("back");
  }
}
