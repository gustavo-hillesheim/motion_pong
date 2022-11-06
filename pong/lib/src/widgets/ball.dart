import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pong/src/domain/models/pong_ball.dart';

class Ball extends StatelessWidget {
  final PongBall ball;

  const Ball({
    super.key,
    required this.ball,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ball.size.width.sh,
      height: ball.size.height.sh,
      color: Colors.white,
    );
  }
}
