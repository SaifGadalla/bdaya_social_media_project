// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';

import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/common.pb.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/post.pb.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/service.pb.dart';
import 'package:social_media_bdaya/services/cache_service.dart';
import 'package:social_media_bdaya/services/post_service.dart';
import 'package:social_media_bdaya/services/routing_service.dart';
import 'package:social_media_bdaya/services/user_service.dart';

@lazySingleton
class PostsFeedController extends BdayaCombinedController {
  PostsFeedController(
    this.postService,
    this.cacheService,
    this.userService,
  );

  final PostService postService;
  final CacheService cacheService;
  final UserService userService;

  final PagingController<String, Post> pagingController = PagingController(firstPageKey: '0');


  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);
    pagingController.addPageRequestListener((pageKey) async {
      try {
        final postsResp = await postService.listPosts(
          request: ListPostsRequest(
            filter: ListPostsFilter(
              reviewStatus: PostReviewStatus.POST_REVIEW_STATUS_ACCEPTED,
            ),
            pagination: InfiniteScrollPaginationInfo(
              pageSize: 3,
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
        if (allItems!=null) {
          await  cacheService.setString(
            'Posts',
            jsonEncode(allItems
                .map((e) => e.toProto3Json())                
                .toList(),),);
        }      
      } catch (e) {
        if (pageKey == '0') {
          final cachedPosts =
              jsonDecode(cacheService.getString('Posts')!) as List<dynamic>;
          final mappedCached =
              cachedPosts.map((e) => Post.fromJson(e as String)).toList();
          pagingController.appendLastPage(mappedCached);
        } else {
          pagingController.error = e;
        }
      }
    });
  }

  void refreshPosts() {
    pagingController.refresh();
  }

  void navigateToPost(BuildContext context, String id) {
    context.goNamed(
      AppRouteNames.postDetails,
      pathParameters: {'id': id},
    );
  }

  void navigateToProfile(BuildContext context, String profileId) {
    context.goNamed(
      AppRouteNames.profile,
      pathParameters: {'profileId': profileId},
    );
  }

  void navigateToDashBoard(BuildContext context) {
    context.goNamed(
      AppRouteNames.dashboard,
    );
  }
}
