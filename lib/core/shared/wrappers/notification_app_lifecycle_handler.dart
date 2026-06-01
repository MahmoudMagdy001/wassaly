import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/session/session_bloc.dart';

/// Verifies and syncs FCM tokens when app lifecycle changes.
/// Ensures the backend always has the latest token on app resume.
class NotificationAppLifecycleHandler extends StatefulWidget {
  final Widget child;

  const NotificationAppLifecycleHandler({
    super.key,
    required this.child,
  });

  @override
  State<NotificationAppLifecycleHandler> createState() =>
      _NotificationAppLifecycleHandlerState();
}

class _NotificationAppLifecycleHandlerState
    extends State<NotificationAppLifecycleHandler> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      print('[FCM DEBUG] 🚀 App startup - verifying token');
      _verifyNotificationsOnResume();
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('[FCM DEBUG] 📲 App lifecycle state changed: $state');
    if (state == AppLifecycleState.resumed) {
      print('[FCM DEBUG] ▶️ App resumed - verifying token');
      _verifyNotificationsOnResume();
    }
  }

  void _verifyNotificationsOnResume() {
    // Get current authenticated user from session bloc
    final sessionState = context.read<SessionBloc>().state;

    if (sessionState is SessionAuthenticated) {
      print(
          '[FCM DEBUG] ✅ User authenticated on resume/startup - userId: ${sessionState.user.id}');
      NotificationLifecycleService.instance
          .verifyNotificationsOnResume(sessionState.user.id);
    } else {
      print(
          '[FCM DEBUG] ℹ️ User not authenticated on resume/startup - verifying guest token');
      NotificationLifecycleService.instance
          .verifyGuestNotificationsOnResume();
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
