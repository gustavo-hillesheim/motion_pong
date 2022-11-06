import 'dart:async';
import 'dart:math';

import 'package:flutter/painting.dart';
import 'package:pong/src/domain/models/pong_ball.dart';
import 'package:pong/src/domain/models/pong_game_state.dart';
import 'package:pong/src/domain/models/pong_player.dart';
import 'package:pong/src/domain/pong_game_controller.dart';

class PongGame {
  final _streamController = StreamController<PongGameState>.broadcast();
  late PongGameState _state;
  bool _isRunning = false;
  DateTime? _lastTick;

  PongGame({
    PongPlayerController? controller,
  }) {
    _state = _createInitialState();
    _streamController.add(_state);
    controller?.events.listen(_onPlayerControllerEvent);
  }

  Stream<PongGameState> get states => _streamController.stream;

  PongGameState _createInitialState() {
    final random = Random();
    final xBallDirection =
        (random.nextBool() ? -1.0 : 1.0) * random.nextDouble().clamp(0.4, 0.6);
    final yBallDirection =
        (random.nextBool() ? -1.0 : 1.0) * random.nextDouble().clamp(0.4, 0.6);
    final ballDirection = Alignment(xBallDirection, yBallDirection);
    return PongGameState(
      ball: PongBall(direction: ballDirection),
    );
  }

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
    final ballPosition = _newBallPosition(elapsedTime);
    _setState(
      _state.copyWith(
        ball: _state.ball.copyWith(
          position: ballPosition,
          direction: _newBallDirection(ballPosition),
        ),
      ),
    );
  }

  Offset _newBallPosition(Duration elapsedTime) {
    const ballSpeedPerSecond = 0.8;
    final millisecondsPerSecond = const Duration(seconds: 1).inMilliseconds;
    final ballTravelledDistance =
        ballSpeedPerSecond * elapsedTime.inMilliseconds / millisecondsPerSecond;
    final ball = _state.ball;
    final ballXTranslate = ball.direction.x * ballTravelledDistance;
    final ballYTranslate = ball.direction.y * ballTravelledDistance;
    final ballX = (_state.ball.position.dx + ballXTranslate).clamp(-1, 1);
    final ballY = (_state.ball.position.dy + ballYTranslate).clamp(-1, 1);
    return Offset(ballX.toDouble(), ballY.toDouble());
  }

  Alignment _newBallDirection(Offset ballPosition) {
    final currentDirection = _state.ball.direction;
    final newXDirection = ballPosition.dx.abs() == 1
        ? currentDirection.x * -1
        : currentDirection.x;
    final newYDirection = ballPosition.dy.abs() == 1
        ? currentDirection.y * -1
        : currentDirection.y;
    return Alignment(newXDirection, newYDirection);
  }

  void _setState(PongGameState gameState) {
    _state = gameState;
    _streamController.add(_state);
  }
}
