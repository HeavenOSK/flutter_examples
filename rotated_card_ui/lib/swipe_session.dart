import 'package:flutter/material.dart';

class SwipeSession {
  const SwipeSession({
    this.startPosition,
    this.currentPosition,
    this.localPosition,
  });

  final Offset startPosition;
  final Offset currentPosition;
  final Offset localPosition;

  @override
  bool operator ==(Object other) =>
      other is SwipeSession &&
      startPosition == other.startPosition &&
      currentPosition == other.currentPosition &&
      localPosition == other.localPosition;

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      startPosition.hashCode ^
      currentPosition.hashCode ^
      localPosition.hashCode;

  @override
  String toString() => '$SwipeSession('
      'startPosition:$startPosition,'
      'currentPosition:$currentPosition,'
      'localPosition:$localPosition'
      ')';

  SwipeSession copyWith({
    Offset startPosition,
    Offset currentPosition,
    Offset localPosition,
  }) =>
      SwipeSession(
        startPosition: startPosition ?? this.startPosition,
        currentPosition: currentPosition ?? this.currentPosition,
        localPosition: localPosition ?? this.localPosition,
      );

  Offset get difference {
    if (currentPosition == null || startPosition == null) {
      return Offset.zero;
    }
    return currentPosition - startPosition;
  }
}
