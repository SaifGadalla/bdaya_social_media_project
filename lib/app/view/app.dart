// ignore_for_file: lines_longer_than_80_chars

import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:social_media_bdaya/app/view/splash_screen.dart';
import 'package:social_media_bdaya/get_it_config.dart';
import 'package:social_media_bdaya/l10n/l10n.dart';
import 'package:social_media_bdaya/services/init_service.dart';
import 'package:social_media_bdaya/services/routing_service.dart';

class App extends StatelessWidget {
  const App({super.key});
  

  @override
  Widget build(BuildContext context) {
    return ReactiveFormConfig(
      validationMessages: {
        ValidationMessage.required:(error) => 'Field must not be empty',
      },
      child: SharedValue.wrapApp(
        Builder(
          builder: (context) {
            return MaterialApp.router(
              theme: ThemeData.light(            
                useMaterial3: true,
              ),
              darkTheme: ThemeData.dark(
                useMaterial3: true,
              ),
              themeMode: getIt<BdayaAppThemeServiceBase>().themeMode.of(context),
              locale: getIt<BdayaAppThemeServiceBase>().locale.of(context),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              routerConfig: getIt<RoutingService>().router,
              builder: (context, child) {
                return FutureBuilder(
                  future: getIt<InitService>().init(),
                  builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot,) {
                      if (snapshot.hasError) {
                        return ErrorWidget(snapshot.error!);
                      }
                      if (snapshot.connectionState == ConnectionState.done) {
                        return child!;
                      }
                      return const SplashScreen();
                    },
                  );
              },
            );
          },
        ),
      ),
    );
  }
}
