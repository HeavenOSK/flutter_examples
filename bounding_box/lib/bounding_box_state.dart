import 'dart:math' as math;

import 'package:bounding_box/dragging_state.dart';
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
        expanding: (positionType, startPos, currentPos) {
          final diff = currentPos - startPos; // TODO(heavenOSK): ポジションごとのものを作る
          final nextOffset = rawRect.topLeft - diff / 2;
          final sin = math.sin(-rawRadian);
          final cos = math.cos(-rawRadian);
          final up = Offset(
                diff.dx * cos - diff.dy * sin,
                diff.dx * sin + diff.dy * cos,
              ) *
              2;
          final newSize = rawRect.size +
              Offset(
                    diff.dx * cos - diff.dy * sin,
                    diff.dx * sin + diff.dy * cos,
                  ) *
                  2;
          return Rect.fromLTWH(
            nextOffset.dx,
            nextOffset.dy,
            rawRect.width - up.dx,
            rawRect.height - up.dy,
          );
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
        dragging: (_, currentPosition) {
          final center = rawRect.center;
          final diff = currentPosition - center;

          return math.atan2(diff.dx, -diff.dy);
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
