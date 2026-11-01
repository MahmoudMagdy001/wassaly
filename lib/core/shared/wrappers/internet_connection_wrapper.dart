import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassaly/core/extensions/context_extension.dart';
import 'package:wassaly/core/injection/injection.dart';
import 'package:wassaly/core/services/internet_connection_service.dart';

/// Wraps app content with an animated slim status banner notifying the user
/// about real network status changes (disconnected, unstable, restored)
/// without causing double top SafeArea padding.
class InternetConnectionWrapper extends StatefulWidget {
  final Widget child;
  final IInternetConnectionService? connectionService;
  final IInternetConnectionService? service;

  const InternetConnectionWrapper({
    required this.child,
    this.connectionService,
    this.service,
    super.key,
  });

  @override
  State<InternetConnectionWrapper> createState() =>
      _InternetConnectionWrapperState();
}

class _InternetConnectionWrapperState extends State<InternetConnectionWrapper> {
  late final IInternetConnectionService _service;
  StreamSubscription<NetworkState>? _stateSub;

  NetworkState _state = NetworkState.checking;
  NetworkIssue _lastIssue = NetworkIssue.none;
  bool _showRestored = false;
  Timer? _hideTimer;

  bool get _shouldShowBanner =>
      _showRestored ||
      _state == NetworkState.disconnected ||
      _state == NetworkState.unstable;

  @override
  void initState() {
    super.initState();
    _service = widget.connectionService ??
        widget.service ??
        sl<InternetConnectionService>();
    _state = _service.currentState;
    _lastIssue = _service.lastIssue;

    _stateSub = _service.stateStream.listen(_onStateChanged);
  }

  void _onStateChanged(NetworkState newState) {
    if (!mounted) return;

    final previousState = _state;
    _state = newState;
    _lastIssue = _service.lastIssue;

    if (previousState == NetworkState.disconnected &&
        newState == NetworkState.connected) {
      _showRestored = true;
      _hideTimer?.cancel();
      _hideTimer = Timer(const Duration(milliseconds: 1800), () {
        if (mounted) {
          setState(() {
            _showRestored = false;
          });
        }
      });
    } else if (newState == NetworkState.disconnected ||
        newState == NetworkState.unstable) {
      _showRestored = false;
      _hideTimer?.cancel();
      _hideTimer = null;
    }

    setState(() {});
  }

  @override
  void dispose() {
    _hideTimer?.cancel();
    unawaited(_stateSub?.cancel());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final showBanner = _shouldShowBanner;
    return Column(
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          child: showBanner
              ? _NetworkBanner(
                  state: _state,
                  issue: _lastIssue,
                  isRestored: _showRestored,
                  onTap: () => unawaited(_service.checkNow()),
                )
              : const SizedBox.shrink(),
        ),
        Expanded(
          child: MediaQuery.removePadding(
            context: context,
            removeTop: showBanner,
            child: widget.child,
          ),
        ),
      ],
    );
  }
}

class _NetworkBanner extends StatelessWidget {
  final NetworkState state;
  final NetworkIssue issue;
  final bool isRestored;
  final VoidCallback onTap;

  const _NetworkBanner({
    required this.state,
    required this.issue,
    required this.isRestored,
    required this.onTap,
  });

  (Color, Color, IconData, String) _bannerDetails(BuildContext context) {
    if (isRestored && state == NetworkState.connected) {
      return (
        context.appColors.success,
        context.appColors.onSuccess,
        Icons.check_circle_outline_rounded,
        context.l10n.internet_restored_banner,
      );
    }

    if (state == NetworkState.unstable) {
      return (
        context.appColors.warning,
        context.appColors.onWarning,
        Icons.wifi_protected_setup_rounded,
        context.l10n.internet_unstable_banner,
      );
    }

    if (issue == NetworkIssue.captivePortal) {
      return (
        context.appColors.softOrange,
        context.appColors.onSoftOrange,
        Icons.wifi_lock_rounded,
        context.l10n.internet_captive_portal_banner,
      );
    }

    if (issue == NetworkIssue.noInternet) {
      return (
        context.appColors.softOrange,
        context.appColors.onSoftOrange,
        Icons.wifi_find_rounded,
        context.l10n.internet_no_access_banner,
      );
    }

    // noInterface or none while disconnected
    return (
      context.colors.error,
      context.colors.onError,
      Icons.wifi_off_rounded,
      context.l10n.network_banner_no_interface,
    );
  }

  @override
  Widget build(BuildContext context) {
    final (bgColor, fgColor, icon, text) = _bannerDetails(context);

    return Semantics(
      liveRegion: true,
      child: Material(
        color: bgColor,
        child: InkWell(
          onTap: onTap,
          child: SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, color: fgColor, size: 20.r),
                  8.horizontalSpace,
                  Expanded(
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          (context.typography.labelLarge ?? const TextStyle())
                              .copyWith(
                        color: fgColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
