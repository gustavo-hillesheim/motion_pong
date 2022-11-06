import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

part 'pong_ball.g.dart';

@CopyWith()
class PongBall extends Equatable {
  final Offset position;
  final Alignment direction;
  final Size size;

  const PongBall({
    this.size = const Size(0.025, 0.025),
    this.position = Offset.zero,
    required this.direction,
  });

  @override
  List<Object?> get props => [position, direction];
}
