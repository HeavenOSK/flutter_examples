import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ipad_ui/layers/dock_layer/dock_layer.dart';
import 'package:ipad_ui/layers/spring_board_layer/spring_board_layer.dart';

class IpadApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (_, child) {
        return Stack(
          children: [
            IgnorePointer(
              child: const SpringBoardLayer(),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Stack(
                children: [
                  if (child != null) child,
                  const DockLayer(),
                ],
              ),
            ),
          ],
        );
      },
      home: const SpringBoardLayer(),
    );
  }
}
