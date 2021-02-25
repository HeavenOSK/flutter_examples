import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ipad_ui/home/home.dart';
import 'package:ipad_ui/home/home_state.dart';

class AppIcon extends HookWidget {
  const AppIcon({
    required this.index,
    required Key key,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(IPadUIHome.controller);
    final dragging = useProvider(
      IPadUIHome.controller.state.select(
        (s) => s.dragging(index),
      ),
    );
    return GestureDetector(
      onPanStart: (d) {
        controller.startDragging(index, d.globalPosition);
      },
      onPanUpdate: (d) {
        controller.updateDragging(d.globalPosition);
      },
      onPanEnd: (d) {
        controller.finishDragging();
      },
      child: Container(
        height: 68,
        width: 68,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(dragging ? 0.5 : 1),
          border: Border.all(
            width: 0,
            color: Colors.blue.withOpacity(
              0.7,
            ),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
