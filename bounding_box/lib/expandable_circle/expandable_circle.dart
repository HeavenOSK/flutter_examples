import 'package:bounding_box/bounding_box.dart';
import 'package:bounding_box/expandable_circle/expandable_circle_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum ExpandableCirclePosition {
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
}

class ExpandableCircle extends HookWidget {
  const ExpandableCircle({
    required this.position,
    Key? key,
  }) : super(key: key);

  final ExpandableCirclePosition position;
  static const double size = 28;

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(BoundingBox.controller);
    final state = useProvider(
      BoundingBox.controller.state.select(
        (s) => s.expandableCircleState,
      ),
    );
    return GestureDetector(
      onPanStart: (d) {
        controller.expand(
          ExpandableCircleState.expanding(
            position: position,
            startPosition: d.globalPosition,
            currentPosition: d.globalPosition,
          ),
        );
      },
      onPanUpdate: (d) {
        state.when(
          waiting: () {
            controller.expand(
              ExpandableCircleState.expanding(
                position: position,
                startPosition: d.globalPosition,
                currentPosition: d.globalPosition,
              ),
            );
          },
          expanding: (p, s, c) {
            controller.expand(
              ExpandableCircleState.expanding(
                position: p,
                startPosition: s,
                currentPosition: d.globalPosition,
              ),
            );
          },
        );
      },
      onPanEnd: (d) {
        controller.finishExpanding();
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
