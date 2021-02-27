import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ipad_ui/layers/app_sandbox/controller.dart';
import 'package:ipad_ui/layers/dock_layer/dock_layer.dart';

class AppSandBox extends HookWidget {
  const AppSandBox({
    required this.app,
    required this.closeAction,
    Key? key,
  }) : super(key: key);

  final Widget app;
  final VoidCallback closeAction;

  static final controller = StateNotifierProvider(
    (_) => AppSandboxController(),
  );

  @override
  Widget build(BuildContext context) {
    final dockLayerController = useProvider(DockLayer.controller);
    final controller = useProvider(AppSandBox.controller);
    final padding = useProvider<double>(
      AppSandBox.controller.state.select(
        (s) {
          return s.when(
            full: () {
              return 0;
            },
            holding: (s, c) {
              final padding =
                  max<double>((c - s).dy.abs() - DockLayer.allHeight, 0);
              return min<double>(padding, 300);
            },
            small: () {
              return 0;
            },
          );
        },
      ),
    );

    final ratio = MediaQuery.of(context).devicePixelRatio;
    return Padding(
      padding: EdgeInsets.only(
        top: padding * 0.3,
        bottom: padding * 0.7,
        left: padding * 0.7,
        right: padding * 0.01,
      ),
      child: Center(
        child: Stack(
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
                  controller.updatePosition(
                    d.globalPosition,
                  );
                },
                onPanUpdate: (d) {
                  dockLayerController.updateDragging(
                    d.globalPosition,
                  );
                  controller.updatePosition(
                    d.globalPosition,
                  );
                },
                onPanEnd: (d) {
                  dockLayerController.finishDragging();
                  // return;
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
        ),
      ),
    );
  }
}
