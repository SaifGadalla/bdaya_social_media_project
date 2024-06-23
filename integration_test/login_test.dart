import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
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

    await tester.pumpAndSettle(const Duration(seconds: 10));
    
    expect(find.text('Welcome to our app'), findsOneWidget);

    await tester.tap(find.text('Welcome to our app'));

    await tester.pumpAndSettle();

    expect(find.text('Login'), findsOneWidget);

    await tester.tap(find.text('Login'));

    await tester.pumpAndSettle();

    final userName = getIt<UserService>().currentUser.$?.userInfo.name;

    expect(find.textContaining(userName.toString()), findsOneWidget);

    await tester.pumpAndSettle();
  });
}
