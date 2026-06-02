import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/session/session_bloc.dart';
import 'package:wassaly/features/cart/data/datasources/cart_local_datasource.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_event.dart';
import 'package:wassaly/features/favorite/data/datasources/favorite_local_datasource.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_event.dart';
import 'package:wassaly/features/orders/presentation/bloc/orders_bloc.dart';
import 'package:wassaly/features/orders/presentation/bloc/orders_event.dart';
import 'package:wassaly/features/profile/presentation/bloc/profile/profile_bloc.dart';
import 'package:wassaly/features/profile/presentation/bloc/settings/settings_bloc.dart';
import 'package:wassaly/features/notifications/data/datasources/notification_local_datasource.dart';
import 'package:wassaly/features/notifications/presentation/bloc/notifications_bloc.dart';
import 'package:wassaly/features/notifications/presentation/bloc/notifications_event.dart';

/// A wrapper that listens to SettingsBloc and applies theme/language changes globally.
class SettingsListenerWrapper extends StatelessWidget {
  final Widget Function(
      BuildContext context, ThemeMode themeMode, String language) builder;

  const SettingsListenerWrapper({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsBloc, SettingsState>(
      listenWhen: (prev, curr) => prev.language != curr.language,
      listener: (context, state) {
        // Clear local caches and reload language-dependent data if authenticated
        final sessionState = sl<SessionBloc>().state;
        if (sessionState is SessionAuthenticated) {
          // Clear local cache which stores old translations
          sl<CartLocalDataSource>().clearCartLocally();
          sl<FavoriteLocalDataSource>().clearFavoritesLocally();
          sl<NotificationLocalDataSource>().clearCache();

          // Dispatch reload events to fetch data in the new language from the API
          sl<CartBloc>().add(const LoadCartItemsEvent());
          sl<FavoriteBloc>().add(const GetFavoritesEvent());
          sl<FavoriteBloc>().add(const GetServiceFavoritesEvent());
          sl<OrdersBloc>().add(const GetOrdersEvent());
          sl<OrdersBloc>().add(const GetServiceBookingsEvent());
          sl<ProfileBloc>().add(const ProfileFetched());
          sl<ProfileBloc>().add(const AddressesFetched());
          sl<ProfileBloc>().add(const GovernoratesFetched());
          sl<NotificationsBloc>().add(const GetNotificationsEvent(isRefresh: true));
        }

        // Navigate to splash to re-initialize the entire app with new language
        WidgetsBinding.instance.addPostFrameCallback((_) {
          appRouter.go(AppRoutes.splash);
        });
      },
      child: BlocBuilder<SettingsBloc, SettingsState>(
        buildWhen: (prev, curr) =>
            prev.themeMode != curr.themeMode || prev.language != curr.language,
        builder: (context, state) {
          return builder(context, state.themeMode, state.language);
        },
      ),
    );
  }
}
