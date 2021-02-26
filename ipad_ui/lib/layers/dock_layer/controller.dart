import 'package:flutter/material.dart';
import 'package:ipad_ui/layers/dock_layer/state.dart';
import 'package:state_notifier/state_notifier.dart';

import 'dock_layer.dart';

class DockLayerController extends StateNotifier<DockLayerState> {
  DockLayerController() : super(const DockLayerState.opened());

  void open() {
    state = const DockLayerState.opened();
  }

  void close() {
    state = const DockLayerState.dismissed();
  }

  void updateDragging(Offset globalPosition) {
    state.when(
      dismissed: () {
        state = DockLayerState.holding(
          startPosition: globalPosition,
          currentPosition: globalPosition,
        );
      },
      holding: (startPosition, _) {
        state = DockLayerState.holding(
          startPosition: startPosition,
          currentPosition: globalPosition,
        );
      },
      opened: () {
        // no op
      },
    );
  }

  void finishDragging() {
    state.when(
      dismissed: () {
        // no op
      },
      holding: (startPosition, currentPosition) {
        if ((currentPosition - startPosition).dy.abs() >=
            DockLayer.allHeight * 0.25) {
          state = const DockLayerState.opened();
        } else {
          state = const DockLayerState.dismissed();
        }
      },
      opened: () {
        // no op
      },
    );
  }
}
