import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dragging_state.freezed.dart';

@freezed
abstract class DraggingState with _$DraggingState {
  const factory DraggingState.waiting() = _Waiting;

  const factory DraggingState.dragging({
    required Offset startPosition,
    required Offset currentPosition,
  }) = _Dragging;
}
