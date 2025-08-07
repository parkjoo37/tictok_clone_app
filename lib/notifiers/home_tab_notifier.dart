import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tictok_clone_app/models/home_tab_state.dart';
import 'package:tictok_clone_app/models/short.dart';
import 'package:tictok_clone_app/notifiers/home_notifier.dart';
import 'package:tictok_clone_app/repositories/home_tab_repository.dart';
import 'package:tictok_clone_app/services/home_tab_service.dart';
import 'package:tictok_clone_app/utils/logger.dart';
import 'package:video_player/video_player.dart';

part 'home_tab_notifier.g.dart';

@riverpod
class HomeTabNotifier extends _$HomeTabNotifier {
  final HomeTabService service = HomeTabService(HomeTabRepository());

  final PageController pageController = PageController(initialPage: 2);
  final List<String> tabs = ['탐색', '팔로잉', '추천'];

  final List<VideoPlayerController> videoPlayerControllers = [];

  @override
  HomeTabState build() {
    return HomeTabState();
  }

  Future<List<Short>> getShortListRequest() async {
    final result = await service.getShortList();

    if (result is String) {
      return [];
    } else {
      final shortList = result.cast<Short>();
      state = state.copyWith(shortList: shortList);

      return shortList;
    }
  }

  Future<void> setVideo(List<Short> shortList) async {
    for (final short in shortList) {
      final controller = VideoPlayerController.asset(short.videoUrl);

      await controller.initialize();
      controller.setLooping(true);

      videoPlayerControllers.add(controller);
    }

    // 첫 번째 비디오 자동 재생
    videoPlayerControllers.first.play();
  }

  changeTab(int index) {
    logger.d('changeTab: $index');

    state = state.copyWith(currentIndex: index);
    pageController.jumpToPage(index);

    if (index == 0) {
      ref.read(homeNotifierProvider.notifier).changeDarkMode(false);
    } else {
      ref.read(homeNotifierProvider.notifier).changeDarkMode(true);
    }
  }

  changeShortTab(int index) async {
    if (index < 0 || index >= videoPlayerControllers.length) return;

    // 모든 비디오 일시정지 및 처음부터
    for (int i = 0; i < videoPlayerControllers.length; i++) {
      final controller = videoPlayerControllers[i];

      if (controller.value.isInitialized) {
        await controller.pause();
        await controller.seekTo(Duration.zero);
      }
    }

    final current = videoPlayerControllers[index];
    if (current.value.isInitialized) {
      current.setLooping(true);
      await current.play();
    }
  }
}
