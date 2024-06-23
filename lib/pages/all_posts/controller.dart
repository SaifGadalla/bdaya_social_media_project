// ignore_for_file: lines_longer_than_80_chars

import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/service.pbgrpc.dart';
import 'package:social_media_bdaya/services/post_service.dart';
import 'package:social_media_bdaya/services/user_service.dart';

@lazySingleton
class AllPostsController extends BdayaCombinedController {
  AllPostsController(
    this.postService,
    this.userService /*add getIt dependencies here*/,
  );

  final PostService postService;
  final UserService userService;

  TabController? tabController;


  Future<void> deletePost(String id) async {
   await postService.deletePost(request: DeletePostRequest(id: id));
  }
}
