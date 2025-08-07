import 'package:tictok_clone_app/utils/logger.dart';

class HomeTabRepository {
  Future<dynamic> getShortList() async {
    logger.d('getShortList');

    final response = [
      {
        'id': 1,
        'title': '제주항공 (Jeju Air)',
        'description': '앙칼진 승무원',
        'hashtags': [
          '제주항공',
          'JEJUAIR',
          'jejuair_friendlycrew',
          '객실승무원',
          'cabincrew',
          'challenge',
        ],
        'video_url': 'assets/videos/videoplayback1.mp4',
        'profile_image_url': 'assets/images/jejuair_profile.jpg',
        'like_count': 4218372,
        'comment_count': 3129,
        'bookmark_count': 27092,
        'share_count': 11938,
        'is_liked': true,
        'is_bookmarked': false,
        'is_followed': false,
      },
      {
        'id': 2,
        'title': 'JJ PLANET',
        'description': '성별 위장 고양이 현장 직격 인터뷰 (캣터뷰)',
        'hashtags': ['고양이', '캣터뷰', 'catview', 'cat', 'catlover', 'catlover_kr'],
        'video_url': 'assets/videos/videoplayback3.mp4',
        'profile_image_url': 'assets/images/etc_profile.png',
        'like_count': 18374,
        'comment_count': 147,
        'bookmark_count': 1762,
        'share_count': 1564,
        'is_liked': false,
        'is_bookmarked': true,
        'is_followed': true,
      },
      {
        'id': 3,
        'title': '제주항공 (Jeju Air)',
        'description': '삐악이 승무원의 첫 비행',
        'hashtags': [
          '제주항공',
          'JEJUAIR',
          'jejuair_friendlycrew',
          '객실승무원',
          'cabincrew',
          'challenge',
        ],
        'video_url': 'assets/videos/videoplayback2.mp4',
        'profile_image_url': 'assets/images/jejuair_profile.jpg',
        'like_count': 4218372,
        'comment_count': 3129,
        'bookmark_count': 27092,
        'share_count': 11938,
        'is_liked': true,
        'is_bookmarked': false,
        'is_followed': false,
      },
    ];

    return response;
  }
}
