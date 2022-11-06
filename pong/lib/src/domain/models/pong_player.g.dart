// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pong_player.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PongPlayerCWProxy {
  PongPlayer position(double position);

  PongPlayer score(int score);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PongPlayer(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PongPlayer(...).copyWith(id: 12, name: "My name")
  /// ````
  PongPlayer call({
    double? position,
    int? score,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPongPlayer.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPongPlayer.copyWith.fieldName(...)`
class _$PongPlayerCWProxyImpl implements _$PongPlayerCWProxy {
  final PongPlayer _value;

  const _$PongPlayerCWProxyImpl(this._value);

  @override
  PongPlayer position(double position) => this(position: position);

  @override
  PongPlayer score(int score) => this(score: score);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PongPlayer(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PongPlayer(...).copyWith(id: 12, name: "My name")
  /// ````
  PongPlayer call({
    Object? position = const $CopyWithPlaceholder(),
    Object? score = const $CopyWithPlaceholder(),
  }) {
    return PongPlayer(
      position: position == const $CopyWithPlaceholder() || position == null
          ? _value.position
          // ignore: cast_nullable_to_non_nullable
          : position as double,
      score: score == const $CopyWithPlaceholder() || score == null
          ? _value.score
          // ignore: cast_nullable_to_non_nullable
          : score as int,
    );
  }
}

extension $PongPlayerCopyWith on PongPlayer {
  /// Returns a callable class that can be used as follows: `instanceOfPongPlayer.copyWith(...)` or like so:`instanceOfPongPlayer.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PongPlayerCWProxy get copyWith => _$PongPlayerCWProxyImpl(this);
}
