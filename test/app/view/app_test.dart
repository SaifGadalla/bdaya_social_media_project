import 'package:flutter_test/flutter_test.dart';
import 'package:social_media_bdaya/app/app.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(App), findsOneWidget);
    });
  });
}
