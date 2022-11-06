// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pong_game_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PongGameStateCWProxy {
  PongGameState ball(PongBall ball);

  PongGameState playerOne(PongPlayer playerOne);

  PongGameState playerTwo(PongPlayer playerTwo);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PongGameState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PongGameState(...).copyWith(id: 12, name: "My name")
  /// ````
  PongGameState call({
    PongBall? ball,
    PongPlayer? playerOne,
    PongPlayer? playerTwo,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPongGameState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPongGameState.copyWith.fieldName(...)`
class _$PongGameStateCWProxyImpl implements _$PongGameStateCWProxy {
  final PongGameState _value;

  const _$PongGameStateCWProxyImpl(this._value);

  @override
  PongGameState ball(PongBall ball) => this(ball: ball);

  @override
  PongGameState playerOne(PongPlayer playerOne) => this(playerOne: playerOne);

  @override
  PongGameState playerTwo(PongPlayer playerTwo) => this(playerTwo: playerTwo);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PongGameState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PongGameState(...).copyWith(id: 12, name: "My name")
  /// ````
  PongGameState call({
    Object? ball = const $CopyWithPlaceholder(),
    Object? playerOne = const $CopyWithPlaceholder(),
    Object? playerTwo = const $CopyWithPlaceholder(),
  }) {
    return PongGameState(
      ball: ball == const $CopyWithPlaceholder() || ball == null
          ? _value.ball
          // ignore: cast_nullable_to_non_nullable
          : ball as PongBall,
      playerOne: playerOne == const $CopyWithPlaceholder() || playerOne == null
          ? _value.playerOne
          // ignore: cast_nullable_to_non_nullable
          : playerOne as PongPlayer,
      playerTwo: playerTwo == const $CopyWithPlaceholder() || playerTwo == null
          ? _value.playerTwo
          // ignore: cast_nullable_to_non_nullable
          : playerTwo as PongPlayer,
    );
  }
}

extension $PongGameStateCopyWith on PongGameState {
  /// Returns a callable class that can be used as follows: `instanceOfPongGameState.copyWith(...)` or like so:`instanceOfPongGameState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PongGameStateCWProxy get copyWith => _$PongGameStateCWProxyImpl(this);
}
