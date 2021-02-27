import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class AppSandboxState with _$AppSandboxState {
  const factory AppSandboxState.full() = _Full;

  const factory AppSandboxState.holding({
    required Offset startPosition,
    required Offset currentPosition,
  }) = _Holding;

  const factory AppSandboxState.small() = _Small;
}
