import '../../imports/imports.dart';

/// A wrapper to initialize the chosen State Management library.
class StateWrapper extends StatelessWidget {
  final Widget child;

  const StateWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    const providers = <BlocProvider<dynamic>>[
      // TODO: Add global BLoC providers here
    ];

    if (providers.isEmpty) {
      return child;
    }

    return MultiBlocProvider(
      providers: providers,
      child: child,
    );
  }
}
