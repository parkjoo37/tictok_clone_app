import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FriendTabPage extends ConsumerWidget {
  const FriendTabPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Text('FriendTabPage', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
