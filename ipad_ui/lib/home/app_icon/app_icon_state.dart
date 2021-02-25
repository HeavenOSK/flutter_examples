import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_icon_state.freezed.dart';

extension AppIconStateX on AppIconState {
  Offset get difference => currentPosition - startPosition;
}

@freezed
abstract class AppIconState with _$AppIconState {
  const factory AppIconState({
    required int index,
    required Offset startPosition,
    required Offset currentPosition,
  }) = _AppIconState;
}
