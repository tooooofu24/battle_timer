// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'play.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Play {
  int get playerSeconds => throw _privateConstructorUsedError;
  int get opponentSeconds => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  bool get isPlayerTurn => throw _privateConstructorUsedError;

  /// Create a copy of Play
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayCopyWith<Play> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayCopyWith<$Res> {
  factory $PlayCopyWith(Play value, $Res Function(Play) then) =
      _$PlayCopyWithImpl<$Res, Play>;
  @useResult
  $Res call(
      {int playerSeconds,
      int opponentSeconds,
      bool isPlaying,
      bool isPlayerTurn});
}

/// @nodoc
class _$PlayCopyWithImpl<$Res, $Val extends Play>
    implements $PlayCopyWith<$Res> {
  _$PlayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Play
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerSeconds = null,
    Object? opponentSeconds = null,
    Object? isPlaying = null,
    Object? isPlayerTurn = null,
  }) {
    return _then(_value.copyWith(
      playerSeconds: null == playerSeconds
          ? _value.playerSeconds
          : playerSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      opponentSeconds: null == opponentSeconds
          ? _value.opponentSeconds
          : opponentSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlayerTurn: null == isPlayerTurn
          ? _value.isPlayerTurn
          : isPlayerTurn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayImplCopyWith<$Res> implements $PlayCopyWith<$Res> {
  factory _$$PlayImplCopyWith(
          _$PlayImpl value, $Res Function(_$PlayImpl) then) =
      __$$PlayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int playerSeconds,
      int opponentSeconds,
      bool isPlaying,
      bool isPlayerTurn});
}

/// @nodoc
class __$$PlayImplCopyWithImpl<$Res>
    extends _$PlayCopyWithImpl<$Res, _$PlayImpl>
    implements _$$PlayImplCopyWith<$Res> {
  __$$PlayImplCopyWithImpl(_$PlayImpl _value, $Res Function(_$PlayImpl) _then)
      : super(_value, _then);

  /// Create a copy of Play
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerSeconds = null,
    Object? opponentSeconds = null,
    Object? isPlaying = null,
    Object? isPlayerTurn = null,
  }) {
    return _then(_$PlayImpl(
      playerSeconds: null == playerSeconds
          ? _value.playerSeconds
          : playerSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      opponentSeconds: null == opponentSeconds
          ? _value.opponentSeconds
          : opponentSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlayerTurn: null == isPlayerTurn
          ? _value.isPlayerTurn
          : isPlayerTurn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PlayImpl extends _Play {
  const _$PlayImpl(
      {required this.playerSeconds,
      required this.opponentSeconds,
      this.isPlaying = false,
      this.isPlayerTurn = true})
      : super._();

  @override
  final int playerSeconds;
  @override
  final int opponentSeconds;
  @override
  @JsonKey()
  final bool isPlaying;
  @override
  @JsonKey()
  final bool isPlayerTurn;

  @override
  String toString() {
    return 'Play(playerSeconds: $playerSeconds, opponentSeconds: $opponentSeconds, isPlaying: $isPlaying, isPlayerTurn: $isPlayerTurn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayImpl &&
            (identical(other.playerSeconds, playerSeconds) ||
                other.playerSeconds == playerSeconds) &&
            (identical(other.opponentSeconds, opponentSeconds) ||
                other.opponentSeconds == opponentSeconds) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.isPlayerTurn, isPlayerTurn) ||
                other.isPlayerTurn == isPlayerTurn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, playerSeconds, opponentSeconds, isPlaying, isPlayerTurn);

  /// Create a copy of Play
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayImplCopyWith<_$PlayImpl> get copyWith =>
      __$$PlayImplCopyWithImpl<_$PlayImpl>(this, _$identity);
}

abstract class _Play extends Play {
  const factory _Play(
      {required final int playerSeconds,
      required final int opponentSeconds,
      final bool isPlaying,
      final bool isPlayerTurn}) = _$PlayImpl;
  const _Play._() : super._();

  @override
  int get playerSeconds;
  @override
  int get opponentSeconds;
  @override
  bool get isPlaying;
  @override
  bool get isPlayerTurn;

  /// Create a copy of Play
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayImplCopyWith<_$PlayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
