// ignore_for_file: lines_longer_than_80_chars

import 'dart:async';

import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/common.pb.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/post.pb.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/service.pb.dart';
import 'package:social_media_bdaya/l10n/l10n.dart';
import 'package:social_media_bdaya/pages/all_posts/controller.dart';

class AllPostsView extends StatefulWidget {
  const AllPostsView({
    required this.controller,
    super.key,
  });

  static Widget hooked({
    BdayaGetItHookMode hookMode = BdayaGetItHookMode.lazySingleton,
    String? instanceName,
    Object? param1,
    Object? param2,
    List<Object?>? keys,
  }) {
    return HookBuilder(
      builder: (context) => AllPostsView(
        controller: useBdayaViewController(
          hookMode: hookMode,
          instanceName: instanceName,
          keys: keys,
          param1: param1,
          param2: param2,
        ),
      ),
    );
  }

  final AllPostsController controller;

  @override
  State<AllPostsView> createState() => _AllPostsViewState();
}

class _AllPostsViewState extends State<AllPostsView>
    with TickerProviderStateMixin {
  //
  @override
  void initState() {
    super.initState();
    widget.controller.tabController = TabController(length: 3, vsync: this);
  }

  final refreshStream = StreamController<DateTime>.broadcast();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: widget.controller.tabController,
          tabs: [
            Tab(
              text: AppLocalizations.of(context).pending,
            ),
            Tab(
              text: AppLocalizations.of(context).accepted,
            ),
            Tab(
              text: AppLocalizations.of(context).rejected,
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: widget.controller.tabController,
        children: [
          PostsTabBuilder(
            postStatue: PostReviewStatus.POST_REVIEW_STATUS_PENDING,
            controller: widget.controller,
            refreshStream: refreshStream.stream,
            onRefresh: ()=> refreshStream.add(DateTime.now()),
          ),
          PostsTabBuilder(
            postStatue: PostReviewStatus.POST_REVIEW_STATUS_ACCEPTED,
            controller: widget.controller,
            refreshStream: refreshStream.stream,
            onRefresh: ()=> refreshStream.add(DateTime.now()),
          ),
          PostsTabBuilder(
            postStatue: PostReviewStatus.POST_REVIEW_STATUS_REJECTED,
            controller: widget.controller,
            refreshStream: refreshStream.stream,
            onRefresh: ()=> refreshStream.add(DateTime.now()),
          ),
        ],
      ),
    );
  }
}

class PostsTabBuilder extends StatefulWidget {
  PostsTabBuilder({
    required this.postStatue,
    required this.controller,
    required this.refreshStream,
    required this.onRefresh,
  }) : super(key: ValueKey(postStatue));

  final PostReviewStatus postStatue;
  final AllPostsController controller;
  final Stream<DateTime> refreshStream;
  final void Function() onRefresh;

  @override
  State<PostsTabBuilder> createState() => _PostsTabBuilderState();
}

class _PostsTabBuilderState extends State<PostsTabBuilder>
    with AutomaticKeepAliveClientMixin<PostsTabBuilder> {

  final pagingController = PagingController<String, Post>(firstPageKey: '0');

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    pagingController.addPageRequestListener((pageKey) async {
      final postsResp = await widget.controller.postService.listPosts(
        request: ListPostsRequest(
          filter: ListPostsFilter(reviewStatus: widget.postStatue),
          pagination: InfiniteScrollPaginationInfo(
            pageSize: 5,
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
    });
    widget.refreshStream.listen((event) {
      pagingController.refresh();
    });
  }

  @override
  void dispose() {
    pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return PagedListView<String, Post>(
      pagingController: pagingController,
      builderDelegate: PagedChildBuilderDelegate(
        itemBuilder: (context, post, index) {
          final acceptPost = AppLocalizations.of(context).acceptPost;
          final rejectPost = AppLocalizations.of(context).rejectPost;
          final deletePost = AppLocalizations.of(context).deletePost;
          return Column(
            children: [
              ColoredBox(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: CircleAvatar(
                            backgroundImage: const AssetImage(
                              'assets/backgroundImage.jpg',
                            ),
                            foregroundImage: AssetImage(
                              post.user.imageUrl,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                post.user.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                post.date.toString(),
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                        PopupMenuButton(
                          icon: const Icon(Icons.more_horiz),
                          itemBuilder: (context) {
                            if (widget.postStatue ==
                                PostReviewStatus.POST_REVIEW_STATUS_REJECTED) {
                              return [
                                PopupMenuItem(
                                  value: deletePost,
                                  child: Text(
                                    deletePost,
                                  ),
                                ),
                                PopupMenuItem(
                                  value: acceptPost,
                                  child: Text(
                                    acceptPost,
                                  ),
                                ),
                                PopupMenuItem(
                                  value: rejectPost,
                                  child: Text(
                                    rejectPost,
                                  ),
                                ),
                              ];
                            } else {
                              return [
                                PopupMenuItem(
                                  value: acceptPost,
                                  child: Text(
                                    acceptPost,
                                  ),
                                ),
                                PopupMenuItem(
                                  value: rejectPost,
                                  child: Text(
                                    rejectPost,
                                  ),
                                ),
                              ];
                            }
                          },
                          onSelected: (value) {
                            if (value == acceptPost) {
                              post.review.status =
                                  PostReviewStatus.POST_REVIEW_STATUS_ACCEPTED;
                              post.review.reviewedBy = widget
                                  .controller.userService.currentUser
                                  .of(context)!
                                  .userInfo
                                  .name;
                            } else if (value == rejectPost) {
                              post.review.status =
                                  PostReviewStatus.POST_REVIEW_STATUS_REJECTED;
                              post.review.reviewedBy = widget
                                  .controller.userService.currentUser
                                  .of(context)!
                                  .userInfo
                                  .name;
                            } else if (value == deletePost) {
                              widget.controller.deletePost(post.id);
                            }
                            widget.onRefresh();
                          },
                        ),
                      ],
                    ),
                    Text(
                      post.content,
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: SizedBox(
                        height: 100,
                      ),
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            Icons.thumb_up,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            post.stats.likes.toString(),
                            style: TextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        Text(
                          '${post.stats.comments} ${AppLocalizations.of(context).comments}',
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          '${post.stats.shares} ${AppLocalizations.of(context).shares}',
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Text(
                      post.review.status ==
                              PostReviewStatus.POST_REVIEW_STATUS_PENDING
                          ? ''
                          : '${AppLocalizations.of(context).reviewedBy} : ${post.review.reviewedBy}',
                    ),
                  ],
                ),
              ),
              Container(
                height: 5,
                color: Colors.grey,
              ),
            ],
          );
        },
      ),
    );
  }
}
