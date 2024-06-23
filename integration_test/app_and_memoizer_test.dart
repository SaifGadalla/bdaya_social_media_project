import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:social_media_bdaya/app/view/app.dart';
import 'package:social_media_bdaya/get_it_config.dart';
import 'package:social_media_bdaya/services/init_service.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('App is working', (WidgetTester tester) async {
    setPathUrlStrategy();

    getIt.allowReassignment = true;
    configureDependencies(env: Environment.test);
    await tester.pumpWidget(const App());

    await tester.pumpAndSettle();

    final initService = getIt<InitService>();

    expect(initService.memoizer.hasRun, isTrue);

    await tester.pumpAndSettle();

  });
}
