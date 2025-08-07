// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'short.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Short {

 int get id; String get title; String get description; List<String> get hashtags; String get videoUrl; String get profileImageUrl; int get likeCount; int get commentCount; int get bookmarkCount; int get shareCount; bool get isLiked; bool get isBookmarked; bool get isFollowed; String get totalDescription;
/// Create a copy of Short
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShortCopyWith<Short> get copyWith => _$ShortCopyWithImpl<Short>(this as Short, _$identity);

  /// Serializes this Short to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Short&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.hashtags, hashtags)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.commentCount, commentCount) || other.commentCount == commentCount)&&(identical(other.bookmarkCount, bookmarkCount) || other.bookmarkCount == bookmarkCount)&&(identical(other.shareCount, shareCount) || other.shareCount == shareCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isBookmarked, isBookmarked) || other.isBookmarked == isBookmarked)&&(identical(other.isFollowed, isFollowed) || other.isFollowed == isFollowed)&&(identical(other.totalDescription, totalDescription) || other.totalDescription == totalDescription));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,const DeepCollectionEquality().hash(hashtags),videoUrl,profileImageUrl,likeCount,commentCount,bookmarkCount,shareCount,isLiked,isBookmarked,isFollowed,totalDescription);

@override
String toString() {
  return 'Short(id: $id, title: $title, description: $description, hashtags: $hashtags, videoUrl: $videoUrl, profileImageUrl: $profileImageUrl, likeCount: $likeCount, commentCount: $commentCount, bookmarkCount: $bookmarkCount, shareCount: $shareCount, isLiked: $isLiked, isBookmarked: $isBookmarked, isFollowed: $isFollowed, totalDescription: $totalDescription)';
}


}

/// @nodoc
abstract mixin class $ShortCopyWith<$Res>  {
  factory $ShortCopyWith(Short value, $Res Function(Short) _then) = _$ShortCopyWithImpl;
@useResult
$Res call({
 int id, String title, String description, List<String> hashtags, String videoUrl, String profileImageUrl, int likeCount, int commentCount, int bookmarkCount, int shareCount, bool isLiked, bool isBookmarked, bool isFollowed, String totalDescription
});




}
/// @nodoc
class _$ShortCopyWithImpl<$Res>
    implements $ShortCopyWith<$Res> {
  _$ShortCopyWithImpl(this._self, this._then);

  final Short _self;
  final $Res Function(Short) _then;

/// Create a copy of Short
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? hashtags = null,Object? videoUrl = null,Object? profileImageUrl = null,Object? likeCount = null,Object? commentCount = null,Object? bookmarkCount = null,Object? shareCount = null,Object? isLiked = null,Object? isBookmarked = null,Object? isFollowed = null,Object? totalDescription = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,hashtags: null == hashtags ? _self.hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,videoUrl: null == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,commentCount: null == commentCount ? _self.commentCount : commentCount // ignore: cast_nullable_to_non_nullable
as int,bookmarkCount: null == bookmarkCount ? _self.bookmarkCount : bookmarkCount // ignore: cast_nullable_to_non_nullable
as int,shareCount: null == shareCount ? _self.shareCount : shareCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,isBookmarked: null == isBookmarked ? _self.isBookmarked : isBookmarked // ignore: cast_nullable_to_non_nullable
as bool,isFollowed: null == isFollowed ? _self.isFollowed : isFollowed // ignore: cast_nullable_to_non_nullable
as bool,totalDescription: null == totalDescription ? _self.totalDescription : totalDescription // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Short].
extension ShortPatterns on Short {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Short value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Short() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Short value)  $default,){
final _that = this;
switch (_that) {
case _Short():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Short value)?  $default,){
final _that = this;
switch (_that) {
case _Short() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String description,  List<String> hashtags,  String videoUrl,  String profileImageUrl,  int likeCount,  int commentCount,  int bookmarkCount,  int shareCount,  bool isLiked,  bool isBookmarked,  bool isFollowed,  String totalDescription)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Short() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.hashtags,_that.videoUrl,_that.profileImageUrl,_that.likeCount,_that.commentCount,_that.bookmarkCount,_that.shareCount,_that.isLiked,_that.isBookmarked,_that.isFollowed,_that.totalDescription);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String description,  List<String> hashtags,  String videoUrl,  String profileImageUrl,  int likeCount,  int commentCount,  int bookmarkCount,  int shareCount,  bool isLiked,  bool isBookmarked,  bool isFollowed,  String totalDescription)  $default,) {final _that = this;
switch (_that) {
case _Short():
return $default(_that.id,_that.title,_that.description,_that.hashtags,_that.videoUrl,_that.profileImageUrl,_that.likeCount,_that.commentCount,_that.bookmarkCount,_that.shareCount,_that.isLiked,_that.isBookmarked,_that.isFollowed,_that.totalDescription);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String description,  List<String> hashtags,  String videoUrl,  String profileImageUrl,  int likeCount,  int commentCount,  int bookmarkCount,  int shareCount,  bool isLiked,  bool isBookmarked,  bool isFollowed,  String totalDescription)?  $default,) {final _that = this;
switch (_that) {
case _Short() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.hashtags,_that.videoUrl,_that.profileImageUrl,_that.likeCount,_that.commentCount,_that.bookmarkCount,_that.shareCount,_that.isLiked,_that.isBookmarked,_that.isFollowed,_that.totalDescription);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Short implements Short {
   _Short({this.id = 0, this.title = '', this.description = '', final  List<String> hashtags = const [], this.videoUrl = '', this.profileImageUrl = '', this.likeCount = 0, this.commentCount = 0, this.bookmarkCount = 0, this.shareCount = 0, this.isLiked = false, this.isBookmarked = false, this.isFollowed = false, this.totalDescription = ''}): _hashtags = hashtags;
  factory _Short.fromJson(Map<String, dynamic> json) => _$ShortFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
 final  List<String> _hashtags;
@override@JsonKey() List<String> get hashtags {
  if (_hashtags is EqualUnmodifiableListView) return _hashtags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hashtags);
}

@override@JsonKey() final  String videoUrl;
@override@JsonKey() final  String profileImageUrl;
@override@JsonKey() final  int likeCount;
@override@JsonKey() final  int commentCount;
@override@JsonKey() final  int bookmarkCount;
@override@JsonKey() final  int shareCount;
@override@JsonKey() final  bool isLiked;
@override@JsonKey() final  bool isBookmarked;
@override@JsonKey() final  bool isFollowed;
@override@JsonKey() final  String totalDescription;

/// Create a copy of Short
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShortCopyWith<_Short> get copyWith => __$ShortCopyWithImpl<_Short>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShortToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Short&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._hashtags, _hashtags)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.commentCount, commentCount) || other.commentCount == commentCount)&&(identical(other.bookmarkCount, bookmarkCount) || other.bookmarkCount == bookmarkCount)&&(identical(other.shareCount, shareCount) || other.shareCount == shareCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isBookmarked, isBookmarked) || other.isBookmarked == isBookmarked)&&(identical(other.isFollowed, isFollowed) || other.isFollowed == isFollowed)&&(identical(other.totalDescription, totalDescription) || other.totalDescription == totalDescription));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,const DeepCollectionEquality().hash(_hashtags),videoUrl,profileImageUrl,likeCount,commentCount,bookmarkCount,shareCount,isLiked,isBookmarked,isFollowed,totalDescription);

