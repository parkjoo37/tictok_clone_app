import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictok_clone_app/notifiers/home_notifier.dart';

class TikTokPlusButton extends ConsumerWidget {
  final VoidCallback? onTap;

  const TikTokPlusButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeNotifierProvider);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50.w,
        height: 30.h,
        decoration: BoxDecoration(
          color: homeState.isDark ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Stack(
          children: [
            // 배경 색상 영역 (뒤로)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF00F2EA), // 청록색
                    homeState.isDark ? Colors.white : Colors.black, // 흰색
                    Color(0xFFFF0050), // 빨간색
                  ],
                  stops: [0.0, 0.5, 1.0],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
            // '+' 아이콘 (앞으로)
            Center(
              child: Container(
                width: 43.w,
                height: 30.h,
                decoration: BoxDecoration(
                  color: homeState.isDark ? Colors.white : Colors.black,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(
                  Icons.add,
                  color: homeState.isDark ? Colors.black : Colors.white,
                  size: 24.w,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
