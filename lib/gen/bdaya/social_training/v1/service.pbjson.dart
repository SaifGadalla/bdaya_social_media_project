//
//  Generated code. Do not modify.
//  source: bdaya/social_training/v1/service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use listPostsRequestDescriptor instead')
const ListPostsRequest$json = {
  '1': 'ListPostsRequest',
  '2': [
    {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.bdaya.social_training.v1.InfiniteScrollPaginationInfo', '10': 'pagination'},
    {'1': 'filter', '3': 2, '4': 1, '5': 11, '6': '.bdaya.social_training.v1.ListPostsFilter', '10': 'filter'},
    {'1': 'sort', '3': 3, '4': 1, '5': 11, '6': '.bdaya.social_training.v1.ListPostsSorting', '10': 'sort'},
  ],
};

/// Descriptor for `ListPostsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPostsRequestDescriptor = $convert.base64Decode(
    'ChBMaXN0UG9zdHNSZXF1ZXN0ElYKCnBhZ2luYXRpb24YASABKAsyNi5iZGF5YS5zb2NpYWxfdH'
    'JhaW5pbmcudjEuSW5maW5pdGVTY3JvbGxQYWdpbmF0aW9uSW5mb1IKcGFnaW5hdGlvbhJBCgZm'
    'aWx0ZXIYAiABKAsyKS5iZGF5YS5zb2NpYWxfdHJhaW5pbmcudjEuTGlzdFBvc3RzRmlsdGVyUg'
    'ZmaWx0ZXISPgoEc29ydBgDIAEoCzIqLmJkYXlhLnNvY2lhbF90cmFpbmluZy52MS5MaXN0UG9z'
    'dHNTb3J0aW5nUgRzb3J0');

@$core.Deprecated('Use listPostsFilterDescriptor instead')
const ListPostsFilter$json = {
  '1': 'ListPostsFilter',
  '2': [
    {'1': 'user_ids', '3': 1, '4': 3, '5': 9, '10': 'userIds'},
    {'1': 'creation_time', '3': 2, '4': 1, '5': 11, '6': '.bdaya.social_training.v1.DateFilter', '10': 'creationTime'},
    {'1': 'review_status', '3': 3, '4': 1, '5': 14, '6': '.bdaya.social_training.v1.PostReviewStatus', '10': 'reviewStatus'},
  ],
};

/// Descriptor for `ListPostsFilter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPostsFilterDescriptor = $convert.base64Decode(
    'Cg9MaXN0UG9zdHNGaWx0ZXISGQoIdXNlcl9pZHMYASADKAlSB3VzZXJJZHMSSQoNY3JlYXRpb2'
    '5fdGltZRgCIAEoCzIkLmJkYXlhLnNvY2lhbF90cmFpbmluZy52MS5EYXRlRmlsdGVyUgxjcmVh'
    'dGlvblRpbWUSTwoNcmV2aWV3X3N0YXR1cxgDIAEoDjIqLmJkYXlhLnNvY2lhbF90cmFpbmluZy'
    '52MS5Qb3N0UmV2aWV3U3RhdHVzUgxyZXZpZXdTdGF0dXM=');

@$core.Deprecated('Use listPostsSortingDescriptor instead')
const ListPostsSorting$json = {
  '1': 'ListPostsSorting',
  '2': [
    {'1': 'creation_time', '3': 1, '4': 1, '5': 14, '6': '.bdaya.social_training.v1.SortDirection', '9': 0, '10': 'creationTime'},
    {'1': 'latest_comment_time', '3': 2, '4': 1, '5': 14, '6': '.bdaya.social_training.v1.SortDirection', '9': 0, '10': 'latestCommentTime'},
  ],
  '8': [
    {'1': 'sort_property'},
  ],
};

