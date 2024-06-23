import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:social_media_bdaya/l10n/l10n.dart';
import 'package:social_media_bdaya/pages/settings/controller.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({
    required this.controller, super.key,
  });

  static Widget hooked({
    BdayaGetItHookMode hookMode = BdayaGetItHookMode.lazySingleton,
    String? instanceName,
    Object? param1,
    Object? param2,
    List<Object?>? keys,
  }) {
    return HookBuilder(
      builder: (context) => SettingsView(
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

  final SettingsController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(AppLocalizations.of(context).chooseTheme),
          MaterialButton(
            height: 60,
            minWidth: MediaQuery.of(context).size.width,
            onPressed: (){controller.setLightThemeMode(context);},
            child: Text(
              AppLocalizations.of(context).settingsLightThemeModeButton,
            ),
          ),
          MaterialButton(
            height: 60,
            minWidth: MediaQuery.of(context).size.width,
            onPressed: (){controller.setDarkThemeMode(context);},
            child: Text(
              AppLocalizations.of(context).settingsDarkThemeModeButton,
            ),
          ),
          Text(AppLocalizations.of(context).chooseLanguage),
          MaterialButton(
            height: 60,
            minWidth: MediaQuery.of(context).size.width,
            onPressed: (){controller.setArabicLanguage(context);},
            child: Text(AppLocalizations.of(context).settingsArabicButton),
          ),
          MaterialButton(
            height: 60,
            minWidth: MediaQuery.of(context).size.width,
            onPressed: (){controller.setEnglishLanguage(context);},
            child: Text(AppLocalizations.of(context).settingsEnglishButton),
          ),
          MaterialButton(
            height: 60,
            minWidth: MediaQuery.of(context).size.width,
            onPressed: () {
              controller.logout(context);
            },
            child: Text(AppLocalizations.of(context).logout),
          ),
        ],
      ),
    );
  }
}
