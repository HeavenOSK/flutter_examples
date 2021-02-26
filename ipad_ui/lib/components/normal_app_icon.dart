import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:ipad_ui/apps/example_app.dart';
import 'package:ipad_ui/components/app_sandbox.dart';

class NormalAppIcon extends StatelessWidget {
  const NormalAppIcon({Key? key}) : super(key: key);

  static double size = 68;

  @override
  Widget build(BuildContext context) {
    return OpenContainer<dynamic>(
      closedShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(14),
        ),
      ),
      openBuilder: (c, action) {
        return AppSandBox(
          app: ExampleApp(),
          closeAction: action,
        );
      },
      middleColor: Colors.white,
      closedColor: Colors.white,
      openColor: Colors.white,
      tappable: true,
      closedBuilder: (context, action) {
        return Container(
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
        );
      },
    );
  }
}
