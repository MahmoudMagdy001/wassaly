import 'dart:ui';

import 'package:wassaly/core/imports/imports.dart';

/// Shows a premium custom dialog with optional backdrop blur.
///
/// This helper uses the [rootNavigatorKey] to display the dialog
/// without needing a local [BuildContext].
Future<T?> showAppDialog<T>({
  Widget? child,
  WidgetBuilder? builder,

  /// Optional iOS-specific builder. If provided and running on iOS, this
  /// builder will be used with `showCupertinoDialog` to provide native
  /// Cupertino dialogs while keeping the custom transition for non-iOS.
  WidgetBuilder? iosBuilder,
  bool hasBlur = true,
  double blurSigma = 5.0,
  Color barrierColor = Colors.black26,
  bool dismissible = true,
  Duration duration = const Duration(milliseconds: 300),
}) {
  final context = rootContext;
  if (context == null) return Future.value(null);

  final isIOS = defaultTargetPlatform == TargetPlatform.iOS;

  if (isIOS) {
    final usedBuilder = iosBuilder ?? builder ?? ((_) => child!);
    return showCupertinoDialog<T>(
      context: context,
      barrierDismissible: dismissible,
      builder: usedBuilder,
    );
  }

  final dialogChild = builder != null ? builder(context) : child!;

  return showGeneralDialog<T>(
    context: context,
    barrierColor: barrierColor,
    barrierDismissible: dismissible,
    barrierLabel: 'AppDialog',
    transitionDuration: duration,
    pageBuilder: (context, animation, secondaryAnimation) => dialogChild,
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      final curve = Curves.easeInOut.transform(animation.value);
      return BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: hasBlur ? (blurSigma * animation.value) : 0,
          sigmaY: hasBlur ? (blurSigma * animation.value) : 0,
        ),
        child: Opacity(
          opacity: animation.value,
          child: Transform.scale(
            scale: 0.9 + (0.1 * curve),
            child: child,
          ),
        ),
      );
    },
  );
}

/// Alias for [showAppDialog] to maintain compatibility with custom references.
Future<T?> showCustomDialogue<T>({
  required Widget child,
  bool hasBlur = true,
}) =>
    showAppDialog<T>(child: child, hasBlur: hasBlur);
