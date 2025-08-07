import 'package:freezed_annotation/freezed_annotation.dart';

part 'short.freezed.dart';
part 'short.g.dart';

@freezed
abstract class Short with _$Short {
  factory Short({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String description,
    @Default([]) List<String> hashtags,
    @Default('') String videoUrl,
    @Default('') String profileImageUrl,
    @Default(0) int likeCount,
    @Default(0) int commentCount,
    @Default(0) int bookmarkCount,
    @Default(0) int shareCount,
    @Default(false) bool isLiked,
    @Default(false) bool isBookmarked,
    @Default(false) bool isFollowed,
    @Default('') String totalDescription,
  }) = _Short;

  factory Short.fromJson(Map<String, dynamic> json) => _$ShortFromJson(json);
}
