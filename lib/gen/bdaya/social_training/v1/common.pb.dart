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

import '../../../google/protobuf/timestamp.pb.dart' as $1;

export 'common.pbenum.dart';

class InfiniteScrollPaginationInfo extends $pb.GeneratedMessage {
  factory InfiniteScrollPaginationInfo({
    $core.int? pageSize,
    $core.String? pageToken,
  }) {
    final $result = create();
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (pageToken != null) {
      $result.pageToken = pageToken;
    }
    return $result;
  }
  InfiniteScrollPaginationInfo._() : super();
  factory InfiniteScrollPaginationInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InfiniteScrollPaginationInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InfiniteScrollPaginationInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'pageToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InfiniteScrollPaginationInfo clone() => InfiniteScrollPaginationInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InfiniteScrollPaginationInfo copyWith(void Function(InfiniteScrollPaginationInfo) updates) => super.copyWith((message) => updates(message as InfiniteScrollPaginationInfo)) as InfiniteScrollPaginationInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InfiniteScrollPaginationInfo create() => InfiniteScrollPaginationInfo._();
  InfiniteScrollPaginationInfo createEmptyInstance() => create();
  static $pb.PbList<InfiniteScrollPaginationInfo> createRepeated() => $pb.PbList<InfiniteScrollPaginationInfo>();
  @$core.pragma('dart2js:noInline')
  static InfiniteScrollPaginationInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InfiniteScrollPaginationInfo>(create);
  static InfiniteScrollPaginationInfo? _defaultInstance;

  /// The maximum number of items to return.
  @$pb.TagNumber(1)
  $core.int get pageSize => $_getIZ(0);
  @$pb.TagNumber(1)
  set pageSize($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageSize() => clearField(1);

  /// The next_page_token value returned from a previous List request, if any.
  @$pb.TagNumber(2)
  $core.String get pageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageToken() => clearField(2);
}

class DateFilter extends $pb.GeneratedMessage {
  factory DateFilter({
    $1.Timestamp? startDate,
    $1.Timestamp? endDate,
  }) {
    final $result = create();
    if (startDate != null) {
      $result.startDate = startDate;
    }
    if (endDate != null) {
      $result.endDate = endDate;
    }
    return $result;
  }
  DateFilter._() : super();
  factory DateFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DateFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DateFilter', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training.v1'), createEmptyInstance: create)
    ..aOM<$1.Timestamp>(1, _omitFieldNames ? '' : 'startDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'endDate', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DateFilter clone() => DateFilter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DateFilter copyWith(void Function(DateFilter) updates) => super.copyWith((message) => updates(message as DateFilter)) as DateFilter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DateFilter create() => DateFilter._();
  DateFilter createEmptyInstance() => create();
  static $pb.PbList<DateFilter> createRepeated() => $pb.PbList<DateFilter>();
  @$core.pragma('dart2js:noInline')
  static DateFilter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DateFilter>(create);
  static DateFilter? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Timestamp get startDate => $_getN(0);
  @$pb.TagNumber(1)
  set startDate($1.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartDate() => clearField(1);
  @$pb.TagNumber(1)
  $1.Timestamp ensureStartDate() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Timestamp get endDate => $_getN(1);
  @$pb.TagNumber(2)
  set endDate($1.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndDate() => clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureEndDate() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
