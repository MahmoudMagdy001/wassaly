import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../extensions/context_extension.dart';
import '../../routing/global_navigator.dart';
import '../../utils/failure.dart';

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
  })  : title = title ?? rootContext?.l10n.errors_something_went_wrong,
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
  })  : title = title ?? rootContext?.l10n.errors_something_went_wrong,
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
    final titleText = title ?? _getErrorTitle(context);
    final messageText = customMessage ?? _getErrorMessage(context);

    return Column(
      children: [
        Text(
          titleText,
          style: context.theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.theme.colorScheme.onSurface,
            fontSize: 20.sp,
          ),
          textAlign: TextAlign.center,
        ),
        16.h.verticalSpace,
        Text(
          messageText,
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
          context.l10n.retry,
          style: context.theme.textTheme.bodyMedium?.copyWith(
            color: context.theme.colorScheme.primary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  String _getErrorTitle(BuildContext context) {
    // Respect explicit legacy title if provided
    if (title != null) return title!;

    switch (failure.runtimeType) {
      case const (NetworkFailure):
        return context.l10n.errors_no_internet_title;
      case const (NotFoundFailure):
        return context.l10n.errors_not_found_title;
      case const (ServerFailure):
        return context.l10n.errors_server_error_title;
      case const (CacheFailure):
        return context.l10n.errors_cache_error_title;
      default:
        return context.l10n.errors_error_occurred_title;
    }
  }

  String _getErrorMessage(BuildContext context) {
    // Respect explicit legacy message if provided
    if (message != null && message!.isNotEmpty) return message!;

    switch (failure.runtimeType) {
      case const (NetworkFailure):
        return context.l10n.errors_no_internet_message;
      case const (NotFoundFailure):
        return context.l10n.errors_not_found_message;
      case const (ServerFailure):
        return context.l10n.errors_server_error_message;
      case const (CacheFailure):
        return context.l10n.errors_cache_error_message;
      default:
        return context.l10n.errors_error_occurred_message;
    }
  }
}
