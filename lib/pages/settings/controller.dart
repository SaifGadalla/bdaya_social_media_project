import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_media_bdaya/services/routing_service.dart';
import 'package:social_media_bdaya/services/user_service.dart';

@lazySingleton
class SettingsController extends BdayaCombinedController {
  SettingsController(this.bdayaAppThemeServiceBase, this.userService);

  final BdayaAppThemeServiceBase bdayaAppThemeServiceBase;
  final UserService userService;

  void setLightThemeMode (BuildContext context){
    bdayaAppThemeServiceBase.setThemeMode(ThemeMode.light);
  }

  void setDarkThemeMode (BuildContext context){
    bdayaAppThemeServiceBase.setThemeMode(ThemeMode.dark);
  }

  void setArabicLanguage (BuildContext context){
    bdayaAppThemeServiceBase.setLocale(const Locale('ar'));
  }

  void setEnglishLanguage (BuildContext context){
    bdayaAppThemeServiceBase.setLocale(const Locale('en'));
  }

  void logout(BuildContext context){
    userService.logout();
    context.goNamed(AppRouteNames.auth);
  }
  
}
