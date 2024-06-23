// ignore_for_file: lines_longer_than_80_chars

import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/post.pb.dart';
import 'package:social_media_bdaya/l10n/l10n.dart';
import 'package:social_media_bdaya/pages/current_user_profile/controller.dart';

class CurrentUserProfileView extends StatelessWidget {
  const CurrentUserProfileView({
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
      builder: (context) => CurrentUserProfileView(
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

  final CurrentUserProfileController controller;

  @override
  Widget build(BuildContext context) {
    final user = controller.userService.currentUser.of(context);
    if (user == null) {
      return const SizedBox.shrink();
    }
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(),
          SliverToBoxAdapter(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage:
                      const AssetImage('assets/backgroundImage.jpg'),
                  radius: 70,
                  foregroundImage: AssetImage(
                    user.userInfo.imageUrl,
                  ),
                ),
                Text(
                  user.userInfo.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.navigateToCreatePost(context);
                  },
                  child: Text(AppLocalizations.of(context).createPost),
                ),
              ],
            ),
          ),
          PagedSliverList<String, Post>(
            pagingController: controller.pagingController,
            builderDelegate: PagedChildBuilderDelegate(
              itemBuilder: (context, post, index) {
                final deletePost = AppLocalizations.of(context).deletePost;
                final updatePost = AppLocalizations.of(context).updatePost;
                return Column(
                  key: Key(
                    post.id,
                  ),
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
                                controller.navigateToPost(
                                  context,
                                  post.id,
                                );
                              },
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: CircleAvatar(
                                      backgroundImage: const AssetImage(
                                        'assets/backgroundImage.jpg',
                                      ),
                                      foregroundImage: AssetImage(
                                        controller.userService
                                            .currentUser
                                            .of(context)!
                                            .userInfo
                                            .imageUrl,
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
                                  PopupMenuButton(
                                    icon: const Icon(Icons.more_horiz),
                                    itemBuilder: (context) => [
                                      PopupMenuItem(
                                        value: deletePost,
                                        child: Text(deletePost),
                                      ),
                                      PopupMenuItem(
                                        value: updatePost,
                                        child: Text(updatePost),
                                      ),
                                    ],
                                    onSelected: (value) {
                                      if (value == deletePost) {
                                        controller.deletePost(
                                          post.id,
                                        );
                                      }
                                      if (value == updatePost) {
                                        controller.navigateToUpdatePost(
                                          context,
                                          post.id,
                                        );
                                      }
                                    },
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
