import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/notifications/presentation/bloc/notifications_bloc.dart';
import 'package:wassaly/features/notifications/presentation/bloc/notifications_event.dart';

class NotificationService {
  NotificationService._();
  static final NotificationService instance = NotificationService._();

  static const String _channelKey = 'basic_channel';
  static const String _channelName = 'Basic Notifications';
  static const String _channelGroupKey = 'basic_channel_group';

  Future<void> initialize() async {
    // 1. Initialize Awesome Notifications
    await AwesomeNotifications().initialize(
      null, // Use default icon
      [
        NotificationChannel(
          channelGroupKey: _channelGroupKey,
          channelKey: _channelKey,
          channelName: _channelName,
          channelDescription: 'Notification channel for basic tests',
          defaultColor: const Color(0xFF9D50BB),
          importance: NotificationImportance.Max,
          channelShowBadge: true,
          onlyAlertOnce: true,
          playSound: true,
          criticalAlerts: true,
        )
      ],
      channelGroups: [
        NotificationChannelGroup(
          channelGroupKey: _channelGroupKey,
          channelGroupName: 'Basic group',
        )
      ],
      debug: true,
    );

    // 2. Request Permissions
    await requestPermissions();

    // 3. Set up Listeners
    _setupFCMListeners();
    _setupAwesomeListeners();

    // 4. Handle Initial Message (App launched from terminated state)
    final RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      _handleNotificationClick(initialMessage.data);
    }
  }

  Future<void> requestPermissions() async {
    final bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
    if (!isAllowed) {
      await AwesomeNotifications().requestPermissionToSendNotifications();
    }
  }

  void _setupFCMListeners() {
    // Foreground messages
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint('Got a message whilst in the foreground!');
      debugPrint('Message data: ${message.data}');

      if (message.notification != null) {
        showLocalNotification(
          title: message.notification!.title ?? '',
          body: message.notification!.body ?? '',
          payload:
              message.data.map((key, value) => MapEntry(key, value.toString())),
        );
      }

      // Update notification count and list in real-time
      if (sl.isRegistered<NotificationsBloc>()) {
        sl<NotificationsBloc>().add(NotificationReceivedEvent(message.data));
      }
    });

    // App opened from background state (but not terminated)
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      debugPrint('Message clicked!');
      _handleNotificationClick(message.data);
    });
  }

  void _setupAwesomeListeners() {
    AwesomeNotifications().setListeners(
      onActionReceivedMethod: onActionReceivedMethod,
    );
  }

  @pragma('vm:entry-point')
  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    // This is called when user taps an Awesome Notification
    instance._handleNotificationClick(receivedAction.payload ?? {});
  }

  void showLocalNotification({
    required String title,
    required String body,
    Map<String, String>? payload,
  }) {
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: DateTime.now().millisecondsSinceEpoch.remainder(100000),
        channelKey: _channelKey,
        title: title,
        body: body,
        payload: payload,
        notificationLayout: NotificationLayout.Default,
      ),
    );
  }

  void _handleNotificationClick(Map<String, dynamic> data) {
    debugPrint('Handling notification click with data: $data');
    final type = data['type']?.toString();

    // Safety check for context
    final context = rootNavigatorKey.currentContext;
    if (context == null) return;

    try {
      switch (type) {
        case 'new_offer':
          final productId = int.tryParse(data['product_id']?.toString() ?? '');
          if (productId != null) {
            context.push(AppRoutes.productDetails,
                extra: {'productId': productId});
          }
          break;

        case 'cart_offer_discount':
          final productId = int.tryParse(data['product_id']?.toString() ?? '');
          if (productId != null) {
            context.push(AppRoutes.productDetails,
                extra: {'productId': productId});
          }
          break;

        case 'booking_accepted':
        case 'booking_reschedule_proposed':
          // Note: The UI expects a BookingEntity. For notifications, we might only have an ID.
          // This requires fetching the booking or modifying the UI to fetch it.
          // For now, navigate to the orders/bookings list.
          context.push(AppRoutes.orders,
              extra: {'initialIndex': 1}); // Assuming 1 is for bookings
          break;

        case 'order_status_updated':
          final orderId = int.tryParse(data['order_id']?.toString() ?? '');
          if (orderId != null) {
            context.push(AppRoutes.orderDetails, extra: {'orderId': orderId});
          }
          break;

        default:
          debugPrint('Unknown notification type: $type');
          context.go(AppRoutes.home);
          break;
      }
    } catch (e) {
      debugPrint('Error handling notification navigation: $e');
    }
  }
}
