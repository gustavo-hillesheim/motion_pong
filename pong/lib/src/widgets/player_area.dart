import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pong/src/domain/models/pong_player.dart';

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
          top: 0.01.sh,
          bottom: null,
          child: Center(
            child: Text(
              '${player.score}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48.sm,
                fontFamily: 'Pixeled',
              ),
            ),
          ),
        ),
        Align(
          alignment: FractionalOffset(
            player.position.dx,
            player.position.dy,
          ),
          child: Container(
            height: player.size.height.sh,
            width: player.size.width.sh,
            color: Colors.white,
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
