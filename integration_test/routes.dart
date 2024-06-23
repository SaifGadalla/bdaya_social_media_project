import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:social_media_bdaya/app/view/app.dart';
import 'package:social_media_bdaya/get_it_config.dart';
import 'package:social_media_bdaya/pages/all_posts/view.dart';
import 'package:social_media_bdaya/pages/all_users/view.dart';
import 'package:social_media_bdaya/pages/auth/view.dart';
import 'package:social_media_bdaya/pages/current_user_profile/view.dart';
import 'package:social_media_bdaya/pages/dashboard/view.dart';
import 'package:social_media_bdaya/pages/onboarding/view.dart';
import 'package:social_media_bdaya/pages/posts_feed/view.dart';
import 'package:social_media_bdaya/pages/settings/view.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('App is working', (WidgetTester tester) async {
    Logger.root.onRecord.listen(bdayaOnRecordHandlerFactory());
    setPathUrlStrategy();

    getIt.allowReassignment = true;
    configureDependencies(env: Environment.test);

    await tester.pumpWidget(const App());

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(OnboardingView), findsOneWidget);

    await tester.tap(find.text('Welcome to our app'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(AuthView), findsOneWidget);

    await tester.tap(find.text('Login'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(PostsFeedView), findsOneWidget);

    await tester.tap(find.byIcon(Icons.settings));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(DashboardView), findsOneWidget);

    await tester.tap(find.text('Settings'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(SettingsView), findsOneWidget);

    await tester.tap(find.text('Logout'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(AuthView), findsOneWidget);

    await tester.tap(find.text('Login'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(PostsFeedView), findsOneWidget);

    await tester.tap(find.byIcon(Icons.settings));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(DashboardView), findsOneWidget);

    await tester.tap(find.text('Settings'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(SettingsView), findsOneWidget);

    await tester.pageBack();

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('My profile'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(CurrentUserProfileView), findsOneWidget);

    await tester.pageBack();

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('All users'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(AllUsersView), findsOneWidget);

    await tester.tap(find.text('Users'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(UsersTabBuilder), findsOneWidget);

    await tester.tap(find.text('Banned users'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(UsersTabBuilder), findsOneWidget);

    await tester.pageBack();

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.tap(find.text('All posts'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(AllPostsView), findsOneWidget);

    await tester.tap(find.text('Pending'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(PostsTabBuilder), findsOneWidget);

    await tester.tap(find.text('Accepted'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(PostsTabBuilder), findsOneWidget);

    await tester.tap(find.text('Rejected'));

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(PostsTabBuilder), findsOneWidget);

    await tester.pageBack();

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.pageBack();

    await tester.pumpAndSettle(const Duration(seconds: 4));

    await tester.pageBack();

    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(find.byType(OnboardingView), findsOneWidget);

  });

  
}
