import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictok_clone_app/notifiers/home_tab_notifier.dart';
import 'package:video_player/video_player.dart';

class RecommendPage extends ConsumerWidget {
  const RecommendPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeTabNotifier = ref.read(homeTabNotifierProvider.notifier);
    final homeTabState = ref.watch(homeTabNotifierProvider);

    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: homeTabNotifier.videoPlayerControllers.length,
      onPageChanged: (value) => homeTabNotifier.changeShortTab(value),
      itemBuilder: (context, index) {
        final controller = homeTabNotifier.videoPlayerControllers[index];

        return Stack(
          children: [
            Positioned(
              top: 30.h,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height:
                    MediaQuery.of(context).size.height -
                    250.h, // 상하 여백 빼고 높이 지정
                child: FittedBox(
                  fit: BoxFit.fill, // 가로 꽉 채우고 세로도 비율 유지하며 넘칠 수 있음
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: controller.value.size.width,
                    height: controller.value.size.height,
                    child: VideoPlayer(controller),
                  ),
                ),
              ),
            ),
            // 컨텐트 영역
            Positioned(
              left: 10.w,
              bottom: 10.h,
              child: SizedBox(
                width: 250.w,
                child: RichText(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    text: homeTabState
                        .shortList[homeTabState.currentIndex]
                        .totalDescription,
                    style: TextStyle(color: Colors.white, fontSize: 13.w),
                    children: [
                      TextSpan(
                        text: ' 자세히',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.w,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                // Text(
                //   homeTabState
                //       .shortList[homeTabState.currentIndex]
                //       .totalDescription,
                //   style: TextStyle(color: Colors.white, fontSize: 13.w),
                //   overflow: TextOverflow.ellipsis,
                //   maxLines: 2,
                // ),
              ),
            ),
            // 📉 하단 영상 진행 바 + 컨트롤러
            Align(
              alignment: Alignment.bottomCenter,
              child: VideoProgressIndicator(
                controller,
                allowScrubbing: true, // ← 사용자가 드래그 가능
                colors: VideoProgressColors(
                  playedColor: Colors.white,
                  backgroundColor: Colors.grey,
                  bufferedColor: Colors.grey,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
