import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/session/session_bloc.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:wassaly/features/home/presentation/bloc/home_bloc.dart';
import 'package:wassaly/features/home/presentation/bloc/home_event.dart';
import 'package:wassaly/features/order/presentation/bloc/order_bloc.dart';
import 'package:wassaly/features/profile/presentation/bloc/settings/settings_bloc.dart';

/// A wrapper to initialize the chosen State Management library.
class StateWrapper extends StatelessWidget {
  final Widget child;

  const StateWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final providers = [
      BlocProvider.value(
        value: sl<SessionBloc>(),
      ),
      BlocProvider.value(
        value: sl<SettingsBloc>()..add(const SettingsInitialized()),
      ),
      BlocProvider.value(
        value: sl<FavoriteBloc>(),
      ),
      BlocProvider.value(
        value: sl<CartBloc>(),
      ),
      BlocProvider.value(
        value: sl<HomeBloc>()
          ..add(GetBannersEvent())
          ..add(GetCategoriesEvent())
          ..add(GetPopularServicesEvent())
          ..add(GetProductsEvent()),
      ),
      BlocProvider.value(
        value: sl<OrderBloc>()..add(const OrdersFetched()),
      ),
    ];

    return MultiBlocProvider(
      providers: providers,
      child: child,
    );
  }
}
