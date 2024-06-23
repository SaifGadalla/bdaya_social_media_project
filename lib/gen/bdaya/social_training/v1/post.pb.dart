//
//  Generated code. Do not modify.
//  source: bdaya/social_training/v1/post.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $1;
import 'image.pb.dart' as $3;
import 'post.pbenum.dart';
import 'user.pb.dart' as $2;

export 'post.pbenum.dart';

class Post extends $pb.GeneratedMessage {
  factory Post({
    $core.String? id,
    $2.UserInfo? user,
    $1.Timestamp? date,
    $core.String? content,
    PostStats? stats,
    PostReview? review,
    $core.Iterable<$3.AppImage>? images,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (user != null) {
      $result.user = user;
    }
    if (date != null) {
      $result.date = date;
    }
    if (content != null) {
      $result.content = content;
    }
    if (stats != null) {
      $result.stats = stats;
    }
    if (review != null) {
      $result.review = review;
    }
    if (images != null) {
      $result.images.addAll(images);
    }
    return $result;
  }
  Post._() : super();
  factory Post.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Post.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Post', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$2.UserInfo>(2, _omitFieldNames ? '' : 'user', subBuilder: $2.UserInfo.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'date', subBuilder: $1.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'content')
    ..aOM<PostStats>(5, _omitFieldNames ? '' : 'stats', subBuilder: PostStats.create)
    ..aOM<PostReview>(6, _omitFieldNames ? '' : 'review', subBuilder: PostReview.create)
    ..pc<$3.AppImage>(7, _omitFieldNames ? '' : 'images', $pb.PbFieldType.PM, subBuilder: $3.AppImage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Post clone() => Post()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Post copyWith(void Function(Post) updates) => super.copyWith((message) => updates(message as Post)) as Post;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Post create() => Post._();
  Post createEmptyInstance() => create();
  static $pb.PbList<Post> createRepeated() => $pb.PbList<Post>();
  @$core.pragma('dart2js:noInline')
  static Post getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Post>(create);
  static Post? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $2.UserInfo get user => $_getN(1);
  @$pb.TagNumber(2)
  set user($2.UserInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
  @$pb.TagNumber(2)
  $2.UserInfo ensureUser() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get date => $_getN(2);
  @$pb.TagNumber(3)
  set date($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDate() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureDate() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get content => $_getSZ(3);
  @$pb.TagNumber(4)
  set content($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => clearField(4);

  @$pb.TagNumber(5)
  PostStats get stats => $_getN(4);
  @$pb.TagNumber(5)
  set stats(PostStats v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStats() => $_has(4);
  @$pb.TagNumber(5)
  void clearStats() => clearField(5);
  @$pb.TagNumber(5)
  PostStats ensureStats() => $_ensure(4);

  @$pb.TagNumber(6)
  PostReview get review => $_getN(5);
  @$pb.TagNumber(6)
  set review(PostReview v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasReview() => $_has(5);
  @$pb.TagNumber(6)
  void clearReview() => clearField(6);
  @$pb.TagNumber(6)
  PostReview ensureReview() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<$3.AppImage> get images => $_getList(6);
}

class PostStats extends $pb.GeneratedMessage {
  factory PostStats({
    $fixnum.Int64? likes,
    $fixnum.Int64? comments,
    $fixnum.Int64? shares,
  }) {
    final $result = create();
    if (likes != null) {
      $result.likes = likes;
    }
    if (comments != null) {
      $result.comments = comments;
    }
    if (shares != null) {
      $result.shares = shares;
    }
    return $result;
  }
  PostStats._() : super();
  factory PostStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostStats', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'likes', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'comments', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'shares', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostStats clone() => PostStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostStats copyWith(void Function(PostStats) updates) => super.copyWith((message) => updates(message as PostStats)) as PostStats;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostStats create() => PostStats._();
  PostStats createEmptyInstance() => create();
  static $pb.PbList<PostStats> createRepeated() => $pb.PbList<PostStats>();
  @$core.pragma('dart2js:noInline')
  static PostStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostStats>(create);
  static PostStats? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get likes => $_getI64(0);
  @$pb.TagNumber(1)
  set likes($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLikes() => $_has(0);
  @$pb.TagNumber(1)
  void clearLikes() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get comments => $_getI64(1);
  @$pb.TagNumber(2)
  set comments($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasComments() => $_has(1);
  @$pb.TagNumber(2)
  void clearComments() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get shares => $_getI64(2);
  @$pb.TagNumber(3)
  set shares($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShares() => $_has(2);
  @$pb.TagNumber(3)
  void clearShares() => clearField(3);
}

class PostReview extends $pb.GeneratedMessage {
  factory PostReview({
    PostReviewStatus? status,
    $core.String? reviewDetails,
    $core.String? reviewedBy,
    $1.Timestamp? reviewedAt,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    if (reviewDetails != null) {
      $result.reviewDetails = reviewDetails;
    }
    if (reviewedBy != null) {
      $result.reviewedBy = reviewedBy;
    }
    if (reviewedAt != null) {
      $result.reviewedAt = reviewedAt;
    }
    return $result;
  }
  PostReview._() : super();
  factory PostReview.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostReview.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostReview', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training.v1'), createEmptyInstance: create)
    ..e<PostReviewStatus>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: PostReviewStatus.POST_REVIEW_STATUS_UNSPECIFIED, valueOf: PostReviewStatus.valueOf, enumValues: PostReviewStatus.values)
    ..aOS(2, _omitFieldNames ? '' : 'reviewDetails')
    ..aOS(3, _omitFieldNames ? '' : 'reviewedBy')
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'reviewedAt', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostReview clone() => PostReview()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostReview copyWith(void Function(PostReview) updates) => super.copyWith((message) => updates(message as PostReview)) as PostReview;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostReview create() => PostReview._();
  PostReview createEmptyInstance() => create();
  static $pb.PbList<PostReview> createRepeated() => $pb.PbList<PostReview>();
  @$core.pragma('dart2js:noInline')
  static PostReview getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostReview>(create);
  static PostReview? _defaultInstance;

  @$pb.TagNumber(1)
  PostReviewStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(PostReviewStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get reviewDetails => $_getSZ(1);
  @$pb.TagNumber(2)
  set reviewDetails($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReviewDetails() => $_has(1);
  @$pb.TagNumber(2)
  void clearReviewDetails() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get reviewedBy => $_getSZ(2);
  @$pb.TagNumber(3)
  set reviewedBy($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReviewedBy() => $_has(2);
  @$pb.TagNumber(3)
  void clearReviewedBy() => clearField(3);

  @$pb.TagNumber(4)
  $1.Timestamp get reviewedAt => $_getN(3);
  @$pb.TagNumber(4)
  set reviewedAt($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasReviewedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearReviewedAt() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureReviewedAt() => $_ensure(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
