// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_icon_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppIconStateTearOff {
  const _$AppIconStateTearOff();

  _AppIconState call(
      {required int index,
      required Offset startPosition,
      required Offset currentPosition}) {
    return _AppIconState(
      index: index,
      startPosition: startPosition,
      currentPosition: currentPosition,
    );
  }
}

/// @nodoc
const $AppIconState = _$AppIconStateTearOff();

/// @nodoc
mixin _$AppIconState {
  int get index;
  Offset get startPosition;
  Offset get currentPosition;

  @JsonKey(ignore: true)
  $AppIconStateCopyWith<AppIconState> get copyWith;
}

/// @nodoc
abstract class $AppIconStateCopyWith<$Res> {
  factory $AppIconStateCopyWith(
          AppIconState value, $Res Function(AppIconState) then) =
      _$AppIconStateCopyWithImpl<$Res>;
  $Res call({int index, Offset startPosition, Offset currentPosition});
}

/// @nodoc
class _$AppIconStateCopyWithImpl<$Res> implements $AppIconStateCopyWith<$Res> {
  _$AppIconStateCopyWithImpl(this._value, this._then);

  final AppIconState _value;
  // ignore: unused_field
  final $Res Function(AppIconState) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? startPosition = freezed,
    Object? currentPosition = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed ? _value.index : index as int,
      startPosition: startPosition == freezed
          ? _value.startPosition
          : startPosition as Offset,
      currentPosition: currentPosition == freezed
          ? _value.currentPosition
          : currentPosition as Offset,
    ));
  }
}

/// @nodoc
abstract class _$AppIconStateCopyWith<$Res>
    implements $AppIconStateCopyWith<$Res> {
  factory _$AppIconStateCopyWith(
          _AppIconState value, $Res Function(_AppIconState) then) =
      __$AppIconStateCopyWithImpl<$Res>;
  @override
  $Res call({int index, Offset startPosition, Offset currentPosition});
}

/// @nodoc
class __$AppIconStateCopyWithImpl<$Res> extends _$AppIconStateCopyWithImpl<$Res>
    implements _$AppIconStateCopyWith<$Res> {
  __$AppIconStateCopyWithImpl(
      _AppIconState _value, $Res Function(_AppIconState) _then)
      : super(_value, (v) => _then(v as _AppIconState));

  @override
  _AppIconState get _value => super._value as _AppIconState;

  @override
  $Res call({
    Object? index = freezed,
    Object? startPosition = freezed,
    Object? currentPosition = freezed,
  }) {
    return _then(_AppIconState(
      index: index == freezed ? _value.index : index as int,
      startPosition: startPosition == freezed
          ? _value.startPosition
          : startPosition as Offset,
      currentPosition: currentPosition == freezed
          ? _value.currentPosition
          : currentPosition as Offset,
    ));
  }
}

/// @nodoc
class _$_AppIconState implements _AppIconState {
  const _$_AppIconState(
      {required this.index,
      required this.startPosition,
      required this.currentPosition});

  @override
  final int index;
  @override
  final Offset startPosition;
  @override
  final Offset currentPosition;

  @override
  String toString() {
    return 'AppIconState(index: $index, startPosition: $startPosition, currentPosition: $currentPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppIconState &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.startPosition, startPosition) ||
                const DeepCollectionEquality()
                    .equals(other.startPosition, startPosition)) &&
            (identical(other.currentPosition, currentPosition) ||
                const DeepCollectionEquality()
                    .equals(other.currentPosition, currentPosition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(startPosition) ^
      const DeepCollectionEquality().hash(currentPosition);

  @JsonKey(ignore: true)
  @override
  _$AppIconStateCopyWith<_AppIconState> get copyWith =>
      __$AppIconStateCopyWithImpl<_AppIconState>(this, _$identity);
}

abstract class _AppIconState implements AppIconState {
  const factory _AppIconState(
      {required int index,
      required Offset startPosition,
      required Offset currentPosition}) = _$_AppIconState;

  @override
  int get index;
  @override
  Offset get startPosition;
  @override
  Offset get currentPosition;
  @override
  @JsonKey(ignore: true)
  _$AppIconStateCopyWith<_AppIconState> get copyWith;
}
