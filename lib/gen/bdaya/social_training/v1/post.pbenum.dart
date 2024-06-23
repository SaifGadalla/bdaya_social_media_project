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

import 'package:protobuf/protobuf.dart' as $pb;

class PostReviewStatus extends $pb.ProtobufEnum {
  static const PostReviewStatus POST_REVIEW_STATUS_UNSPECIFIED = PostReviewStatus._(0, _omitEnumNames ? '' : 'POST_REVIEW_STATUS_UNSPECIFIED');
  static const PostReviewStatus POST_REVIEW_STATUS_ACCEPTED = PostReviewStatus._(1, _omitEnumNames ? '' : 'POST_REVIEW_STATUS_ACCEPTED');
  static const PostReviewStatus POST_REVIEW_STATUS_REJECTED = PostReviewStatus._(2, _omitEnumNames ? '' : 'POST_REVIEW_STATUS_REJECTED');
  static const PostReviewStatus POST_REVIEW_STATUS_PENDING = PostReviewStatus._(3, _omitEnumNames ? '' : 'POST_REVIEW_STATUS_PENDING');

  static const $core.List<PostReviewStatus> values = <PostReviewStatus> [
    POST_REVIEW_STATUS_UNSPECIFIED,
    POST_REVIEW_STATUS_ACCEPTED,
    POST_REVIEW_STATUS_REJECTED,
    POST_REVIEW_STATUS_PENDING,
  ];

  static final $core.Map<$core.int, PostReviewStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PostReviewStatus? valueOf($core.int value) => _byValue[value];

  const PostReviewStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
