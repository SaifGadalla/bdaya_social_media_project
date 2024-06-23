//
//  Generated code. Do not modify.
//  source: bdaya/social_media_trainig/v1/post-form.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/wrappers.pb.dart' as $0;

class CreatePostReactiveDto extends $pb.GeneratedMessage {
  factory CreatePostReactiveDto({
    $core.String? id,
    $core.Iterable<PostFormDto>? postforms,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (postforms != null) {
      $result.postforms.addAll(postforms);
    }
    return $result;
  }
  CreatePostReactiveDto._() : super();
  factory CreatePostReactiveDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePostReactiveDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePostReactiveDto', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_media_trainig.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..pc<PostFormDto>(2, _omitFieldNames ? '' : 'postforms', $pb.PbFieldType.PM, subBuilder: PostFormDto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePostReactiveDto clone() => CreatePostReactiveDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePostReactiveDto copyWith(void Function(CreatePostReactiveDto) updates) => super.copyWith((message) => updates(message as CreatePostReactiveDto)) as CreatePostReactiveDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePostReactiveDto create() => CreatePostReactiveDto._();
  CreatePostReactiveDto createEmptyInstance() => create();
  static $pb.PbList<CreatePostReactiveDto> createRepeated() => $pb.PbList<CreatePostReactiveDto>();
  @$core.pragma('dart2js:noInline')
  static CreatePostReactiveDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePostReactiveDto>(create);
  static CreatePostReactiveDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<PostFormDto> get postforms => $_getList(1);
}

class PostFormDto extends $pb.GeneratedMessage {
  factory PostFormDto({
    $core.String? id,
    $0.StringValue? postContent,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (postContent != null) {
      $result.postContent = postContent;
    }
    return $result;
  }
  PostFormDto._() : super();
  factory PostFormDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostFormDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostFormDto', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_media_trainig.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$0.StringValue>(2, _omitFieldNames ? '' : 'postContent', protoName: 'postContent', subBuilder: $0.StringValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostFormDto clone() => PostFormDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostFormDto copyWith(void Function(PostFormDto) updates) => super.copyWith((message) => updates(message as PostFormDto)) as PostFormDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostFormDto create() => PostFormDto._();
  PostFormDto createEmptyInstance() => create();
  static $pb.PbList<PostFormDto> createRepeated() => $pb.PbList<PostFormDto>();
  @$core.pragma('dart2js:noInline')
  static PostFormDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostFormDto>(create);
  static PostFormDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $0.StringValue get postContent => $_getN(1);
  @$pb.TagNumber(2)
  set postContent($0.StringValue v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPostContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearPostContent() => clearField(2);
  @$pb.TagNumber(2)
  $0.StringValue ensurePostContent() => $_ensure(1);
}

class ImageFormDto extends $pb.GeneratedMessage {
  factory ImageFormDto({
    $core.String? id,
    $0.StringValue? image,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (image != null) {
      $result.image = image;
    }
    return $result;
  }
  ImageFormDto._() : super();
  factory ImageFormDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageFormDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ImageFormDto', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_media_trainig.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$0.StringValue>(2, _omitFieldNames ? '' : 'image', subBuilder: $0.StringValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageFormDto clone() => ImageFormDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageFormDto copyWith(void Function(ImageFormDto) updates) => super.copyWith((message) => updates(message as ImageFormDto)) as ImageFormDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImageFormDto create() => ImageFormDto._();
  ImageFormDto createEmptyInstance() => create();
  static $pb.PbList<ImageFormDto> createRepeated() => $pb.PbList<ImageFormDto>();
  @$core.pragma('dart2js:noInline')
  static ImageFormDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageFormDto>(create);
  static ImageFormDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $0.StringValue get image => $_getN(1);
  @$pb.TagNumber(2)
  set image($0.StringValue v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearImage() => clearField(2);
  @$pb.TagNumber(2)
  $0.StringValue ensureImage() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
