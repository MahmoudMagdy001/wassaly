import 'package:wassaly/core/imports/imports.dart';

void showToast(
  BuildContext context, {
  required String message,
  String? status = 'success',
  IconData? icon,
  Duration? duration,
  bool? autoDismiss,
}) {
  // Always resolve theme/colors from the root context, which is guaranteed to
  // be mounted. The caller's `context` may be deactivated by the time this
  // function is called (e.g. after a route pop or a BLoC state emission),
  // which would cause "Looking up a deactivated widget's ancestor" errors.
  final safeCtx = rootContext ?? context;

  final toastStatus = status ?? 'info';
  final colorScheme = safeCtx.colors;
  final appColors = safeCtx.appColors;

  final (backgroundColor, foregroundColor, iconColor) = switch (toastStatus) {
    'error' => (
        colorScheme.errorContainer,
        colorScheme.onErrorContainer,
        colorScheme.error,
      ),
    'success' => (
        appColors.successContainer ?? appColors.success,
        appColors.onSuccessContainer ?? appColors.onSuccess,
        appColors.success,
      ),
    'warning' => (
        appColors.warningContainer ?? appColors.warning,
        appColors.onWarningContainer ?? appColors.onWarning,
        appColors.warning,
      ),
    'info' => (
        appColors.infoContainer ?? appColors.info,
        appColors.onInfoContainer ?? appColors.onInfo,
        appColors.info,
      ),
    _ => (
        safeCtx.theme.scaffoldBackgroundColor,
        colorScheme.onSurface,
        colorScheme.onSurfaceVariant,
      ),
  };

  return ToastBar(
    position: ToastPosition.top,
    autoDismiss: autoDismiss ?? true,
    toastDuration: duration ?? const Duration(seconds: 2),
    animationDuration: const Duration(milliseconds: 150),
    animationCurve: Curves.easeIn,
    // The builder receives a fresh context from the OverlayEntry — always safe.
    builder: (overlayCtx) => ToastCard(
      color: backgroundColor,
      shadowColor: colorScheme.shadow.withValues(alpha: 0.05),
      leading: Icon(
        icon ??
            (toastStatus == 'success'
                ? Icons.check_circle_outline
                : toastStatus == 'error'
                    ? Icons.error_outline
                    : Icons.info_outline),
        color: iconColor,
        size: 22.sp,
      ),
      title: Text(
        message,
        style: overlayCtx.theme.textTheme.labelSmall!.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 11.sp,
          color: foregroundColor,
        ),
      ),
    ),
  ).show(safeCtx);
}

void showGlobalToast({
  required String message,
  String? status = 'success',
  IconData? icon,
  Duration? duration,
  bool? autoDismiss,
}) {
  final ctx = rootContext;
  if (ctx == null) return;

  showToast(
    ctx,
    message: message,
    status: status,
    icon: icon,
    duration: duration,
    autoDismiss: autoDismiss,
  );
}
