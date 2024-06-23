//
//  Generated code. Do not modify.
//  source: bdaya/social_training/v1/post.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use postReviewStatusDescriptor instead')
const PostReviewStatus$json = {
  '1': 'PostReviewStatus',
  '2': [
    {'1': 'POST_REVIEW_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'POST_REVIEW_STATUS_ACCEPTED', '2': 1},
    {'1': 'POST_REVIEW_STATUS_REJECTED', '2': 2},
    {'1': 'POST_REVIEW_STATUS_PENDING', '2': 3},
  ],
};

/// Descriptor for `PostReviewStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List postReviewStatusDescriptor = $convert.base64Decode(
    'ChBQb3N0UmV2aWV3U3RhdHVzEiIKHlBPU1RfUkVWSUVXX1NUQVRVU19VTlNQRUNJRklFRBAAEh'
    '8KG1BPU1RfUkVWSUVXX1NUQVRVU19BQ0NFUFRFRBABEh8KG1BPU1RfUkVWSUVXX1NUQVRVU19S'
    'RUpFQ1RFRBACEh4KGlBPU1RfUkVWSUVXX1NUQVRVU19QRU5ESU5HEAM=');

@$core.Deprecated('Use postDescriptor instead')
const Post$json = {
  '1': 'Post',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.bdaya.social_training.v1.UserInfo', '10': 'user'},
    {'1': 'date', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
    {'1': 'content', '3': 4, '4': 1, '5': 9, '10': 'content'},
    {'1': 'stats', '3': 5, '4': 1, '5': 11, '6': '.bdaya.social_training.v1.PostStats', '10': 'stats'},
    {'1': 'review', '3': 6, '4': 1, '5': 11, '6': '.bdaya.social_training.v1.PostReview', '10': 'review'},
    {'1': 'images', '3': 7, '4': 3, '5': 11, '6': '.bdaya.social_training.v1.AppImage', '10': 'images'},
  ],
};

/// Descriptor for `Post`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postDescriptor = $convert.base64Decode(
    'CgRQb3N0Eg4KAmlkGAEgASgJUgJpZBI2CgR1c2VyGAIgASgLMiIuYmRheWEuc29jaWFsX3RyYW'
    'luaW5nLnYxLlVzZXJJbmZvUgR1c2VyEi4KBGRhdGUYAyABKAsyGi5nb29nbGUucHJvdG9idWYu'
    'VGltZXN0YW1wUgRkYXRlEhgKB2NvbnRlbnQYBCABKAlSB2NvbnRlbnQSOQoFc3RhdHMYBSABKA'
    'syIy5iZGF5YS5zb2NpYWxfdHJhaW5pbmcudjEuUG9zdFN0YXRzUgVzdGF0cxI8CgZyZXZpZXcY'
    'BiABKAsyJC5iZGF5YS5zb2NpYWxfdHJhaW5pbmcudjEuUG9zdFJldmlld1IGcmV2aWV3EjoKBm'
    'ltYWdlcxgHIAMoCzIiLmJkYXlhLnNvY2lhbF90cmFpbmluZy52MS5BcHBJbWFnZVIGaW1hZ2Vz');

@$core.Deprecated('Use postStatsDescriptor instead')
const PostStats$json = {
  '1': 'PostStats',
  '2': [
    {'1': 'likes', '3': 1, '4': 1, '5': 4, '10': 'likes'},
    {'1': 'comments', '3': 2, '4': 1, '5': 4, '10': 'comments'},
    {'1': 'shares', '3': 3, '4': 1, '5': 4, '10': 'shares'},
  ],
};

/// Descriptor for `PostStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postStatsDescriptor = $convert.base64Decode(
    'CglQb3N0U3RhdHMSFAoFbGlrZXMYASABKARSBWxpa2VzEhoKCGNvbW1lbnRzGAIgASgEUghjb2'
    '1tZW50cxIWCgZzaGFyZXMYAyABKARSBnNoYXJlcw==');

@$core.Deprecated('Use postReviewDescriptor instead')
const PostReview$json = {
  '1': 'PostReview',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.bdaya.social_training.v1.PostReviewStatus', '10': 'status'},
    {'1': 'review_details', '3': 2, '4': 1, '5': 9, '10': 'reviewDetails'},
    {'1': 'reviewed_by', '3': 3, '4': 1, '5': 9, '10': 'reviewedBy'},
    {'1': 'reviewed_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'reviewedAt'},
  ],
};

/// Descriptor for `PostReview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postReviewDescriptor = $convert.base64Decode(
    'CgpQb3N0UmV2aWV3EkIKBnN0YXR1cxgBIAEoDjIqLmJkYXlhLnNvY2lhbF90cmFpbmluZy52MS'
    '5Qb3N0UmV2aWV3U3RhdHVzUgZzdGF0dXMSJQoOcmV2aWV3X2RldGFpbHMYAiABKAlSDXJldmll'
    'd0RldGFpbHMSHwoLcmV2aWV3ZWRfYnkYAyABKAlSCnJldmlld2VkQnkSOwoLcmV2aWV3ZWRfYX'
    'QYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgpyZXZpZXdlZEF0');

