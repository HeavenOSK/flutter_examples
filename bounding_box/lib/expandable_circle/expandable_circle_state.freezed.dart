// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'expandable_circle_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExpandableCircleStateTearOff {
  const _$ExpandableCircleStateTearOff();

  _Waiting waiting() {
    return const _Waiting();
  }

  _Expanding expanding(
      {required ExpandableCirclePosition position,
      required Offset startPosition,
      required Offset currentPosition}) {
    return _Expanding(
      position: position,
      startPosition: startPosition,
      currentPosition: currentPosition,
    );
  }
}

/// @nodoc
const $ExpandableCircleState = _$ExpandableCircleStateTearOff();

/// @nodoc
mixin _$ExpandableCircleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function(ExpandableCirclePosition position,
            Offset startPosition, Offset currentPosition)
        expanding,
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function(ExpandableCirclePosition position, Offset startPosition,
            Offset currentPosition)?
        expanding,
    required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Expanding value) expanding,
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Expanding value)? expanding,
    required TResult orElse(),
  });
}

/// @nodoc
abstract class $ExpandableCircleStateCopyWith<$Res> {
  factory $ExpandableCircleStateCopyWith(ExpandableCircleState value,
          $Res Function(ExpandableCircleState) then) =
      _$ExpandableCircleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExpandableCircleStateCopyWithImpl<$Res>
    implements $ExpandableCircleStateCopyWith<$Res> {
  _$ExpandableCircleStateCopyWithImpl(this._value, this._then);

  final ExpandableCircleState _value;
  // ignore: unused_field
  final $Res Function(ExpandableCircleState) _then;
}

/// @nodoc
abstract class _$WaitingCopyWith<$Res> {
  factory _$WaitingCopyWith(_Waiting value, $Res Function(_Waiting) then) =
      __$WaitingCopyWithImpl<$Res>;
}

/// @nodoc
class __$WaitingCopyWithImpl<$Res>
    extends _$ExpandableCircleStateCopyWithImpl<$Res>
    implements _$WaitingCopyWith<$Res> {
  __$WaitingCopyWithImpl(_Waiting _value, $Res Function(_Waiting) _then)
      : super(_value, (v) => _then(v as _Waiting));

  @override
  _Waiting get _value => super._value as _Waiting;
}

/// @nodoc
class _$_Waiting implements _Waiting {
  const _$_Waiting();

  @override
  String toString() {
    return 'ExpandableCircleState.waiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Waiting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function(ExpandableCirclePosition position,
            Offset startPosition, Offset currentPosition)
        expanding,
  }) {
    return waiting();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function(ExpandableCirclePosition position, Offset startPosition,
            Offset currentPosition)?
        expanding,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Expanding value) expanding,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Expanding value)? expanding,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class _Waiting implements ExpandableCircleState {
  const factory _Waiting() = _$_Waiting;
}

/// @nodoc
abstract class _$ExpandingCopyWith<$Res> {
  factory _$ExpandingCopyWith(
          _Expanding value, $Res Function(_Expanding) then) =
      __$ExpandingCopyWithImpl<$Res>;
  $Res call(
      {ExpandableCirclePosition position,
      Offset startPosition,
      Offset currentPosition});
}

/// @nodoc
class __$ExpandingCopyWithImpl<$Res>
    extends _$ExpandableCircleStateCopyWithImpl<$Res>
    implements _$ExpandingCopyWith<$Res> {
  __$ExpandingCopyWithImpl(_Expanding _value, $Res Function(_Expanding) _then)
      : super(_value, (v) => _then(v as _Expanding));

  @override
  _Expanding get _value => super._value as _Expanding;

  @override
  $Res call({
    Object? position = freezed,
    Object? startPosition = freezed,
    Object? currentPosition = freezed,
  }) {
    return _then(_Expanding(
      position: position == freezed
          ? _value.position
          : position as ExpandableCirclePosition,
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
class _$_Expanding implements _Expanding {
  const _$_Expanding(
      {required this.position,
      required this.startPosition,
      required this.currentPosition});

  @override
  final ExpandableCirclePosition position;
  @override
  final Offset startPosition;
  @override
  final Offset currentPosition;

  @override
  String toString() {
    return 'ExpandableCircleState.expanding(position: $position, startPosition: $startPosition, currentPosition: $currentPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Expanding &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
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
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(startPosition) ^
      const DeepCollectionEquality().hash(currentPosition);

  @JsonKey(ignore: true)
  @override
  _$ExpandingCopyWith<_Expanding> get copyWith =>
      __$ExpandingCopyWithImpl<_Expanding>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function(ExpandableCirclePosition position,
            Offset startPosition, Offset currentPosition)
        expanding,
  }) {
    return expanding(position, startPosition, currentPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function(ExpandableCirclePosition position, Offset startPosition,
            Offset currentPosition)?
        expanding,
    required TResult orElse(),
  }) {
    if (expanding != null) {
      return expanding(position, startPosition, currentPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Expanding value) expanding,
  }) {
    return expanding(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Expanding value)? expanding,
    required TResult orElse(),
  }) {
    if (expanding != null) {
      return expanding(this);
    }
    return orElse();
  }
}

abstract class _Expanding implements ExpandableCircleState {
  const factory _Expanding(
      {required ExpandableCirclePosition position,
      required Offset startPosition,
      required Offset currentPosition}) = _$_Expanding;

  ExpandableCirclePosition get position;
  Offset get startPosition;
  Offset get currentPosition;
  @JsonKey(ignore: true)
  _$ExpandingCopyWith<_Expanding> get copyWith;
}
