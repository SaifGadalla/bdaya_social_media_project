//
//  Generated code. Do not modify.
//  source: bdaya/social_training/v1/common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SortDirection extends $pb.ProtobufEnum {
  static const SortDirection SORT_DIRECTION_UNSPECIFIED = SortDirection._(0, _omitEnumNames ? '' : 'SORT_DIRECTION_UNSPECIFIED');
  static const SortDirection SORT_DIRECTION_ASCENDING = SortDirection._(1, _omitEnumNames ? '' : 'SORT_DIRECTION_ASCENDING');
  static const SortDirection SORT_DIRECTION_DESCENDING = SortDirection._(2, _omitEnumNames ? '' : 'SORT_DIRECTION_DESCENDING');

  static const $core.List<SortDirection> values = <SortDirection> [
    SORT_DIRECTION_UNSPECIFIED,
    SORT_DIRECTION_ASCENDING,
    SORT_DIRECTION_DESCENDING,
  ];

  static final $core.Map<$core.int, SortDirection> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SortDirection? valueOf($core.int value) => _byValue[value];

  const SortDirection._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