@override
String toString() {
  return 'Short(id: $id, title: $title, description: $description, hashtags: $hashtags, videoUrl: $videoUrl, profileImageUrl: $profileImageUrl, likeCount: $likeCount, commentCount: $commentCount, bookmarkCount: $bookmarkCount, shareCount: $shareCount, isLiked: $isLiked, isBookmarked: $isBookmarked, isFollowed: $isFollowed, totalDescription: $totalDescription)';
}


}

/// @nodoc
abstract mixin class _$ShortCopyWith<$Res> implements $ShortCopyWith<$Res> {
  factory _$ShortCopyWith(_Short value, $Res Function(_Short) _then) = __$ShortCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String description, List<String> hashtags, String videoUrl, String profileImageUrl, int likeCount, int commentCount, int bookmarkCount, int shareCount, bool isLiked, bool isBookmarked, bool isFollowed, String totalDescription
});




}
/// @nodoc
class __$ShortCopyWithImpl<$Res>
    implements _$ShortCopyWith<$Res> {
  __$ShortCopyWithImpl(this._self, this._then);

  final _Short _self;
  final $Res Function(_Short) _then;

/// Create a copy of Short
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? hashtags = null,Object? videoUrl = null,Object? profileImageUrl = null,Object? likeCount = null,Object? commentCount = null,Object? bookmarkCount = null,Object? shareCount = null,Object? isLiked = null,Object? isBookmarked = null,Object? isFollowed = null,Object? totalDescription = null,}) {
  return _then(_Short(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,hashtags: null == hashtags ? _self._hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,videoUrl: null == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,commentCount: null == commentCount ? _self.commentCount : commentCount // ignore: cast_nullable_to_non_nullable
as int,bookmarkCount: null == bookmarkCount ? _self.bookmarkCount : bookmarkCount // ignore: cast_nullable_to_non_nullable
as int,shareCount: null == shareCount ? _self.shareCount : shareCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,isBookmarked: null == isBookmarked ? _self.isBookmarked : isBookmarked // ignore: cast_nullable_to_non_nullable
as bool,isFollowed: null == isFollowed ? _self.isFollowed : isFollowed // ignore: cast_nullable_to_non_nullable
as bool,totalDescription: null == totalDescription ? _self.totalDescription : totalDescription // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
