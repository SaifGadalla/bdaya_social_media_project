//
//  Generated code. Do not modify.
//  source: bdaya/social_training/v1/image.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $1;

class AppImage extends $pb.GeneratedMessage {
  factory AppImage({
    $core.String? id,
    $core.double? width,
    $core.double? height,
    $1.Timestamp? takenDateTime,
    $core.String? name,
    $core.String? url,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (width != null) {
      $result.width = width;
    }
    if (height != null) {
      $result.height = height;
    }
    if (takenDateTime != null) {
      $result.takenDateTime = takenDateTime;
    }
    if (name != null) {
      $result.name = name;
    }
    if (url != null) {
      $result.url = url;
    }
    return $result;
  }
  AppImage._() : super();
  factory AppImage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppImage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AppImage', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'width', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'height', $pb.PbFieldType.OF)
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'takenDateTime', subBuilder: $1.Timestamp.create)
    ..aOS(6, _omitFieldNames ? '' : 'name')
    ..aOS(7, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppImage clone() => AppImage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppImage copyWith(void Function(AppImage) updates) => super.copyWith((message) => updates(message as AppImage)) as AppImage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppImage create() => AppImage._();
  AppImage createEmptyInstance() => create();
  static $pb.PbList<AppImage> createRepeated() => $pb.PbList<AppImage>();
  @$core.pragma('dart2js:noInline')
  static AppImage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppImage>(create);
  static AppImage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get width => $_getN(1);
  @$pb.TagNumber(2)
  set width($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearWidth() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get height => $_getN(2);
  @$pb.TagNumber(3)
  set height($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => clearField(3);

  @$pb.TagNumber(5)
  $1.Timestamp get takenDateTime => $_getN(3);
  @$pb.TagNumber(5)
  set takenDateTime($1.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTakenDateTime() => $_has(3);
  @$pb.TagNumber(5)
  void clearTakenDateTime() => clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureTakenDateTime() => $_ensure(3);

  @$pb.TagNumber(6)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(6)
  set name($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(6)
  void clearName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get url => $_getSZ(5);
  @$pb.TagNumber(7)
  set url($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasUrl() => $_has(5);
  @$pb.TagNumber(7)
  void clearUrl() => clearField(7);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
