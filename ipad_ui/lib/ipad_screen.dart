import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ipad_ui/layers/dock_layer/dock_layer.dart';
import 'package:ipad_ui/layers/spring_board_layer/spring_board_layer.dart';

class IpadScreen extends HookWidget {
  const IpadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SpringBoardLayer(),
          DockLayer(),
        ],
      ),
    );
  }
}
