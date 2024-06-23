import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:social_media_bdaya/app/view/app.dart';
import 'package:social_media_bdaya/get_it_config.dart';
import 'package:social_media_bdaya/pages/all_posts/view.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('App is working', (WidgetTester tester) async {    
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

    await tester.tap(find.text('All posts'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(AllPostsView), findsOneWidget);

    await tester.tap(find.text('Pending'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(PostsTabBuilder), findsOneWidget);

    await tester.tap(find.byIcon(Icons.more_horiz).at(0));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('Accept post'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('Accepted'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(PostsTabBuilder), findsOneWidget);

    expect(find.text('hello everyone'), findsOne);

    await tester.tap(find.byIcon(Icons.more_horiz).at(0));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('Reject post'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('Rejected'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.text('hello everyone'), findsOne);

    await tester.tap(find.byIcon(Icons.more_horiz).at(0));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('Accept post'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('Accepted'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.text('hello everyone'), findsOne);
  });
}
