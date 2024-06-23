//
//  Generated code. Do not modify.
//  source: bdaya/social_media_trainig/v1/user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/wrappers.pb.dart' as $0;
import '../../social_training/v1/user.pb.dart' as $2;

class UserDto extends $pb.GeneratedMessage {
  factory UserDto({
    $core.String? id,
    $2.UserInfo? userInfo,
    $core.bool? isBanned,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (userInfo != null) {
      $result.userInfo = userInfo;
    }
    if (isBanned != null) {
      $result.isBanned = isBanned;
    }
    return $result;
  }
  UserDto._() : super();
  factory UserDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserDto', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_media_trainig.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$2.UserInfo>(2, _omitFieldNames ? '' : 'userInfo', protoName: 'userInfo', subBuilder: $2.UserInfo.create)
    ..aOB(3, _omitFieldNames ? '' : 'isBanned', protoName: 'isBanned')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserDto clone() => UserDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserDto copyWith(void Function(UserDto) updates) => super.copyWith((message) => updates(message as UserDto)) as UserDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserDto create() => UserDto._();
  UserDto createEmptyInstance() => create();
  static $pb.PbList<UserDto> createRepeated() => $pb.PbList<UserDto>();
  @$core.pragma('dart2js:noInline')
  static UserDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserDto>(create);
  static UserDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $2.UserInfo get userInfo => $_getN(1);
  @$pb.TagNumber(2)
  set userInfo($2.UserInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserInfo() => clearField(2);
  @$pb.TagNumber(2)
  $2.UserInfo ensureUserInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get isBanned => $_getBF(2);
  @$pb.TagNumber(3)
  set isBanned($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsBanned() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsBanned() => clearField(3);
}

class UsersResponse extends $pb.GeneratedMessage {
  factory UsersResponse({
    $core.Iterable<UserDto>? users,
    $0.StringValue? nextPageToken,
  }) {
    final $result = create();
    if (users != null) {
      $result.users.addAll(users);
    }
    if (nextPageToken != null) {
      $result.nextPageToken = nextPageToken;
    }
    return $result;
  }
  UsersResponse._() : super();
  factory UsersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UsersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UsersResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_media_trainig.v1'), createEmptyInstance: create)
    ..pc<UserDto>(1, _omitFieldNames ? '' : 'users', $pb.PbFieldType.PM, subBuilder: UserDto.create)
    ..aOM<$0.StringValue>(2, _omitFieldNames ? '' : 'nextPageToken', protoName: 'nextPageToken', subBuilder: $0.StringValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UsersResponse clone() => UsersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UsersResponse copyWith(void Function(UsersResponse) updates) => super.copyWith((message) => updates(message as UsersResponse)) as UsersResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UsersResponse create() => UsersResponse._();
  UsersResponse createEmptyInstance() => create();
  static $pb.PbList<UsersResponse> createRepeated() => $pb.PbList<UsersResponse>();
  @$core.pragma('dart2js:noInline')
  static UsersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UsersResponse>(create);
  static UsersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserDto> get users => $_getList(0);

  @$pb.TagNumber(2)
  $0.StringValue get nextPageToken => $_getN(1);
  @$pb.TagNumber(2)
  set nextPageToken($0.StringValue v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);
  @$pb.TagNumber(2)
  $0.StringValue ensureNextPageToken() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
