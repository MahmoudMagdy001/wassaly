import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wassaly/core/services/internet_connection_service.dart';
import 'package:wassaly/core/shared/wrappers/internet_connection_wrapper.dart';
import 'package:wassaly/l10n/app_localizations.dart';

class MockInternetConnectionService extends Mock
    implements IInternetConnectionService {}

void main() {
  late MockInternetConnectionService mockService;
  late StreamController<NetworkState> stateController;

  setUp(() {
    mockService = MockInternetConnectionService();
    stateController = StreamController<NetworkState>.broadcast();

    when(() => mockService.stateStream)
        .thenAnswer((_) => stateController.stream);
    when(() => mockService.currentState).thenReturn(NetworkState.connected);
    when(() => mockService.lastIssue).thenReturn(NetworkIssue.none);
    when(() => mockService.checkNow()).thenAnswer((_) async {});
  });

  tearDown(() async {
    await stateController.close();
  });

  Widget buildTestableWidget({
    required Widget child,
    required IInternetConnectionService service,
    Locale locale = const Locale('en'),
  }) =>
      ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (context, _) => MaterialApp(
          localizationsDelegates: S.localizationsDelegates,
          supportedLocales: S.supportedLocales,
          locale: locale,
          home: MediaQuery(
            data: const MediaQueryData(padding: EdgeInsets.only(top: 44)),
            child: InternetConnectionWrapper(
              service: service,
              child: child,
            ),
          ),
        ),
      );

  group('InternetConnectionWrapper Widget Tests', () {
    testWidgets('shows captivePortal message when disconnected',
        (tester) async {
      when(() => mockService.currentState)
          .thenReturn(NetworkState.disconnected);
      when(() => mockService.lastIssue)
          .thenReturn(NetworkIssue.captivePortal);

      await tester.pumpWidget(
        buildTestableWidget(
          service: mockService,
          child: const Text('App Content'),
        ),
      );
      await tester.pumpAndSettle();

      expect(
        find.text(
            'Network needs sign-in or has no data balance — tap to check'),
        findsOneWidget,
      );
      expect(find.byIcon(Icons.wifi_off_rounded), findsOneWidget);
    });

    testWidgets('shows noInternet message and soft orange banner when disconnected',
        (tester) async {
      when(() => mockService.currentState)
          .thenReturn(NetworkState.disconnected);
      when(() => mockService.lastIssue).thenReturn(NetworkIssue.noInternet);

      await tester.pumpWidget(
        buildTestableWidget(
          service: mockService,
          child: const Text('App Content'),
        ),
      );
      await tester.pumpAndSettle();

      expect(
        find.text(
            'Connected to the network but no internet — check your data balance'),
        findsOneWidget,
      );
      expect(find.byIcon(Icons.wifi_off_rounded), findsOneWidget);

      final material = tester.widget<Material>(
        find.descendant(
          of: find.byType(InternetConnectionWrapper),
          matching: find.byType(Material),
        ).first,
      );
      expect(material.color, const Color(0xFFE07A24));
    });

    testWidgets('shows noInterface message when disconnected', (tester) async {
      when(() => mockService.currentState)
          .thenReturn(NetworkState.disconnected);
      when(() => mockService.lastIssue).thenReturn(NetworkIssue.noInterface);

      await tester.pumpWidget(
        buildTestableWidget(
          service: mockService,
          child: const Text('App Content'),
        ),
      );
      await tester.pumpAndSettle();

      expect(
        find.text('No internet connection — Tap to retry'),
        findsOneWidget,
      );
    });

    testWidgets('shows Arabic text when locale is ar', (tester) async {
      when(() => mockService.currentState)
          .thenReturn(NetworkState.disconnected);
      when(() => mockService.lastIssue)
          .thenReturn(NetworkIssue.captivePortal);

      await tester.pumpWidget(
        buildTestableWidget(
          service: mockService,
          locale: const Locale('ar'),
          child: const Text('App Content'),
        ),
      );
      await tester.pumpAndSettle();

      expect(
        find.text('الشبكة محتاجة تسجيل دخول أو الباقة منتهية — اضغط للفحص'),
        findsOneWidget,
      );
    });

    testWidgets('shows unstable style when network is unstable',
        (tester) async {
      when(() => mockService.currentState).thenReturn(NetworkState.unstable);

      await tester.pumpWidget(
        buildTestableWidget(
          service: mockService,
          child: const Text('App Content'),
        ),
      );
      await tester.pumpAndSettle();

      expect(
        find.text('Internet connection unstable — Tap to check'),
        findsOneWidget,
      );
      expect(find.byIcon(Icons.network_check_rounded), findsOneWidget);
    });

    testWidgets('restored banner shows and auto-hides after 1.8 seconds',
        (tester) async {
      when(() => mockService.currentState)
          .thenReturn(NetworkState.disconnected);
      when(() => mockService.lastIssue).thenReturn(NetworkIssue.noInternet);

      await tester.pumpWidget(
        buildTestableWidget(
          service: mockService,
          child: const Text('App Content'),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.wifi_off_rounded), findsOneWidget);

      // Reconnect
      when(() => mockService.currentState).thenReturn(NetworkState.connected);
      when(() => mockService.lastIssue).thenReturn(NetworkIssue.none);
      stateController.add(NetworkState.connected);

      await tester.pump(const Duration(milliseconds: 100));
      expect(find.text('Internet connection restored'), findsOneWidget);
      expect(find.byIcon(Icons.check_circle_outline_rounded), findsOneWidget);

      // Advance 1800 ms
      await tester.pump(const Duration(milliseconds: 1800));
      await tester.pumpAndSettle();

      // Banner should be hidden now
      expect(find.text('Internet connection restored'), findsNothing);
    });

    testWidgets('tapping banner calls checkNow()', (tester) async {
      when(() => mockService.currentState)
          .thenReturn(NetworkState.disconnected);
      when(() => mockService.lastIssue).thenReturn(NetworkIssue.noInternet);

      await tester.pumpWidget(
        buildTestableWidget(
          service: mockService,
          child: const Text('App Content'),
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.byType(InkWell));
      await tester.pump();

      verify(() => mockService.checkNow()).called(1);
    });

    testWidgets(
        'removes top padding for child when banner visible to prevent double top inset',
        (tester) async {
      late BuildContext childContext;

      when(() => mockService.currentState)
          .thenReturn(NetworkState.disconnected);
      when(() => mockService.lastIssue).thenReturn(NetworkIssue.noInternet);

      await tester.pumpWidget(
        buildTestableWidget(
          service: mockService,
          child: Builder(
            builder: (ctx) {
              childContext = ctx;
              return const Text('App Content');
            },
          ),
        ),
      );
      await tester.pumpAndSettle();

      // Banner is visible: child should have top padding stripped
      expect(MediaQuery.paddingOf(childContext).top, 0.0);
    });
  });
}
