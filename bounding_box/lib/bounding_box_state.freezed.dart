// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bounding_box_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BoundingBoxStateTearOff {
  const _$BoundingBoxStateTearOff();

  _BoundingBoxState call(
      {required Rect rawRect,
      double rawRadian = 0,
      required DraggingState movableBoxState,
      required ExpandableCircleState expandableCircleState,
      required DraggingState rotatableCircleState}) {
    return _BoundingBoxState(
      rawRect: rawRect,
      rawRadian: rawRadian,
      movableBoxState: movableBoxState,
      expandableCircleState: expandableCircleState,
      rotatableCircleState: rotatableCircleState,
    );
  }
}

/// @nodoc
const $BoundingBoxState = _$BoundingBoxStateTearOff();

/// @nodoc
mixin _$BoundingBoxState {
  Rect get rawRect;
  double get rawRadian;
  DraggingState get movableBoxState;
  ExpandableCircleState get expandableCircleState;
  DraggingState get rotatableCircleState;

  @JsonKey(ignore: true)
  $BoundingBoxStateCopyWith<BoundingBoxState> get copyWith;
}

/// @nodoc
abstract class $BoundingBoxStateCopyWith<$Res> {
  factory $BoundingBoxStateCopyWith(
          BoundingBoxState value, $Res Function(BoundingBoxState) then) =
      _$BoundingBoxStateCopyWithImpl<$Res>;
  $Res call(
      {Rect rawRect,
      double rawRadian,
      DraggingState movableBoxState,
      ExpandableCircleState expandableCircleState,
      DraggingState rotatableCircleState});

  $DraggingStateCopyWith<$Res> get movableBoxState;
  $ExpandableCircleStateCopyWith<$Res> get expandableCircleState;
  $DraggingStateCopyWith<$Res> get rotatableCircleState;
}

/// @nodoc
class _$BoundingBoxStateCopyWithImpl<$Res>
    implements $BoundingBoxStateCopyWith<$Res> {
  _$BoundingBoxStateCopyWithImpl(this._value, this._then);

  final BoundingBoxState _value;
  // ignore: unused_field
  final $Res Function(BoundingBoxState) _then;

  @override
  $Res call({
    Object? rawRect = freezed,
    Object? rawRadian = freezed,
    Object? movableBoxState = freezed,
    Object? expandableCircleState = freezed,
    Object? rotatableCircleState = freezed,
  }) {
    return _then(_value.copyWith(
      rawRect: rawRect == freezed ? _value.rawRect : rawRect as Rect,
      rawRadian: rawRadian == freezed ? _value.rawRadian : rawRadian as double,
      movableBoxState: movableBoxState == freezed
          ? _value.movableBoxState
          : movableBoxState as DraggingState,
      expandableCircleState: expandableCircleState == freezed
          ? _value.expandableCircleState
          : expandableCircleState as ExpandableCircleState,
      rotatableCircleState: rotatableCircleState == freezed
          ? _value.rotatableCircleState
          : rotatableCircleState as DraggingState,
    ));
  }

  @override
  $DraggingStateCopyWith<$Res> get movableBoxState {
    return $DraggingStateCopyWith<$Res>(_value.movableBoxState, (value) {
      return _then(_value.copyWith(movableBoxState: value));
    });
  }

  @override
  $ExpandableCircleStateCopyWith<$Res> get expandableCircleState {
    return $ExpandableCircleStateCopyWith<$Res>(_value.expandableCircleState,
        (value) {
      return _then(_value.copyWith(expandableCircleState: value));
    });
  }

  @override
  $DraggingStateCopyWith<$Res> get rotatableCircleState {
    return $DraggingStateCopyWith<$Res>(_value.rotatableCircleState, (value) {
      return _then(_value.copyWith(rotatableCircleState: value));
    });
  }
}

/// @nodoc
abstract class _$BoundingBoxStateCopyWith<$Res>
    implements $BoundingBoxStateCopyWith<$Res> {
  factory _$BoundingBoxStateCopyWith(
          _BoundingBoxState value, $Res Function(_BoundingBoxState) then) =
      __$BoundingBoxStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Rect rawRect,
      double rawRadian,
      DraggingState movableBoxState,
      ExpandableCircleState expandableCircleState,
      DraggingState rotatableCircleState});

  @override
  $DraggingStateCopyWith<$Res> get movableBoxState;
  @override
  $ExpandableCircleStateCopyWith<$Res> get expandableCircleState;
  @override
  $DraggingStateCopyWith<$Res> get rotatableCircleState;
}

