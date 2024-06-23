//
//  Generated code. Do not modify.
//  source: bdaya/social_media_trainig/v1/user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userDtoDescriptor instead')
const UserDto$json = {
  '1': 'UserDto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'userInfo', '3': 2, '4': 1, '5': 11, '6': '.bdaya.social_training.v1.UserInfo', '10': 'userInfo'},
    {'1': 'isBanned', '3': 3, '4': 1, '5': 8, '10': 'isBanned'},
  ],
};

/// Descriptor for `UserDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDtoDescriptor = $convert.base64Decode(
    'CgdVc2VyRHRvEg4KAmlkGAEgASgJUgJpZBI+Cgh1c2VySW5mbxgCIAEoCzIiLmJkYXlhLnNvY2'
    'lhbF90cmFpbmluZy52MS5Vc2VySW5mb1IIdXNlckluZm8SGgoIaXNCYW5uZWQYAyABKAhSCGlz'
    'QmFubmVk');

@$core.Deprecated('Use usersResponseDescriptor instead')
const UsersResponse$json = {
  '1': 'UsersResponse',
  '2': [
    {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.bdaya.social_media_trainig.v1.UserDto', '10': 'users'},
    {'1': 'nextPageToken', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'nextPageToken'},
  ],
};

/// Descriptor for `UsersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List usersResponseDescriptor = $convert.base64Decode(
    'Cg1Vc2Vyc1Jlc3BvbnNlEjwKBXVzZXJzGAEgAygLMiYuYmRheWEuc29jaWFsX21lZGlhX3RyYW'
    'luaWcudjEuVXNlckR0b1IFdXNlcnMSQgoNbmV4dFBhZ2VUb2tlbhgCIAEoCzIcLmdvb2dsZS5w'
    'cm90b2J1Zi5TdHJpbmdWYWx1ZVINbmV4dFBhZ2VUb2tlbg==');

