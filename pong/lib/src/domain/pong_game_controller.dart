import 'dart:async';

import 'package:flutter/painting.dart';

class PongPlayerController {
  final _streamController = StreamController<PongPlayerControllerEvents>();

  Stream<PongPlayerControllerEvents> get events => _streamController.stream;

  void move(VerticalDirection direction) {
    switch (direction) {
      case VerticalDirection.up:
        _streamController.sink.add(const MovePlayerUpEvent());
        break;
      case VerticalDirection.down:
        _streamController.sink.add(const MovePlayerDownEvent());
    }
  }

  void dispose() {
    _streamController.close();
  }
}

abstract class PongPlayerControllerEvents {
  const PongPlayerControllerEvents();
}

class MovePlayerUpEvent extends PongPlayerControllerEvents {
  const MovePlayerUpEvent();
}

class MovePlayerDownEvent extends PongPlayerControllerEvents {
  const MovePlayerDownEvent();
}
