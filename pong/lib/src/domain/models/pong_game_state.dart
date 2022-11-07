import 'dart:ui';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:pong/src/domain/models/pong_ball.dart';
import 'package:pong/src/domain/models/pong_player.dart';

part 'pong_game_state.g.dart';

@CopyWith()
class PongGameState extends Equatable {
  final PongPlayer playerOne;
  final PongPlayer playerTwo;
  final PongBall ball;

  const PongGameState({
    this.playerOne = const PongPlayer(
      position: Offset(0.01, 0.5),
    ),
    this.playerTwo = const PongPlayer(
      position: Offset(0.99, 0.5),
    ),
    required this.ball,
  });

  @override
  List<Object?> get props => [playerOne, playerTwo, ball];
}
