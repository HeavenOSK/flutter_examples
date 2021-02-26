import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class DockLayerState with _$DockLayerState {
  const factory DockLayerState.dismissed() = _Dismissed;

  const factory DockLayerState.holding({
    required Offset startPosition,
    required Offset currentPosition,
  }) = _Holding;

  const factory DockLayerState.opened() = _Opened;
}
