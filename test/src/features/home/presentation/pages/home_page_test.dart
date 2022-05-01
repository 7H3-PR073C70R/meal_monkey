import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meal_monkey/src/features/home/presentation/pages/home_page.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  const homeWidget = MediaQuery(
    data: MediaQueryData(),
    child: MaterialApp(
      home: HomePage(),
    ),
  );
  group('home page test', () {
    testWidgets('verify that the app bar has the user name',
        (WidgetTester tester) async {
      await mockNetworkImagesFor(() => tester.pumpWidget(homeWidget));
      expect(find.byType(AppBar), findsOneWidget);
      expect(find.text('Good Morning Protector!'), findsOneWidget);
      expect(find.text('View all'), findsWidgets);
    });
  });
}
