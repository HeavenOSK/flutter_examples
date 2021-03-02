import 'package:bounding_box/expandable_circle/expandable_circle.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expandable_circle_state.freezed.dart';

@freezed
abstract class ExpandableCircleState with _$ExpandableCircleState {
  const factory ExpandableCircleState.waiting() = _Waiting;

  const factory ExpandableCircleState.expanding({
    required ExpandableCirclePosition position,
    required Offset startPosition,
    required Offset currentPosition,
  }) = _Expanding;
}
