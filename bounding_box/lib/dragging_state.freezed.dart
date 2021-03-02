// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'dragging_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DraggingStateTearOff {
  const _$DraggingStateTearOff();

  _Waiting waiting() {
    return const _Waiting();
  }

  _Dragging dragging(
      {required Offset startPosition, required Offset currentPosition}) {
    return _Dragging(
      startPosition: startPosition,
      currentPosition: currentPosition,
    );
  }
}

/// @nodoc
const $DraggingState = _$DraggingStateTearOff();

/// @nodoc
mixin _$DraggingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function(Offset startPosition, Offset currentPosition)
        dragging,
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function(Offset startPosition, Offset currentPosition)? dragging,
    required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Dragging value) dragging,
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Dragging value)? dragging,
    required TResult orElse(),
  });
}

/// @nodoc
abstract class $DraggingStateCopyWith<$Res> {
  factory $DraggingStateCopyWith(
          DraggingState value, $Res Function(DraggingState) then) =
      _$DraggingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DraggingStateCopyWithImpl<$Res>
    implements $DraggingStateCopyWith<$Res> {
  _$DraggingStateCopyWithImpl(this._value, this._then);

  final DraggingState _value;
  // ignore: unused_field
  final $Res Function(DraggingState) _then;
}

/// @nodoc
abstract class _$WaitingCopyWith<$Res> {
  factory _$WaitingCopyWith(_Waiting value, $Res Function(_Waiting) then) =
      __$WaitingCopyWithImpl<$Res>;
}

/// @nodoc
class __$WaitingCopyWithImpl<$Res> extends _$DraggingStateCopyWithImpl<$Res>
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
    return 'DraggingState.waiting()';
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
    required TResult Function(Offset startPosition, Offset currentPosition)
        dragging,
  }) {
    return waiting();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function(Offset startPosition, Offset currentPosition)? dragging,
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
    required TResult Function(_Dragging value) dragging,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Dragging value)? dragging,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class _Waiting implements DraggingState {
  const factory _Waiting() = _$_Waiting;
}

/// @nodoc
abstract class _$DraggingCopyWith<$Res> {
  factory _$DraggingCopyWith(_Dragging value, $Res Function(_Dragging) then) =
      __$DraggingCopyWithImpl<$Res>;
  $Res call({Offset startPosition, Offset currentPosition});
}

/// @nodoc
class __$DraggingCopyWithImpl<$Res> extends _$DraggingStateCopyWithImpl<$Res>
    implements _$DraggingCopyWith<$Res> {
  __$DraggingCopyWithImpl(_Dragging _value, $Res Function(_Dragging) _then)
      : super(_value, (v) => _then(v as _Dragging));

  @override
  _Dragging get _value => super._value as _Dragging;

  @override
  $Res call({
    Object? startPosition = freezed,
    Object? currentPosition = freezed,
  }) {
    return _then(_Dragging(
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
class _$_Dragging implements _Dragging {
  const _$_Dragging(
      {required this.startPosition, required this.currentPosition});

  @override
  final Offset startPosition;
  @override
  final Offset currentPosition;

  @override
  String toString() {
    return 'DraggingState.dragging(startPosition: $startPosition, currentPosition: $currentPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Dragging &&
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
      const DeepCollectionEquality().hash(startPosition) ^
      const DeepCollectionEquality().hash(currentPosition);

  @JsonKey(ignore: true)
  @override
  _$DraggingCopyWith<_Dragging> get copyWith =>
      __$DraggingCopyWithImpl<_Dragging>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function(Offset startPosition, Offset currentPosition)
        dragging,
  }) {
    return dragging(startPosition, currentPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function(Offset startPosition, Offset currentPosition)? dragging,
    required TResult orElse(),
  }) {
    if (dragging != null) {
      return dragging(startPosition, currentPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Dragging value) dragging,
  }) {
    return dragging(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Dragging value)? dragging,
    required TResult orElse(),
  }) {
    if (dragging != null) {
      return dragging(this);
    }
    return orElse();
  }
}

abstract class _Dragging implements DraggingState {
  const factory _Dragging(
      {required Offset startPosition,
      required Offset currentPosition}) = _$_Dragging;

  Offset get startPosition;
  Offset get currentPosition;
  @JsonKey(ignore: true)
  _$DraggingCopyWith<_Dragging> get copyWith;
}
