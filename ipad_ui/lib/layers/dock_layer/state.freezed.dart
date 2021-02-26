// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DockLayerStateTearOff {
  const _$DockLayerStateTearOff();

  _Dismissed dismissed() {
    return const _Dismissed();
  }

  _Holding holding(
      {required Offset startPosition, required Offset currentPosition}) {
    return _Holding(
      startPosition: startPosition,
      currentPosition: currentPosition,
    );
  }

  _Opened opened() {
    return const _Opened();
  }
}

/// @nodoc
const $DockLayerState = _$DockLayerStateTearOff();

/// @nodoc
mixin _$DockLayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dismissed,
    required TResult Function(Offset startPosition, Offset currentPosition)
        holding,
    required TResult Function() opened,
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dismissed,
    TResult Function(Offset startPosition, Offset currentPosition)? holding,
    TResult Function()? opened,
    required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Dismissed value) dismissed,
    required TResult Function(_Holding value) holding,
    required TResult Function(_Opened value) opened,
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Dismissed value)? dismissed,
    TResult Function(_Holding value)? holding,
    TResult Function(_Opened value)? opened,
    required TResult orElse(),
  });
}

/// @nodoc
abstract class $DockLayerStateCopyWith<$Res> {
  factory $DockLayerStateCopyWith(
          DockLayerState value, $Res Function(DockLayerState) then) =
      _$DockLayerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DockLayerStateCopyWithImpl<$Res>
    implements $DockLayerStateCopyWith<$Res> {
  _$DockLayerStateCopyWithImpl(this._value, this._then);

  final DockLayerState _value;
  // ignore: unused_field
  final $Res Function(DockLayerState) _then;
}

/// @nodoc
abstract class _$DismissedCopyWith<$Res> {
  factory _$DismissedCopyWith(
          _Dismissed value, $Res Function(_Dismissed) then) =
      __$DismissedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DismissedCopyWithImpl<$Res> extends _$DockLayerStateCopyWithImpl<$Res>
    implements _$DismissedCopyWith<$Res> {
  __$DismissedCopyWithImpl(_Dismissed _value, $Res Function(_Dismissed) _then)
      : super(_value, (v) => _then(v as _Dismissed));

  @override
  _Dismissed get _value => super._value as _Dismissed;
}

/// @nodoc
class _$_Dismissed implements _Dismissed {
  const _$_Dismissed();

  @override
  String toString() {
    return 'DockLayerState.dismissed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Dismissed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dismissed,
    required TResult Function(Offset startPosition, Offset currentPosition)
        holding,
    required TResult Function() opened,
  }) {
    return dismissed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dismissed,
    TResult Function(Offset startPosition, Offset currentPosition)? holding,
    TResult Function()? opened,
    required TResult orElse(),
  }) {
    if (dismissed != null) {
      return dismissed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Dismissed value) dismissed,
    required TResult Function(_Holding value) holding,
    required TResult Function(_Opened value) opened,
  }) {
    return dismissed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Dismissed value)? dismissed,
    TResult Function(_Holding value)? holding,
    TResult Function(_Opened value)? opened,
    required TResult orElse(),
  }) {
    if (dismissed != null) {
      return dismissed(this);
    }
    return orElse();
  }
}

abstract class _Dismissed implements DockLayerState {
  const factory _Dismissed() = _$_Dismissed;
}

/// @nodoc
abstract class _$HoldingCopyWith<$Res> {
  factory _$HoldingCopyWith(_Holding value, $Res Function(_Holding) then) =
      __$HoldingCopyWithImpl<$Res>;
  $Res call({Offset startPosition, Offset currentPosition});
}

/// @nodoc
class __$HoldingCopyWithImpl<$Res> extends _$DockLayerStateCopyWithImpl<$Res>
    implements _$HoldingCopyWith<$Res> {
  __$HoldingCopyWithImpl(_Holding _value, $Res Function(_Holding) _then)
      : super(_value, (v) => _then(v as _Holding));

  @override
  _Holding get _value => super._value as _Holding;

  @override
  $Res call({
    Object? startPosition = freezed,
    Object? currentPosition = freezed,
  }) {
    return _then(_Holding(
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
class _$_Holding implements _Holding {
  const _$_Holding(
      {required this.startPosition, required this.currentPosition});

  @override
  final Offset startPosition;
  @override
  final Offset currentPosition;

  @override
  String toString() {
    return 'DockLayerState.holding(startPosition: $startPosition, currentPosition: $currentPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Holding &&
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
  _$HoldingCopyWith<_Holding> get copyWith =>
      __$HoldingCopyWithImpl<_Holding>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dismissed,
    required TResult Function(Offset startPosition, Offset currentPosition)
        holding,
    required TResult Function() opened,
  }) {
    return holding(startPosition, currentPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dismissed,
    TResult Function(Offset startPosition, Offset currentPosition)? holding,
    TResult Function()? opened,
    required TResult orElse(),
  }) {
    if (holding != null) {
      return holding(startPosition, currentPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Dismissed value) dismissed,
    required TResult Function(_Holding value) holding,
    required TResult Function(_Opened value) opened,
  }) {
    return holding(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Dismissed value)? dismissed,
    TResult Function(_Holding value)? holding,
    TResult Function(_Opened value)? opened,
    required TResult orElse(),
  }) {
    if (holding != null) {
      return holding(this);
    }
    return orElse();
  }
}

abstract class _Holding implements DockLayerState {
  const factory _Holding(
      {required Offset startPosition,
      required Offset currentPosition}) = _$_Holding;

  Offset get startPosition;
  Offset get currentPosition;
  @JsonKey(ignore: true)
  _$HoldingCopyWith<_Holding> get copyWith;
}

/// @nodoc
abstract class _$OpenedCopyWith<$Res> {
  factory _$OpenedCopyWith(_Opened value, $Res Function(_Opened) then) =
      __$OpenedCopyWithImpl<$Res>;
}

/// @nodoc
class __$OpenedCopyWithImpl<$Res> extends _$DockLayerStateCopyWithImpl<$Res>
    implements _$OpenedCopyWith<$Res> {
  __$OpenedCopyWithImpl(_Opened _value, $Res Function(_Opened) _then)
      : super(_value, (v) => _then(v as _Opened));

  @override
  _Opened get _value => super._value as _Opened;
}

/// @nodoc
class _$_Opened implements _Opened {
  const _$_Opened();

  @override
  String toString() {
    return 'DockLayerState.opened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Opened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dismissed,
    required TResult Function(Offset startPosition, Offset currentPosition)
        holding,
    required TResult Function() opened,
  }) {
    return opened();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dismissed,
    TResult Function(Offset startPosition, Offset currentPosition)? holding,
    TResult Function()? opened,
    required TResult orElse(),
  }) {
    if (opened != null) {
      return opened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Dismissed value) dismissed,
    required TResult Function(_Holding value) holding,
    required TResult Function(_Opened value) opened,
  }) {
    return opened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Dismissed value)? dismissed,
    TResult Function(_Holding value)? holding,
    TResult Function(_Opened value)? opened,
    required TResult orElse(),
  }) {
    if (opened != null) {
      return opened(this);
    }
    return orElse();
  }
}

abstract class _Opened implements DockLayerState {
  const factory _Opened() = _$_Opened;
}
