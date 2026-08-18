import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wassaly/core/shared/enums/app_status.dart';
import 'package:wassaly/core/utils/failure.dart';
import 'package:wassaly/core/utils/pagination.dart';
import 'package:wassaly/features/notifications/domain/entities/notification_entity.dart';
import 'package:wassaly/features/notifications/domain/usecases/delete_all_notifications_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/delete_notification_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/get_notification_status_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/get_notifications_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/mark_as_read_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/read_all_notifications_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/toggle_notification_usecase.dart';
import 'package:wassaly/features/notifications/presentation/bloc/notifications_bloc.dart';
import 'package:wassaly/features/notifications/presentation/bloc/notifications_event.dart';
import 'package:wassaly/features/notifications/presentation/bloc/notifications_state.dart';

class MockGetNotificationsUseCase extends Mock implements GetNotificationsUseCase {}
class MockMarkAsReadUseCase extends Mock implements MarkAsReadUseCase {}
class MockDeleteNotificationUseCase extends Mock implements DeleteNotificationUseCase {}
class MockDeleteAllNotificationsUseCase extends Mock implements DeleteAllNotificationsUseCase {}
class MockReadAllNotificationsUseCase extends Mock implements ReadAllNotificationsUseCase {}
class MockGetNotificationStatusUseCase extends Mock implements GetNotificationStatusUseCase {}
class MockToggleNotificationUseCase extends Mock implements ToggleNotificationUseCase {}

void main() {
  late MockGetNotificationsUseCase mockGetNotificationsUseCase;
  late MockMarkAsReadUseCase mockMarkAsReadUseCase;
  late MockDeleteNotificationUseCase mockDeleteNotificationUseCase;
  late MockDeleteAllNotificationsUseCase mockDeleteAllNotificationsUseCase;
  late MockReadAllNotificationsUseCase mockReadAllNotificationsUseCase;
  late MockGetNotificationStatusUseCase mockGetNotificationStatusUseCase;
  late MockToggleNotificationUseCase mockToggleNotificationUseCase;

  final tNotification = NotificationEntity(
    id: 1,
    title: 'New Notification',
    body: 'Hello World',
    type: 'general',
    data: const {},
    isRead: false,
    createdAt: DateTime(2026, 8, 18),
  );

  setUp(() {
    mockGetNotificationsUseCase = MockGetNotificationsUseCase();
    mockMarkAsReadUseCase = MockMarkAsReadUseCase();
    mockDeleteNotificationUseCase = MockDeleteNotificationUseCase();
    mockDeleteAllNotificationsUseCase = MockDeleteAllNotificationsUseCase();
    mockReadAllNotificationsUseCase = MockReadAllNotificationsUseCase();
    mockGetNotificationStatusUseCase = MockGetNotificationStatusUseCase();
    mockToggleNotificationUseCase = MockToggleNotificationUseCase();
  });

  NotificationsBloc buildBloc() => NotificationsBloc(
        getNotificationsUseCase: mockGetNotificationsUseCase,
        markAsReadUseCase: mockMarkAsReadUseCase,
        deleteNotificationUseCase: mockDeleteNotificationUseCase,
        deleteAllNotificationsUseCase: mockDeleteAllNotificationsUseCase,
        readAllNotificationsUseCase: mockReadAllNotificationsUseCase,
        getNotificationStatusUseCase: mockGetNotificationStatusUseCase,
        toggleNotificationUseCase: mockToggleNotificationUseCase,
      );

  group('NotificationsBloc', () {
    test('initial state has AppStatus.initial', () async {
      final bloc = buildBloc();
      expect(bloc.state.status, AppStatus.initial);
      await bloc.close();
    });

    blocTest<NotificationsBloc, NotificationsState>(
      'emits [loading, success] when GetNotificationsEvent succeeds',
      build: () {
        when(() => mockGetNotificationsUseCase(page: any(named: 'page')))
            .thenAnswer((_) async => Right<Failure, PaginatedResponse<NotificationEntity>>(
                  PaginatedResponse<NotificationEntity>(data: [tNotification]),
                ),);
        return buildBloc();
      },
      act: (bloc) => bloc.add(const GetNotificationsEvent()),
      expect: () => [
        const NotificationsState(status: AppStatus.loading),
        NotificationsState(
          status: AppStatus.success,
          notifications: [tNotification],
          hasMore: false,
          unreadCount: 1,
        ),
      ],
    );

    blocTest<NotificationsBloc, NotificationsState>(
      'emits [loading, failure] when GetNotificationsEvent fails',
      build: () {
        when(() => mockGetNotificationsUseCase(page: any(named: 'page')))
            .thenAnswer((_) async => const Left<Failure, PaginatedResponse<NotificationEntity>>(
                  ServerFailure('Failed to load notifications'),
                ),);
        return buildBloc();
      },
      act: (bloc) => bloc.add(const GetNotificationsEvent()),
      expect: () => [
        const NotificationsState(status: AppStatus.loading),
        const NotificationsState(
          status: AppStatus.failure,
          errorMessage: 'Failed to load notifications',
        ),
      ],
    );
  });
}
