// ignore_for_file: lines_longer_than_80_chars

import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/post.pb.dart';
import 'package:social_media_bdaya/l10n/l10n.dart';
import 'package:social_media_bdaya/pages/posts_feed/controller.dart';

class PostsFeedView extends StatelessWidget {
  const PostsFeedView({
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
      builder: (context) => PostsFeedView(
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

  final PostsFeedController controller;

  @override
  Widget build(BuildContext context) {
    // final posts = controller.posts.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              IconButton(
                onPressed: () {
                  controller.navigateToDashBoard(context);
                },
                icon: const Icon(Icons.settings),
              ),
              IconButton(
                onPressed: controller.refreshPosts,
                icon: const Icon(Icons.refresh),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/home_background.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                  Center(
                    child: Text(
                      '${AppLocalizations.of(context).postsFeedAppBarTitle} ${controller.userService.currentUser.of(context)?.userInfo.name}!',
                      style: const TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            expandedHeight: 230,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Container(
                height: 32,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
              ),
            ),
          ),
          PagedSliverList<String, Post>(
            pagingController: controller.pagingController,
            builderDelegate: PagedChildBuilderDelegate(
              itemBuilder: (context, post, index) {
                return Column(
                  key: Key(post.id),
                  children: [
                    ColoredBox(
                      color: Colors.white,
                      child: Column(
                        // key: Key(categories[index].id),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Material(
                            color: Colors.white,
                            child: InkWell(
                              onTap: () {
                                controller.navigateToPost(context, post.id);
                              },
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Material(
                                      color: Colors.white,
                                      child: InkWell(
                                        onTap: () {
                                          controller.navigateToProfile(
                                            context,
                                            post.user.id,
                                          );
                                        },
                                        child: CircleAvatar(
                                          backgroundImage: const AssetImage(
                                              'assets/backgroundImage.jpg',),
                                          foregroundImage:
                                              AssetImage(post.user.imageUrl),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                ],
                              ),
                            ),
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
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.thumb_up_alt_outlined,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.mode_comment_outlined,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.subdirectory_arrow_right_outlined,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
          ),
        ],
      ),
    );
  }
}
