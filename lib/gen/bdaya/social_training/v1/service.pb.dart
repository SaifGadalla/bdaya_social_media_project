//
//  Generated code. Do not modify.
//  source: bdaya/social_training/v1/service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/wrappers.pb.dart' as $7;
import 'common.pb.dart' as $5;
import 'common.pbenum.dart' as $5;
import 'post.pb.dart' as $6;
import 'post.pbenum.dart' as $6;

/// List
class ListPostsRequest extends $pb.GeneratedMessage {
  factory ListPostsRequest({
    $5.InfiniteScrollPaginationInfo? pagination,
    ListPostsFilter? filter,
    ListPostsSorting? sort,
  }) {
    final $result = create();
    if (pagination != null) {
      $result.pagination = pagination;
    }
    if (filter != null) {
      $result.filter = filter;
    }
    if (sort != null) {
      $result.sort = sort;
    }
    return $result;
  }
  ListPostsRequest._() : super();
  factory ListPostsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPostsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPostsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training.v1'), createEmptyInstance: create)
    ..aOM<$5.InfiniteScrollPaginationInfo>(1, _omitFieldNames ? '' : 'pagination', subBuilder: $5.InfiniteScrollPaginationInfo.create)
    ..aOM<ListPostsFilter>(2, _omitFieldNames ? '' : 'filter', subBuilder: ListPostsFilter.create)
    ..aOM<ListPostsSorting>(3, _omitFieldNames ? '' : 'sort', subBuilder: ListPostsSorting.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPostsRequest clone() => ListPostsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPostsRequest copyWith(void Function(ListPostsRequest) updates) => super.copyWith((message) => updates(message as ListPostsRequest)) as ListPostsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPostsRequest create() => ListPostsRequest._();
  ListPostsRequest createEmptyInstance() => create();
  static $pb.PbList<ListPostsRequest> createRepeated() => $pb.PbList<ListPostsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListPostsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPostsRequest>(create);
  static ListPostsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $5.InfiniteScrollPaginationInfo get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($5.InfiniteScrollPaginationInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $5.InfiniteScrollPaginationInfo ensurePagination() => $_ensure(0);

  @$pb.TagNumber(2)
  ListPostsFilter get filter => $_getN(1);
  @$pb.TagNumber(2)
  set filter(ListPostsFilter v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilter() => clearField(2);
  @$pb.TagNumber(2)
  ListPostsFilter ensureFilter() => $_ensure(1);

  @$pb.TagNumber(3)
  ListPostsSorting get sort => $_getN(2);
  @$pb.TagNumber(3)
  set sort(ListPostsSorting v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSort() => $_has(2);
  @$pb.TagNumber(3)
  void clearSort() => clearField(3);
  @$pb.TagNumber(3)
  ListPostsSorting ensureSort() => $_ensure(2);
}

class ListPostsFilter extends $pb.GeneratedMessage {
  factory ListPostsFilter({
    $core.Iterable<$core.String>? userIds,
    $5.DateFilter? creationTime,
    $6.PostReviewStatus? reviewStatus,
  }) {
    final $result = create();
    if (userIds != null) {
      $result.userIds.addAll(userIds);
    }
    if (creationTime != null) {
      $result.creationTime = creationTime;
    }
    if (reviewStatus != null) {
      $result.reviewStatus = reviewStatus;
    }
    return $result;
  }
  ListPostsFilter._() : super();
  factory ListPostsFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPostsFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPostsFilter', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'userIds')
    ..aOM<$5.DateFilter>(2, _omitFieldNames ? '' : 'creationTime', subBuilder: $5.DateFilter.create)
    ..e<$6.PostReviewStatus>(3, _omitFieldNames ? '' : 'reviewStatus', $pb.PbFieldType.OE, defaultOrMaker: $6.PostReviewStatus.POST_REVIEW_STATUS_UNSPECIFIED, valueOf: $6.PostReviewStatus.valueOf, enumValues: $6.PostReviewStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPostsFilter clone() => ListPostsFilter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPostsFilter copyWith(void Function(ListPostsFilter) updates) => super.copyWith((message) => updates(message as ListPostsFilter)) as ListPostsFilter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPostsFilter create() => ListPostsFilter._();
  ListPostsFilter createEmptyInstance() => create();
  static $pb.PbList<ListPostsFilter> createRepeated() => $pb.PbList<ListPostsFilter>();
  @$core.pragma('dart2js:noInline')
  static ListPostsFilter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPostsFilter>(create);
  static ListPostsFilter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get userIds => $_getList(0);

  @$pb.TagNumber(2)
  $5.DateFilter get creationTime => $_getN(1);
  @$pb.TagNumber(2)
  set creationTime($5.DateFilter v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreationTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreationTime() => clearField(2);
  @$pb.TagNumber(2)
  $5.DateFilter ensureCreationTime() => $_ensure(1);

  @$pb.TagNumber(3)
  $6.PostReviewStatus get reviewStatus => $_getN(2);
  @$pb.TagNumber(3)
  set reviewStatus($6.PostReviewStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasReviewStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearReviewStatus() => clearField(3);
}

enum ListPostsSorting_SortProperty {
  creationTime, 
  latestCommentTime, 
  notSet
}

class ListPostsSorting extends $pb.GeneratedMessage {
  factory ListPostsSorting({
    $5.SortDirection? creationTime,
    $5.SortDirection? latestCommentTime,
  }) {
    final $result = create();
    if (creationTime != null) {
      $result.creationTime = creationTime;
    }
    if (latestCommentTime != null) {
      $result.latestCommentTime = latestCommentTime;
    }
    return $result;
  }
  ListPostsSorting._() : super();
  factory ListPostsSorting.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPostsSorting.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ListPostsSorting_SortProperty> _ListPostsSorting_SortPropertyByTag = {
    1 : ListPostsSorting_SortProperty.creationTime,
    2 : ListPostsSorting_SortProperty.latestCommentTime,
    0 : ListPostsSorting_SortProperty.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPostsSorting', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..e<$5.SortDirection>(1, _omitFieldNames ? '' : 'creationTime', $pb.PbFieldType.OE, defaultOrMaker: $5.SortDirection.SORT_DIRECTION_UNSPECIFIED, valueOf: $5.SortDirection.valueOf, enumValues: $5.SortDirection.values)
    ..e<$5.SortDirection>(2, _omitFieldNames ? '' : 'latestCommentTime', $pb.PbFieldType.OE, defaultOrMaker: $5.SortDirection.SORT_DIRECTION_UNSPECIFIED, valueOf: $5.SortDirection.valueOf, enumValues: $5.SortDirection.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPostsSorting clone() => ListPostsSorting()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPostsSorting copyWith(void Function(ListPostsSorting) updates) => super.copyWith((message) => updates(message as ListPostsSorting)) as ListPostsSorting;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPostsSorting create() => ListPostsSorting._();
  ListPostsSorting createEmptyInstance() => create();
  static $pb.PbList<ListPostsSorting> createRepeated() => $pb.PbList<ListPostsSorting>();
  @$core.pragma('dart2js:noInline')
  static ListPostsSorting getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPostsSorting>(create);
  static ListPostsSorting? _defaultInstance;

  ListPostsSorting_SortProperty whichSortProperty() => _ListPostsSorting_SortPropertyByTag[$_whichOneof(0)]!;
  void clearSortProperty() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $5.SortDirection get creationTime => $_getN(0);
  @$pb.TagNumber(1)
  set creationTime($5.SortDirection v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreationTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreationTime() => clearField(1);

  @$pb.TagNumber(2)
  $5.SortDirection get latestCommentTime => $_getN(1);
  @$pb.TagNumber(2)
  set latestCommentTime($5.SortDirection v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLatestCommentTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearLatestCommentTime() => clearField(2);
}

class ListPostsResponse extends $pb.GeneratedMessage {
  factory ListPostsResponse({
    $core.Iterable<$6.Post>? posts,
    $7.StringValue? nextPageToken,
  }) {
    final $result = create();
    if (posts != null) {
      $result.posts.addAll(posts);
    }
    if (nextPageToken != null) {
      $result.nextPageToken = nextPageToken;
    }
    return $result;
  }
  ListPostsResponse._() : super();
  factory ListPostsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPostsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPostsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training.v1'), createEmptyInstance: create)
    ..pc<$6.Post>(1, _omitFieldNames ? '' : 'posts', $pb.PbFieldType.PM, subBuilder: $6.Post.create)
    ..aOM<$7.StringValue>(2, _omitFieldNames ? '' : 'nextPageToken', subBuilder: $7.StringValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPostsResponse clone() => ListPostsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPostsResponse copyWith(void Function(ListPostsResponse) updates) => super.copyWith((message) => updates(message as ListPostsResponse)) as ListPostsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPostsResponse create() => ListPostsResponse._();
  ListPostsResponse createEmptyInstance() => create();
  static $pb.PbList<ListPostsResponse> createRepeated() => $pb.PbList<ListPostsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListPostsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPostsResponse>(create);
  static ListPostsResponse? _defaultInstance;

  /// The field name should match the noun "Post" in the method name.
  /// There will be a maximum number of items returned based on the page_size field in the request.
  @$pb.TagNumber(1)
  $core.List<$6.Post> get posts => $_getList(0);

  /// Token to retrieve the next page of results, or empty if there are no more results in the list.
  @$pb.TagNumber(2)
  $7.StringValue get nextPageToken => $_getN(1);
  @$pb.TagNumber(2)
  set nextPageToken($7.StringValue v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);
  @$pb.TagNumber(2)
  $7.StringValue ensureNextPageToken() => $_ensure(1);
}

class GetPostRequest extends $pb.GeneratedMessage {
  factory GetPostRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetPostRequest._() : super();
  factory GetPostRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPostRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPostRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPostRequest clone() => GetPostRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPostRequest copyWith(void Function(GetPostRequest) updates) => super.copyWith((message) => updates(message as GetPostRequest)) as GetPostRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPostRequest create() => GetPostRequest._();
  GetPostRequest createEmptyInstance() => create();
  static $pb.PbList<GetPostRequest> createRepeated() => $pb.PbList<GetPostRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPostRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPostRequest>(create);
  static GetPostRequest? _defaultInstance;

  /// The field will contain name of the resource requested.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetPostResponse extends $pb.GeneratedMessage {
  factory GetPostResponse({
    $6.Post? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  GetPostResponse._() : super();
  factory GetPostResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPostResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPostResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training.v1'), createEmptyInstance: create)
    ..aOM<$6.Post>(1, _omitFieldNames ? '' : 'result', subBuilder: $6.Post.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPostResponse clone() => GetPostResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPostResponse copyWith(void Function(GetPostResponse) updates) => super.copyWith((message) => updates(message as GetPostResponse)) as GetPostResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPostResponse create() => GetPostResponse._();
  GetPostResponse createEmptyInstance() => create();
  static $pb.PbList<GetPostResponse> createRepeated() => $pb.PbList<GetPostResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPostResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPostResponse>(create);
  static GetPostResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $6.Post get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($6.Post v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $6.Post ensureResult() => $_ensure(0);
}

/// Create
class CreatePostRequest extends $pb.GeneratedMessage {
  factory CreatePostRequest() => create();
  CreatePostRequest._() : super();
  factory CreatePostRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePostRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePostRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePostRequest clone() => CreatePostRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePostRequest copyWith(void Function(CreatePostRequest) updates) => super.copyWith((message) => updates(message as CreatePostRequest)) as CreatePostRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePostRequest create() => CreatePostRequest._();
  CreatePostRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePostRequest> createRepeated() => $pb.PbList<CreatePostRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePostRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePostRequest>(create);
  static CreatePostRequest? _defaultInstance;
}

class CreatePostResponse extends $pb.GeneratedMessage {
  factory CreatePostResponse({
    $6.Post? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  CreatePostResponse._() : super();
  factory CreatePostResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePostResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePostResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training.v1'), createEmptyInstance: create)
    ..aOM<$6.Post>(1, _omitFieldNames ? '' : 'result', subBuilder: $6.Post.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePostResponse clone() => CreatePostResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePostResponse copyWith(void Function(CreatePostResponse) updates) => super.copyWith((message) => updates(message as CreatePostResponse)) as CreatePostResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePostResponse create() => CreatePostResponse._();
  CreatePostResponse createEmptyInstance() => create();
  static $pb.PbList<CreatePostResponse> createRepeated() => $pb.PbList<CreatePostResponse>();
  @$core.pragma('dart2js:noInline')
  static CreatePostResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePostResponse>(create);
  static CreatePostResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $6.Post get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($6.Post v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $6.Post ensureResult() => $_ensure(0);
}

/// Update
class UpdatePostRequest extends $pb.GeneratedMessage {
  factory UpdatePostRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  UpdatePostRequest._() : super();
  factory UpdatePostRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePostRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePostRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePostRequest clone() => UpdatePostRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePostRequest copyWith(void Function(UpdatePostRequest) updates) => super.copyWith((message) => updates(message as UpdatePostRequest)) as UpdatePostRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePostRequest create() => UpdatePostRequest._();
  UpdatePostRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePostRequest> createRepeated() => $pb.PbList<UpdatePostRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePostRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePostRequest>(create);
  static UpdatePostRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UpdatePostResponse extends $pb.GeneratedMessage {
  factory UpdatePostResponse({
    $6.Post? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  UpdatePostResponse._() : super();
  factory UpdatePostResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePostResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePostResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training.v1'), createEmptyInstance: create)
    ..aOM<$6.Post>(1, _omitFieldNames ? '' : 'result', subBuilder: $6.Post.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePostResponse clone() => UpdatePostResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePostResponse copyWith(void Function(UpdatePostResponse) updates) => super.copyWith((message) => updates(message as UpdatePostResponse)) as UpdatePostResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePostResponse create() => UpdatePostResponse._();
  UpdatePostResponse createEmptyInstance() => create();
  static $pb.PbList<UpdatePostResponse> createRepeated() => $pb.PbList<UpdatePostResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdatePostResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePostResponse>(create);
  static UpdatePostResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $6.Post get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($6.Post v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $6.Post ensureResult() => $_ensure(0);
}

/// Delete
class DeletePostRequest extends $pb.GeneratedMessage {
  factory DeletePostRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeletePostRequest._() : super();
  factory DeletePostRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePostRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeletePostRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletePostRequest clone() => DeletePostRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletePostRequest copyWith(void Function(DeletePostRequest) updates) => super.copyWith((message) => updates(message as DeletePostRequest)) as DeletePostRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePostRequest create() => DeletePostRequest._();
  DeletePostRequest createEmptyInstance() => create();
  static $pb.PbList<DeletePostRequest> createRepeated() => $pb.PbList<DeletePostRequest>();
  @$core.pragma('dart2js:noInline')
  static DeletePostRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePostRequest>(create);
  static DeletePostRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeletePostResponse extends $pb.GeneratedMessage {
  factory DeletePostResponse() => create();
  DeletePostResponse._() : super();
  factory DeletePostResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePostResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeletePostResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bdaya.social_training.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletePostResponse clone() => DeletePostResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletePostResponse copyWith(void Function(DeletePostResponse) updates) => super.copyWith((message) => updates(message as DeletePostResponse)) as DeletePostResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePostResponse create() => DeletePostResponse._();
  DeletePostResponse createEmptyInstance() => create();
  static $pb.PbList<DeletePostResponse> createRepeated() => $pb.PbList<DeletePostResponse>();
  @$core.pragma('dart2js:noInline')
  static DeletePostResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePostResponse>(create);
  static DeletePostResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
