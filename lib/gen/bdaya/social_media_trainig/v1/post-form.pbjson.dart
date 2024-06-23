//
//  Generated code. Do not modify.
//  source: bdaya/social_media_trainig/v1/post-form.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createPostReactiveDtoDescriptor instead')
const CreatePostReactiveDto$json = {
  '1': 'CreatePostReactiveDto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'postforms', '3': 2, '4': 3, '5': 11, '6': '.bdaya.social_media_trainig.v1.PostFormDto', '10': 'postforms'},
  ],
};

/// Descriptor for `CreatePostReactiveDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPostReactiveDtoDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVQb3N0UmVhY3RpdmVEdG8SDgoCaWQYASABKAlSAmlkEkgKCXBvc3Rmb3JtcxgCIA'
    'MoCzIqLmJkYXlhLnNvY2lhbF9tZWRpYV90cmFpbmlnLnYxLlBvc3RGb3JtRHRvUglwb3N0Zm9y'
    'bXM=');

@$core.Deprecated('Use postFormDtoDescriptor instead')
const PostFormDto$json = {
  '1': 'PostFormDto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'postContent', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'postContent'},
  ],
};

/// Descriptor for `PostFormDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postFormDtoDescriptor = $convert.base64Decode(
    'CgtQb3N0Rm9ybUR0bxIOCgJpZBgBIAEoCVICaWQSPgoLcG9zdENvbnRlbnQYAiABKAsyHC5nb2'
    '9nbGUucHJvdG9idWYuU3RyaW5nVmFsdWVSC3Bvc3RDb250ZW50');

@$core.Deprecated('Use imageFormDtoDescriptor instead')
const ImageFormDto$json = {
  '1': 'ImageFormDto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'image', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'image'},
  ],
};

/// Descriptor for `ImageFormDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageFormDtoDescriptor = $convert.base64Decode(
    'CgxJbWFnZUZvcm1EdG8SDgoCaWQYASABKAlSAmlkEjIKBWltYWdlGAIgASgLMhwuZ29vZ2xlLn'
    'Byb3RvYnVmLlN0cmluZ1ZhbHVlUgVpbWFnZQ==');

