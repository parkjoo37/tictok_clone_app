import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictok_clone_app/models/short.dart';

part 'home_tab_state.freezed.dart';

@freezed
abstract class HomeTabState with _$HomeTabState {
  factory HomeTabState({
    @Default(2) int currentIndex,
    @Default([]) List<Short> shortList,
  }) = _HomeTabState;
}
