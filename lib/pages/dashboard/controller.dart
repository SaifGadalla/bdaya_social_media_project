import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:social_media_bdaya/services/routing_service.dart';
import 'package:social_media_bdaya/services/user_service.dart';

@lazySingleton
class DashboardController extends BdayaCombinedController {  
  DashboardController(this.userService);

  final UserService userService;

  void navigateToSettings(BuildContext context){
     GoRouter.of(context).goNamed(AppRouteNames.settings);
  }

  void navigateToCurrentUserProfile(BuildContext context,){
    GoRouter.of(context).goNamed(
      AppRouteNames.currentUserProfile,
    );
  }

  void navigateToAllUsers(BuildContext context){
    GoRouter.of(context).goNamed(AppRouteNames.allUsers);
  }

  void navigateToAllPosts(BuildContext context){
    GoRouter.of(context).goNamed(AppRouteNames.allPosts);
  }

}
