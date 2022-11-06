// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pong_ball.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PongBallCWProxy {
  PongBall direction(Alignment direction);

  PongBall position(Offset position);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PongBall(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PongBall(...).copyWith(id: 12, name: "My name")
  /// ````
  PongBall call({
    Alignment? direction,
    Offset? position,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPongBall.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPongBall.copyWith.fieldName(...)`
class _$PongBallCWProxyImpl implements _$PongBallCWProxy {
  final PongBall _value;

  const _$PongBallCWProxyImpl(this._value);

  @override
  PongBall direction(Alignment direction) => this(direction: direction);

  @override
  PongBall position(Offset position) => this(position: position);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PongBall(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PongBall(...).copyWith(id: 12, name: "My name")
  /// ````
  PongBall call({
    Object? direction = const $CopyWithPlaceholder(),
    Object? position = const $CopyWithPlaceholder(),
  }) {
    return PongBall(
      direction: direction == const $CopyWithPlaceholder() || direction == null
          ? _value.direction
          // ignore: cast_nullable_to_non_nullable
          : direction as Alignment,
      position: position == const $CopyWithPlaceholder() || position == null
          ? _value.position
          // ignore: cast_nullable_to_non_nullable
          : position as Offset,
    );
  }
}

extension $PongBallCopyWith on PongBall {
  /// Returns a callable class that can be used as follows: `instanceOfPongBall.copyWith(...)` or like so:`instanceOfPongBall.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PongBallCWProxy get copyWith => _$PongBallCWProxyImpl(this);
}
