import 'package:flutter/material.dart';
import 'package:pong/src/models/pong_game_state.dart';
import 'package:pong/src/widgets/player_area.dart';
import 'package:pong/src/widgets/pong_field.dart';

class Pong extends StatefulWidget {
  const Pong({super.key});

  @override
  State<Pong> createState() => _PongState();
}

class _PongState extends State<Pong> {
  PongGameState gameState = const PongGameState();

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
