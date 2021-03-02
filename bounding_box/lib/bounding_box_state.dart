import 'dart:math';

import 'package:bounding_box/dragging_state.dart';
import 'package:bounding_box/expandable_circle/expandable_circle.dart';
import 'package:bounding_box/expandable_circle/expandable_circle_state.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bounding_box_state.freezed.dart';

extension BoundingBoxStateX on BoundingBoxState {
  bool get _moving {
    return movableBoxState.when(waiting: () => false, dragging: (s, c) => true);
  }

  bool get _expanding {
    return expandableCircleState.when(
      waiting: () => false,
      expanding: (p, s, c) => true,
    );
  }

  Rect get rect {
    if (_moving) {
      return movableBoxState.when(
        waiting: () {
          return rawRect;
        },
        dragging: (s, c) {
          final offset = rawRect.topLeft + (c - s);
          return Rect.fromLTWH(
            offset.dx,
            offset.dy,
            rawRect.size.width,
            rawRect.size.height,
          );
        },
      );
    }
    if (_expanding) {
      return expandableCircleState.when(
        waiting: () {
          return rawRect;
        },
        expanding: (p, s, c) {
          final diff = c - s;
          final currentTopLeft = rawRect.topLeft;
          final currentSize = rawRect.size;
          switch (p) {
            case ExpandableCirclePosition.topLeft:
              return Rect.fromLTWH(
                currentTopLeft.dx + diff.dx,
                currentTopLeft.dy + diff.dy,
                currentSize.width - diff.dx,
                currentSize.height - diff.dy,
              );
            case ExpandableCirclePosition.topRight:
              return Rect.fromLTWH(
                currentTopLeft.dx,
                currentTopLeft.dy + diff.dy,
                currentSize.width + diff.dx,
                currentSize.height - diff.dy,
              );
            case ExpandableCirclePosition.bottomLeft:
              return Rect.fromLTWH(
                currentTopLeft.dx + diff.dx,
                currentTopLeft.dy,
                currentSize.width - diff.dx,
                currentSize.height + diff.dy,
              );
            case ExpandableCirclePosition.bottomRight:
              return Rect.fromLTWH(
                currentTopLeft.dx,
                currentTopLeft.dy,
                currentSize.width + diff.dx,
                currentSize.height + diff.dy,
              );
          }
        },
      );
    }
    return rawRect;
  }

  bool get _rotating => rotatableCircleState.when(
        waiting: () => false,
        dragging: (s, c) => true,
      );

  double get radian {
    if (_rotating) {
      return rotatableCircleState.when(
        waiting: () => rawRadian,
        dragging: (s, c) {
          final diff = c - s;
          return rawRadian + pi * diff.dx / 500;
        },
      );
    }
    return rawRadian;
  }
}

@freezed
abstract class BoundingBoxState with _$BoundingBoxState {
  const factory BoundingBoxState({
    required Rect rawRect,
    @Default(0) double rawRadian,
    required DraggingState movableBoxState,
    required ExpandableCircleState expandableCircleState,
    required DraggingState rotatableCircleState,
  }) = _BoundingBoxState;
}
