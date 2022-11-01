import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pong/pong.dart';

class PongTestPage extends StatelessWidget {
  const PongTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pong Test Page')),
      body: Shortcuts(
        shortcuts: const {
          SingleActivator(LogicalKeyboardKey.keyW):
              MoveIntent(VerticalDirection.up),
          SingleActivator(LogicalKeyboardKey.keyS):
              MoveIntent(VerticalDirection.down),
        },
        child: Actions(
          actions: {
            MoveIntent: CallbackAction<MoveIntent>(
              onInvoke: (intent) => debugPrint('moving ${intent.direction}'),
            ),
          },
          child: const Focus(
            autofocus: true,
            child: Pong(),
          ),
        ),
      ),
    );
  }
}

class MoveIntent extends Intent {
  final VerticalDirection direction;

  const MoveIntent(this.direction);
}
