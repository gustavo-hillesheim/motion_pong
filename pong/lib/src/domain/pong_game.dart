import 'dart:async';
import 'dart:math';

import 'package:pong/src/domain/models/pong_game_state.dart';
import 'package:pong/src/domain/models/pong_player.dart';
import 'package:pong/src/domain/pong_game_controller.dart';

class PongGame {
  final _streamController = StreamController<PongGameState>.broadcast();
  PongGameState _state = const PongGameState();
  bool _isRunning = false;
  DateTime? _lastTick;

  PongGame({
    PongPlayerController? controller,
  }) {
    _streamController.add(_state);
    controller?.events.listen(_onPlayerControllerEvent);
  }

  Stream<PongGameState> get states => _streamController.stream;

  void _onPlayerControllerEvent(PongPlayerControllerEvents event) {
    if (event is MovePlayerUpEvent) {
      _setState(_state.copyWith(
        playerOne: _state.playerOne.copyWith(
          position: max(_state.playerOne.position - 0.02, -1),
        ),
      ));
    } else if (event is MovePlayerDownEvent) {
      _setState(_state.copyWith(
        playerOne: _state.playerOne.copyWith(
          position: min(_state.playerOne.position + 0.02, 1),
        ),
      ));
    }
  }

  void start() {
    _isRunning = true;
    Timer.run(_runTick);
  }

  void stop() {
    _isRunning = false;
  }

  void _runTick() {
    if (!_isRunning) {
      return;
    }
    final now = DateTime.now();
    final elapsedTime = now.difference(_lastTick ?? now);
    _tick(elapsedTime);
    _lastTick = now;
    Timer.run(_runTick);
  }

  void _tick(Duration elapsedTime) {
    _setState(_state);
  }

  void _setState(PongGameState gameState) {
    _state = gameState;
    _streamController.add(_state);
  }
}
