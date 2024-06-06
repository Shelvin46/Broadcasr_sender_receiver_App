import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BroadcastReceiver {
  BroadcastReceiver._internal();

  static final BroadcastReceiver instance = BroadcastReceiver._internal();

  factory BroadcastReceiver() => instance;

  Future<void> invokeMethod(String data) async {
    WidgetsFlutterBinding.ensureInitialized();
    const customEvent = "com.example.broadcast_hanlder_app.CUSTOM_EVENT";
    await const MethodChannel(customEvent)
        .invokeMethod("sendData", {"data": data});
  }
}
