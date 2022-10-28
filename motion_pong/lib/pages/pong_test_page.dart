import 'package:flutter/material.dart';
import 'package:pong/pong.dart';

class PongTestPage extends StatelessWidget {
  const PongTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pong Test Page')),
      body: const Pong(),
    );
  }
}
