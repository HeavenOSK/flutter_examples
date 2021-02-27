// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppSandboxStateTearOff {
  const _$AppSandboxStateTearOff();

  _Full full() {
    return const _Full();
  }

  _Holding holding(
      {required Offset startPosition, required Offset currentPosition}) {
    return _Holding(
      startPosition: startPosition,
      currentPosition: currentPosition,
    );
  }

  _Small small() {
    return const _Small();
  }
}

/// @nodoc
const $AppSandboxState = _$AppSandboxStateTearOff();

/// @nodoc
mixin _$AppSandboxState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() full,
    required TResult Function(Offset startPosition, Offset currentPosition)
        holding,
    required TResult Function() small,
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? full,
    TResult Function(Offset startPosition, Offset currentPosition)? holding,
    TResult Function()? small,
    required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Full value) full,
    required TResult Function(_Holding value) holding,
    required TResult Function(_Small value) small,
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Full value)? full,
    TResult Function(_Holding value)? holding,
    TResult Function(_Small value)? small,
    required TResult orElse(),
  });
}

/// @nodoc
abstract class $AppSandboxStateCopyWith<$Res> {
  factory $AppSandboxStateCopyWith(
          AppSandboxState value, $Res Function(AppSandboxState) then) =
      _$AppSandboxStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppSandboxStateCopyWithImpl<$Res>
    implements $AppSandboxStateCopyWith<$Res> {
  _$AppSandboxStateCopyWithImpl(this._value, this._then);

  final AppSandboxState _value;
  // ignore: unused_field
  final $Res Function(AppSandboxState) _then;
}

/// @nodoc
abstract class _$FullCopyWith<$Res> {
  factory _$FullCopyWith(_Full value, $Res Function(_Full) then) =
      __$FullCopyWithImpl<$Res>;
}

/// @nodoc
class __$FullCopyWithImpl<$Res> extends _$AppSandboxStateCopyWithImpl<$Res>
    implements _$FullCopyWith<$Res> {
  __$FullCopyWithImpl(_Full _value, $Res Function(_Full) _then)
      : super(_value, (v) => _then(v as _Full));

  @override
  _Full get _value => super._value as _Full;
}

/// @nodoc
class _$_Full implements _Full {
  const _$_Full();

  @override
  String toString() {
    return 'AppSandboxState.full()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Full);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() full,
    required TResult Function(Offset startPosition, Offset currentPosition)
        holding,
    required TResult Function() small,
  }) {
    return full();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? full,
    TResult Function(Offset startPosition, Offset currentPosition)? holding,
    TResult Function()? small,
    required TResult orElse(),
  }) {
    if (full != null) {
      return full();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Full value) full,
    required TResult Function(_Holding value) holding,
    required TResult Function(_Small value) small,
  }) {
    return full(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Full value)? full,
    TResult Function(_Holding value)? holding,
    TResult Function(_Small value)? small,
    required TResult orElse(),
  }) {
    if (full != null) {
      return full(this);
    }
    return orElse();
  }
}

abstract class _Full implements AppSandboxState {
  const factory _Full() = _$_Full;
}

/// @nodoc
abstract class _$HoldingCopyWith<$Res> {
  factory _$HoldingCopyWith(_Holding value, $Res Function(_Holding) then) =
      __$HoldingCopyWithImpl<$Res>;
  $Res call({Offset startPosition, Offset currentPosition});
}

/// @nodoc
class __$HoldingCopyWithImpl<$Res> extends _$AppSandboxStateCopyWithImpl<$Res>
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
    return 'AppSandboxState.holding(startPosition: $startPosition, currentPosition: $currentPosition)';
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
    required TResult Function() full,
    required TResult Function(Offset startPosition, Offset currentPosition)
        holding,
    required TResult Function() small,
  }) {
    return holding(startPosition, currentPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? full,
    TResult Function(Offset startPosition, Offset currentPosition)? holding,
    TResult Function()? small,
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
    required TResult Function(_Full value) full,
    required TResult Function(_Holding value) holding,
    required TResult Function(_Small value) small,
  }) {
    return holding(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Full value)? full,
    TResult Function(_Holding value)? holding,
    TResult Function(_Small value)? small,
    required TResult orElse(),
  }) {
    if (holding != null) {
      return holding(this);
    }
    return orElse();
  }
}

abstract class _Holding implements AppSandboxState {
  const factory _Holding(
      {required Offset startPosition,
      required Offset currentPosition}) = _$_Holding;

  Offset get startPosition;
  Offset get currentPosition;
  @JsonKey(ignore: true)
  _$HoldingCopyWith<_Holding> get copyWith;
}

/// @nodoc
abstract class _$SmallCopyWith<$Res> {
  factory _$SmallCopyWith(_Small value, $Res Function(_Small) then) =
      __$SmallCopyWithImpl<$Res>;
}

/// @nodoc
class __$SmallCopyWithImpl<$Res> extends _$AppSandboxStateCopyWithImpl<$Res>
    implements _$SmallCopyWith<$Res> {
  __$SmallCopyWithImpl(_Small _value, $Res Function(_Small) _then)
      : super(_value, (v) => _then(v as _Small));

  @override
  _Small get _value => super._value as _Small;
}

/// @nodoc
class _$_Small implements _Small {
  const _$_Small();

  @override
  String toString() {
    return 'AppSandboxState.small()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Small);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() full,
    required TResult Function(Offset startPosition, Offset currentPosition)
        holding,
    required TResult Function() small,
  }) {
    return small();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? full,
    TResult Function(Offset startPosition, Offset currentPosition)? holding,
    TResult Function()? small,
    required TResult orElse(),
  }) {
    if (small != null) {
      return small();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Full value) full,
    required TResult Function(_Holding value) holding,
    required TResult Function(_Small value) small,
  }) {
    return small(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Full value)? full,
    TResult Function(_Holding value)? holding,
    TResult Function(_Small value)? small,
    required TResult orElse(),
  }) {
    if (small != null) {
      return small(this);
    }
    return orElse();
  }
}

abstract class _Small implements AppSandboxState {
  const factory _Small() = _$_Small;
}
