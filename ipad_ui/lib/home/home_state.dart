import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ipad_ui/home/app_icon/app_icon_state.dart';

part 'home_state.freezed.dart';

extension HomeStateX on HomeState {
  bool dragging(int index) => draggingAppIconState?.index == index;
  bool get draggingAny => draggingAppIconState != null;
}

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    AppIconState? draggingAppIconState,
  }) = _HomeState;
}
