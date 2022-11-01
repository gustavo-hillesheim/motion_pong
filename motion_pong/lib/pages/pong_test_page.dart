import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pong/pong.dart';

class PongTestPage extends StatefulWidget {
  const PongTestPage({super.key});

  @override
  State<PongTestPage> createState() => _PongTestPageState();
}

class _PongTestPageState extends State<PongTestPage> {
  final playerController = PongPlayerController();

  @override
  void dispose() {
    playerController.dispose();
    super.dispose();
  }

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
              onInvoke: (intent) => playerController.move(intent.direction),
            ),
          },
          child: Focus(
            autofocus: true,
            child: Pong(
              playerController: playerController,
            ),
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
