import 'dart:convert';

import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/common.pb.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/post.pb.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/service.pbgrpc.dart';
import 'package:social_media_bdaya/services/cache_service.dart';
import 'package:social_media_bdaya/services/post_service.dart';
import 'package:social_media_bdaya/services/routing_service.dart';
import 'package:social_media_bdaya/services/user_service.dart';

@lazySingleton
class CurrentUserProfileController extends BdayaCombinedController {
  CurrentUserProfileController(
    this.postService,
    this.userService,
    this.cacheService,
    /*add getIt dependencies here*/
  );

  final PostService postService;
  final UserService userService;
  final CacheService cacheService;

  final posts = SharedValue<List<Post>>(value: []);

  final PagingController<String, Post> pagingController =
      PagingController(firstPageKey: '0');

  @override
  void beforeRender(BuildContext context) {
    pagingController.addPageRequestListener((pageKey) async {
      try {
        final user = userService.currentUser.$;
        final userId = user?.userInfo.id;
        if (userId == null) {
          return;
        }
        final postsResp = await postService.listPosts(
          request: ListPostsRequest(
            filter: ListPostsFilter(
              userIds: [userId],
              reviewStatus: PostReviewStatus.POST_REVIEW_STATUS_ACCEPTED,
            ),
            pagination: InfiniteScrollPaginationInfo(
              pageSize: 10,
              pageToken: pageKey,
            ),
          ),
        );
        if (postsResp.hasNextPageToken() &&
            postsResp.nextPageToken.hasValue() &&
            postsResp.nextPageToken.value.isNotEmpty) {
          pagingController.appendPage(
            postsResp.posts,
            postsResp.nextPageToken.value,
          );
        } else {
          pagingController.appendLastPage(postsResp.posts);
        }

        final allItems = pagingController.itemList;
        if (allItems != null) {
          await cacheService.setString(
            'userPosts',
            jsonEncode(
              allItems.map((e) => e.toProto3Json()).toList(),
            ),
          );
        }
      } catch (e) {
        if (pageKey == '0') {
          final cachedPosts =
              jsonDecode(cacheService.getString('userPosts')!) as List<dynamic>;
          final mappedCached =
              cachedPosts.map((e) => Post.fromJson(e as String)).toList();
          pagingController.appendLastPage(mappedCached);
        } else {
          pagingController.error = e;
        }
      }
    });
    super.beforeRender(context);
  }

  Future<void> deletePost(String id) async {
    await postService.deletePost(
      request: DeletePostRequest(
        id: id,
      ),
    );
    pagingController.refresh();
  }

  void navigateToCreatePost(BuildContext context) {
    context.goNamed(
      AppRouteNames.createPost,
    );
  }

  void navigateToUpdatePost(BuildContext context, String id) {
    context.goNamed(
      AppRouteNames.updatePost,
      pathParameters: {'id': id},
    );
  }

  void navigateToPost(BuildContext context, String id) {
    context.goNamed(
      AppRouteNames.ownPostDetails,
      pathParameters: {'id': id},
    );
  }
}
