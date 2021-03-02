import 'package:bounding_box/bounding_box.dart';
import 'package:bounding_box/dragging_state.dart';
import 'package:bounding_box/expandable_circle/expandable_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MovableBox extends HookWidget {
  const MovableBox({
    required this.size,
    Key? key,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(BoundingBox.controller);
    final state = useProvider(
      BoundingBox.controller.state.select(
        (s) => s.movableBoxState,
      ),
    );
    return GestureDetector(
      onPanStart: (d) {
        controller.move(
          DraggingState.dragging(
            startPosition: d.globalPosition,
            currentPosition: d.globalPosition,
          ),
        );
      },
      onPanUpdate: (d) {
        state.when(
          waiting: () {
            controller.move(
              DraggingState.dragging(
                startPosition: d.globalPosition,
                currentPosition: d.globalPosition,
              ),
            );
          },
          dragging: (s, c) {
            controller.move(
              DraggingState.dragging(
                startPosition: s,
                currentPosition: d.globalPosition,
              ),
            );
          },
        );
      },
      onPanEnd: (d) {
        controller.finishMoving();
      },
      child: Container(
        height: size.height - ExpandableCircle.size,
        width: size.width - ExpandableCircle.size,
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent.withOpacity(0.3),
          border: Border.all(
            color: Colors.lightBlueAccent,
          ),
        ),
      ),
    );
  }
}
