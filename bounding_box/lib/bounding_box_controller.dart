import 'package:bounding_box/bounding_box_state.dart';
import 'package:bounding_box/dragging_state.dart';
import 'package:bounding_box/expandable_circle/expandable_circle_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BoundingBoxController extends StateNotifier<BoundingBoxState> {
  BoundingBoxController()
      : super(
          BoundingBoxState(
            rawRect: Rect.fromLTWH(583, 414, 200, 200),
            movableBoxState: DraggingState.waiting(),
            rotatableCircleState: DraggingState.waiting(),
            expandableCircleState: ExpandableCircleState.waiting(),
          ),
        );

  void move(DraggingState movableBoxState) {
    state = state.copyWith(
      movableBoxState: movableBoxState,
    );
  }

  void finishMoving() {
    state.movableBoxState.when(
      waiting: () {},
      dragging: (s, c) {
        final diff = c - s;

        state = state.copyWith(
          rawRect: state.rawRect.shift(diff),
          movableBoxState: DraggingState.waiting(),
        );
      },
    );
  }

  void expand(ExpandableCircleState expandableCircleState) {
    state = state.copyWith(
      expandableCircleState: expandableCircleState,
    );
  }

  void finishExpanding() {
    state = state.copyWith(
      rawRect: state.rect,
      expandableCircleState: ExpandableCircleState.waiting(),
    );
  }

  void rotate(DraggingState rotatableCircleState) {
    state = state.copyWith(
      rotatableCircleState: rotatableCircleState,
    );
  }

  void finishRotating() {
    state.rotatableCircleState.when(
      waiting: () {},
      dragging: (s, c) {
        state = state.copyWith(
          rawRadian: state.radian,
          rotatableCircleState: DraggingState.waiting(),
        );
      },
    );
  }
}
