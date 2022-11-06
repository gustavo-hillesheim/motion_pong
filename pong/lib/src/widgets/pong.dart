import 'package:flutter/material.dart';
import 'package:pong/pong.dart';
import 'package:pong/src/domain/models/pong_game_state.dart';
import 'package:pong/src/domain/pong_game.dart';
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
  late final gameManager = PongGame(
    controller: widget.playerController,
  );

  @override
  void initState() {
    super.initState();
    gameManager.start();
  }

  @override
  void dispose() {
    gameManager.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PongGameState>(
      stream: gameManager.states,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error}'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        }
        final gameState = snapshot.data!;
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
      },
    );
  }
}
