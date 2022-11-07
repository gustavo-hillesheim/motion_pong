// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pong_player.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PongPlayerCWProxy {
  PongPlayer position(Offset position);

  PongPlayer score(int score);

  PongPlayer size(Size size);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PongPlayer(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PongPlayer(...).copyWith(id: 12, name: "My name")
  /// ````
  PongPlayer call({
    Offset? position,
    int? score,
    Size? size,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPongPlayer.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPongPlayer.copyWith.fieldName(...)`
class _$PongPlayerCWProxyImpl implements _$PongPlayerCWProxy {
  final PongPlayer _value;

  const _$PongPlayerCWProxyImpl(this._value);

  @override
  PongPlayer position(Offset position) => this(position: position);

  @override
  PongPlayer score(int score) => this(score: score);

  @override
  PongPlayer size(Size size) => this(size: size);

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
    Object? size = const $CopyWithPlaceholder(),
  }) {
    return PongPlayer(
      position: position == const $CopyWithPlaceholder() || position == null
          ? _value.position
          // ignore: cast_nullable_to_non_nullable
          : position as Offset,
      score: score == const $CopyWithPlaceholder() || score == null
          ? _value.score
          // ignore: cast_nullable_to_non_nullable
          : score as int,
      size: size == const $CopyWithPlaceholder() || size == null
          ? _value.size
          // ignore: cast_nullable_to_non_nullable
          : size as Size,
    );
  }
}

extension $PongPlayerCopyWith on PongPlayer {
  /// Returns a callable class that can be used as follows: `instanceOfPongPlayer.copyWith(...)` or like so:`instanceOfPongPlayer.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PongPlayerCWProxy get copyWith => _$PongPlayerCWProxyImpl(this);
}
