import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ipad_ui/apps/example_app.dart';
import 'package:ipad_ui/layers/app_sandbox/app_sandbox.dart';
import 'package:ipad_ui/layers/dock_layer/dock_layer.dart';

class NormalAppIcon extends HookWidget {
  const NormalAppIcon({Key? key}) : super(key: key);

  static double size = 68;

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(DockLayer.controller);
    return OpenContainer(
      closedShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(14),
        ),
      ),
      openBuilder: (c, action) {
        return Material(
          type: MaterialType.transparency,
          child: AppSandBox(
            app: ExampleApp(),
            closeAction: () {
              action();
              WidgetsBinding.instance?.addPostFrameCallback(
                (timeStamp) {
                  controller.open();
                },
              );
            },
          ),
        );
      },
      openElevation: 0,
      middleColor: Colors.transparent,
      closedColor: Colors.transparent,
      openColor: Colors.transparent,
      tappable: true,
      closedBuilder: (context, action) {
        return GestureDetector(
          onTap: () {
            action();
            WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
              controller.close();
            });
          },
          child: Container(
            height: size,
            width: size,
            decoration: const BoxDecoration(color: Colors.white),
            child: FractionallySizedBox(
              heightFactor: 0.68,
              widthFactor: 0.68,
              child: Image.asset(
                'images/ic_launcher.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        );
      },
    );
  }
}
