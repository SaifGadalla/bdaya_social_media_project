// ignore_for_file: lines_longer_than_80_chars

import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:integration_test/integration_test.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:social_media_bdaya/app/view/app.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/post.pb.dart';
import 'package:social_media_bdaya/get_it_config.dart';
import 'package:social_media_bdaya/pages/all_posts/view.dart';
import 'package:social_media_bdaya/pages/current_user_profile/view.dart';
import 'package:social_media_bdaya/pages/update_post_reactive/view.dart';

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

    await tester.tap(find.text('My profile'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('Create post'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('Add Form'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(ReactiveTextField<String>), findsOneWidget);

    await tester.tap(find.byType(ReactiveTextField<String>));

    await tester.pump(const Duration(seconds: 4));

    await tester.tap(find.text('Create'));

    await tester.pump(const Duration(seconds: 4));

    expect(find.text('Field must not be empty'), findsOneWidget);

    await tester.tap(find.byType(ReactiveTextField<String>));

    await tester.pump(const Duration(seconds: 4));

    TestTextInput().enterText('yuhoooooo');

    await tester.pump(const Duration(seconds: 4));

    await tester.tap(find.text('Create'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(CurrentUserProfileView), findsOneWidget);

    await tester.pageBack();

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('All posts'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('Pending'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.ensureVisible(find.text('some content',skipOffstage: false),);

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.text('some content'), findsOne);

    await tester.tap(find.byIcon(Icons.more_horiz).last);

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('Accept post'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.pageBack();

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('My profile'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.byIcon(Icons.more_horiz).first);

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('Update post'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(UpdatePostReactiveView), findsOneWidget);

    await tester.tap(find.text('Add Form'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.byType(ReactiveTextField<String>));

    await tester.pump(const Duration(seconds: 4));

    TestTextInput().enterText('Nuh uh');

    await tester.pump(const Duration(seconds: 4));

    await tester.tap(find.text('Update'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(CurrentUserProfileView), findsOneWidget);

    await tester.scrollUntilVisible(find.text('updated'),30);

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.text('updated'), findsOne);

    await tester.tap(find.byIcon(Icons.more_horiz).first);

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('Delete post'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.text('updated'), findsNothing);
  });
}
