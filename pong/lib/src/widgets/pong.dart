import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pong/src/models/pong_game_state.dart';
import 'package:pong/src/models/pong_player.dart';
import 'package:pong/src/widgets/player_area.dart';
import 'package:pong/src/widgets/pong_field.dart';

class Pong extends StatefulWidget {
  final PongPlayerController playerController;

  const Pong({
    super.key,
    required this.playerController,
  });

  @override
  State<Pong> createState() => _PongState();
}

class _PongState extends State<Pong> {
  late final StreamSubscription _playerControllerEventsSubscription;
  PongGameState gameState = const PongGameState();

  @override
  void initState() {
    super.initState();
    _playerControllerEventsSubscription =
        widget.playerController._events.listen(_onPlayerControllerEvent);
  }

  void _onPlayerControllerEvent(_PongPlayerControllerEvents event) {
    if (event is _MovePlayerUpEvent) {
      setState(() {
        gameState = gameState.copyWith(
          playerOne: gameState.playerOne.copyWith(
            position: max(gameState.playerOne.position - 0.02, -1),
          ),
        );
      });
    } else if (event is _MovePlayerDownEvent) {
      setState(() {
        gameState = gameState.copyWith(
          playerOne: gameState.playerOne.copyWith(
            position: min(gameState.playerOne.position + 0.02, 1),
          ),
        );
      });
    }
  }

  @override
  void dispose() {
    _playerControllerEventsSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(32),
      child: Stack(
        children: [
          const PongField(),
          Positioned(
            top: 8,
            left: 8,
            bottom: 8,
            right: 8,
            child: Row(
              children: [
                Expanded(
                  child: PlayerArea(
                    player: gameState.playerOne,
                    side: PlayerSide.left,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: PlayerArea(
                    player: gameState.playerTwo,
                    side: PlayerSide.right,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PongPlayerController {
  final _streamController = StreamController<_PongPlayerControllerEvents>();

  Stream<_PongPlayerControllerEvents> get _events => _streamController.stream;

  void move(VerticalDirection direction) {
    switch (direction) {
      case VerticalDirection.up:
        _streamController.sink.add(const _MovePlayerUpEvent());
        break;
      case VerticalDirection.down:
        _streamController.sink.add(const _MovePlayerDownEvent());
    }
  }

  void dispose() {
    _streamController.close();
  }
}

abstract class _PongPlayerControllerEvents {
  const _PongPlayerControllerEvents();
}

class _MovePlayerUpEvent extends _PongPlayerControllerEvents {
  const _MovePlayerUpEvent();
}

class _MovePlayerDownEvent extends _PongPlayerControllerEvents {
  const _MovePlayerDownEvent();
}
