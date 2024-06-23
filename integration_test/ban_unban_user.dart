import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:social_media_bdaya/app/view/app.dart';
import 'package:social_media_bdaya/get_it_config.dart';
import 'package:social_media_bdaya/pages/all_users/view.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('App is working', (WidgetTester tester) async {
    Logger.root.onRecord.listen(bdayaOnRecordHandlerFactory());
    setPathUrlStrategy();

    getIt.allowReassignment = true;
    configureDependencies(env: Environment.test);
    await tester.pumpWidget(const App());

    await tester.pumpAndSettle();

    await tester.tap(find.text('Welcome to our app'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('Login'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.byIcon(Icons.settings));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('All users'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(AllUsersView), findsOneWidget);

    await tester.tap(find.text('Users'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(UsersTabBuilder), findsOneWidget);

    await tester.tap(find.byIcon(Icons.more_horiz).at(0));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('Ban user'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.text('Saif'), findsNothing);

    await tester.tap(find.text('Banned users'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(UsersTabBuilder), findsOneWidget);

    expect(find.text('Saif'), findsOne);

    await tester.tap(find.byIcon(Icons.more_horiz).at(0));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('Unban user'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.text('Saif'), findsNothing);

    await tester.tap(find.text('Users'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.text('Saif'), findsOne);
  });
}
