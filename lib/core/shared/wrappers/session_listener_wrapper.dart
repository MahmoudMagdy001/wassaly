import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/session/session_bloc.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_event.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_event.dart';
import 'package:wassaly/features/notifications/presentation/bloc/notifications_bloc.dart';
import 'package:wassaly/features/notifications/presentation/bloc/notifications_event.dart';
import 'package:wassaly/features/profile/presentation/bloc/profile/profile_bloc.dart';

class SessionListenerWrapper extends StatelessWidget {
  final Widget child;
  const SessionListenerWrapper({required this.child, super.key});

  @override
  Widget build(BuildContext context) => BlocListener<SessionBloc, SessionState>(
      listener: (context, state) {
        final currentPath = appRouter.routeInformationProvider.value.uri.path;
        final isSplash = currentPath == AppRoutes.splash;

        if (state is SessionAuthenticated) {
          // 1. Load data for the new user (Always do this upon authentication)
          context.read<ProfileBloc>().add(const ProfileFetched());
          context.read<CartBloc>().add(const LoadCartItemsEvent());
          context.read<FavoriteBloc>().add(const GetFavoritesEvent());
          context.read<FavoriteBloc>().add(const GetServiceFavoritesEvent());
          context.read<NotificationsBloc>().add(const GetNotificationsEvent());
          context
              .read<NotificationsBloc>()
              .add(const GetNotificationStatusEvent());

          // 2. Navigation logic
          // Skip navigation if already on Home or still on Splash
          // (Splash has its own internal timer/animation then goes to Home)
          if (!isSplash && currentPath != AppRoutes.home) {
            appRouter.go(AppRoutes.home);
          }
        } else if (state is SessionUnauthenticated) {
          // Clear data when user logs out
          context.read<ProfileBloc>().add(const ProfileReset());
          context.read<CartBloc>().add(const ClearCartEvent());
          context.read<FavoriteBloc>().add(const ClearFavoritesEvent());
          context
              .read<NotificationsBloc>()
              .add(const ResetNotificationsEvent());

          // Dismiss any active snackbar before navigating
          ScaffoldMessenger.of(context).clearSnackBars();

          // Navigate to login if not already there and not on splash
          if (!isSplash && currentPath != AppRoutes.login) {
            appRouter.go(AppRoutes.login);
          }
        }
      },
      child: child,
    );
}
