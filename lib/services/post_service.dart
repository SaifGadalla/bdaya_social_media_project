// ignore_for_file: lines_longer_than_80_chars, cascade_invocations

import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:fixnum/fixnum.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/post.pb.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/service.pb.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/user.pb.dart';
import 'package:social_media_bdaya/gen/google/protobuf/timestamp.pb.dart';
import 'package:social_media_bdaya/gen/google/protobuf/wrappers.pb.dart';
import 'package:social_media_bdaya/services/grpc_service.dart';
import 'package:social_media_bdaya/services/user_service.dart';
import 'package:collection/collection.dart';
abstract class PostService {
  Future<void> init();
  Future<CreatePostResponse> createPost({required CreatePostRequest request});
  Future<UpdatePostResponse> updatePost({required UpdatePostRequest request});
  Future<DeletePostResponse> deletePost({required DeletePostRequest request});
  Future<ListPostsResponse> listPosts({required ListPostsRequest request});
  Future<GetPostResponse> getPost({required GetPostRequest request});
}

@LazySingleton(as: PostService, env: [Environment.prod])
class RealPostService extends PostService {
  RealPostService(this.grpcService);

  final GrpcService grpcService;

  @override
  Future<void> init() async {
  }

  @override
  Future<CreatePostResponse> createPost({required CreatePostRequest request}) {
    return grpcService.postApi.createPost(request);
  }

  @override
  Future<DeletePostResponse> deletePost({required DeletePostRequest request}) {
    return grpcService.postApi.deletePost(request);
  }

  @override
  Future<GetPostResponse> getPost({required GetPostRequest request}) {
    return grpcService.postApi.getPost(request);
  }

  @override
  Future<ListPostsResponse> listPosts({required ListPostsRequest request}) {
    return grpcService.postApi.listPosts(request);
  }

  @override
  Future<UpdatePostResponse> updatePost({required UpdatePostRequest request}) {
    return grpcService.postApi.updatePost(request);
  }
}

@LazySingleton(as: PostService, env: [Environment.dev, Environment.test])
class FakePostService extends PostService {
  FakePostService(this.userService);

  final UserService userService;

  List<Post> posts = [
    Post(
      id: '123',
      user: UserInfo(
        id: '3',
        imageUrl: 'assets/avatar.jpg',
        name: 'Saif',
      ),
      content: 'hello everyone',
      stats: PostStats(
        likes: Int64(600),
        comments: Int64(3),
        shares: Int64(20),
      ),
      review: PostReview(
        status: PostReviewStatus.POST_REVIEW_STATUS_PENDING,
        reviewDetails: 'pending',
        reviewedBy: 'Ahmed',
      ),
    ),
    Post(
      id: '1234',
      user: UserInfo(
        id: '4',
        imageUrl: 'assets/avatar.jpg',
        name: 'Noor',
      ),
      content: 'hiii everyone',
      stats: PostStats(
        likes: Int64(400),
        comments: Int64(7),
        shares: Int64(30),
      ),
      review: PostReview(
        status: PostReviewStatus.POST_REVIEW_STATUS_ACCEPTED,
        reviewDetails: 'pending',
        reviewedBy: 'Ahmed',
      ),
    ),
    Post(
      id: '12',
      user: UserInfo(
        id: '5',
        imageUrl: 'assets/avatar.jpg',
        name: 'Ganna',
      ),
      content: 'hi everyone',
      stats: PostStats(
        likes: Int64(400),
        comments: Int64(7),
        shares: Int64(30),
      ),
      review: PostReview(
        status: PostReviewStatus.POST_REVIEW_STATUS_ACCEPTED,
        reviewDetails: 'pending',
        reviewedBy: 'Ahmed',
      ),
    ),
    Post(
      id: '213',
      date: Timestamp(
        seconds: Int64(DateTime.timestamp().second),
      ),
      user: UserInfo(
        id: '6',
        imageUrl: 'assets/avatar.jpg',
        name: 'Ahmed',
      ),
      content: 'hello everyone',
      stats: PostStats(
        likes: Int64(600),
        comments: Int64(3),
        shares: Int64(20),
      ),
      review: PostReview(
        status: PostReviewStatus.POST_REVIEW_STATUS_PENDING,
        reviewDetails: 'pending',
        reviewedBy: 'Ahmed',
      ),
    ),
    Post(
      id: '321',
      user: UserInfo(
        id: '6',
        imageUrl: 'assets/avatar.jpg',
        name: 'Ahmed',
      ),
      content: 'hello everyone',
      stats: PostStats(
        likes: Int64(600),
        comments: Int64(3),
        shares: Int64(20),
      ),
      review: PostReview(
        status: PostReviewStatus.POST_REVIEW_STATUS_PENDING,
        reviewDetails: 'pending',
        reviewedBy: 'Ahmed',
      ),
    ),
  ];