/// @nodoc
class __$BoundingBoxStateCopyWithImpl<$Res>
    extends _$BoundingBoxStateCopyWithImpl<$Res>
    implements _$BoundingBoxStateCopyWith<$Res> {
  __$BoundingBoxStateCopyWithImpl(
      _BoundingBoxState _value, $Res Function(_BoundingBoxState) _then)
      : super(_value, (v) => _then(v as _BoundingBoxState));

  @override
  _BoundingBoxState get _value => super._value as _BoundingBoxState;

  @override
  $Res call({
    Object? rawRect = freezed,
    Object? rawRadian = freezed,
    Object? movableBoxState = freezed,
    Object? expandableCircleState = freezed,
    Object? rotatableCircleState = freezed,
  }) {
    return _then(_BoundingBoxState(
      rawRect: rawRect == freezed ? _value.rawRect : rawRect as Rect,
      rawRadian: rawRadian == freezed ? _value.rawRadian : rawRadian as double,
      movableBoxState: movableBoxState == freezed
          ? _value.movableBoxState
          : movableBoxState as DraggingState,
      expandableCircleState: expandableCircleState == freezed
          ? _value.expandableCircleState
          : expandableCircleState as ExpandableCircleState,
      rotatableCircleState: rotatableCircleState == freezed
          ? _value.rotatableCircleState
          : rotatableCircleState as DraggingState,
    ));
  }
}

/// @nodoc
class _$_BoundingBoxState implements _BoundingBoxState {
  const _$_BoundingBoxState(
      {required this.rawRect,
      this.rawRadian = 0,
      required this.movableBoxState,
      required this.expandableCircleState,
      required this.rotatableCircleState});

  @override
  final Rect rawRect;
  @JsonKey(defaultValue: 0)
  @override
  final double rawRadian;
  @override
  final DraggingState movableBoxState;
  @override
  final ExpandableCircleState expandableCircleState;
  @override
  final DraggingState rotatableCircleState;

  @override
  String toString() {
    return 'BoundingBoxState(rawRect: $rawRect, rawRadian: $rawRadian, movableBoxState: $movableBoxState, expandableCircleState: $expandableCircleState, rotatableCircleState: $rotatableCircleState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoundingBoxState &&
            (identical(other.rawRect, rawRect) ||
                const DeepCollectionEquality()
                    .equals(other.rawRect, rawRect)) &&
            (identical(other.rawRadian, rawRadian) ||
                const DeepCollectionEquality()
                    .equals(other.rawRadian, rawRadian)) &&
            (identical(other.movableBoxState, movableBoxState) ||
                const DeepCollectionEquality()
                    .equals(other.movableBoxState, movableBoxState)) &&
            (identical(other.expandableCircleState, expandableCircleState) ||
                const DeepCollectionEquality().equals(
                    other.expandableCircleState, expandableCircleState)) &&
            (identical(other.rotatableCircleState, rotatableCircleState) ||
                const DeepCollectionEquality()
                    .equals(other.rotatableCircleState, rotatableCircleState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rawRect) ^
      const DeepCollectionEquality().hash(rawRadian) ^
      const DeepCollectionEquality().hash(movableBoxState) ^
      const DeepCollectionEquality().hash(expandableCircleState) ^
      const DeepCollectionEquality().hash(rotatableCircleState);

  @JsonKey(ignore: true)
  @override
  _$BoundingBoxStateCopyWith<_BoundingBoxState> get copyWith =>
      __$BoundingBoxStateCopyWithImpl<_BoundingBoxState>(this, _$identity);
}

abstract class _BoundingBoxState implements BoundingBoxState {
  const factory _BoundingBoxState(
      {required Rect rawRect,
      double rawRadian,
      required DraggingState movableBoxState,
      required ExpandableCircleState expandableCircleState,
      required DraggingState rotatableCircleState}) = _$_BoundingBoxState;

  @override
  Rect get rawRect;
  @override
  double get rawRadian;
  @override
  DraggingState get movableBoxState;
  @override
  ExpandableCircleState get expandableCircleState;
  @override
  DraggingState get rotatableCircleState;
  @override
  @JsonKey(ignore: true)
  _$BoundingBoxStateCopyWith<_BoundingBoxState> get copyWith;
}
