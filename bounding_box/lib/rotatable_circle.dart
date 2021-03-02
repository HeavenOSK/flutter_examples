import 'package:bounding_box/bounding_box.dart';
import 'package:bounding_box/dragging_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RotatableCircle extends HookWidget {
  const RotatableCircle({
    Key? key,
  }) : super(key: key);

  static const double size = 28;

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(BoundingBox.controller);
    final state = useProvider(
      BoundingBox.controller.state.select(
        (s) => s.rotatableCircleState,
      ),
    );

    return GestureDetector(
      onPanStart: (d) {
        controller.rotate(
          DraggingState.dragging(
            startPosition: d.globalPosition,
            currentPosition: d.globalPosition,
          ),
        );
      },
      onPanUpdate: (d) {
        state.when(
          waiting: () {
            controller.rotate(
              DraggingState.dragging(
                startPosition: d.globalPosition,
                currentPosition: d.globalPosition,
              ),
            );
          },
          dragging: (s, c) {
            controller.rotate(
              DraggingState.dragging(
                startPosition: s,
                currentPosition: d.globalPosition,
              ),
            );
          },
        );
      },
      onPanEnd: (d) {
        controller.finishRotating();
      },
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.lightBlueAccent,
          ),
          borderRadius: BorderRadius.circular(
            size,
          ),
        ),
      ),
    );
  }
}
