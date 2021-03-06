import 'package:bounding_box/bounding_box_controller.dart';
import 'package:bounding_box/expandable_circle/expandable_circle.dart';
import 'package:bounding_box/movable_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'bounding_box_state.dart';
import 'rotatable_circle.dart';

class BoundingBox extends HookWidget {
  const BoundingBox({Key? key}) : super(key: key);

  static final controller = StateNotifierProvider(
    (_) => BoundingBoxController(),
  );
  static const double barHeight = 40;

  @override
  Widget build(BuildContext context) {
    final size = useProvider(
      BoundingBox.controller.state.select(
        (s) => s.rect.size,
      ),
    );

    final radian = useProvider(
      BoundingBox.controller.state.select(
        (s) => s.radian,
      ),
    );

    return Transform.rotate(
      angle: radian,
      child: SizedBox(
        height: size.height,
        width: size.width,
        child: PortalEntry(
          visible: true,
          portalAnchor: Alignment.bottomCenter,
          childAnchor: Alignment.topCenter,
          portal: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const RotatableCircle(),
              Container(
                height: barHeight,
                width: 2,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent.withOpacity(0.3),
                  border: Border.all(
                    width: 0,
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
            ],
          ),
          child: Stack(
            children: [
              Center(
                child: MovableBox(size: size),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: ExpandableCircle(
                  position: ExpandableCirclePosition.topLeft,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: ExpandableCircle(
                  position: ExpandableCirclePosition.topRight,
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: ExpandableCircle(
                  position: ExpandableCirclePosition.bottomLeft,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: ExpandableCircle(
                  position: ExpandableCirclePosition.bottomRight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
