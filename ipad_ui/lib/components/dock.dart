import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ipad_ui/components/normal_app_icon.dart';

class Dock extends StatelessWidget {
  const Dock({Key? key}) : super(key: key);

  static const double width = 560;
  static const double height = 108;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.7),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(0, 1),
                blurRadius: 8,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < 6; i++) NormalAppIcon(),
            ],
          ),
        ),
      ),
    );
  }
}
