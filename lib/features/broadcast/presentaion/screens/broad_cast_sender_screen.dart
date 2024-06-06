import 'package:broadcast_hanlder_app/features/broadcast/infrastructure/broadcast_receiver.dart';
import 'package:flutter/material.dart';

class BroadCastSenderScreen extends StatefulWidget {
  const BroadCastSenderScreen({super.key});

  @override
  State<BroadCastSenderScreen> createState() => _BroadCastSenderScreenState();
}

class _BroadCastSenderScreenState extends State<BroadCastSenderScreen> {
  final BroadcastReceiver _broadcastReceiver = BroadcastReceiver.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'BroadCastSenderScreen',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                _broadcastReceiver.invokeMethod("Hello from Sender!");
              },
              child: const Text('Send Broadcast'))
        ],
      ),
    )));
  }
}
