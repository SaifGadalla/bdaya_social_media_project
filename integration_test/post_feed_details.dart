import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:social_media_bdaya/app/view/app.dart';
import 'package:social_media_bdaya/get_it_config.dart';
import 'package:social_media_bdaya/services/user_service.dart';

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

    final usersResponse = await getIt<UserService>().getUsers();

    final userName = usersResponse.users[1].userInfo.name;

    await tester.scrollUntilVisible(find.text(userName),50);

    expect(find.widgetWithText(Row, userName), findsAtLeast(1));

    await tester.tap(find.text(userName));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.text(userName), findsOneWidget);
  });
}
