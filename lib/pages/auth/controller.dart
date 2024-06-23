import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_media_bdaya/services/routing_service.dart';
import 'package:social_media_bdaya/services/user_service.dart';

@lazySingleton
class AuthController extends BdayaCombinedController {
  AuthController(this.userService /*add getIt dependencies here*/);

  final UserService userService;

  void login(BuildContext context,) {
    userService.login();
    if (userService.currentUser.$ != null) {
      GoRouter.of(context).goNamed(AppRouteNames.postsFeed);
    }
  }
}
