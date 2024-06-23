//
//  Generated code. Do not modify.
//  source: bdaya/social_training/v1/common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use sortDirectionDescriptor instead')
const SortDirection$json = {
  '1': 'SortDirection',
  '2': [
    {'1': 'SORT_DIRECTION_UNSPECIFIED', '2': 0},
    {'1': 'SORT_DIRECTION_ASCENDING', '2': 1},
    {'1': 'SORT_DIRECTION_DESCENDING', '2': 2},
  ],
};

/// Descriptor for `SortDirection`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sortDirectionDescriptor = $convert.base64Decode(
    'Cg1Tb3J0RGlyZWN0aW9uEh4KGlNPUlRfRElSRUNUSU9OX1VOU1BFQ0lGSUVEEAASHAoYU09SVF'
    '9ESVJFQ1RJT05fQVNDRU5ESU5HEAESHQoZU09SVF9ESVJFQ1RJT05fREVTQ0VORElORxAC');

@$core.Deprecated('Use infiniteScrollPaginationInfoDescriptor instead')
const InfiniteScrollPaginationInfo$json = {
  '1': 'InfiniteScrollPaginationInfo',
  '2': [
    {'1': 'page_size', '3': 1, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'page_token', '3': 2, '4': 1, '5': 9, '10': 'pageToken'},
  ],
};

/// Descriptor for `InfiniteScrollPaginationInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List infiniteScrollPaginationInfoDescriptor = $convert.base64Decode(
    'ChxJbmZpbml0ZVNjcm9sbFBhZ2luYXRpb25JbmZvEhsKCXBhZ2Vfc2l6ZRgBIAEoBVIIcGFnZV'
    'NpemUSHQoKcGFnZV90b2tlbhgCIAEoCVIJcGFnZVRva2Vu');

@$core.Deprecated('Use dateFilterDescriptor instead')
const DateFilter$json = {
  '1': 'DateFilter',
  '2': [
    {'1': 'start_date', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startDate'},
    {'1': 'end_date', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endDate'},
  ],
};

/// Descriptor for `DateFilter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dateFilterDescriptor = $convert.base64Decode(
    'CgpEYXRlRmlsdGVyEjkKCnN0YXJ0X2RhdGUYASABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZX'
    'N0YW1wUglzdGFydERhdGUSNQoIZW5kX2RhdGUYAiABKAsyGi5nb29nbGUucHJvdG9idWYuVGlt'
    'ZXN0YW1wUgdlbmREYXRl');

