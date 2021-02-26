import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ipad_ui/components/dock.dart';
import 'package:ipad_ui/layers/dock_layer/controller.dart';

class DockLayer extends HookWidget {
  const DockLayer({Key? key}) : super(key: key);

  static final controller = StateNotifierProvider(
    (_) => DockLayerController(),
  );

  static const double bottomPadding = 24;

  static double get allHeight => Dock.height + bottomPadding;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final bottomOffset = useProvider<double>(
      DockLayer.controller.state.select(
        (s) {
          return s.when(
            dismissed: () => -allHeight,
            holding: (s, c) {
              final currentDiff = (c - s).dy.abs();
              return -allHeight + math.min(currentDiff, allHeight);
            },
            opened: () => 0,
          );
        },
      ),
    );
    return Positioned(
      bottom: bottomOffset,
      left: (deviceSize.width - Dock.width) / 2,
      child: const Padding(
        padding: EdgeInsets.only(
          bottom: DockLayer.bottomPadding,
        ),
        child: Dock(),
      ),
    );
  }
}
