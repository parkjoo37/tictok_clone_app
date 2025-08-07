import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictok_clone_app/notifiers/home_notifier.dart';
import 'package:tictok_clone_app/ui/pages/create_page.dart';
import 'package:tictok_clone_app/ui/widgets/tik_tok_plus_button.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeNotifier = ref.read(homeNotifierProvider.notifier);
    final homeState = ref.watch(homeNotifierProvider);

    return SafeArea(
      child: Scaffold(
        backgroundColor: homeState.isDark ? Colors.black : Colors.white,
        body: homeNotifier.pages[homeState.currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey, width: 0.5.w),
            ),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: homeState.isDark ? Colors.black : Colors.white,
            selectedItemColor: homeState.isDark ? Colors.white : Colors.black,
            unselectedItemColor: Colors.grey,
            currentIndex: homeState.currentIndex,
            onTap: (index) => homeNotifier.changeTab(index),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30.w),
                label: '홈',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people, size: 30.w),
                label: '친구',
              ),
              BottomNavigationBarItem(
                icon: TikTokPlusButton(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CreatePage(),
                      ),
                    );
                  },
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message, size: 30.w),
                label: '알림',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 30.w),
                label: '프로필',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
