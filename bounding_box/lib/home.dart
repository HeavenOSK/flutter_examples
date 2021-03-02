import 'package:bounding_box/bounding_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'bounding_box_state.dart';

class Home extends HookWidget {
  const Home();

  @override
  Widget build(BuildContext context) {
    final offset = useProvider(
      BoundingBox.controller.state.select(
        (state) {
          return state.rect.topLeft;
        },
      ),
    );
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: offset.dy,
            left: offset.dx,
            child: BoundingBox(),
          ),
        ],
      ),
    );
  }
}
