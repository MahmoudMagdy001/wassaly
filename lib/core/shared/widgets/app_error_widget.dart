import 'package:wassaly/core/imports/imports.dart';

/// Displays an error state with consistent UI based on Failure type.
///
/// Usage:
/// ```dart
/// AppErrorWidget(
///   failure: failure,
///   onRetry: () => refetch(),
/// )
/// ```
class AppErrorWidget extends StatelessWidget {
  // Default constructor for backward compatibility
  AppErrorWidget({
    super.key,
    String? title,
    this.message,
    this.onRetry,
    this.icon = Icons.error_outline_rounded,
  })  : title = title ?? 'errors.something_went_wrong'.tr(),
        failure = const UnknownFailure('Unknown error'),
        customMessage = null,
        showRetryButton = true;

  // Legacy constructor for backward compatibility
  AppErrorWidget.legacy({
    super.key,
    String? title,
    this.message,
    this.onRetry,
    this.icon = Icons.error_outline_rounded,
  })  : title = title ?? 'errors.something_went_wrong'.tr(),
        failure = const UnknownFailure('Unknown error'),
        customMessage = null,
        showRetryButton = true;

  // New constructor with Failure
  const AppErrorWidget.failure({
    super.key,
    required this.failure,
    this.onRetry,
    this.customMessage,
    this.showRetryButton = true,
  })  : title = null,
        message = null,
        icon = Icons.error_outline_rounded;

  final Failure failure;
  final VoidCallback? onRetry;
  final String? customMessage;
  final bool showRetryButton;

  // Legacy properties for backward compatibility
  final String? title;
  final String? message;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildErrorIcon(context),
            24.h.verticalSpace,
            _buildErrorMessage(context),
            if (showRetryButton && onRetry != null) ...[
              32.h.verticalSpace,
              _buildRetryButton(context),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildErrorIcon(BuildContext context) {
    // If legacy title/message/icon were provided, respect the explicit icon
    if (title != null || message != null) {
      return Icon(
        icon,
        size: 80.r,
        color: context.theme.colorScheme.onSurface,
      );
    }

    IconData iconData;
    Color iconColor;

    switch (failure.runtimeType) {
      case const (NetworkFailure):
        iconData = Icons.wifi_off_rounded;
        iconColor = const Color(0xFFFF9800); // Orange
        break;
      case const (NotFoundFailure):
        iconData = Icons.search_off_rounded;
        iconColor = const Color(0xFFE53935); // Red
        break;
      case const (ServerFailure):
        iconData = Icons.error_rounded;
        iconColor = const Color(0xFFE53935); // Red
        break;
      case const (CacheFailure):
        iconData = Icons.storage_rounded;
        iconColor = const Color(0xFFFFA000); // Amber
        break;
      default:
        iconData = Icons.error_outline_rounded;
        iconColor = const Color(0xFF9E9E9E); // Grey
    }

    return Icon(
      iconData,
      size: 80.r,
      color: iconColor,
    );
  }

  Widget _buildErrorMessage(BuildContext context) {
    final title = _getErrorTitle();
    final message = customMessage ?? _getErrorMessage();

    return Column(
      children: [
        Text(
          title,
          style: context.theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.theme.colorScheme.onSurface,
            fontSize: 20.sp,
          ),
          textAlign: TextAlign.center,
        ),
        16.h.verticalSpace,
        Text(
          message,
          style: context.theme.textTheme.bodyMedium?.copyWith(
            color: context.theme.colorScheme.onSurface.withValues(alpha: 0.6),
            fontSize: 14.sp,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildRetryButton(BuildContext context) {
    return SizedBox(
      width: 120.w,
      height: 44.h,
      child: OutlinedButton(
        onPressed: onRetry,
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: context.theme.colorScheme.onSurface.withValues(alpha: 0.3),
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: Text(
          'retry'.tr(),
          style: context.theme.textTheme.bodyMedium?.copyWith(
            color: context.theme.colorScheme.primary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  String _getErrorTitle() {
    // Respect explicit legacy title if provided
    if (title != null) return title!;

    switch (failure.runtimeType) {
      case const (NetworkFailure):
        return 'errors.no_internet_title'.tr();
      case const (NotFoundFailure):
        return 'errors.not_found_title'.tr();
      case const (ServerFailure):
        return 'errors.server_error_title'.tr();
      case const (CacheFailure):
        return 'errors.cache_error_title'.tr();
      default:
        return 'errors.error_occurred_title'.tr();
    }
  }

  String _getErrorMessage() {
    // Respect explicit legacy message if provided
    if (message != null && message!.isNotEmpty) return message!;

    switch (failure.runtimeType) {
      case const (NetworkFailure):
        return 'errors.no_internet_message'.tr();
      case const (NotFoundFailure):
        return 'errors.not_found_message'.tr();
      case const (ServerFailure):
        return 'errors.server_error_message'.tr();
      case const (CacheFailure):
        return 'errors.cache_error_message'.tr();
      default:
        return 'errors.error_occurred_message'.tr();
    }
  }
}
