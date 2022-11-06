import 'dart:ui';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'pong_player.g.dart';

@CopyWith()
class PongPlayer extends Equatable {
  final int score;
  final double position;
  final Size size;

  const PongPlayer({
    this.score = 0,
    this.position = 0,
    this.size = const Size(0.025, 0.25),
  });

  @override
  List<Object?> get props => [score, position, size];
}
