import 'package:flutter/material.dart';
import 'package:pong/src/models/pong_player.dart';

class PlayerArea extends StatelessWidget {
  final PongPlayer player;
  final PlayerSide side;

  const PlayerArea({
    required this.player,
    required this.side,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          top: 16,
          bottom: null,
          child: Center(
            child: Text(
              '${player.score}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontFamily: 'Pixeled',
              ),
            ),
          ),
        ),
        Positioned.fill(
          left: side.isLeft ? 16 : 0,
          right: side.isRight ? 16 : 0,
          child: Align(
            alignment: FractionalOffset(
              side.isLeft ? 0 : 1,
              (0.5 + player.position).clamp(0, 1),
            ),
            child: FractionallySizedBox(
              heightFactor: 0.25,
              child: Container(
                width: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

enum PlayerSide {
  left,
  right;

  bool get isLeft => this == PlayerSide.left;
  bool get isRight => this == PlayerSide.right;
}
