import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictok_clone_app/notifiers/home_notifier.dart';
import 'package:tictok_clone_app/notifiers/home_tab_notifier.dart';

class HomeTabPage extends ConsumerWidget {
  const HomeTabPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeTabNotifier = ref.read(homeTabNotifierProvider.notifier);
    final homeTabState = ref.watch(homeTabNotifierProvider);

    final homeState = ref.watch(homeNotifierProvider);

    return Container(
      color: homeState.isDark ? Colors.black : Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          SizedBox.expand(
            child: PageView(
              controller: homeTabNotifier.pageController,
              onPageChanged: (index) => homeTabNotifier.changeTab(index),
              children: [
                Center(
                  child: Text(
                    "탐색",
                    style: TextStyle(
                      color: homeState.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "팔로잉",
                    style: TextStyle(
                      color: homeState.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "추천",
                    style: TextStyle(
                      color: homeState.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 20.h,
            left: 5.w,
            right: 5.w,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 40.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.tv,
                      size: 24.w,
                      color: homeState.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                  Row(
                    children: List.generate(homeTabNotifier.tabs.length, (
                      index,
                    ) {
                      final selected = index == homeTabState;

                      return GestureDetector(
                        onTap: () => homeTabNotifier.changeTab(index),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 4,
                              ),
                              child: Text(
                                homeTabNotifier.tabs[index],
                                style: TextStyle(
                                  color: selected
                                      ? homeState.isDark
                                            ? Colors.white
                                            : Colors.black
                                      : Colors.grey,
                                  fontWeight: selected
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(height: 6.h),
                            // 밑줄
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              height: 2.h,
                              width: selected ? 20.w : 0,
                              color: selected
                                  ? homeState.isDark
                                        ? Colors.white
                                        : Colors.black
                                  : Colors.transparent,
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 24.w,
                      color: homeState.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