  @override
  Future<void> init() async {}

  @override
  Future<CreatePostResponse> createPost({
    required CreatePostRequest request,
  }) async {
    final newPost = Post(
      id: DateTime.now().toString(),
      user: userService.currentUser.$?.userInfo,
      content: 'some content',
      stats: PostStats(
        likes: Int64(600),
        comments: Int64(3),
        shares: Int64(20),
      ),
      review: PostReview(
        status: PostReviewStatus.POST_REVIEW_STATUS_PENDING,
        reviewDetails: 'pending',
        reviewedBy: '',
      ),
    );
    posts.add(newPost);
    return Future.value(CreatePostResponse(result: newPost));
  }

  @override
  Future<DeletePostResponse> deletePost({
    required DeletePostRequest request,
  }) async {
    posts.removeWhere(
      (val) {
        return val.id == request.id;
      },
    );
    return DeletePostResponse();
  }

  @override
  Future<UpdatePostResponse> updatePost({
    required UpdatePostRequest request,
  }) async {
    final post = posts.firstWhere((element) => element.id == request.id);
    post.content = 'updated';
    return UpdatePostResponse(result: post);
  }

  @override
  Future<ListPostsResponse> listPosts({
    required ListPostsRequest request,
  }) async {
    Iterable<Post> result = posts;
    if (request.filter.hasReviewStatus()) {
      result = result.where(
        (element) => element.review.status == request.filter.reviewStatus,
      );
    }
    if (request.filter.userIds.isNotEmpty) {
      result = result
          .where((element) => request.filter.userIds.contains(element.user.id));
    }
    final totalCount = result.length;
    //To-do: apply sort
    if (request.sort.hasCreationTime()) {
      result = result.sortedBy((Post a) => a.date.toDateTime());      
    }

    // if (request.sort.hasLatestCommentTime()) {
    //   final sortedResult = result.toList()..sort((Post a , Post b){
    //     return a.date.toDateTime().compareTo(b.date.toDateTime());
    //   });
    //   result = sortedResult as Iterable<Post>;
    // }

    String? nextPageToken;
    if (request.hasPagination()) {
      final offset = request.pagination.pageToken.isNotEmpty
          ? int.parse(request.pagination.pageToken)
          : 0;
      result = result.skip(offset);
      final pageSize =
          request.pagination.hasPageSize() ? request.pagination.pageSize : 3;
      result = result.take(pageSize);
      if (offset+pageSize >= totalCount) {
        nextPageToken = null;
      } else {
        nextPageToken = (offset + pageSize).toString();
      }
    }

    return ListPostsResponse(
      posts: result,
      nextPageToken:  nextPageToken== null ? null : StringValue(value: nextPageToken),      
    );
  }

  @override
  Future<GetPostResponse> getPost({required GetPostRequest request}) {
    final result = posts.firstWhere((element) => element.id == request.id);
    return Future.value(GetPostResponse(result: result));
  }
}
