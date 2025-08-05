import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tictok_clone_app/models/home_state.dart';
import 'package:tictok_clone_app/ui/pages/tabs/home_tab_page.dart';
import 'package:tictok_clone_app/ui/pages/tabs/friend_tab_page.dart';
import 'package:tictok_clone_app/ui/pages/tabs/notification_tab_page.dart';
import 'package:tictok_clone_app/ui/pages/tabs/profile_tab_page.dart';

part 'home_notifier.g.dart';

@riverpod
class HomeNotifier extends _$HomeNotifier {
  final List<Widget> pages = [
    const HomeTabPage(),
    const FriendTabPage(),
    Container(),
    const NotificationTabPage(),
    const ProfileTabPage(),
  ];

  @override
  HomeState build() {
    return HomeState();
  }

  changeTab(int index) => state = state.copyWith(currentIndex: index);

  changeDarkMode(bool isDark) => state = state.copyWith(isDark: isDark);
}
