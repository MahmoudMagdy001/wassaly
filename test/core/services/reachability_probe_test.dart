import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:wassaly/core/services/internet_connection_service.dart';

void main() {
  group('ReachabilityProbe against local HttpServer', () {
    late HttpServer server;
    late int port;

    setUp(() async {
      server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
      port = server.port;

      server.listen((request) async {
        switch (request.uri.path) {
          case '/status204':
            request.response.statusCode = HttpStatus.noContent;
            await request.response.close();
          case '/status302':
            request.response.statusCode = HttpStatus.found;
            request.response.headers.set(HttpHeaders.locationHeader, '/login');
            await request.response.close();
          case '/status200_wrong':
            request.response.statusCode = HttpStatus.ok;
            request.response.write('Captive Portal Login');
            await request.response.close();
          case '/status200_success':
            request.response.statusCode = HttpStatus.ok;
            request.response.write('Success');
            await request.response.close();
          case '/status500':
            request.response.statusCode = HttpStatus.internalServerError;
            await request.response.close();
          case '/slow':
            await Future<void>.delayed(const Duration(milliseconds: 300));
            request.response.statusCode = HttpStatus.noContent;
            await request.response.close();
          default:
            request.response.statusCode = HttpStatus.notFound;
            await request.response.close();
        }
      });
    });

    tearDown(() async {
      await server.close(force: true);
    });

    test('204 response yields ProbeOk', () async {
      final probe = ReachabilityProbe();
      addTearDown(probe.close);

      final target = ProbeTarget(
        Uri.parse('http://127.0.0.1:$port/status204'),
        (status, _) => status == 204,
      );

      final result = await probe.run(target);
      expect(result, isA<ProbeOk>());
      expect((result as ProbeOk).latencyMs, greaterThanOrEqualTo(0));
    });

    test('302 redirect yields ProbePortal', () async {
      final probe = ReachabilityProbe();
      addTearDown(probe.close);

      final target = ProbeTarget(
        Uri.parse('http://127.0.0.1:$port/status302'),
        (status, _) => status == 204,
      );

      final result = await probe.run(target);
      expect(result, isA<ProbePortal>());
    });

    test('200 with wrong body yields ProbePortal', () async {
      final probe = ReachabilityProbe();
      addTearDown(probe.close);

      final target = ProbeTarget(
        Uri.parse('http://127.0.0.1:$port/status200_wrong'),
        (status, body) => status == 200 && body.contains('Success'),
      );

      final result = await probe.run(target);
      expect(result, isA<ProbePortal>());
    });

    test('500 server error yields ProbeFailed', () async {
      final probe = ReachabilityProbe();
      addTearDown(probe.close);

      final target = ProbeTarget(
        Uri.parse('http://127.0.0.1:$port/status500'),
        (status, _) => status == 204,
      );

      final result = await probe.run(target);
      expect(result, isA<ProbeFailed>());
    });

    test('slow response exceeding timeout yields ProbeFailed', () async {
      final probe = ReachabilityProbe(
        timeout: const Duration(milliseconds: 100),
      );
      addTearDown(probe.close);

      final target = ProbeTarget(
        Uri.parse('http://127.0.0.1:$port/slow'),
        (status, _) => status == 204,
      );

      final result = await probe.run(target);
      expect(result, isA<ProbeFailed>());
    });

    test('consensus needs 2 of 3 and returns median latency', () async {
      final targets = [
        ProbeTarget(
          Uri.parse('http://127.0.0.1:$port/status204'),
          (status, _) => status == 204,
        ),
        ProbeTarget(
          Uri.parse('http://127.0.0.1:$port/status200_success'),
          (status, body) => status == 200 && body.contains('Success'),
        ),
        ProbeTarget(
          Uri.parse('http://127.0.0.1:$port/status500'),
          (status, _) => status == 204,
        ),
      ];

      final probe = ReachabilityProbe(targets: targets);
      addTearDown(probe.close);

      final fullResult = await probe.runAll();
      expect(fullResult.isSuccess, isTrue);
      expect(fullResult.latencyMs, isNotNull);
      expect(fullResult.issue, NetworkIssue.none);
    });

    test('consensus fails with captivePortal if any probe saw portal', () async {
      final targets = [
        ProbeTarget(
          Uri.parse('http://127.0.0.1:$port/status302'),
          (status, _) => status == 204,
        ),
        ProbeTarget(
          Uri.parse('http://127.0.0.1:$port/status500'),
          (status, _) => status == 204,
        ),
        ProbeTarget(
          Uri.parse('http://127.0.0.1:$port/status500'),
          (status, _) => status == 204,
        ),
      ];

      final probe = ReachabilityProbe(targets: targets);
      addTearDown(probe.close);

      final fullResult = await probe.runAll();
      expect(fullResult.isSuccess, isFalse);
      expect(fullResult.issue, NetworkIssue.captivePortal);
    });
  });
}
