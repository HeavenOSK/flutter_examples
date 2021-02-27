import 'dart:ui';

import 'package:ipad_ui/layers/app_sandbox/state.dart';
import 'package:state_notifier/state_notifier.dart';

class AppSandboxController extends StateNotifier<AppSandboxState> {
  AppSandboxController() : super(const AppSandboxState.full());

  void updatePosition(Offset globalPosition) {
    state.when(
      full: () {
        state = AppSandboxState.holding(
          startPosition: globalPosition,
          currentPosition: globalPosition,
        );
      },
      holding: (s, c) {
        state = AppSandboxState.holding(
          startPosition: s,
          currentPosition: globalPosition,
        );
      },
      small: () {},
    );
  }

  void finish() {
    state = AppSandboxState.full();
  }
}
