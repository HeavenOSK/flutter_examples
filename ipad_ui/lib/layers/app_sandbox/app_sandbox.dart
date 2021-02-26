import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ipad_ui/layers/dock_layer/dock_layer.dart';

class AppSandBox extends HookWidget {
  const AppSandBox({
    required this.app,
    required this.closeAction,
    Key? key,
  }) : super(key: key);

  final Widget app;
  final VoidCallback closeAction;

  @override
  Widget build(BuildContext context) {
    final dockLayerController = useProvider(DockLayer.controller);
    return Stack(
      children: [
        Positioned.fill(
          child: app,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onPanStart: (d) {
              dockLayerController.updateDragging(
                d.globalPosition,
              );
            },
            onPanUpdate: (d) {
              dockLayerController.updateDragging(
                d.globalPosition,
              );
            },
            onPanEnd: (d) {
              dockLayerController.finishDragging();
              if (d.velocity.pixelsPerSecond.dy < -100) {
                closeAction();
              }
            },
            child: Container(
              color: Colors.red.withOpacity(1),
              height: 100,
              width: double.infinity,
            ),
          ),
        )
      ],
    );
  }
}
