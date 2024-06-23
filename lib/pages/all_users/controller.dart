import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:social_media_bdaya/services/user_service.dart';

@lazySingleton
class AllUsersController extends BdayaCombinedController {  
  AllUsersController(this.userService/*add getIt dependencies here*/); 

  final UserService userService;

  TabController? tabController;
}
