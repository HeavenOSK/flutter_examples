import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ipad_ui/home/app_icon/app_icon_state.dart';
import 'package:ipad_ui/home/home_state.dart';

class HomeController extends StateNotifier<HomeState> {
  HomeController() : super(const HomeState());

  void startDragging(int index, Offset position) {
    state = state.copyWith(
      draggingAppIconState: AppIconState(
        index: index,
        startPosition: position,
        currentPosition: position,
      ),
    );
  }

  void updateDragging(Offset position) {
    final currentIconState = state.draggingAppIconState;
    if (currentIconState == null) {
      return;
    }
    state = state.copyWith(
      draggingAppIconState: currentIconState.copyWith(
        currentPosition: position,
      ),
    );
  }

  void finishDragging() {
    state = state.copyWith(
      draggingAppIconState: null,
    );
  }
}
