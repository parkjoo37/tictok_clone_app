// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Short _$ShortFromJson(Map<String, dynamic> json) => _Short(
  id: (json['id'] as num?)?.toInt() ?? 0,
  title: json['title'] as String? ?? '',
  description: json['description'] as String? ?? '',
  hashtags:
      (json['hashtags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  videoUrl: json['video_url'] as String? ?? '',
  profileImageUrl: json['profile_image_url'] as String? ?? '',
  likeCount: (json['like_count'] as num?)?.toInt() ?? 0,
  commentCount: (json['comment_count'] as num?)?.toInt() ?? 0,
  bookmarkCount: (json['bookmark_count'] as num?)?.toInt() ?? 0,
  shareCount: (json['share_count'] as num?)?.toInt() ?? 0,
  isLiked: json['is_liked'] as bool? ?? false,
  isBookmarked: json['is_bookmarked'] as bool? ?? false,
  isFollowed: json['is_followed'] as bool? ?? false,
  totalDescription: json['total_description'] as String? ?? '',
);

Map<String, dynamic> _$ShortToJson(_Short instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'hashtags': instance.hashtags,
  'video_url': instance.videoUrl,
  'profile_image_url': instance.profileImageUrl,
  'like_count': instance.likeCount,
  'comment_count': instance.commentCount,
  'bookmark_count': instance.bookmarkCount,
  'share_count': instance.shareCount,
  'is_liked': instance.isLiked,
  'is_bookmarked': instance.isBookmarked,
  'is_followed': instance.isFollowed,
  'total_description': instance.totalDescription,
};
