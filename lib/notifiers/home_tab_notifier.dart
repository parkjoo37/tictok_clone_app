import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tictok_clone_app/notifiers/home_notifier.dart';
import 'package:tictok_clone_app/utils/logger.dart';

part 'home_tab_notifier.g.dart';

@riverpod
class HomeTabNotifier extends _$HomeTabNotifier {
  final PageController pageController = PageController(initialPage: 2);

  final List<String> tabs = ['탐색', '팔로잉', '추천'];

  @override
  int build() {
    return 2;
  }

  changeTab(int index) {
    logger.d('changeTab: $index');

    state = index;
    pageController.jumpToPage(index);

    if (index == 0) {
      ref.read(homeNotifierProvider.notifier).changeDarkMode(false);
    } else {
      ref.read(homeNotifierProvider.notifier).changeDarkMode(true);
    }
  }
}
