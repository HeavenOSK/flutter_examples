import 'package:flutter/material.dart';

class AppSandBox extends StatefulWidget {
  const AppSandBox({
    required this.app,
    required this.closeAction,
    Key? key,
  }) : super(key: key);

  final Widget app;
  final VoidCallback closeAction;

  @override
  _AppSandBoxState createState() => _AppSandBoxState();
}

class _AppSandBoxState extends State<AppSandBox> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: widget.app,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onPanEnd: (d) {
              if (d.velocity.pixelsPerSecond.dy < -100) {
                widget.closeAction();
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