/// Descriptor for `ListPostsSorting`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPostsSortingDescriptor = $convert.base64Decode(
    'ChBMaXN0UG9zdHNTb3J0aW5nEk4KDWNyZWF0aW9uX3RpbWUYASABKA4yJy5iZGF5YS5zb2NpYW'
    'xfdHJhaW5pbmcudjEuU29ydERpcmVjdGlvbkgAUgxjcmVhdGlvblRpbWUSWQoTbGF0ZXN0X2Nv'
    'bW1lbnRfdGltZRgCIAEoDjInLmJkYXlhLnNvY2lhbF90cmFpbmluZy52MS5Tb3J0RGlyZWN0aW'
    '9uSABSEWxhdGVzdENvbW1lbnRUaW1lQg8KDXNvcnRfcHJvcGVydHk=');

@$core.Deprecated('Use listPostsResponseDescriptor instead')
const ListPostsResponse$json = {
  '1': 'ListPostsResponse',
  '2': [
    {'1': 'posts', '3': 1, '4': 3, '5': 11, '6': '.bdaya.social_training.v1.Post', '10': 'posts'},
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'nextPageToken'},
  ],
};

/// Descriptor for `ListPostsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPostsResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0UG9zdHNSZXNwb25zZRI0CgVwb3N0cxgBIAMoCzIeLmJkYXlhLnNvY2lhbF90cmFpbm'
    'luZy52MS5Qb3N0UgVwb3N0cxJECg9uZXh0X3BhZ2VfdG9rZW4YAiABKAsyHC5nb29nbGUucHJv'
    'dG9idWYuU3RyaW5nVmFsdWVSDW5leHRQYWdlVG9rZW4=');

@$core.Deprecated('Use getPostRequestDescriptor instead')
const GetPostRequest$json = {
  '1': 'GetPostRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetPostRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPostRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRQb3N0UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getPostResponseDescriptor instead')
const GetPostResponse$json = {
  '1': 'GetPostResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.bdaya.social_training.v1.Post', '10': 'result'},
  ],
};

/// Descriptor for `GetPostResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPostResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRQb3N0UmVzcG9uc2USNgoGcmVzdWx0GAEgASgLMh4uYmRheWEuc29jaWFsX3RyYWluaW'
    '5nLnYxLlBvc3RSBnJlc3VsdA==');

@$core.Deprecated('Use createPostRequestDescriptor instead')
const CreatePostRequest$json = {
  '1': 'CreatePostRequest',
};

/// Descriptor for `CreatePostRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPostRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVQb3N0UmVxdWVzdA==');

@$core.Deprecated('Use createPostResponseDescriptor instead')
const CreatePostResponse$json = {
  '1': 'CreatePostResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.bdaya.social_training.v1.Post', '10': 'result'},
  ],
};

/// Descriptor for `CreatePostResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPostResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVQb3N0UmVzcG9uc2USNgoGcmVzdWx0GAEgASgLMh4uYmRheWEuc29jaWFsX3RyYW'
    'luaW5nLnYxLlBvc3RSBnJlc3VsdA==');

@$core.Deprecated('Use updatePostRequestDescriptor instead')
const UpdatePostRequest$json = {
  '1': 'UpdatePostRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `UpdatePostRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePostRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVQb3N0UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use updatePostResponseDescriptor instead')
const UpdatePostResponse$json = {
  '1': 'UpdatePostResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.bdaya.social_training.v1.Post', '10': 'result'},
  ],
};

/// Descriptor for `UpdatePostResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePostResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVQb3N0UmVzcG9uc2USNgoGcmVzdWx0GAEgASgLMh4uYmRheWEuc29jaWFsX3RyYW'
    'luaW5nLnYxLlBvc3RSBnJlc3VsdA==');

@$core.Deprecated('Use deletePostRequestDescriptor instead')
const DeletePostRequest$json = {
  '1': 'DeletePostRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeletePostRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePostRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVQb3N0UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use deletePostResponseDescriptor instead')
const DeletePostResponse$json = {
  '1': 'DeletePostResponse',
};

/// Descriptor for `DeletePostResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePostResponseDescriptor = $convert.base64Decode(
    'ChJEZWxldGVQb3N0UmVzcG9uc2U=');

