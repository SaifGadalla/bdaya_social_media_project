import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:social_media_bdaya/app/view/app.dart';
import 'package:social_media_bdaya/get_it_config.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('App is working', (WidgetTester tester) async {

    Logger.root.onRecord.listen(bdayaOnRecordHandlerFactory());
    setPathUrlStrategy();

    getIt.allowReassignment = true;
    configureDependencies(env: Environment.test);

    await tester.pumpWidget(const App());

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('Welcome to our app'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('Login'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.byIcon(Icons.settings));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('Settings'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    final themeMode = getIt<BdayaAppThemeServiceBase>().themeMode;
    
    final language = getIt<BdayaAppThemeServiceBase>().locale;

    await tester.tap(find.text('Light theme mode'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(themeMode.$, ThemeMode.light);

    await tester.tap(find.text('Dark theme mode'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(themeMode.$, ThemeMode.dark);

    await tester.tap(find.text('Arabic'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(language.$,const Locale('ar'));

    await tester.tap(find.text('اللغة الانجليزية'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(language.$,const Locale('en'));
  });
}
